/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.bswmodule.bswimplementation;

import autosar40.bswmodule.bswimplementation.BswimplementationFactory;
import autosar40.bswmodule.bswimplementation.impl.BswimplementationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BswimplementationPackage
extends EPackage {
    public static final String eNAME = "bswimplementation";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/bm/bimplementation";
    public static final String eNS_PREFIX = "";
    public static final BswimplementationPackage eINSTANCE = BswimplementationPackageImpl.init();
    public static final int BSW_DEBUG_INFO = 0;
    public static final int BSW_DEBUG_INFO__GCHECKSUM = 0;
    public static final int BSW_DEBUG_INFO__GTIMESTAMP = 1;
    public static final int BSW_DEBUG_INFO__CHECKSUM = 2;
    public static final int BSW_DEBUG_INFO__TIMESTAMP = 3;
    public static final int BSW_DEBUG_INFO__GSHORT_NAME = 4;
    public static final int BSW_DEBUG_INFO__SHORT_NAME = 5;
    public static final int BSW_DEBUG_INFO__LONG_NAME = 6;
    public static final int BSW_DEBUG_INFO__GUUID = 7;
    public static final int BSW_DEBUG_INFO__GCATEGORY = 8;
    public static final int BSW_DEBUG_INFO__GDESC = 9;
    public static final int BSW_DEBUG_INFO__DESC = 10;
    public static final int BSW_DEBUG_INFO__CATEGORY = 11;
    public static final int BSW_DEBUG_INFO__ADMIN_DATA = 12;
    public static final int BSW_DEBUG_INFO__INTRODUCTION = 13;
    public static final int BSW_DEBUG_INFO__ANNOTATIONS = 14;
    public static final int BSW_DEBUG_INFO__UUID = 15;
    public static final int BSW_DEBUG_INFO__ALL_EXTENSIONS = 16;
    public static final int BSW_DEBUG_INFO__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_DEBUG_INFO__BSW_IMPLEMENTATION = 18;
    public static final int BSW_DEBUG_INFO__LOCAL_DEBUG_DATAS = 19;
    public static final int BSW_DEBUG_INFO__PARAMETER_ACCESSED_FOR_DEBUGS = 20;
    public static final int BSW_DEBUG_INFO__VARIABLE_ACCESSED_FOR_DEBUGS = 21;
    public static final int BSW_DEBUG_INFO__VARIATION_POINT = 22;
    public static final int BSW_DEBUG_INFO_FEATURE_COUNT = 23;
    public static final int BSW_IMPLEMENTATION = 1;
    public static final int BSW_IMPLEMENTATION__GCHECKSUM = 0;
    public static final int BSW_IMPLEMENTATION__GTIMESTAMP = 1;
    public static final int BSW_IMPLEMENTATION__CHECKSUM = 2;
    public static final int BSW_IMPLEMENTATION__TIMESTAMP = 3;
    public static final int BSW_IMPLEMENTATION__GSHORT_NAME = 4;
    public static final int BSW_IMPLEMENTATION__SHORT_NAME = 5;
    public static final int BSW_IMPLEMENTATION__LONG_NAME = 6;
    public static final int BSW_IMPLEMENTATION__GUUID = 7;
    public static final int BSW_IMPLEMENTATION__GCATEGORY = 8;
    public static final int BSW_IMPLEMENTATION__GDESC = 9;
    public static final int BSW_IMPLEMENTATION__DESC = 10;
    public static final int BSW_IMPLEMENTATION__CATEGORY = 11;
    public static final int BSW_IMPLEMENTATION__ADMIN_DATA = 12;
    public static final int BSW_IMPLEMENTATION__INTRODUCTION = 13;
    public static final int BSW_IMPLEMENTATION__ANNOTATIONS = 14;
    public static final int BSW_IMPLEMENTATION__UUID = 15;
    public static final int BSW_IMPLEMENTATION__ALL_EXTENSIONS = 16;
    public static final int BSW_IMPLEMENTATION__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_IMPLEMENTATION__GAR_PACKAGE = 18;
    public static final int BSW_IMPLEMENTATION__AR_PACKAGE = 19;
    public static final int BSW_IMPLEMENTATION__VARIATION_POINT = 20;
    public static final int BSW_IMPLEMENTATION__GRESOURCE_CONSUMPTION = 21;
    public static final int BSW_IMPLEMENTATION__GCODE_DESCRIPTORS = 22;
    public static final int BSW_IMPLEMENTATION__CODE_DESCRIPTORS = 23;
    public static final int BSW_IMPLEMENTATION__COMPILERS = 24;
    public static final int BSW_IMPLEMENTATION__GENERATED_ARTIFACTS = 25;
    public static final int BSW_IMPLEMENTATION__HW_ELEMENTS = 26;
    public static final int BSW_IMPLEMENTATION__LINKERS = 27;
    public static final int BSW_IMPLEMENTATION__MC_SUPPORT = 28;
    public static final int BSW_IMPLEMENTATION__PROGRAMMING_LANGUAGE = 29;
    public static final int BSW_IMPLEMENTATION__REQUIRED_ARTIFACTS = 30;
    public static final int BSW_IMPLEMENTATION__REQUIRED_GENERATOR_TOOLS = 31;
    public static final int BSW_IMPLEMENTATION__RESOURCE_CONSUMPTION = 32;
    public static final int BSW_IMPLEMENTATION__SW_VERSION = 33;
    public static final int BSW_IMPLEMENTATION__SWC_BSW_MAPPING = 34;
    public static final int BSW_IMPLEMENTATION__USED_CODE_GENERATOR = 35;
    public static final int BSW_IMPLEMENTATION__VENDOR_ID = 36;
    public static final int BSW_IMPLEMENTATION__AR_RELEASE_VERSION = 37;
    public static final int BSW_IMPLEMENTATION__BEHAVIOR = 38;
    public static final int BSW_IMPLEMENTATION__DEBUG_INFOS = 39;
    public static final int BSW_IMPLEMENTATION__PRECONFIGURED_CONFIGURATIONS = 40;
    public static final int BSW_IMPLEMENTATION__RECOMMENDED_CONFIGURATIONS = 41;
    public static final int BSW_IMPLEMENTATION__VENDOR_API_INFIX = 42;
    public static final int BSW_IMPLEMENTATION__VENDOR_SPECIFIC_MODULE_DEFS = 43;
    public static final int BSW_IMPLEMENTATION_FEATURE_COUNT = 44;

    public EClass getBswDebugInfo();

    public EReference getBswDebugInfo_BswImplementation();

    public EReference getBswDebugInfo_LocalDebugDatas();

    public EReference getBswDebugInfo_ParameterAccessedForDebugs();

    public EReference getBswDebugInfo_VariableAccessedForDebugs();

    public EReference getBswDebugInfo_VariationPoint();

    public EClass getBswImplementation();

    public EAttribute getBswImplementation_ArReleaseVersion();

    public EReference getBswImplementation_Behavior();

    public EReference getBswImplementation_DebugInfos();

    public EReference getBswImplementation_PreconfiguredConfigurations();

    public EReference getBswImplementation_RecommendedConfigurations();

    public EAttribute getBswImplementation_VendorApiInfix();

    public EReference getBswImplementation_VendorSpecificModuleDefs();

    public BswimplementationFactory getBswimplementationFactory();

    public static interface Literals {
        public static final EClass BSW_DEBUG_INFO = eINSTANCE.getBswDebugInfo();
        public static final EReference BSW_DEBUG_INFO__BSW_IMPLEMENTATION = eINSTANCE.getBswDebugInfo_BswImplementation();
        public static final EReference BSW_DEBUG_INFO__LOCAL_DEBUG_DATAS = eINSTANCE.getBswDebugInfo_LocalDebugDatas();
        public static final EReference BSW_DEBUG_INFO__PARAMETER_ACCESSED_FOR_DEBUGS = eINSTANCE.getBswDebugInfo_ParameterAccessedForDebugs();
        public static final EReference BSW_DEBUG_INFO__VARIABLE_ACCESSED_FOR_DEBUGS = eINSTANCE.getBswDebugInfo_VariableAccessedForDebugs();
        public static final EReference BSW_DEBUG_INFO__VARIATION_POINT = eINSTANCE.getBswDebugInfo_VariationPoint();
        public static final EClass BSW_IMPLEMENTATION = eINSTANCE.getBswImplementation();
        public static final EAttribute BSW_IMPLEMENTATION__AR_RELEASE_VERSION = eINSTANCE.getBswImplementation_ArReleaseVersion();
        public static final EReference BSW_IMPLEMENTATION__BEHAVIOR = eINSTANCE.getBswImplementation_Behavior();
        public static final EReference BSW_IMPLEMENTATION__DEBUG_INFOS = eINSTANCE.getBswImplementation_DebugInfos();
        public static final EReference BSW_IMPLEMENTATION__PRECONFIGURED_CONFIGURATIONS = eINSTANCE.getBswImplementation_PreconfiguredConfigurations();
        public static final EReference BSW_IMPLEMENTATION__RECOMMENDED_CONFIGURATIONS = eINSTANCE.getBswImplementation_RecommendedConfigurations();
        public static final EAttribute BSW_IMPLEMENTATION__VENDOR_API_INFIX = eINSTANCE.getBswImplementation_VendorApiInfix();
        public static final EReference BSW_IMPLEMENTATION__VENDOR_SPECIFIC_MODULE_DEFS = eINSTANCE.getBswImplementation_VendorSpecificModuleDefs();
    }
}

