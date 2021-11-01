#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a pre- and a post- target defined where you can add customization code.
#
# This makefile implements macros and targets common to all configurations.
#
# NOCDDL


# Building and Cleaning subprojects are done by default, but can be controlled with the SUB
# macro. If SUB=no, subprojects will not be built or cleaned. The following macro
# statements set BUILD_SUB-CONF and CLEAN_SUB-CONF to .build-reqprojects-conf
# and .clean-reqprojects-conf unless SUB has the value 'no'
SUB_no=NO
SUBPROJECTS=${SUB_${SUB}}
BUILD_SUBPROJECTS_=.build-subprojects
BUILD_SUBPROJECTS_NO=
BUILD_SUBPROJECTS=${BUILD_SUBPROJECTS_${SUBPROJECTS}}
CLEAN_SUBPROJECTS_=.clean-subprojects
CLEAN_SUBPROJECTS_NO=
CLEAN_SUBPROJECTS=${CLEAN_SUBPROJECTS_${SUBPROJECTS}}


# Project Name
PROJECTNAME=simple_example_p2p.x

# Active Configuration
DEFAULTCONF=miwikit_pic18f46j50_24j40
CONF=${DEFAULTCONF}

# All Configurations
ALLCONFS=8bitwdk_pic18f46j50_24j40 8bitwdk_pic18f46j50_89xa exp16_pic24fj128ga010_24j40 exp16_pic24fj128ga010_89xa pic18exp_pic18f87j11_24j40 pic18exp_pic18f87j11_24xa pic18exp_pic18f87j11_49xa pic18exp_pic18f87j11_89xa picdemz_pic18f4620_24j40 miwikit_pic18f46j50_24j40 miwikit_pic18f46j50_89xa pic18exp_pic16f1947_24j40 


# build
.build-impl: .build-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .build-conf


# clean
.clean-impl: .clean-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .clean-conf

# clobber
.clobber-impl: .clobber-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=8bitwdk_pic18f46j50_24j40 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=8bitwdk_pic18f46j50_89xa clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=exp16_pic24fj128ga010_24j40 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=exp16_pic24fj128ga010_89xa clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=pic18exp_pic18f87j11_24j40 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=pic18exp_pic18f87j11_24xa clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=pic18exp_pic18f87j11_49xa clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=pic18exp_pic18f87j11_89xa clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=picdemz_pic18f4620_24j40 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=miwikit_pic18f46j50_24j40 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=miwikit_pic18f46j50_89xa clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=pic18exp_pic16f1947_24j40 clean



# all
.all-impl: .all-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=8bitwdk_pic18f46j50_24j40 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=8bitwdk_pic18f46j50_89xa build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=exp16_pic24fj128ga010_24j40 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=exp16_pic24fj128ga010_89xa build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=pic18exp_pic18f87j11_24j40 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=pic18exp_pic18f87j11_24xa build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=pic18exp_pic18f87j11_49xa build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=pic18exp_pic18f87j11_89xa build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=picdemz_pic18f4620_24j40 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=miwikit_pic18f46j50_24j40 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=miwikit_pic18f46j50_89xa build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=pic18exp_pic16f1947_24j40 build



# dependency checking support
.depcheck-impl:
#	@echo "# This code depends on make tool being used" >.dep.inc
#	@if [ -n "${MAKE_VERSION}" ]; then \
#	    echo "DEPFILES=\$$(wildcard \$$(addsuffix .d, \$${OBJECTFILES}))" >>.dep.inc; \
#	    echo "ifneq (\$${DEPFILES},)" >>.dep.inc; \
#	    echo "include \$${DEPFILES}" >>.dep.inc; \
#	    echo "endif" >>.dep.inc; \
#	else \
#	    echo ".KEEP_STATE:" >>.dep.inc; \
#	    echo ".KEEP_STATE_FILE:.make.state.\$${CONF}" >>.dep.inc; \
#	fi
