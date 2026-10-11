/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.bswmodule.bswoverview;

import autosar3x.bswmodule.bswoverview.BswoverviewFactory;
import autosar3x.bswmodule.bswoverview.impl.BswoverviewPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BswoverviewPackage
extends EPackage {
    public static final String eNAME = "bswoverview";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/bm/bo";
    public static final String eNS_PREFIX = "";
    public static final BswoverviewPackage eINSTANCE = BswoverviewPackageImpl.init();
    public static final int BSW_MODULE_DESCRIPTION = 0;
    public static final int BSW_MODULE_DESCRIPTION__GCHECKSUM = 0;
    public static final int BSW_MODULE_DESCRIPTION__GTIMESTAMP = 1;
    public static final int BSW_MODULE_DESCRIPTION__CHECKSUM = 2;
    public static final int BSW_MODULE_DESCRIPTION__TIMESTAMP = 3;
    public static final int BSW_MODULE_DESCRIPTION__GSHORT_NAME = 4;
    public static final int BSW_MODULE_DESCRIPTION__GUUID = 5;
    public static final int BSW_MODULE_DESCRIPTION__GCATEGORY = 6;
    public static final int BSW_MODULE_DESCRIPTION__GDESC = 7;
    public static final int BSW_MODULE_DESCRIPTION__SHORT_NAME = 8;
    public static final int BSW_MODULE_DESCRIPTION__LONG_NAME = 9;
    public static final int BSW_MODULE_DESCRIPTION__DESC = 10;
    public static final int BSW_MODULE_DESCRIPTION__CATEGORY = 11;
    public static final int BSW_MODULE_DESCRIPTION__ADMIN_DATA = 12;
    public static final int BSW_MODULE_DESCRIPTION__INTRODUCTION = 13;
    public static final int BSW_MODULE_DESCRIPTION__UUID = 14;
    public static final int BSW_MODULE_DESCRIPTION__ALL_EXTENSIONS = 15;
    public static final int BSW_MODULE_DESCRIPTION__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_MODULE_DESCRIPTION__GAR_PACKAGE = 17;
    public static final int BSW_MODULE_DESCRIPTION__AR_PACKAGE = 18;
    public static final int BSW_MODULE_DESCRIPTION__BSW_MODULE_DEPENDENCIES = 19;
    public static final int BSW_MODULE_DESCRIPTION__MODULE_ID = 20;
    public static final int BSW_MODULE_DESCRIPTION__OUTGOING_CALLBACKS = 21;
    public static final int BSW_MODULE_DESCRIPTION__PROVIDED_ENTRIES = 22;
    public static final int BSW_MODULE_DESCRIPTION_FEATURE_COUNT = 23;

    public EClass getBswModuleDescription();

    public EReference getBswModuleDescription_BswModuleDependencies();

    public EAttribute getBswModuleDescription_ModuleId();

    public EReference getBswModuleDescription_OutgoingCallbacks();

    public EReference getBswModuleDescription_ProvidedEntries();

    public BswoverviewFactory getBswoverviewFactory();

    public static interface Literals {
        public static final EClass BSW_MODULE_DESCRIPTION = eINSTANCE.getBswModuleDescription();
        public static final EReference BSW_MODULE_DESCRIPTION__BSW_MODULE_DEPENDENCIES = eINSTANCE.getBswModuleDescription_BswModuleDependencies();
        public static final EAttribute BSW_MODULE_DESCRIPTION__MODULE_ID = eINSTANCE.getBswModuleDescription_ModuleId();
        public static final EReference BSW_MODULE_DESCRIPTION__OUTGOING_CALLBACKS = eINSTANCE.getBswModuleDescription_OutgoingCallbacks();
        public static final EReference BSW_MODULE_DESCRIPTION__PROVIDED_ENTRIES = eINSTANCE.getBswModuleDescription_ProvidedEntries();
    }
}

