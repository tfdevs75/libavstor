# Microsoft Developer Studio Generated NMAKE File, Format Version 4.10
# ** DO NOT EDIT **

# TARGTYPE "Win32 (MIPS) Console Application" 0x0503
# TARGTYPE "Win32 (x86) Console Application" 0x0103
# TARGTYPE "Win32 (MIPS) Static Library" 0x0504
# TARGTYPE "Win32 (x86) Static Library" 0x0104

!IF "$(CFG)" == ""
CFG=testthrd - Win32 MIPSDbg
!MESSAGE No configuration specified.  Defaulting to testthrd - Win32 MIPSDbg.
!ENDIF 

!IF "$(CFG)" != "avstest - Win32 Release" && "$(CFG)" !=\
 "avstest - Win32 Debug" && "$(CFG)" != "stdthrd - Win32 Release" && "$(CFG)" !=\
 "stdthrd - Win32 Debug" && "$(CFG)" != "testthrd - Win32 Release" && "$(CFG)"\
 != "testthrd - Win32 Debug" && "$(CFG)" != "avstor - Win32 Release" && "$(CFG)"\
 != "avstor - Win32 Debug" && "$(CFG)" != "avstor - Win32 MIPSDbg" && "$(CFG)"\
 != "avstor - Win32 MIPSRel" && "$(CFG)" != "avstest - Win32 MIPSRel" &&\
 "$(CFG)" != "avstest - Win32 MIPSDbg" && "$(CFG)" != "stdthrd - Win32 MIPSRel"\
 && "$(CFG)" != "stdthrd - Win32 MIPSDbg" && "$(CFG)" !=\
 "testthrd - Win32 MIPSRel" && "$(CFG)" != "testthrd - Win32 MIPSDbg"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "build.mak" CFG="testthrd - Win32 MIPSDbg"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "avstest - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "avstest - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "stdthrd - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "stdthrd - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "testthrd - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "testthrd - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "avstor - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "avstor - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "avstor - Win32 MIPSDbg" (based on "Win32 (MIPS) Static Library")
!MESSAGE "avstor - Win32 MIPSRel" (based on "Win32 (MIPS) Static Library")
!MESSAGE "avstest - Win32 MIPSRel" (based on\
 "Win32 (MIPS) Console Application")
!MESSAGE "avstest - Win32 MIPSDbg" (based on\
 "Win32 (MIPS) Console Application")
!MESSAGE "stdthrd - Win32 MIPSRel" (based on "Win32 (MIPS) Static Library")
!MESSAGE "stdthrd - Win32 MIPSDbg" (based on "Win32 (MIPS) Static Library")
!MESSAGE "testthrd - Win32 MIPSRel" (based on\
 "Win32 (MIPS) Console Application")
