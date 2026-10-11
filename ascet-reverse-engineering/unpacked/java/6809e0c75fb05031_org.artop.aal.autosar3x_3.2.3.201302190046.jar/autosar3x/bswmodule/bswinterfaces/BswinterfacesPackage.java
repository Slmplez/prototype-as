/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.bswmodule.bswinterfaces;

import autosar3x.bswmodule.bswinterfaces.BswinterfacesFactory;
import autosar3x.bswmodule.bswinterfaces.impl.BswinterfacesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BswinterfacesPackage
extends EPackage {
    public static final String eNAME = "bswinterfaces";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/bm/binterfaces";
    public static final String eNS_PREFIX = "";
    public static final BswinterfacesPackage eINSTANCE = BswinterfacesPackageImpl.init();
    public static final int BSW_MODULE_DEPENDENCY = 0;
    public static final int BSW_MODULE_DEPENDENCY__GCHECKSUM = 0;
    public static final int BSW_MODULE_DEPENDENCY__GTIMESTAMP = 1;
    public static final int BSW_MODULE_DEPENDENCY__CHECKSUM = 2;
    public static final int BSW_MODULE_DEPENDENCY__TIMESTAMP = 3;
    public static final int BSW_MODULE_DEPENDENCY__GSHORT_NAME = 4;
    public static final int BSW_MODULE_DEPENDENCY__GUUID = 5;
    public static final int BSW_MODULE_DEPENDENCY__GCATEGORY = 6;
    public static final int BSW_MODULE_DEPENDENCY__GDESC = 7;
    public static final int BSW_MODULE_DEPENDENCY__SHORT_NAME = 8;
    public static final int BSW_MODULE_DEPENDENCY__LONG_NAME = 9;
    public static final int BSW_MODULE_DEPENDENCY__DESC = 10;
    public static final int BSW_MODULE_DEPENDENCY__CATEGORY = 11;
    public static final int BSW_MODULE_DEPENDENCY__ADMIN_DATA = 12;
    public static final int BSW_MODULE_DEPENDENCY__INTRODUCTION = 13;
    public static final int BSW_MODULE_DEPENDENCY__UUID = 14;
    public static final int BSW_MODULE_DEPENDENCY__ALL_EXTENSIONS = 15;
    public static final int BSW_MODULE_DEPENDENCY__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_MODULE_DEPENDENCY__BSW_MODULE_DESCRIPTION = 17;
    public static final int BSW_MODULE_DEPENDENCY__EXPECTED_CALLBACKS = 18;
    public static final int BSW_MODULE_DEPENDENCY__REQUIRED_ENTRIES = 19;
    public static final int BSW_MODULE_DEPENDENCY__SERVICE_ITEMS = 20;
    public static final int BSW_MODULE_DEPENDENCY__TARGET_MODULE_ID = 21;
    public static final int BSW_MODULE_DEPENDENCY_FEATURE_COUNT = 22;
    public static final int BSW_MODULE_ENTRY = 1;
    public static final int BSW_MODULE_ENTRY__GCHECKSUM = 0;
    public static final int BSW_MODULE_ENTRY__GTIMESTAMP = 1;
    public static final int BSW_MODULE_ENTRY__CHECKSUM = 2;
    public static final int BSW_MODULE_ENTRY__TIMESTAMP = 3;
    public static final int BSW_MODULE_ENTRY__GSHORT_NAME = 4;
    public static final int BSW_MODULE_ENTRY__GUUID = 5;
    public static final int BSW_MODULE_ENTRY__GCATEGORY = 6;
    public static final int BSW_MODULE_ENTRY__GDESC = 7;
    public static final int BSW_MODULE_ENTRY__SHORT_NAME = 8;
    public static final int BSW_MODULE_ENTRY__LONG_NAME = 9;
    public static final int BSW_MODULE_ENTRY__DESC = 10;
    public static final int BSW_MODULE_ENTRY__CATEGORY = 11;
    public static final int BSW_MODULE_ENTRY__ADMIN_DATA = 12;
    public static final int BSW_MODULE_ENTRY__INTRODUCTION = 13;
    public static final int BSW_MODULE_ENTRY__UUID = 14;
    public static final int BSW_MODULE_ENTRY__ALL_EXTENSIONS = 15;
    public static final int BSW_MODULE_ENTRY__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_MODULE_ENTRY__GAR_PACKAGE = 17;
    public static final int BSW_MODULE_ENTRY__AR_PACKAGE = 18;
    public static final int BSW_MODULE_ENTRY__SW_SERVICE_RETURN = 19;
    public static final int BSW_MODULE_ENTRY__SW_SERVICE_ARGS = 20;
    public static final int BSW_MODULE_ENTRY__SW_SERVICE_ACCESSED_ELEMENT_SETS = 21;
    public static final int BSW_MODULE_ENTRY__SW_SERVICE_PROPS = 22;
    public static final int BSW_MODULE_ENTRY__CALL_TYPE = 23;
    public static final int BSW_MODULE_ENTRY__EXECUTION_CONTEXT = 24;
    public static final int BSW_MODULE_ENTRY__IS_SYNCHRONOUS = 25;
    public static final int BSW_MODULE_ENTRY__SERVICE_ID = 26;
    public static final int BSW_MODULE_ENTRY_FEATURE_COUNT = 27;
    public static final int BSW_CALL_TYPE = 2;
    public static final int BSW_EXECUTION_CONTEXT = 3;

    public EClass getBswModuleDependency();

    public EReference getBswModuleDependency_BswModuleDescription();

    public EReference getBswModuleDependency_ExpectedCallbacks();

    public EReference getBswModuleDependency_RequiredEntries();

    public EReference getBswModuleDependency_ServiceItems();

    public EAttribute getBswModuleDependency_TargetModuleId();

    public EClass getBswModuleEntry();

    public EAttribute getBswModuleEntry_CallType();

    public EAttribute getBswModuleEntry_ExecutionContext();

    public EAttribute getBswModuleEntry_IsSynchronous();

    public EAttribute getBswModuleEntry_ServiceId();

    public EEnum getBswCallType();

    public EEnum getBswExecutionContext();

    public BswinterfacesFactory getBswinterfacesFactory();

    public static interface Literals {
        public static final EClass BSW_MODULE_DEPENDENCY = eINSTANCE.getBswModuleDependency();
        public static final EReference BSW_MODULE_DEPENDENCY__BSW_MODULE_DESCRIPTION = eINSTANCE.getBswModuleDependency_BswModuleDescription();
        public static final EReference BSW_MODULE_DEPENDENCY__EXPECTED_CALLBACKS = eINSTANCE.getBswModuleDependency_ExpectedCallbacks();
        public static final EReference BSW_MODULE_DEPENDENCY__REQUIRED_ENTRIES = eINSTANCE.getBswModuleDependency_RequiredEntries();
        public static final EReference BSW_MODULE_DEPENDENCY__SERVICE_ITEMS = eINSTANCE.getBswModuleDependency_ServiceItems();
        public static final EAttribute BSW_MODULE_DEPENDENCY__TARGET_MODULE_ID = eINSTANCE.getBswModuleDependency_TargetModuleId();
        public static final EClass BSW_MODULE_ENTRY = eINSTANCE.getBswModuleEntry();
        public static final EAttribute BSW_MODULE_ENTRY__CALL_TYPE = eINSTANCE.getBswModuleEntry_CallType();
        public static final EAttribute BSW_MODULE_ENTRY__EXECUTION_CONTEXT = eINSTANCE.getBswModuleEntry_ExecutionContext();
        public static final EAttribute BSW_MODULE_ENTRY__IS_SYNCHRONOUS = eINSTANCE.getBswModuleEntry_IsSynchronous();
        public static final EAttribute BSW_MODULE_ENTRY__SERVICE_ID = eINSTANCE.getBswModuleEntry_ServiceId();
        public static final EEnum BSW_CALL_TYPE = eINSTANCE.getBswCallType();
        public static final EEnum BSW_EXECUTION_CONTEXT = eINSTANCE.getBswExecutionContext();
    }
}

