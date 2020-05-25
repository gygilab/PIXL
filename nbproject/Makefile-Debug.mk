#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/2018314476/JMUtil.o \
	${OBJECTDIR}/_ext/2140376592/DigestOptions.o \
	${OBJECTDIR}/_ext/2140376592/Fragment.o \
	${OBJECTDIR}/_ext/2140376592/Isotope.o \
	${OBJECTDIR}/_ext/2082573942/emass.o \
	${OBJECTDIR}/_ext/2082573942/formula.o \
	${OBJECTDIR}/_ext/2082573942/parser.o \
	${OBJECTDIR}/_ext/2140376592/MSMass.o \
	${OBJECTDIR}/_ext/2140376592/Match.o \
	${OBJECTDIR}/_ext/2140376592/Peak.o \
	${OBJECTDIR}/_ext/2140376592/Peptide.o \
	${OBJECTDIR}/_ext/2140376592/Protein.o \
	${OBJECTDIR}/_ext/2140376592/Proteome.o \
	${OBJECTDIR}/_ext/2140376592/Run.o \
	${OBJECTDIR}/_ext/2140376592/Search.o \
	${OBJECTDIR}/_ext/2140376592/SearchResult.o \
	${OBJECTDIR}/_ext/2140376592/Spectrum.o \
	${OBJECTDIR}/_ext/2140376592/SpectrumHits.o \
	${OBJECTDIR}/pixl.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-lboost_program_options -lboost_regex -lboost_system -lboost_filesystem -lboost_thread -lpthread

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/pixl

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/pixl: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/pixl ${OBJECTFILES} ${LDLIBSOPTIONS} -lgsl -lgslcblas

${OBJECTDIR}/_ext/2018314476/JMUtil.o: ../JMUtil/JMUtil.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2018314476
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2018314476/JMUtil.o ../JMUtil/JMUtil.cpp

${OBJECTDIR}/_ext/2140376592/DigestOptions.o: ../MSLib/DigestOptions.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/DigestOptions.o ../MSLib/DigestOptions.cpp

${OBJECTDIR}/_ext/2140376592/Fragment.o: ../MSLib/Fragment.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/Fragment.o ../MSLib/Fragment.cpp

${OBJECTDIR}/_ext/2140376592/Isotope.o: ../MSLib/Isotope.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/Isotope.o ../MSLib/Isotope.cpp

${OBJECTDIR}/_ext/2082573942/emass.o: ../MSLib/Isotope/emass.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2082573942
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2082573942/emass.o ../MSLib/Isotope/emass.cpp

${OBJECTDIR}/_ext/2082573942/formula.o: ../MSLib/Isotope/formula.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2082573942
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2082573942/formula.o ../MSLib/Isotope/formula.cpp

${OBJECTDIR}/_ext/2082573942/parser.o: ../MSLib/Isotope/parser.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2082573942
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2082573942/parser.o ../MSLib/Isotope/parser.cpp

${OBJECTDIR}/_ext/2140376592/MSMass.o: ../MSLib/MSMass.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/MSMass.o ../MSLib/MSMass.cpp

${OBJECTDIR}/_ext/2140376592/Match.o: ../MSLib/Match.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/Match.o ../MSLib/Match.cpp

${OBJECTDIR}/_ext/2140376592/Peak.o: ../MSLib/Peak.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/Peak.o ../MSLib/Peak.cpp

${OBJECTDIR}/_ext/2140376592/Peptide.o: ../MSLib/Peptide.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/Peptide.o ../MSLib/Peptide.cpp

${OBJECTDIR}/_ext/2140376592/Protein.o: ../MSLib/Protein.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/Protein.o ../MSLib/Protein.cpp

${OBJECTDIR}/_ext/2140376592/Proteome.o: ../MSLib/Proteome.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/Proteome.o ../MSLib/Proteome.cpp

${OBJECTDIR}/_ext/2140376592/Run.o: ../MSLib/Run.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/Run.o ../MSLib/Run.cpp

${OBJECTDIR}/_ext/2140376592/Search.o: ../MSLib/Search.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/Search.o ../MSLib/Search.cpp

${OBJECTDIR}/_ext/2140376592/SearchResult.o: ../MSLib/SearchResult.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/SearchResult.o ../MSLib/SearchResult.cpp

${OBJECTDIR}/_ext/2140376592/Spectrum.o: ../MSLib/Spectrum.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/Spectrum.o ../MSLib/Spectrum.cpp

${OBJECTDIR}/_ext/2140376592/SpectrumHits.o: ../MSLib/SpectrumHits.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140376592
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140376592/SpectrumHits.o ../MSLib/SpectrumHits.cpp

${OBJECTDIR}/pixl.o: pixl.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/pixl.o pixl.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/pixl

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
