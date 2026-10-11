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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl.TdeventbswPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TdeventbswPackage
extends EPackage {
    public static final String eNAME = "tdeventbsw";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeb";
    public static final String eNS_PREFIX = "";
    public static final TdeventbswPackage eINSTANCE = TdeventbswPackageImpl.init();
    public static final int TD_EVENT_BSW = 0;
    public static final int TD_EVENT_BSW__GCHECKSUM = 0;
    public static final int TD_EVENT_BSW__GTIMESTAMP = 1;
    public static final int TD_EVENT_BSW__CHECKSUM = 2;
    public static final int TD_EVENT_BSW__TIMESTAMP = 3;
    public static final int TD_EVENT_BSW__GSHORT_NAME = 4;
    public static final int TD_EVENT_BSW__SHORT_NAME = 5;
    public static final int TD_EVENT_BSW__LONG_NAME = 6;
    public static final int TD_EVENT_BSW__GUUID = 7;
    public static final int TD_EVENT_BSW__GCATEGORY = 8;
    public static final int TD_EVENT_BSW__GDESC = 9;
    public static final int TD_EVENT_BSW__DESC = 10;
    public static final int TD_EVENT_BSW__CATEGORY = 11;
    public static final int TD_EVENT_BSW__ADMIN_DATA = 12;
    public static final int TD_EVENT_BSW__INTRODUCTION = 13;
    public static final int TD_EVENT_BSW__ANNOTATIONS = 14;
    public static final int TD_EVENT_BSW__UUID = 15;
    public static final int TD_EVENT_BSW__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_BSW__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_BSW__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_BSW__VARIATION_POINT = 19;
    public static final int TD_EVENT_BSW__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_BSW__BSW_MODULE_DESCRIPTION = 21;
    public static final int TD_EVENT_BSW_FEATURE_COUNT = 22;
    public static final int TD_EVENT_BSW_MODE_DECLARATION = 1;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__GCHECKSUM = 0;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__GTIMESTAMP = 1;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__CHECKSUM = 2;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__TIMESTAMP = 3;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__GSHORT_NAME = 4;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__SHORT_NAME = 5;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__LONG_NAME = 6;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__GUUID = 7;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__GCATEGORY = 8;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__GDESC = 9;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__DESC = 10;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__CATEGORY = 11;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__ADMIN_DATA = 12;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__INTRODUCTION = 13;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__ANNOTATIONS = 14;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__UUID = 15;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__VARIATION_POINT = 19;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__BSW_MODULE_DESCRIPTION = 21;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__ENTRY_MODE_DECLARATION = 22;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__EXIT_MODE_DECLARATION = 23;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__MODE_DECLARATION = 24;
    public static final int TD_EVENT_BSW_MODE_DECLARATION__TD_EVENT_BSW_MODE_DECLARATION_TYPE = 25;
    public static final int TD_EVENT_BSW_MODE_DECLARATION_FEATURE_COUNT = 26;
    public static final int TD_EVENT_BSW_MODULE = 2;
    public static final int TD_EVENT_BSW_MODULE__GCHECKSUM = 0;
    public static final int TD_EVENT_BSW_MODULE__GTIMESTAMP = 1;
    public static final int TD_EVENT_BSW_MODULE__CHECKSUM = 2;
    public static final int TD_EVENT_BSW_MODULE__TIMESTAMP = 3;
    public static final int TD_EVENT_BSW_MODULE__GSHORT_NAME = 4;
    public static final int TD_EVENT_BSW_MODULE__SHORT_NAME = 5;
    public static final int TD_EVENT_BSW_MODULE__LONG_NAME = 6;
    public static final int TD_EVENT_BSW_MODULE__GUUID = 7;
    public static final int TD_EVENT_BSW_MODULE__GCATEGORY = 8;
    public static final int TD_EVENT_BSW_MODULE__GDESC = 9;
    public static final int TD_EVENT_BSW_MODULE__DESC = 10;
    public static final int TD_EVENT_BSW_MODULE__CATEGORY = 11;
    public static final int TD_EVENT_BSW_MODULE__ADMIN_DATA = 12;
    public static final int TD_EVENT_BSW_MODULE__INTRODUCTION = 13;
    public static final int TD_EVENT_BSW_MODULE__ANNOTATIONS = 14;
    public static final int TD_EVENT_BSW_MODULE__UUID = 15;
    public static final int TD_EVENT_BSW_MODULE__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_BSW_MODULE__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_BSW_MODULE__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_BSW_MODULE__VARIATION_POINT = 19;
    public static final int TD_EVENT_BSW_MODULE__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_BSW_MODULE__BSW_MODULE_DESCRIPTION = 21;
    public static final int TD_EVENT_BSW_MODULE__BSW_MODULE_ENTRY = 22;
    public static final int TD_EVENT_BSW_MODULE__TD_EVENT_BSW_MODULE_TYPE = 23;
    public static final int TD_EVENT_BSW_MODULE_FEATURE_COUNT = 24;
    public static final int TD_EVENT_BSW_MODE_DECLARATION_TYPE_ENUM = 3;
    public static final int TD_EVENT_BSW_MODULE_TYPE_ENUM = 4;

    public EClass getTDEventBsw();

    public EReference getTDEventBsw_BswModuleDescription();

    public EClass getTDEventBswModeDeclaration();

    public EReference getTDEventBswModeDeclaration_EntryModeDeclaration();

    public EReference getTDEventBswModeDeclaration_ExitModeDeclaration();

    public EReference getTDEventBswModeDeclaration_ModeDeclaration();

    public EAttribute getTDEventBswModeDeclaration_TdEventBswModeDeclarationType();

    public EClass getTDEventBswModule();

    public EReference getTDEventBswModule_BswModuleEntry();

    public EAttribute getTDEventBswModule_TdEventBswModuleType();

    public EEnum getTDEventBswModeDeclarationTypeEnum();

    public EEnum getTDEventBswModuleTypeEnum();

    public TdeventbswFactory getTdeventbswFactory();

    public static interface Literals {
        public static final EClass TD_EVENT_BSW = eINSTANCE.getTDEventBsw();
        public static final EReference TD_EVENT_BSW__BSW_MODULE_DESCRIPTION = eINSTANCE.getTDEventBsw_BswModuleDescription();
        public static final EClass TD_EVENT_BSW_MODE_DECLARATION = eINSTANCE.getTDEventBswModeDeclaration();
        public static final EReference TD_EVENT_BSW_MODE_DECLARATION__ENTRY_MODE_DECLARATION = eINSTANCE.getTDEventBswModeDeclaration_EntryModeDeclaration();
        public static final EReference TD_EVENT_BSW_MODE_DECLARATION__EXIT_MODE_DECLARATION = eINSTANCE.getTDEventBswModeDeclaration_ExitModeDeclaration();
        public static final EReference TD_EVENT_BSW_MODE_DECLARATION__MODE_DECLARATION = eINSTANCE.getTDEventBswModeDeclaration_ModeDeclaration();
        public static final EAttribute TD_EVENT_BSW_MODE_DECLARATION__TD_EVENT_BSW_MODE_DECLARATION_TYPE = eINSTANCE.getTDEventBswModeDeclaration_TdEventBswModeDeclarationType();
        public static final EClass TD_EVENT_BSW_MODULE = eINSTANCE.getTDEventBswModule();
        public static final EReference TD_EVENT_BSW_MODULE__BSW_MODULE_ENTRY = eINSTANCE.getTDEventBswModule_BswModuleEntry();
        public static final EAttribute TD_EVENT_BSW_MODULE__TD_EVENT_BSW_MODULE_TYPE = eINSTANCE.getTDEventBswModule_TdEventBswModuleType();
        public static final EEnum TD_EVENT_BSW_MODE_DECLARATION_TYPE_ENUM = eINSTANCE.getTDEventBswModeDeclarationTypeEnum();
        public static final EEnum TD_EVENT_BSW_MODULE_TYPE_ENUM = eINSTANCE.getTDEventBswModuleTypeEnum();
    }
}

