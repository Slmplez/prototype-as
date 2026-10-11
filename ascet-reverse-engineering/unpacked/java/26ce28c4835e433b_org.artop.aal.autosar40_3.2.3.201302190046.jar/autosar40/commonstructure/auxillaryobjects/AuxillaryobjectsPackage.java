/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.commonstructure.auxillaryobjects;

import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsFactory;
import autosar40.commonstructure.auxillaryobjects.impl.AuxillaryobjectsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface AuxillaryobjectsPackage
extends EPackage {
    public static final String eNAME = "auxillaryobjects";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/ao";
    public static final String eNS_PREFIX = "";
    public static final AuxillaryobjectsPackage eINSTANCE = AuxillaryobjectsPackageImpl.init();
    public static final int SW_ADDR_METHOD = 0;
    public static final int SW_ADDR_METHOD__GCHECKSUM = 0;
    public static final int SW_ADDR_METHOD__GTIMESTAMP = 1;
    public static final int SW_ADDR_METHOD__CHECKSUM = 2;
    public static final int SW_ADDR_METHOD__TIMESTAMP = 3;
    public static final int SW_ADDR_METHOD__GSHORT_NAME = 4;
    public static final int SW_ADDR_METHOD__SHORT_NAME = 5;
    public static final int SW_ADDR_METHOD__LONG_NAME = 6;
    public static final int SW_ADDR_METHOD__GUUID = 7;
    public static final int SW_ADDR_METHOD__GCATEGORY = 8;
    public static final int SW_ADDR_METHOD__GDESC = 9;
    public static final int SW_ADDR_METHOD__DESC = 10;
    public static final int SW_ADDR_METHOD__CATEGORY = 11;
    public static final int SW_ADDR_METHOD__ADMIN_DATA = 12;
    public static final int SW_ADDR_METHOD__INTRODUCTION = 13;
    public static final int SW_ADDR_METHOD__ANNOTATIONS = 14;
    public static final int SW_ADDR_METHOD__UUID = 15;
    public static final int SW_ADDR_METHOD__ALL_EXTENSIONS = 16;
    public static final int SW_ADDR_METHOD__CONTAINED_EXTENSIONS = 17;
    public static final int SW_ADDR_METHOD__GAR_PACKAGE = 18;
    public static final int SW_ADDR_METHOD__AR_PACKAGE = 19;
    public static final int SW_ADDR_METHOD__VARIATION_POINT = 20;
    public static final int SW_ADDR_METHOD__MEMORY_ALLOCATION_KEYWORD_POLICY = 21;
    public static final int SW_ADDR_METHOD__OPTION = 22;
    public static final int SW_ADDR_METHOD__SECTION_INITIALIZATION_POLICY = 23;
    public static final int SW_ADDR_METHOD__SECTION_TYPE = 24;
    public static final int SW_ADDR_METHOD_FEATURE_COUNT = 25;
    public static final int MEMORY_ALLOCATION_KEYWORD_POLICY_TYPE = 1;
    public static final int MEMORY_SECTION_TYPE = 2;

    public EClass getSwAddrMethod();

    public EAttribute getSwAddrMethod_MemoryAllocationKeywordPolicy();

    public EAttribute getSwAddrMethod_Option();

    public EAttribute getSwAddrMethod_SectionInitializationPolicy();

    public EAttribute getSwAddrMethod_SectionType();

    public EEnum getMemoryAllocationKeywordPolicyType();

    public EEnum getMemorySectionType();

    public AuxillaryobjectsFactory getAuxillaryobjectsFactory();

    public static interface Literals {
        public static final EClass SW_ADDR_METHOD = eINSTANCE.getSwAddrMethod();
        public static final EAttribute SW_ADDR_METHOD__MEMORY_ALLOCATION_KEYWORD_POLICY = eINSTANCE.getSwAddrMethod_MemoryAllocationKeywordPolicy();
        public static final EAttribute SW_ADDR_METHOD__OPTION = eINSTANCE.getSwAddrMethod_Option();
        public static final EAttribute SW_ADDR_METHOD__SECTION_INITIALIZATION_POLICY = eINSTANCE.getSwAddrMethod_SectionInitializationPolicy();
        public static final EAttribute SW_ADDR_METHOD__SECTION_TYPE = eINSTANCE.getSwAddrMethod_SectionType();
        public static final EEnum MEMORY_ALLOCATION_KEYWORD_POLICY_TYPE = eINSTANCE.getMemoryAllocationKeywordPolicyType();
        public static final EEnum MEMORY_SECTION_TYPE = eINSTANCE.getMemorySectionType();
    }
}

