/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.bswmodule.bswimplementation;

import autosar3x.bswmodule.bswimplementation.BswimplementationFactory;
import autosar3x.bswmodule.bswimplementation.impl.BswimplementationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BswimplementationPackage
extends EPackage {
    public static final String eNAME = "bswimplementation";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/bm/bimplementation";
    public static final String eNS_PREFIX = "";
    public static final BswimplementationPackage eINSTANCE = BswimplementationPackageImpl.init();
    public static final int BSW_IMPLEMENTATION = 0;
    public static final int BSW_IMPLEMENTATION__GCHECKSUM = 0;
    public static final int BSW_IMPLEMENTATION__GTIMESTAMP = 1;
    public static final int BSW_IMPLEMENTATION__CHECKSUM = 2;
    public static final int BSW_IMPLEMENTATION__TIMESTAMP = 3;
    public static final int BSW_IMPLEMENTATION__GSHORT_NAME = 4;
    public static final int BSW_IMPLEMENTATION__GUUID = 5;
    public static final int BSW_IMPLEMENTATION__GCATEGORY = 6;
    public static final int BSW_IMPLEMENTATION__GDESC = 7;
    public static final int BSW_IMPLEMENTATION__SHORT_NAME = 8;
    public static final int BSW_IMPLEMENTATION__LONG_NAME = 9;
    public static final int BSW_IMPLEMENTATION__DESC = 10;
    public static final int BSW_IMPLEMENTATION__CATEGORY = 11;
    public static final int BSW_IMPLEMENTATION__ADMIN_DATA = 12;
    public static final int BSW_IMPLEMENTATION__INTRODUCTION = 13;
    public static final int BSW_IMPLEMENTATION__UUID = 14;
    public static final int BSW_IMPLEMENTATION__ALL_EXTENSIONS = 15;
    public static final int BSW_IMPLEMENTATION__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_IMPLEMENTATION__GAR_PACKAGE = 17;
    public static final int BSW_IMPLEMENTATION__AR_PACKAGE = 18;
    public static final int BSW_IMPLEMENTATION__GRESOURCE_CONSUMPTION = 19;
    public static final int BSW_IMPLEMENTATION__GCODE_DESCRIPTORS = 20;
    public static final int BSW_IMPLEMENTATION__CODE_DESCRIPTORS = 21;
    public static final int BSW_IMPLEMENTATION__CODE_GENERATOR = 22;
    public static final int BSW_IMPLEMENTATION__COMPILERS = 23;
    public static final int BSW_IMPLEMENTATION__IMPLEMENTATION_DEPENDENCIES = 24;
    public static final int BSW_IMPLEMENTATION__LINKERS = 25;
    public static final int BSW_IMPLEMENTATION__PROCESSORS = 26;
    public static final int BSW_IMPLEMENTATION__PROGRAMMING_LANGUAGE = 27;
    public static final int BSW_IMPLEMENTATION__RESOURCE_CONSUMPTION = 28;
    public static final int BSW_IMPLEMENTATION__SW_MAJOR_VERSION = 29;
    public static final int BSW_IMPLEMENTATION__SW_MINOR_VERSION = 30;
    public static final int BSW_IMPLEMENTATION__SW_PATCH_VERSION = 31;
    public static final int BSW_IMPLEMENTATION__VENDOR_ID = 32;
    public static final int BSW_IMPLEMENTATION__AR_MAJOR_VERSION = 33;
    public static final int BSW_IMPLEMENTATION__AR_MINOR_VERSION = 34;
    public static final int BSW_IMPLEMENTATION__AR_PATCH_VERSION = 35;
    public static final int BSW_IMPLEMENTATION__BEHAVIOR = 36;
    public static final int BSW_IMPLEMENTATION__PRECONFIGURED_CONFIGURATION = 37;
    public static final int BSW_IMPLEMENTATION__RECOMMENDED_CONFIGURATION = 38;
    public static final int BSW_IMPLEMENTATION__REQUIRED_HWS = 39;
    public static final int BSW_IMPLEMENTATION__VENDOR_API_INFIX = 40;
    public static final int BSW_IMPLEMENTATION__VENDOR_SPECIFIC_MODULE_DEF = 41;
    public static final int BSW_IMPLEMENTATION_FEATURE_COUNT = 42;

    public EClass getBswImplementation();

    public EAttribute getBswImplementation_ArMajorVersion();

    public EAttribute getBswImplementation_ArMinorVersion();

    public EAttribute getBswImplementation_ArPatchVersion();

    public EReference getBswImplementation_Behavior();

    public EReference getBswImplementation_PreconfiguredConfiguration();

    public EReference getBswImplementation_RecommendedConfiguration();

    public EReference getBswImplementation_RequiredHWs();

    public EAttribute getBswImplementation_VendorApiInfix();

    public EReference getBswImplementation_VendorSpecificModuleDef();

    public BswimplementationFactory getBswimplementationFactory();

    public static interface Literals {
        public static final EClass BSW_IMPLEMENTATION = eINSTANCE.getBswImplementation();
        public static final EAttribute BSW_IMPLEMENTATION__AR_MAJOR_VERSION = eINSTANCE.getBswImplementation_ArMajorVersion();
        public static final EAttribute BSW_IMPLEMENTATION__AR_MINOR_VERSION = eINSTANCE.getBswImplementation_ArMinorVersion();
        public static final EAttribute BSW_IMPLEMENTATION__AR_PATCH_VERSION = eINSTANCE.getBswImplementation_ArPatchVersion();
        public static final EReference BSW_IMPLEMENTATION__BEHAVIOR = eINSTANCE.getBswImplementation_Behavior();
        public static final EReference BSW_IMPLEMENTATION__PRECONFIGURED_CONFIGURATION = eINSTANCE.getBswImplementation_PreconfiguredConfiguration();
        public static final EReference BSW_IMPLEMENTATION__RECOMMENDED_CONFIGURATION = eINSTANCE.getBswImplementation_RecommendedConfiguration();
        public static final EReference BSW_IMPLEMENTATION__REQUIRED_HWS = eINSTANCE.getBswImplementation_RequiredHWs();
        public static final EAttribute BSW_IMPLEMENTATION__VENDOR_API_INFIX = eINSTANCE.getBswImplementation_VendorApiInfix();
        public static final EReference BSW_IMPLEMENTATION__VENDOR_SPECIFIC_MODULE_DEF = eINSTANCE.getBswImplementation_VendorSpecificModuleDef();
    }
}

