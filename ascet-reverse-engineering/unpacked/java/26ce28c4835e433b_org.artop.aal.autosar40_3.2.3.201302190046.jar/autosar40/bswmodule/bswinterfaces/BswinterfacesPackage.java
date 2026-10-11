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
package autosar40.bswmodule.bswinterfaces;

import autosar40.bswmodule.bswinterfaces.BswinterfacesFactory;
import autosar40.bswmodule.bswinterfaces.impl.BswinterfacesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BswinterfacesPackage
extends EPackage {
    public static final String eNAME = "bswinterfaces";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/bm/binterfaces";
    public static final String eNS_PREFIX = "";
    public static final BswinterfacesPackage eINSTANCE = BswinterfacesPackageImpl.init();
    public static final int BSW_MODULE_ENTRY_REF_CONDITIONAL = 0;
    public static final int BSW_MODULE_ENTRY_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int BSW_MODULE_ENTRY_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int BSW_MODULE_ENTRY_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int BSW_MODULE_ENTRY_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int BSW_MODULE_ENTRY_REF_CONDITIONAL__BSW_MODULE_ENTRY = 4;
    public static final int BSW_MODULE_ENTRY_REF_CONDITIONAL__VARIATION_POINT = 5;
    public static final int BSW_MODULE_ENTRY_REF_CONDITIONAL_FEATURE_COUNT = 6;
    public static final int BSW_MODULE_DEPENDENCY = 1;
    public static final int BSW_MODULE_DEPENDENCY__GCHECKSUM = 0;
    public static final int BSW_MODULE_DEPENDENCY__GTIMESTAMP = 1;
    public static final int BSW_MODULE_DEPENDENCY__CHECKSUM = 2;
    public static final int BSW_MODULE_DEPENDENCY__TIMESTAMP = 3;
    public static final int BSW_MODULE_DEPENDENCY__GSHORT_NAME = 4;
    public static final int BSW_MODULE_DEPENDENCY__SHORT_NAME = 5;
    public static final int BSW_MODULE_DEPENDENCY__LONG_NAME = 6;
    public static final int BSW_MODULE_DEPENDENCY__GUUID = 7;
    public static final int BSW_MODULE_DEPENDENCY__GCATEGORY = 8;
    public static final int BSW_MODULE_DEPENDENCY__GDESC = 9;
    public static final int BSW_MODULE_DEPENDENCY__DESC = 10;
    public static final int BSW_MODULE_DEPENDENCY__CATEGORY = 11;
    public static final int BSW_MODULE_DEPENDENCY__ADMIN_DATA = 12;
    public static final int BSW_MODULE_DEPENDENCY__INTRODUCTION = 13;
    public static final int BSW_MODULE_DEPENDENCY__ANNOTATIONS = 14;
    public static final int BSW_MODULE_DEPENDENCY__UUID = 15;
    public static final int BSW_MODULE_DEPENDENCY__ALL_EXTENSIONS = 16;
    public static final int BSW_MODULE_DEPENDENCY__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_MODULE_DEPENDENCY__BSW_MODULE_DESCRIPTION = 18;
    public static final int BSW_MODULE_DEPENDENCY__TARGET_MODULE_ID = 19;
    public static final int BSW_MODULE_DEPENDENCY__REQUIRED_ENTRIES = 20;
    public static final int BSW_MODULE_DEPENDENCY__EXPECTED_CALLBACKS = 21;
    public static final int BSW_MODULE_DEPENDENCY__SERVICE_ITEMS = 22;
    public static final int BSW_MODULE_DEPENDENCY__VARIATION_POINT = 23;
    public static final int BSW_MODULE_DEPENDENCY_FEATURE_COUNT = 24;
    public static final int BSW_MODULE_ENTRY = 2;
    public static final int BSW_MODULE_ENTRY__GCHECKSUM = 0;
    public static final int BSW_MODULE_ENTRY__GTIMESTAMP = 1;
    public static final int BSW_MODULE_ENTRY__CHECKSUM = 2;
    public static final int BSW_MODULE_ENTRY__TIMESTAMP = 3;
    public static final int BSW_MODULE_ENTRY__GSHORT_NAME = 4;
    public static final int BSW_MODULE_ENTRY__SHORT_NAME = 5;
    public static final int BSW_MODULE_ENTRY__LONG_NAME = 6;
    public static final int BSW_MODULE_ENTRY__GUUID = 7;
    public static final int BSW_MODULE_ENTRY__GCATEGORY = 8;
    public static final int BSW_MODULE_ENTRY__GDESC = 9;
    public static final int BSW_MODULE_ENTRY__DESC = 10;
    public static final int BSW_MODULE_ENTRY__CATEGORY = 11;
    public static final int BSW_MODULE_ENTRY__ADMIN_DATA = 12;
    public static final int BSW_MODULE_ENTRY__INTRODUCTION = 13;
    public static final int BSW_MODULE_ENTRY__ANNOTATIONS = 14;
    public static final int BSW_MODULE_ENTRY__UUID = 15;
    public static final int BSW_MODULE_ENTRY__ALL_EXTENSIONS = 16;
    public static final int BSW_MODULE_ENTRY__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_MODULE_ENTRY__GAR_PACKAGE = 18;
    public static final int BSW_MODULE_ENTRY__AR_PACKAGE = 19;
    public static final int BSW_MODULE_ENTRY__VARIATION_POINT = 20;
    public static final int BSW_MODULE_ENTRY__SHORT_NAME_PATTERN = 21;
    public static final int BSW_MODULE_ENTRY__SERVICE_ID = 22;
    public static final int BSW_MODULE_ENTRY__ROLE = 23;
    public static final int BSW_MODULE_ENTRY__IS_REENTRANT = 24;
    public static final int BSW_MODULE_ENTRY__IS_SYNCHRONOUS = 25;
    public static final int BSW_MODULE_ENTRY__CALL_TYPE = 26;
    public static final int BSW_MODULE_ENTRY__EXECUTION_CONTEXT = 27;
    public static final int BSW_MODULE_ENTRY__SW_SERVICE_IMPL_POLICY = 28;
    public static final int BSW_MODULE_ENTRY__RETURN_TYPE = 29;
    public static final int BSW_MODULE_ENTRY__ARGUMENTS = 30;
    public static final int BSW_MODULE_ENTRY_FEATURE_COUNT = 31;
    public static final int BSW_CALL_TYPE = 3;
    public static final int BSW_EXECUTION_CONTEXT = 4;

    public EClass getBswModuleEntryRefConditional();

    public EReference getBswModuleEntryRefConditional_BswModuleEntry();

    public EReference getBswModuleEntryRefConditional_VariationPoint();

    public EClass getBswModuleDependency();

    public EReference getBswModuleDependency_BswModuleDescription();

    public EAttribute getBswModuleDependency_TargetModuleId();

    public EReference getBswModuleDependency_RequiredEntries();

    public EReference getBswModuleDependency_ExpectedCallbacks();

    public EReference getBswModuleDependency_ServiceItems();

    public EReference getBswModuleDependency_VariationPoint();

    public EClass getBswModuleEntry();

    public EAttribute getBswModuleEntry_ServiceId();

    public EAttribute getBswModuleEntry_Role();

    public EAttribute getBswModuleEntry_IsReentrant();

    public EAttribute getBswModuleEntry_IsSynchronous();

    public EAttribute getBswModuleEntry_CallType();

    public EAttribute getBswModuleEntry_ExecutionContext();

    public EAttribute getBswModuleEntry_SwServiceImplPolicy();

    public EReference getBswModuleEntry_ReturnType();

    public EReference getBswModuleEntry_Arguments();

    public EEnum getBswCallType();

    public EEnum getBswExecutionContext();

    public BswinterfacesFactory getBswinterfacesFactory();

    public static interface Literals {
        public static final EClass BSW_MODULE_ENTRY_REF_CONDITIONAL = eINSTANCE.getBswModuleEntryRefConditional();
        public static final EReference BSW_MODULE_ENTRY_REF_CONDITIONAL__BSW_MODULE_ENTRY = eINSTANCE.getBswModuleEntryRefConditional_BswModuleEntry();
        public static final EReference BSW_MODULE_ENTRY_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getBswModuleEntryRefConditional_VariationPoint();
        public static final EClass BSW_MODULE_DEPENDENCY = eINSTANCE.getBswModuleDependency();
        public static final EReference BSW_MODULE_DEPENDENCY__BSW_MODULE_DESCRIPTION = eINSTANCE.getBswModuleDependency_BswModuleDescription();
        public static final EAttribute BSW_MODULE_DEPENDENCY__TARGET_MODULE_ID = eINSTANCE.getBswModuleDependency_TargetModuleId();
        public static final EReference BSW_MODULE_DEPENDENCY__REQUIRED_ENTRIES = eINSTANCE.getBswModuleDependency_RequiredEntries();
        public static final EReference BSW_MODULE_DEPENDENCY__EXPECTED_CALLBACKS = eINSTANCE.getBswModuleDependency_ExpectedCallbacks();
        public static final EReference BSW_MODULE_DEPENDENCY__SERVICE_ITEMS = eINSTANCE.getBswModuleDependency_ServiceItems();
        public static final EReference BSW_MODULE_DEPENDENCY__VARIATION_POINT = eINSTANCE.getBswModuleDependency_VariationPoint();
        public static final EClass BSW_MODULE_ENTRY = eINSTANCE.getBswModuleEntry();
        public static final EAttribute BSW_MODULE_ENTRY__SERVICE_ID = eINSTANCE.getBswModuleEntry_ServiceId();
        public static final EAttribute BSW_MODULE_ENTRY__ROLE = eINSTANCE.getBswModuleEntry_Role();
        public static final EAttribute BSW_MODULE_ENTRY__IS_REENTRANT = eINSTANCE.getBswModuleEntry_IsReentrant();
        public static final EAttribute BSW_MODULE_ENTRY__IS_SYNCHRONOUS = eINSTANCE.getBswModuleEntry_IsSynchronous();
        public static final EAttribute BSW_MODULE_ENTRY__CALL_TYPE = eINSTANCE.getBswModuleEntry_CallType();
        public static final EAttribute BSW_MODULE_ENTRY__EXECUTION_CONTEXT = eINSTANCE.getBswModuleEntry_ExecutionContext();
        public static final EAttribute BSW_MODULE_ENTRY__SW_SERVICE_IMPL_POLICY = eINSTANCE.getBswModuleEntry_SwServiceImplPolicy();
        public static final EReference BSW_MODULE_ENTRY__RETURN_TYPE = eINSTANCE.getBswModuleEntry_ReturnType();
        public static final EReference BSW_MODULE_ENTRY__ARGUMENTS = eINSTANCE.getBswModuleEntry_Arguments();
        public static final EEnum BSW_CALL_TYPE = eINSTANCE.getBswCallType();
        public static final EEnum BSW_EXECUTION_CONTEXT = eINSTANCE.getBswExecutionContext();
    }
}

