/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.bswmodule;

import autosar21.bswmodule.BswmoduleFactory;
import autosar21.bswmodule.impl.BswmodulePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BswmodulePackage
extends EPackage {
    public static final String eNAME = "bswmodule";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/bm";
    public static final String eNS_PREFIX = "";
    public static final BswmodulePackage eINSTANCE = BswmodulePackageImpl.init();
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
    public static final int BSW_MODULE_DESCRIPTION__UUID = 13;
    public static final int BSW_MODULE_DESCRIPTION__ALL_EXTENSIONS = 14;
    public static final int BSW_MODULE_DESCRIPTION__CONTAINED_EXTENSIONS = 15;
    public static final int BSW_MODULE_DESCRIPTION__GAR_PACKAGE = 16;
    public static final int BSW_MODULE_DESCRIPTION__AR_PACKAGE = 17;
    public static final int BSW_MODULE_DESCRIPTION__MODULE_ID = 18;
    public static final int BSW_MODULE_DESCRIPTION__PRECONFIGURED_CONFIGURATION = 19;
    public static final int BSW_MODULE_DESCRIPTION__RECOMMENDED_CONFIGURATION = 20;
    public static final int BSW_MODULE_DESCRIPTION__VENDOR_SPECIFIC_MODULE_DEF = 21;
    public static final int BSW_MODULE_DESCRIPTION_FEATURE_COUNT = 22;

    public EClass getBswModuleDescription();

    public EAttribute getBswModuleDescription_ModuleId();

    public EReference getBswModuleDescription_PreconfiguredConfiguration();

    public EReference getBswModuleDescription_RecommendedConfiguration();

    public EReference getBswModuleDescription_VendorSpecificModuleDef();

    public BswmoduleFactory getBswmoduleFactory();

    public static interface Literals {
        public static final EClass BSW_MODULE_DESCRIPTION = eINSTANCE.getBswModuleDescription();
        public static final EAttribute BSW_MODULE_DESCRIPTION__MODULE_ID = eINSTANCE.getBswModuleDescription_ModuleId();
        public static final EReference BSW_MODULE_DESCRIPTION__PRECONFIGURED_CONFIGURATION = eINSTANCE.getBswModuleDescription_PreconfiguredConfiguration();
        public static final EReference BSW_MODULE_DESCRIPTION__RECOMMENDED_CONFIGURATION = eINSTANCE.getBswModuleDescription_RecommendedConfiguration();
        public static final EReference BSW_MODULE_DESCRIPTION__VENDOR_SPECIFIC_MODULE_DEF = eINSTANCE.getBswModuleDescription_VendorSpecificModuleDef();
    }
}

