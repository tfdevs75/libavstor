
/*
* Basic C11-style threading library
*
* BSD 3-Clause License
*
* Copyright (c) 2025, Tamas Fejerpataky
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, this
*    list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
*
* 3. Neither the name of the copyright holder nor the names of its
*    contributors may be used to endorse or promote products derived from
*    this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#ifndef THREADS_H
#define THREADS_H

#include <time.h>

#include "stdatomic.h"

#ifdef __cplusplus
extern "C" {
#endif

enum {
    thrd_success,
    thrd_nomem,
    thrd_timedout,
    thrd_busy,
    thrd_error
};

enum {
    mtx_plain = 0,
    mtx_recursive = 1 << 0,
    mtx_timed = 1 << 1
};

typedef void (*tss_dtor_t)(void*);

#if defined(STDTHREAD_CONFIG_USE_PTHREAD)

#include <pthread.h>

typedef pthread_t       thrd_t;
typedef pthread_once_t  once_flag;
typedef pthread_key_t   tss_t;
typedef pthread_mutex_t mtx_t;
typedef pthread_cond_t  cnd_t;

#define ONCE_FLAG_INIT  PTHREAD_ONCE_INIT

#else 

#define ONCE_FLAG_INIT { 0 }
#define _MAX_TLS_KEY 255

typedef atomic_int once_flag;

typedef struct {
    unsigned int _key;
} tss_t;

struct _mcs_lock {
    atomic_ptr          _tail;
};

typedef struct _usem {
    struct _mcs_lock    _lock;
#if defined(_WIN32)
    void                *_event;
#elif defined(__OS2__)
    unsigned long       _event;
#endif
    signed short        _max_count;
    signed short        _sema_count;
} _usem;

typedef struct mtx {    
    atomic_int          _lock;
    atomic_int          _count;
    int                 _type;
    struct _usem        _wait_sem;
} mtx_t;

typedef struct {
    mtx_t				_mtx;
#if defined(_WIN32)
    void                *_event;
#elif defined(__OS2__)
    unsigned long       _event;
#endif
    short               _waiters;
    short               _wakeups;
} cnd_t;

#if defined(_WIN32)

typedef struct {
    void*       _Handle;
    unsigned    _ThreadID;
} thrd_t;

#elif defined(__OS2__)

struct _tld;

typedef struct {
    struct _tld         *_thr_data;
    int                 _thr_id;
} thrd_t;

extern void* __ThreadStackAddr;

#endif

#endif

typedef int (*thrd_start_t)(void*);

int _thrd_create_ex(thrd_t *thr, thrd_start_t func, void *arg, void *stack_bottom, size_t stack_size);
int thrd_create(thrd_t *thr, thrd_start_t func, void *arg);

thrd_t thrd_current(void);
int thrd_detach(thrd_t thr);
int thrd_equal(thrd_t lhs, thrd_t rhs);

#if (defined(__clang__) || defined(__GNUC__))
__attribute__((noreturn))
#elif !defined(_MSC_VER) || _MSC_VER >= 1200
__declspec(noreturn)
#endif
void thrd_exit(int res);

int thrd_join(thrd_t thr, int* res);
int thrd_sleep(const struct timespec* duration, struct timespec* remaining);
void thrd_yield(void);

void mtx_destroy(mtx_t* mtx);
int mtx_init(mtx_t* mtx, int type);
int mtx_trylock(mtx_t* mtx);
int mtx_lock(mtx_t* mtx);
int mtx_unlock(mtx_t* mtx);

int cnd_init(cnd_t* cond);
void cnd_destroy(cnd_t* cond);
int cnd_signal(cnd_t* cond);
int cnd_broadcast(cnd_t* cond);
int cnd_wait(cnd_t* cond, mtx_t* mtx);

int tss_create(tss_t *tss_key, tss_dtor_t destructor);
int tss_delete(tss_t tss_id);
int tss_set(tss_t tss_id, void *val);
void* tss_get(tss_t tss_key);

void call_once(once_flag* flag, void(*_Func)(void));

#ifdef __cplusplus
}
#endif

#endif
