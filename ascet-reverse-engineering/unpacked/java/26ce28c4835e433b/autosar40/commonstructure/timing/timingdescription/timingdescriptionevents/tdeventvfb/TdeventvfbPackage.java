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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl.TdeventvfbPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TdeventvfbPackage
extends EPackage {
    public static final String eNAME = "tdeventvfb";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdev";
    public static final String eNS_PREFIX = "";
    public static final TdeventvfbPackage eINSTANCE = TdeventvfbPackageImpl.init();
    public static final int TD_EVENT_VFB = 1;
    public static final int TD_EVENT_VFB__GCHECKSUM = 0;
    public static final int TD_EVENT_VFB__GTIMESTAMP = 1;
    public static final int TD_EVENT_VFB__CHECKSUM = 2;
    public static final int TD_EVENT_VFB__TIMESTAMP = 3;
    public static final int TD_EVENT_VFB__GSHORT_NAME = 4;
    public static final int TD_EVENT_VFB__SHORT_NAME = 5;
    public static final int TD_EVENT_VFB__LONG_NAME = 6;
    public static final int TD_EVENT_VFB__GUUID = 7;
    public static final int TD_EVENT_VFB__GCATEGORY = 8;
    public static final int TD_EVENT_VFB__GDESC = 9;
    public static final int TD_EVENT_VFB__DESC = 10;
    public static final int TD_EVENT_VFB__CATEGORY = 11;
    public static final int TD_EVENT_VFB__ADMIN_DATA = 12;
    public static final int TD_EVENT_VFB__INTRODUCTION = 13;
    public static final int TD_EVENT_VFB__ANNOTATIONS = 14;
    public static final int TD_EVENT_VFB__UUID = 15;
    public static final int TD_EVENT_VFB__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_VFB__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_VFB__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_VFB__VARIATION_POINT = 19;
    public static final int TD_EVENT_VFB__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_VFB__COMPONENT = 21;
    public static final int TD_EVENT_VFB__IS_EXTERNAL = 22;
    public static final int TD_EVENT_VFB__PORT = 23;
    public static final int TD_EVENT_VFB_FEATURE_COUNT = 24;
    public static final int TD_EVENT_MODE_DECLARATION = 0;
    public static final int TD_EVENT_MODE_DECLARATION__GCHECKSUM = 0;
    public static final int TD_EVENT_MODE_DECLARATION__GTIMESTAMP = 1;
    public static final int TD_EVENT_MODE_DECLARATION__CHECKSUM = 2;
    public static final int TD_EVENT_MODE_DECLARATION__TIMESTAMP = 3;
    public static final int TD_EVENT_MODE_DECLARATION__GSHORT_NAME = 4;
    public static final int TD_EVENT_MODE_DECLARATION__SHORT_NAME = 5;
    public static final int TD_EVENT_MODE_DECLARATION__LONG_NAME = 6;
    public static final int TD_EVENT_MODE_DECLARATION__GUUID = 7;
    public static final int TD_EVENT_MODE_DECLARATION__GCATEGORY = 8;
    public static final int TD_EVENT_MODE_DECLARATION__GDESC = 9;
    public static final int TD_EVENT_MODE_DECLARATION__DESC = 10;
    public static final int TD_EVENT_MODE_DECLARATION__CATEGORY = 11;
    public static final int TD_EVENT_MODE_DECLARATION__ADMIN_DATA = 12;
    public static final int TD_EVENT_MODE_DECLARATION__INTRODUCTION = 13;
    public static final int TD_EVENT_MODE_DECLARATION__ANNOTATIONS = 14;
    public static final int TD_EVENT_MODE_DECLARATION__UUID = 15;
    public static final int TD_EVENT_MODE_DECLARATION__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_MODE_DECLARATION__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_MODE_DECLARATION__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_MODE_DECLARATION__VARIATION_POINT = 19;
    public static final int TD_EVENT_MODE_DECLARATION__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_MODE_DECLARATION__COMPONENT = 21;
    public static final int TD_EVENT_MODE_DECLARATION__IS_EXTERNAL = 22;
    public static final int TD_EVENT_MODE_DECLARATION__PORT = 23;
    public static final int TD_EVENT_MODE_DECLARATION__ENTRY_MODE_DECLARATION = 24;
    public static final int TD_EVENT_MODE_DECLARATION__EXIT_MODE_DECLARATION = 25;
    public static final int TD_EVENT_MODE_DECLARATION__MODE_DECLARATION = 26;
    public static final int TD_EVENT_MODE_DECLARATION__TD_EVENT_MODE_DECLARATION_TYPE = 27;
    public static final int TD_EVENT_MODE_DECLARATION_FEATURE_COUNT = 28;
    public static final int TD_EVENT_OPERATION = 2;
    public static final int TD_EVENT_OPERATION__GCHECKSUM = 0;
    public static final int TD_EVENT_OPERATION__GTIMESTAMP = 1;
    public static final int TD_EVENT_OPERATION__CHECKSUM = 2;
    public static final int TD_EVENT_OPERATION__TIMESTAMP = 3;
    public static final int TD_EVENT_OPERATION__GSHORT_NAME = 4;
    public static final int TD_EVENT_OPERATION__SHORT_NAME = 5;
    public static final int TD_EVENT_OPERATION__LONG_NAME = 6;
    public static final int TD_EVENT_OPERATION__GUUID = 7;
    public static final int TD_EVENT_OPERATION__GCATEGORY = 8;
    public static final int TD_EVENT_OPERATION__GDESC = 9;
    public static final int TD_EVENT_OPERATION__DESC = 10;
    public static final int TD_EVENT_OPERATION__CATEGORY = 11;
    public static final int TD_EVENT_OPERATION__ADMIN_DATA = 12;
    public static final int TD_EVENT_OPERATION__INTRODUCTION = 13;
    public static final int TD_EVENT_OPERATION__ANNOTATIONS = 14;
    public static final int TD_EVENT_OPERATION__UUID = 15;
    public static final int TD_EVENT_OPERATION__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_OPERATION__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_OPERATION__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_OPERATION__VARIATION_POINT = 19;
    public static final int TD_EVENT_OPERATION__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_OPERATION__COMPONENT = 21;
    public static final int TD_EVENT_OPERATION__IS_EXTERNAL = 22;
    public static final int TD_EVENT_OPERATION__PORT = 23;
    public static final int TD_EVENT_OPERATION__OPERATION = 24;
    public static final int TD_EVENT_OPERATION__TD_EVENT_OPERATION_TYPE = 25;
    public static final int TD_EVENT_OPERATION_FEATURE_COUNT = 26;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE = 3;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__CHECKSUM = 2;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__TIMESTAMP = 3;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__GSHORT_NAME = 4;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__SHORT_NAME = 5;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__LONG_NAME = 6;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__GUUID = 7;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__GCATEGORY = 8;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__GDESC = 9;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__DESC = 10;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__CATEGORY = 11;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__ADMIN_DATA = 12;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__INTRODUCTION = 13;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__ANNOTATIONS = 14;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__UUID = 15;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__VARIATION_POINT = 19;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__COMPONENT = 21;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__IS_EXTERNAL = 22;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__PORT = 23;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__DATA_ELEMENT = 24;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE__TD_EVENT_VARIABLE_DATA_PROTOTYPE_TYPE = 25;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE_FEATURE_COUNT = 26;
    public static final int TD_EVENT_MODE_DECLARATION_TYPE_ENUM = 4;
    public static final int TD_EVENT_OPERATION_TYPE_ENUM = 5;
    public static final int TD_EVENT_VARIABLE_DATA_PROTOTYPE_TYPE_ENUM = 6;

    public EClass getTDEventModeDeclaration();

    public EReference getTDEventModeDeclaration_EntryModeDeclaration();

    public EReference getTDEventModeDeclaration_ExitModeDeclaration();

    public EReference getTDEventModeDeclaration_ModeDeclaration();

    public EAttribute getTDEventModeDeclaration_TdEventModeDeclarationType();

    public EClass getTDEventVfb();

    public EReference getTDEventVfb_Component();

    public EAttribute getTDEventVfb_IsExternal();

    public EReference getTDEventVfb_Port();

    public EClass getTDEventOperation();

    public EReference getTDEventOperation_Operation();

    public EAttribute getTDEventOperation_TdEventOperationType();

    public EClass getTDEventVariableDataPrototype();

    public EReference getTDEventVariableDataPrototype_DataElement();

    public EAttribute getTDEventVariableDataPrototype_TdEventVariableDataPrototypeType();

    public EEnum getTDEventModeDeclarationTypeEnum();

    public EEnum getTDEventOperationTypeEnum();

    public EEnum getTDEventVariableDataPrototypeTypeEnum();

    public TdeventvfbFactory getTdeventvfbFactory();

    public static interface Literals {
        public static final EClass TD_EVENT_MODE_DECLARATION = eINSTANCE.getTDEventModeDeclaration();
        public static final EReference TD_EVENT_MODE_DECLARATION__ENTRY_MODE_DECLARATION = eINSTANCE.getTDEventModeDeclaration_EntryModeDeclaration();
        public static final EReference TD_EVENT_MODE_DECLARATION__EXIT_MODE_DECLARATION = eINSTANCE.getTDEventModeDeclaration_ExitModeDeclaration();
        public static final EReference TD_EVENT_MODE_DECLARATION__MODE_DECLARATION = eINSTANCE.getTDEventModeDeclaration_ModeDeclaration();
        public static final EAttribute TD_EVENT_MODE_DECLARATION__TD_EVENT_MODE_DECLARATION_TYPE = eINSTANCE.getTDEventModeDeclaration_TdEventModeDeclarationType();
        public static final EClass TD_EVENT_VFB = eINSTANCE.getTDEventVfb();
        public static final EReference TD_EVENT_VFB__COMPONENT = eINSTANCE.getTDEventVfb_Component();
        public static final EAttribute TD_EVENT_VFB__IS_EXTERNAL = eINSTANCE.getTDEventVfb_IsExternal();
        public static final EReference TD_EVENT_VFB__PORT = eINSTANCE.getTDEventVfb_Port();
        public static final EClass TD_EVENT_OPERATION = eINSTANCE.getTDEventOperation();
        public static final EReference TD_EVENT_OPERATION__OPERATION = eINSTANCE.getTDEventOperation_Operation();
        public static final EAttribute TD_EVENT_OPERATION__TD_EVENT_OPERATION_TYPE = eINSTANCE.getTDEventOperation_TdEventOperationType();
        public static final EClass TD_EVENT_VARIABLE_DATA_PROTOTYPE = eINSTANCE.getTDEventVariableDataPrototype();
        public static final EReference TD_EVENT_VARIABLE_DATA_PROTOTYPE__DATA_ELEMENT = eINSTANCE.getTDEventVariableDataPrototype_DataElement();
        public static final EAttribute TD_EVENT_VARIABLE_DATA_PROTOTYPE__TD_EVENT_VARIABLE_DATA_PROTOTYPE_TYPE = eINSTANCE.getTDEventVariableDataPrototype_TdEventVariableDataPrototypeType();
        public static final EEnum TD_EVENT_MODE_DECLARATION_TYPE_ENUM = eINSTANCE.getTDEventModeDeclarationTypeEnum();
        public static final EEnum TD_EVENT_OPERATION_TYPE_ENUM = eINSTANCE.getTDEventOperationTypeEnum();
        public static final EEnum TD_EVENT_VARIABLE_DATA_PROTOTYPE_TYPE_ENUM = eINSTANCE.getTDEventVariableDataPrototypeTypeEnum();
    }
}