!MESSAGE "testthrd - Win32 MIPSDbg" (based on\
 "Win32 (MIPS) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "testthrd - Win32 MIPSRel"

!IF  "$(CFG)" == "avstest - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\Release"
# PROP Intermediate_Dir "avstest\Release"
# PROP Target_Dir ""
OUTDIR=.\bin\Release
INTDIR=.\avstest\Release

ALL :       "avstor - Win32 Release" "stdthrd - Win32 Release"\
       "$(OUTDIR)\avstest.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /G5 /MT /W3 /GX /O2 /I "..\..\include" /I "..\..\threads" /D "NDEBUG" /D "_CONSOLE" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /G5 /MT /W3 /GX /O2 /I "..\..\include" /I "..\..\threads" /D\
 "NDEBUG" /D "_CONSOLE" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1\
 /Fp"$(INTDIR)/build.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\avstest\Release/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/build.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /machine:I386 /out:"bin\Release/avstest.exe"
# SUBTRACT LINK32 /debug
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:console /incremental:no /pdb:"$(OUTDIR)/avstest.pdb" /machine:I386\
 /out:"$(OUTDIR)/avstest.exe" 
LINK32_OBJS= \
	"$(INTDIR)\avsdb.obj" \
	"$(INTDIR)\avstest.obj" \
	"$(INTDIR)\timer.obj" \
	"$(INTDIR)\tst_dfs.obj" \
	"$(OUTDIR)\avstor.lib" \
	"$(OUTDIR)\stdthrd.lib"

"$(OUTDIR)\avstest.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "avstest - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "bin\Debug"
# PROP Intermediate_Dir "avstest\Debug"
# PROP Target_Dir ""
OUTDIR=.\bin\Debug
INTDIR=.\avstest\Debug

ALL :       "avstor - Win32 Debug" "stdthrd - Win32 Debug"\
   "$(OUTDIR)\avstest.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /G5 /MTd /W3 /Gm /GX /Zi /Od /I "..\..\include" /I "..\..\threads" /D "_DEBUG" /D "_CONSOLE" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /G5 /MTd /W3 /Gm /GX /Zi /Od /I "..\..\include" /I\
 "..\..\threads" /D "_DEBUG" /D "_CONSOLE" /D "WIN32" /D\
 AVSTOR_CONFIG_THREAD_SAFE=1 /Fp"$(INTDIR)/build.pch" /YX /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\avstest\Debug/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/build.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /debug /machine:I386 /out:"bin\Debug/avstest.exe"
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:console /incremental:yes /pdb:"$(OUTDIR)/avstest.pdb" /debug\
 /machine:I386 /out:"$(OUTDIR)/avstest.exe" 
LINK32_OBJS= \
	"$(INTDIR)\avsdb.obj" \
	"$(INTDIR)\avstest.obj" \
	"$(INTDIR)\timer.obj" \
	"$(INTDIR)\tst_dfs.obj" \
	"$(OUTDIR)\avstor.lib" \
	"$(OUTDIR)\stdthrd.lib"

"$(OUTDIR)\avstest.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "stdthrd - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "stdthrd\Release"
# PROP BASE Intermediate_Dir "stdthrd\Release"
# PROP BASE Target_Dir "stdthrd"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\Release"
# PROP Intermediate_Dir "stdthrd\Release"
# PROP Target_Dir "stdthrd"
OUTDIR=.\bin\Release
INTDIR=.\stdthrd\Release

ALL :       "$(OUTDIR)\stdthrd.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /G5 /MT /W3 /GX /O2 /I "..\..\include" /I "..\..\threads" /D "NDEBUG" /D "_WINDOWS" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /G5 /MT /W3 /GX /O2 /I "..\..\include" /I "..\..\threads" /D\
 "NDEBUG" /D "_WINDOWS" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1\
 /Fp"$(INTDIR)/stdthrd.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\stdthrd\Release/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/stdthrd.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
LIB32_FLAGS=/nologo /out:"$(OUTDIR)/stdthrd.lib" 
LIB32_OBJS= \
	"$(INTDIR)\atomics.obj" \
	"$(INTDIR)\sync.obj" \
	"$(INTDIR)\thrd.obj"

"$(OUTDIR)\stdthrd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "stdthrd - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "stdthrd\Debug"
# PROP BASE Intermediate_Dir "stdthrd\Debug"
# PROP BASE Target_Dir "stdthrd"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "bin\Debug"
# PROP Intermediate_Dir "stdthrd\Debug"
# PROP Target_Dir "stdthrd"
OUTDIR=.\bin\Debug
INTDIR=.\stdthrd\Debug

ALL :       "$(OUTDIR)\stdthrd.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /Z7 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /G5 /MTd /W3 /GX /Z7 /Od /I "..\..\include" /I "..\..\threads" /D "_DEBUG" /D "_WINDOWS" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /G5 /MTd /W3 /GX /Z7 /Od /I "..\..\include" /I "..\..\threads"\
 /D "_DEBUG" /D "_WINDOWS" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1\
 /Fp"$(INTDIR)/stdthrd.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\stdthrd\Debug/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/stdthrd.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
LIB32_FLAGS=/nologo /out:"$(OUTDIR)/stdthrd.lib" 
LIB32_OBJS= \
	"$(INTDIR)\atomics.obj" \
	"$(INTDIR)\sync.obj" \
	"$(INTDIR)\thrd.obj"

"$(OUTDIR)\stdthrd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "testthrd - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "testthrd\testthrd"
# PROP BASE Intermediate_Dir "testthrd\testthrd"
# PROP BASE Target_Dir "testthrd"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\Release"
# PROP Intermediate_Dir "testthrd\Release"
# PROP Target_Dir "testthrd"
OUTDIR=.\bin\Release
INTDIR=.\testthrd\Release

ALL :       "stdthrd - Win32 Release" "$(OUTDIR)\testthrd.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /G5 /MT /W3 /GX /O2 /D "NDEBUG" /D "_CONSOLE" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /G5 /MT /W3 /GX /O2 /D "NDEBUG" /D "_CONSOLE" /D "WIN32" /D\
 AVSTOR_CONFIG_THREAD_SAFE=1 /Fp"$(INTDIR)/testthrd.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\testthrd\Release/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/testthrd.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:console /incremental:no /pdb:"$(OUTDIR)/testthrd.pdb" /machine:I386\
 /out:"$(OUTDIR)/testthrd.exe" 
LINK32_OBJS= \
	"$(INTDIR)\test.obj" \
	"$(OUTDIR)\stdthrd.lib"

"$(OUTDIR)\testthrd.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "testthrd - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "testthrd\Debug"
# PROP BASE Intermediate_Dir "testthrd\Debug"
# PROP BASE Target_Dir "testthrd"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "bin\Debug"
# PROP Intermediate_Dir "testthrd\Debug"
# PROP Target_Dir "testthrd"
OUTDIR=.\bin\Debug
INTDIR=.\testthrd\Debug

ALL :       "stdthrd - Win32 Debug" "$(OUTDIR)\testthrd.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /G5 /MTd /W3 /Gm /GX /Zi /Od /D "_DEBUG" /D "_CONSOLE" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /G5 /MTd /W3 /Gm /GX /Zi /Od /D "_DEBUG" /D "_CONSOLE" /D\
 "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /Fp"$(INTDIR)/testthrd.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\testthrd\Debug/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/testthrd.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:console /incremental:yes /pdb:"$(OUTDIR)/testthrd.pdb" /debug\
 /machine:I386 /out:"$(OUTDIR)/testthrd.exe" 
LINK32_OBJS= \
	"$(INTDIR)\test.obj" \
	"$(OUTDIR)\stdthrd.lib"

"$(OUTDIR)\testthrd.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "avstor - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "avstor\Release"
# PROP BASE Intermediate_Dir "avstor\Release"
# PROP BASE Target_Dir "avstor"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\Release"
# PROP Intermediate_Dir "avstor\Release"
# PROP Target_Dir "avstor"
OUTDIR=.\bin\Release
INTDIR=.\avstor\Release

ALL :       "$(OUTDIR)\avstor.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /G5 /MT /W3 /GX /O2 /I "..\..\include" /I "..\..\threads" /D "NDEBUG" /D "_WINDOWS" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /G5 /MT /W3 /GX /O2 /I "..\..\include" /I "..\..\threads" /D\
 "NDEBUG" /D "_WINDOWS" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1\
 /Fp"$(INTDIR)/avstor.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\avstor\Release/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/avstor.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
LIB32_FLAGS=/nologo /out:"$(OUTDIR)/avstor.lib" 
LIB32_OBJS= \
	"$(INTDIR)\avstor.obj"

"$(OUTDIR)\avstor.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "avstor - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "avstor\Debug"
# PROP BASE Intermediate_Dir "avstor\Debug"
# PROP BASE Target_Dir "avstor"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "bin\Debug"
# PROP Intermediate_Dir "avstor\Debug"
# PROP Target_Dir "avstor"
OUTDIR=.\bin\Debug
INTDIR=.\avstor\Debug

ALL :       "$(OUTDIR)\avstor.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /Z7 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /G5 /MTd /W3 /GX /Z7 /Od /I "..\..\include" /I "..\..\threads" /D "_DEBUG" /D "_WINDOWS" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /G5 /MTd /W3 /GX /Z7 /Od /I "..\..\include" /I "..\..\threads"\
 /D "_DEBUG" /D "_WINDOWS" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1\
 /Fp"$(INTDIR)/avstor.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\avstor\Debug/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/avstor.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
LIB32_FLAGS=/nologo /out:"$(OUTDIR)/avstor.lib" 
LIB32_OBJS= \
	"$(INTDIR)\avstor.obj"

"$(OUTDIR)\avstor.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "avstor - Win32 MIPSDbg"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "avstor\MIPSDbg"
# PROP BASE Intermediate_Dir "avstor\MIPSDbg"
# PROP BASE Target_Dir "avstor"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "bin\MIPSDbg"
# PROP Intermediate_Dir "avstor\MIPSDbg"
# PROP Target_Dir "avstor"
OUTDIR=.\bin\MIPSDbg
INTDIR=.\avstor\MIPSDbg

ALL : ".\bin\MIPSDbg\avstor.lib"

CLEAN : 
	-@erase ".\avstor\MIPSDbg\avstor.obj"
	-@erase ".\bin\MIPSDbg\avstor.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /Z7 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Z7 /Od /I "..\..\include" /I "..\..\threads" /D "_DEBUG" /D "_WINDOWS" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Z7 /Od /I "..\..\include" /I\
 "..\..\threads" /D "_DEBUG" /D "_WINDOWS" /D "WIN32" /D\
 AVSTOR_CONFIG_THREAD_SAFE=1 /Fp"$(INTDIR)/avstor.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\avstor\MIPSDbg/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
LIB32_FLAGS=/nologo /out:"$(OUTDIR)/avstor.lib" 
LIB32_OBJS= \
	".\avstor\MIPSDbg\avstor.obj"

".\bin\MIPSDbg\avstor.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/avstor.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "avstor - Win32 MIPSRel"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "avstor\MIPSRel"
# PROP BASE Intermediate_Dir "avstor\MIPSRel"
# PROP BASE Target_Dir "avstor"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\MIPSRel"
# PROP Intermediate_Dir "avstor\MIPSRel"
# PROP Target_Dir "avstor"
OUTDIR=.\bin\MIPSRel
INTDIR=.\avstor\MIPSRel

ALL : ".\bin\MIPSRel\avstor.lib"

CLEAN : 
	-@erase ".\avstor\MIPSRel\avstor.obj"
	-@erase ".\bin\MIPSRel\avstor.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "..\..\include" /I "..\..\threads" /D "NDEBUG" /D "_WINDOWS" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "..\..\include" /I\
 "..\..\threads" /D "NDEBUG" /D "_WINDOWS" /D "WIN32" /D\
 AVSTOR_CONFIG_THREAD_SAFE=1 /Fp"$(INTDIR)/avstor.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\avstor\MIPSRel/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
LIB32_FLAGS=/nologo /out:"$(OUTDIR)/avstor.lib" 
LIB32_OBJS= \
	".\avstor\MIPSRel\avstor.obj"

".\bin\MIPSRel\avstor.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/avstor.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSRel"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "avstest_"
# PROP BASE Intermediate_Dir "avstest_"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\MIPSRel"
# PROP Intermediate_Dir "avstest\MIPSRel"
# PROP Target_Dir ""
OUTDIR=.\bin\MIPSRel
INTDIR=.\avstest\MIPSRel

ALL : "avstor - Win32 MIPSRel" "stdthrd - Win32 MIPSRel"\
 ".\bin\MIPSRel\avstest.exe"

CLEAN : 
	-@erase ".\avstest\MIPSRel\avsdb.obj"
	-@erase ".\avstest\MIPSRel\avstest.obj"
	-@erase ".\avstest\MIPSRel\timer.obj"
	-@erase ".\avstest\MIPSRel\tst_dfs.obj"
	-@erase ".\bin\MIPSRel\avstest.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "..\..\include" /I "..\..\threads" /D "NDEBUG" /D "_CONSOLE" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "..\..\include" /I\
 "..\..\threads" /D "NDEBUG" /D "_CONSOLE" /D "WIN32" /D\
 AVSTOR_CONFIG_THREAD_SAFE=1 /Fp"$(INTDIR)/build.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\avstest\MIPSRel/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

RSC=rc.exe
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /machine:MIPS
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /machine:MIPS /out:"bin\MIPSRel/avstest.exe"
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:console /incremental:no /pdb:"$(OUTDIR)/avstest.pdb" /machine:MIPS\
 /out:"$(OUTDIR)/avstest.exe" 
LINK32_OBJS= \
	".\avstest\MIPSRel\avsdb.obj" \
	".\avstest\MIPSRel\avstest.obj" \
	".\avstest\MIPSRel\timer.obj" \
	".\avstest\MIPSRel\tst_dfs.obj" \
	".\bin\MIPSRel\avstor.lib" \
	".\bin\MIPSRel\stdthrd.lib"

".\bin\MIPSRel\avstest.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/build.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSDbg"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "avstest0"
# PROP BASE Intermediate_Dir "avstest0"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "bin\MIPSDbg"
# PROP Intermediate_Dir "avstest\MIPSDbg"
# PROP Target_Dir ""
OUTDIR=.\bin\MIPSDbg
INTDIR=.\avstest\MIPSDbg

ALL : "avstor - Win32 MIPSDbg" "stdthrd - Win32 MIPSDbg"\
 ".\bin\MIPSDbg\avstest.exe"

CLEAN : 
	-@erase ".\avstest\MIPSDbg\avsdb.obj"
	-@erase ".\avstest\MIPSDbg\avstest.obj"
	-@erase ".\avstest\MIPSDbg\timer.obj"
	-@erase ".\avstest\MIPSDbg\tst_dfs.obj"
	-@erase ".\avstest\MIPSDbg\vc40.pdb"
	-@erase ".\bin\MIPSDbg\avstest.exe"
	-@erase ".\bin\MIPSDbg\avstest.ilk"
	-@erase ".\bin\MIPSDbg\avstest.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "..\..\include" /I "..\..\threads" /D "_DEBUG" /D "_CONSOLE" /D "WIN32" /D AVSTOR_CONFIG_THREAD_SAFE=1 /YX /c
CPP_PROJ=/nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "..\..\include" /I\
 "..\..\threads" /D "_DEBUG" /D "_CONSOLE" /D "WIN32" /D\
 AVSTOR_CONFIG_THREAD_SAFE=1 /Fp"$(INTDIR)/build.pch" /YX /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\avstest\MIPSDbg/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

RSC=rc.exe
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /debug /machine:MIPS
# SUBTRACT BASE LINK32 /incremental:no
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /debug /machine:MIPS /out:"bin\MIPSDbg/avstest.exe"
# SUBTRACT LINK32 /incremental:no
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:console /incremental:yes /pdb:"$(OUTDIR)/avstest.pdb" /debug\
 /machine:MIPS /out:"$(OUTDIR)/avstest.exe" 
LINK32_OBJS= \
	".\avstest\MIPSDbg\avsdb.obj" \
	".\avstest\MIPSDbg\avstest.obj" \
	".\avstest\MIPSDbg\timer.obj" \
	".\avstest\MIPSDbg\tst_dfs.obj" \
	".\bin\MIPSDbg\avstor.lib" \
	".\bin\MIPSDbg\stdthrd.lib"

".\bin\MIPSDbg\avstest.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/build.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "stdthrd - Win32 MIPSRel"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "stdthrd\MIPSRel"
# PROP BASE Intermediate_Dir "stdthrd\MIPSRel"
# PROP BASE Target_Dir "stdthrd"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\MIPSRel"
# PROP Intermediate_Dir "stdthrd\MIPSRel"
# PROP Target_Dir "stdthrd"
OUTDIR=.\bin\MIPSRel
INTDIR=.\stdthrd\MIPSRel

ALL : ".\bin\MIPSRel\stdthrd.lib"

CLEAN : 
	-@erase ".\bin\MIPSRel\stdthrd.lib"
	-@erase ".\stdthrd\MIPSRel\atomics.obj"
	-@erase ".\stdthrd\MIPSRel\sync.obj"
	-@erase ".\stdthrd\MIPSRel\thrd.obj"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /QMR4600 /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "..\..\threads" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
CPP_PROJ=/nologo /QMR4600 /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "..\..\threads" /D\
 "WIN32" /D "NDEBUG" /D "_WINDOWS" /Fp"$(INTDIR)/stdthrd.pch" /YX\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\stdthrd\MIPSRel/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
LIB32_FLAGS=/nologo /out:"$(OUTDIR)/stdthrd.lib" 
LIB32_OBJS= \
	".\stdthrd\MIPSRel\atomics.obj" \
	".\stdthrd\MIPSRel\sync.obj" \
	".\stdthrd\MIPSRel\thrd.obj"

".\bin\MIPSRel\stdthrd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/stdthrd.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "stdthrd - Win32 MIPSDbg"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "stdthrd\MIPSDbg"
# PROP BASE Intermediate_Dir "stdthrd\MIPSDbg"
# PROP BASE Target_Dir "stdthrd"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "bin\MIPSDbg"
# PROP Intermediate_Dir "stdthrd\MIPSDbg"
# PROP Target_Dir "stdthrd"
OUTDIR=.\bin\MIPSDbg
INTDIR=.\stdthrd\MIPSDbg

ALL : ".\bin\MIPSDbg\stdthrd.lib"

CLEAN : 
	-@erase ".\bin\MIPSDbg\stdthrd.lib"
	-@erase ".\stdthrd\MIPSDbg\atomics.obj"
	-@erase ".\stdthrd\MIPSDbg\sync.obj"
	-@erase ".\stdthrd\MIPSDbg\thrd.obj"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /Z7 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Z7 /Od /I "..\..\threads" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
CPP_PROJ=/nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Z7 /Od /I "..\..\threads" /D\
 "WIN32" /D "_DEBUG" /D "_WINDOWS" /Fp"$(INTDIR)/stdthrd.pch" /YX\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\stdthrd\MIPSDbg/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
LIB32_FLAGS=/nologo /out:"$(OUTDIR)/stdthrd.lib" 
LIB32_OBJS= \
	".\stdthrd\MIPSDbg\atomics.obj" \
	".\stdthrd\MIPSDbg\sync.obj" \
	".\stdthrd\MIPSDbg\thrd.obj"

".\bin\MIPSDbg\stdthrd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/stdthrd.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "testthrd - Win32 MIPSRel"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "testthrd\MIPSRel"
# PROP BASE Intermediate_Dir "testthrd\MIPSRel"
# PROP BASE Target_Dir "testthrd"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\MIPSRel"
# PROP Intermediate_Dir "testthrd\MIPSRel"
# PROP Target_Dir "testthrd"
OUTDIR=.\bin\MIPSRel
INTDIR=.\testthrd\MIPSRel

ALL : "stdthrd - Win32 MIPSRel" ".\bin\MIPSRel\testthrd.exe"

CLEAN : 
	-@erase ".\bin\MIPSRel\testthrd.exe"
	-@erase ".\testthrd\MIPSRel\test.obj"
	-@erase ".\testthrd\MIPSRel\timer.obj"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "..\..\threads" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /YX /c
CPP_PROJ=/nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "..\..\threads" /D "WIN32"\
 /D "NDEBUG" /D "_CONSOLE" /Fp"$(INTDIR)/testthrd.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\testthrd\MIPSRel/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

RSC=rc.exe
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /machine:MIPS
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /machine:MIPS
# SUBTRACT LINK32 /debug
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:console /incremental:no /pdb:"$(OUTDIR)/testthrd.pdb" /machine:MIPS\
 /out:"$(OUTDIR)/testthrd.exe" 
LINK32_OBJS= \
	".\bin\MIPSRel\stdthrd.lib" \
	".\testthrd\MIPSRel\test.obj" \
	".\testthrd\MIPSRel\timer.obj"

".\bin\MIPSRel\testthrd.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/testthrd.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "testthrd - Win32 MIPSDbg"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "testthrd\MIPSDbg"
# PROP BASE Intermediate_Dir "testthrd\MIPSDbg"
# PROP BASE Target_Dir "testthrd"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "bin\MIPSDbg"
# PROP Intermediate_Dir "testthrd\MIPSDbg"
# PROP Target_Dir "testthrd"
OUTDIR=.\bin\MIPSDbg
INTDIR=.\testthrd\MIPSDbg

ALL : "stdthrd - Win32 MIPSDbg" ".\bin\MIPSDbg\testthrd.exe"

CLEAN : 
	-@erase ".\bin\MIPSDbg\testthrd.exe"
	-@erase ".\bin\MIPSDbg\testthrd.ilk"
	-@erase ".\bin\MIPSDbg\testthrd.pdb"
	-@erase ".\testthrd\MIPSDbg\test.obj"
	-@erase ".\testthrd\MIPSDbg\timer.obj"
	-@erase ".\testthrd\MIPSDbg\vc40.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "..\..\threads" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /YX /c
CPP_PROJ=/nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "..\..\threads" /D\
 "WIN32" /D "_DEBUG" /D "_CONSOLE" /Fp"$(INTDIR)/testthrd.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\testthrd\MIPSDbg/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

RSC=rc.exe
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /debug /machine:MIPS
# SUBTRACT BASE LINK32 /incremental:no
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /debug /machine:MIPS
# SUBTRACT LINK32 /incremental:no
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:console /incremental:yes /pdb:"$(OUTDIR)/testthrd.pdb" /debug\
 /machine:MIPS /out:"$(OUTDIR)/testthrd.exe" 
LINK32_OBJS= \
	".\bin\MIPSDbg\stdthrd.lib" \
	".\testthrd\MIPSDbg\test.obj" \
	".\testthrd\MIPSDbg\timer.obj"

".\bin\MIPSDbg\testthrd.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/testthrd.bsc" 
BSC32_SBRS= \
	

!ENDIF 

################################################################################
# Begin Target

# Name "avstest - Win32 Release"
# Name "avstest - Win32 Debug"
# Name "avstest - Win32 MIPSRel"
# Name "avstest - Win32 MIPSDbg"

!IF  "$(CFG)" == "avstest - Win32 Release"

!ELSEIF  "$(CFG)" == "avstest - Win32 Debug"

!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSRel"

!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSDbg"

!ENDIF 

################################################################################
# Begin Project Dependency

# Project_Dep_Name "stdthrd"

!IF  "$(CFG)" == "avstest - Win32 Release"

"stdthrd - Win32 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="stdthrd - Win32 Release" 

!ELSEIF  "$(CFG)" == "avstest - Win32 Debug"

"stdthrd - Win32 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="stdthrd - Win32 Debug" 

!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSRel"

"stdthrd - Win32 MIPSRel" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="stdthrd - Win32 MIPSRel" 

!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSDbg"

"stdthrd - Win32 MIPSDbg" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="stdthrd - Win32 MIPSDbg" 

!ENDIF 

# End Project Dependency
################################################################################
# Begin Source File

SOURCE=\repos\libavstor\tests\tst_dfs.c

!IF  "$(CFG)" == "avstest - Win32 Release"

DEP_CPP_TST_D=\
	"..\..\include\avstor.h"\
	"..\..\tests\avsdb.h"\
	"..\..\tests\avstest.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	".\STDINT.H"\
	

"$(INTDIR)\tst_dfs.obj" : $(SOURCE) $(DEP_CPP_TST_D) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 Debug"

DEP_CPP_TST_D=\
	"..\..\include\avstor.h"\
	"..\..\tests\avsdb.h"\
	"..\..\tests\avstest.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	".\STDINT.H"\
	

"$(INTDIR)\tst_dfs.obj" : $(SOURCE) $(DEP_CPP_TST_D) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSRel"

DEP_CPP_TST_D=\
	"..\..\include\avstor.h"\
	"..\..\tests\avsdb.h"\
	"..\..\tests\avstest.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	{$(INCLUDE)}"\STDINT.H"\
	

".\avstest\MIPSRel\tst_dfs.obj" : $(SOURCE) $(DEP_CPP_TST_D) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSDbg"

DEP_CPP_TST_D=\
	"..\..\include\avstor.h"\
	"..\..\tests\avsdb.h"\
	"..\..\tests\avstest.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	{$(INCLUDE)}"\STDINT.H"\
	

".\avstest\MIPSDbg\tst_dfs.obj" : $(SOURCE) $(DEP_CPP_TST_D) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\repos\libavstor\tests\timer.c

!IF  "$(CFG)" == "avstest - Win32 Release"

DEP_CPP_TIMER=\
	"..\..\tests\timer.h"\
	

"$(INTDIR)\timer.obj" : $(SOURCE) $(DEP_CPP_TIMER) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 Debug"

DEP_CPP_TIMER=\
	"..\..\tests\timer.h"\
	

"$(INTDIR)\timer.obj" : $(SOURCE) $(DEP_CPP_TIMER) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSRel"

DEP_CPP_TIMER=\
	"..\..\tests\timer.h"\
	

".\avstest\MIPSRel\timer.obj" : $(SOURCE) $(DEP_CPP_TIMER) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSDbg"

DEP_CPP_TIMER=\
	"..\..\tests\timer.h"\
	

".\avstest\MIPSDbg\timer.obj" : $(SOURCE) $(DEP_CPP_TIMER) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\repos\libavstor\tests\avstest.c

!IF  "$(CFG)" == "avstest - Win32 Release"

DEP_CPP_AVSTE=\
	"..\..\include\avstor.h"\
	"..\..\tests\avstest.h"\
	"..\..\tests\timer.h"\
	".\STDINT.H"\
	".\sys\STAT.H"\
	".\sys\TYPES.H"\
	

"$(INTDIR)\avstest.obj" : $(SOURCE) $(DEP_CPP_AVSTE) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 Debug"

DEP_CPP_AVSTE=\
	"..\..\include\avstor.h"\
	"..\..\tests\avstest.h"\
	"..\..\tests\timer.h"\
	".\STDINT.H"\
	".\sys\STAT.H"\
	".\sys\TYPES.H"\
	

"$(INTDIR)\avstest.obj" : $(SOURCE) $(DEP_CPP_AVSTE) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSRel"

DEP_CPP_AVSTE=\
	"..\..\include\avstor.h"\
	"..\..\tests\avstest.h"\
	"..\..\tests\timer.h"\
	{$(INCLUDE)}"\STDINT.H"\
	{$(INCLUDE)}"\sys\STAT.H"\
	{$(INCLUDE)}"\sys\TYPES.H"\
	

".\avstest\MIPSRel\avstest.obj" : $(SOURCE) $(DEP_CPP_AVSTE) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSDbg"

DEP_CPP_AVSTE=\
	"..\..\include\avstor.h"\
	"..\..\tests\avstest.h"\
	"..\..\tests\timer.h"\
	{$(INCLUDE)}"\STDINT.H"\
	{$(INCLUDE)}"\sys\STAT.H"\
	{$(INCLUDE)}"\sys\TYPES.H"\
	

".\avstest\MIPSDbg\avstest.obj" : $(SOURCE) $(DEP_CPP_AVSTE) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\repos\libavstor\tests\avsdb.c

!IF  "$(CFG)" == "avstest - Win32 Release"

DEP_CPP_AVSDB=\
	"..\..\tests\avsdb.h"\
	".\STDINT.H"\
	

"$(INTDIR)\avsdb.obj" : $(SOURCE) $(DEP_CPP_AVSDB) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 Debug"

DEP_CPP_AVSDB=\
	"..\..\tests\avsdb.h"\
	".\STDINT.H"\
	

"$(INTDIR)\avsdb.obj" : $(SOURCE) $(DEP_CPP_AVSDB) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSRel"

DEP_CPP_AVSDB=\
	"..\..\tests\avsdb.h"\
	{$(INCLUDE)}"\STDINT.H"\
	

".\avstest\MIPSRel\avsdb.obj" : $(SOURCE) $(DEP_CPP_AVSDB) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSDbg"

DEP_CPP_AVSDB=\
	"..\..\tests\avsdb.h"\
	{$(INCLUDE)}"\STDINT.H"\
	

".\avstest\MIPSDbg\avsdb.obj" : $(SOURCE) $(DEP_CPP_AVSDB) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Project Dependency

# Project_Dep_Name "avstor"

!IF  "$(CFG)" == "avstest - Win32 Release"

"avstor - Win32 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="avstor - Win32 Release" 

!ELSEIF  "$(CFG)" == "avstest - Win32 Debug"

"avstor - Win32 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="avstor - Win32 Debug" 

!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSRel"

"avstor - Win32 MIPSRel" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="avstor - Win32 MIPSRel" 

!ELSEIF  "$(CFG)" == "avstest - Win32 MIPSDbg"

"avstor - Win32 MIPSDbg" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="avstor - Win32 MIPSDbg" 

!ENDIF 

# End Project Dependency
# End Target
################################################################################
# Begin Target

# Name "stdthrd - Win32 Release"
# Name "stdthrd - Win32 Debug"
# Name "stdthrd - Win32 MIPSRel"
# Name "stdthrd - Win32 MIPSDbg"

!IF  "$(CFG)" == "stdthrd - Win32 Release"

!ELSEIF  "$(CFG)" == "stdthrd - Win32 Debug"

!ELSEIF  "$(CFG)" == "stdthrd - Win32 MIPSRel"

!ELSEIF  "$(CFG)" == "stdthrd - Win32 MIPSDbg"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=\repos\libavstor\threads\thrd.c

!IF  "$(CFG)" == "stdthrd - Win32 Release"

DEP_CPP_THRD_=\
	"..\..\threads\_threads.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	".\STDINT.H"\
	

"$(INTDIR)\thrd.obj" : $(SOURCE) $(DEP_CPP_THRD_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "stdthrd - Win32 Debug"

DEP_CPP_THRD_=\
	"..\..\threads\_threads.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	".\STDINT.H"\
	

"$(INTDIR)\thrd.obj" : $(SOURCE) $(DEP_CPP_THRD_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "stdthrd - Win32 MIPSRel"

DEP_CPP_THRD_=\
	"..\..\threads\_threads.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	{$(INCLUDE)}"\STDINT.H"\
	

".\stdthrd\MIPSRel\thrd.obj" : $(SOURCE) $(DEP_CPP_THRD_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "stdthrd - Win32 MIPSDbg"

DEP_CPP_THRD_=\
	"..\..\threads\_threads.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	{$(INCLUDE)}"\STDINT.H"\
	

".\stdthrd\MIPSDbg\thrd.obj" : $(SOURCE) $(DEP_CPP_THRD_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\repos\libavstor\threads\sync.c

!IF  "$(CFG)" == "stdthrd - Win32 Release"

DEP_CPP_SYNC_=\
	"..\..\threads\_threads.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	

"$(INTDIR)\sync.obj" : $(SOURCE) $(DEP_CPP_SYNC_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "stdthrd - Win32 Debug"

DEP_CPP_SYNC_=\
	"..\..\threads\_threads.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	

"$(INTDIR)\sync.obj" : $(SOURCE) $(DEP_CPP_SYNC_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "stdthrd - Win32 MIPSRel"

DEP_CPP_SYNC_=\
	"..\..\threads\_threads.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	

".\stdthrd\MIPSRel\sync.obj" : $(SOURCE) $(DEP_CPP_SYNC_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "stdthrd - Win32 MIPSDbg"

DEP_CPP_SYNC_=\
	"..\..\threads\_threads.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	

".\stdthrd\MIPSDbg\sync.obj" : $(SOURCE) $(DEP_CPP_SYNC_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\repos\libavstor\threads\atomics.c

!IF  "$(CFG)" == "stdthrd - Win32 Release"

DEP_CPP_ATOMI=\
	"..\..\threads\stdatomic.h"\
	

"$(INTDIR)\atomics.obj" : $(SOURCE) $(DEP_CPP_ATOMI) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "stdthrd - Win32 Debug"

DEP_CPP_ATOMI=\
	"..\..\threads\stdatomic.h"\
	

"$(INTDIR)\atomics.obj" : $(SOURCE) $(DEP_CPP_ATOMI) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "stdthrd - Win32 MIPSRel"

DEP_CPP_ATOMI=\
	"..\..\threads\stdatomic.h"\
	

".\stdthrd\MIPSRel\atomics.obj" : $(SOURCE) $(DEP_CPP_ATOMI) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "stdthrd - Win32 MIPSDbg"

DEP_CPP_ATOMI=\
	"..\..\threads\stdatomic.h"\
	

".\stdthrd\MIPSDbg\atomics.obj" : $(SOURCE) $(DEP_CPP_ATOMI) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
# End Target
################################################################################
# Begin Target

# Name "testthrd - Win32 Release"
# Name "testthrd - Win32 Debug"
# Name "testthrd - Win32 MIPSRel"
# Name "testthrd - Win32 MIPSDbg"

!IF  "$(CFG)" == "testthrd - Win32 Release"

!ELSEIF  "$(CFG)" == "testthrd - Win32 Debug"

!ELSEIF  "$(CFG)" == "testthrd - Win32 MIPSRel"

!ELSEIF  "$(CFG)" == "testthrd - Win32 MIPSDbg"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=\repos\libavstor\threads\test.c

!IF  "$(CFG)" == "testthrd - Win32 Release"

DEP_CPP_TEST_=\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	

"$(INTDIR)\test.obj" : $(SOURCE) $(DEP_CPP_TEST_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "testthrd - Win32 Debug"

DEP_CPP_TEST_=\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	

"$(INTDIR)\test.obj" : $(SOURCE) $(DEP_CPP_TEST_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "testthrd - Win32 MIPSRel"

DEP_CPP_TEST_=\
	"..\..\tests\timer.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	{$(INCLUDE)}"\STDINT.H"\
	

".\testthrd\MIPSRel\test.obj" : $(SOURCE) $(DEP_CPP_TEST_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "testthrd - Win32 MIPSDbg"

DEP_CPP_TEST_=\
	"..\..\tests\timer.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	{$(INCLUDE)}"\STDINT.H"\
	

".\testthrd\MIPSDbg\test.obj" : $(SOURCE) $(DEP_CPP_TEST_) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Project Dependency

# Project_Dep_Name "stdthrd"

!IF  "$(CFG)" == "testthrd - Win32 Release"

"stdthrd - Win32 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="stdthrd - Win32 Release" 

!ELSEIF  "$(CFG)" == "testthrd - Win32 Debug"

"stdthrd - Win32 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="stdthrd - Win32 Debug" 

!ELSEIF  "$(CFG)" == "testthrd - Win32 MIPSRel"

"stdthrd - Win32 MIPSRel" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="stdthrd - Win32 MIPSRel" 

!ELSEIF  "$(CFG)" == "testthrd - Win32 MIPSDbg"

"stdthrd - Win32 MIPSDbg" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\build.mak" CFG="stdthrd - Win32 MIPSDbg" 

!ENDIF 

# End Project Dependency
################################################################################
# Begin Source File

SOURCE=\repos\libavstor\tests\timer.c

!IF  "$(CFG)" == "testthrd - Win32 Release"

!ELSEIF  "$(CFG)" == "testthrd - Win32 Debug"

!ELSEIF  "$(CFG)" == "testthrd - Win32 MIPSRel"

DEP_CPP_TIMER=\
	"..\..\tests\timer.h"\
	

".\testthrd\MIPSRel\timer.obj" : $(SOURCE) $(DEP_CPP_TIMER) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "testthrd - Win32 MIPSDbg"

DEP_CPP_TIMER=\
	"..\..\tests\timer.h"\
	

".\testthrd\MIPSDbg\timer.obj" : $(SOURCE) $(DEP_CPP_TIMER) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
# End Target
################################################################################
# Begin Target

# Name "avstor - Win32 Release"
# Name "avstor - Win32 Debug"
# Name "avstor - Win32 MIPSDbg"
# Name "avstor - Win32 MIPSRel"

!IF  "$(CFG)" == "avstor - Win32 Release"

!ELSEIF  "$(CFG)" == "avstor - Win32 Debug"

!ELSEIF  "$(CFG)" == "avstor - Win32 MIPSDbg"

!ELSEIF  "$(CFG)" == "avstor - Win32 MIPSRel"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=\repos\libavstor\src\avstor.c

!IF  "$(CFG)" == "avstor - Win32 Release"

DEP_CPP_AVSTO=\
	"..\..\include\avstor.h"\
	".\STDINT.H"\
	".\sys\STAT.H"\
	".\sys\TYPES.H"\
	

"$(INTDIR)\avstor.obj" : $(SOURCE) $(DEP_CPP_AVSTO) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstor - Win32 Debug"

DEP_CPP_AVSTO=\
	"..\..\include\avstor.h"\
	".\STDINT.H"\
	".\sys\STAT.H"\
	".\sys\TYPES.H"\
	

"$(INTDIR)\avstor.obj" : $(SOURCE) $(DEP_CPP_AVSTO) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstor - Win32 MIPSDbg"

DEP_CPP_AVSTO=\
	"..\..\include\avstor.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	{$(INCLUDE)}"\STDINT.H"\
	{$(INCLUDE)}"\sys\STAT.H"\
	{$(INCLUDE)}"\sys\TYPES.H"\
	

".\avstor\MIPSDbg\avstor.obj" : $(SOURCE) $(DEP_CPP_AVSTO) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "avstor - Win32 MIPSRel"

DEP_CPP_AVSTO=\
	"..\..\include\avstor.h"\
	"..\..\threads\stdatomic.h"\
	"..\..\threads\threads.h"\
	{$(INCLUDE)}"\STDINT.H"\
	{$(INCLUDE)}"\sys\STAT.H"\
	{$(INCLUDE)}"\sys\TYPES.H"\
	

".\avstor\MIPSRel\avstor.obj" : $(SOURCE) $(DEP_CPP_AVSTO) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
