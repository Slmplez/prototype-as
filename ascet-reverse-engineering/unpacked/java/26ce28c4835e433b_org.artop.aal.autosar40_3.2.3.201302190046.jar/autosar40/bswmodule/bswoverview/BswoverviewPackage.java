/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.bswmodule.bswoverview;

import autosar40.bswmodule.bswoverview.BswoverviewFactory;
import autosar40.bswmodule.bswoverview.impl.BswoverviewPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BswoverviewPackage
extends EPackage {
    public static final String eNAME = "bswoverview";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/bm/bo";
    public static final String eNS_PREFIX = "";
    public static final BswoverviewPackage eINSTANCE = BswoverviewPackageImpl.init();
    public static final int BSW_MODULE_DESCRIPTION = 0;
    public static final int BSW_MODULE_DESCRIPTION__GCHECKSUM = 0;
    public static final int BSW_MODULE_DESCRIPTION__GTIMESTAMP = 1;
    public static final int BSW_MODULE_DESCRIPTION__CHECKSUM = 2;
    public static final int BSW_MODULE_DESCRIPTION__TIMESTAMP = 3;
    public static final int BSW_MODULE_DESCRIPTION__GSHORT_NAME = 4;
    public static final int BSW_MODULE_DESCRIPTION__SHORT_NAME = 5;
    public static final int BSW_MODULE_DESCRIPTION__LONG_NAME = 6;
    public static final int BSW_MODULE_DESCRIPTION__GUUID = 7;
    public static final int BSW_MODULE_DESCRIPTION__GCATEGORY = 8;
    public static final int BSW_MODULE_DESCRIPTION__GDESC = 9;
    public static final int BSW_MODULE_DESCRIPTION__DESC = 10;
    public static final int BSW_MODULE_DESCRIPTION__CATEGORY = 11;
    public static final int BSW_MODULE_DESCRIPTION__ADMIN_DATA = 12;
    public static final int BSW_MODULE_DESCRIPTION__INTRODUCTION = 13;
    public static final int BSW_MODULE_DESCRIPTION__ANNOTATIONS = 14;
    public static final int BSW_MODULE_DESCRIPTION__UUID = 15;
    public static final int BSW_MODULE_DESCRIPTION__ALL_EXTENSIONS = 16;
    public static final int BSW_MODULE_DESCRIPTION__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_MODULE_DESCRIPTION__GAR_PACKAGE = 18;
    public static final int BSW_MODULE_DESCRIPTION__AR_PACKAGE = 19;
    public static final int BSW_MODULE_DESCRIPTION__VARIATION_POINT = 20;
    public static final int BSW_MODULE_DESCRIPTION__SHORT_NAME_PATTERN = 21;
    public static final int BSW_MODULE_DESCRIPTION__ATP_CLASSIFIER = 22;
    public static final int BSW_MODULE_DESCRIPTION__MODULE_ID = 23;
    public static final int BSW_MODULE_DESCRIPTION__BSW_MODULE_DOCUMENTATIONS = 24;
    public static final int BSW_MODULE_DESCRIPTION__PROVIDED_ENTRIES = 25;
    public static final int BSW_MODULE_DESCRIPTION__OUTGOING_CALLBACKS = 26;
    public static final int BSW_MODULE_DESCRIPTION__BSW_MODULE_DEPENDENCIES = 27;
    public static final int BSW_MODULE_DESCRIPTION__PROVIDED_MODE_GROUPS = 28;
    public static final int BSW_MODULE_DESCRIPTION__REQUIRED_MODE_GROUPS = 29;
    public static final int BSW_MODULE_DESCRIPTION__RELEASED_TRIGGERS = 30;
    public static final int BSW_MODULE_DESCRIPTION__REQUIRED_TRIGGERS = 31;
    public static final int BSW_MODULE_DESCRIPTION__INTERNAL_BEHAVIORS = 32;
    public static final int BSW_MODULE_DESCRIPTION_FEATURE_COUNT = 33;

    public EClass getBswModuleDescription();

    public EAttribute getBswModuleDescription_ModuleId();

    public EReference getBswModuleDescription_BswModuleDocumentations();

    public EReference getBswModuleDescription_ProvidedEntries();

    public EReference getBswModuleDescription_OutgoingCallbacks();

    public EReference getBswModuleDescription_BswModuleDependencies();

    public EReference getBswModuleDescription_ProvidedModeGroups();

    public EReference getBswModuleDescription_RequiredModeGroups();

    public EReference getBswModuleDescription_ReleasedTriggers();

    public EReference getBswModuleDescription_RequiredTriggers();

    public EReference getBswModuleDescription_InternalBehaviors();

    public BswoverviewFactory getBswoverviewFactory();

    public static interface Literals {
        public static final EClass BSW_MODULE_DESCRIPTION = eINSTANCE.getBswModuleDescription();
        public static final EAttribute BSW_MODULE_DESCRIPTION__MODULE_ID = eINSTANCE.getBswModuleDescription_ModuleId();
        public static final EReference BSW_MODULE_DESCRIPTION__BSW_MODULE_DOCUMENTATIONS = eINSTANCE.getBswModuleDescription_BswModuleDocumentations();
        public static final EReference BSW_MODULE_DESCRIPTION__PROVIDED_ENTRIES = eINSTANCE.getBswModuleDescription_ProvidedEntries();
        public static final EReference BSW_MODULE_DESCRIPTION__OUTGOING_CALLBACKS = eINSTANCE.getBswModuleDescription_OutgoingCallbacks();
        public static final EReference BSW_MODULE_DESCRIPTION__BSW_MODULE_DEPENDENCIES = eINSTANCE.getBswModuleDescription_BswModuleDependencies();
        public static final EReference BSW_MODULE_DESCRIPTION__PROVIDED_MODE_GROUPS = eINSTANCE.getBswModuleDescription_ProvidedModeGroups();
        public static final EReference BSW_MODULE_DESCRIPTION__REQUIRED_MODE_GROUPS = eINSTANCE.getBswModuleDescription_RequiredModeGroups();
        public static final EReference BSW_MODULE_DESCRIPTION__RELEASED_TRIGGERS = eINSTANCE.getBswModuleDescription_ReleasedTriggers();
        public static final EReference BSW_MODULE_DESCRIPTION__REQUIRED_TRIGGERS = eINSTANCE.getBswModuleDescription_RequiredTriggers();
        public static final EReference BSW_MODULE_DESCRIPTION__INTERNAL_BEHAVIORS = eINSTANCE.getBswModuleDescription_InternalBehaviors();
    }
}

