/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing;

import autosar40.commonstructure.timing.TimingFactory;
import autosar40.commonstructure.timing.impl.TimingPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TimingPackage
extends EPackage {
    public static final String eNAME = "timing";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t";
    public static final String eNS_PREFIX = "";
    public static final TimingPackage eINSTANCE = TimingPackageImpl.init();
    public static final int TIMING_EXTENSION = 1;
    public static final int TIMING_EXTENSION__GCHECKSUM = 0;
    public static final int TIMING_EXTENSION__GTIMESTAMP = 1;
    public static final int TIMING_EXTENSION__CHECKSUM = 2;
    public static final int TIMING_EXTENSION__TIMESTAMP = 3;
    public static final int TIMING_EXTENSION__GSHORT_NAME = 4;
    public static final int TIMING_EXTENSION__SHORT_NAME = 5;
    public static final int TIMING_EXTENSION__LONG_NAME = 6;
    public static final int TIMING_EXTENSION__GUUID = 7;
    public static final int TIMING_EXTENSION__GCATEGORY = 8;
    public static final int TIMING_EXTENSION__GDESC = 9;
    public static final int TIMING_EXTENSION__DESC = 10;
    public static final int TIMING_EXTENSION__CATEGORY = 11;
    public static final int TIMING_EXTENSION__ADMIN_DATA = 12;
    public static final int TIMING_EXTENSION__INTRODUCTION = 13;
    public static final int TIMING_EXTENSION__ANNOTATIONS = 14;
    public static final int TIMING_EXTENSION__UUID = 15;
    public static final int TIMING_EXTENSION__ALL_EXTENSIONS = 16;
    public static final int TIMING_EXTENSION__CONTAINED_EXTENSIONS = 17;
    public static final int TIMING_EXTENSION__GAR_PACKAGE = 18;
    public static final int TIMING_EXTENSION__AR_PACKAGE = 19;
    public static final int TIMING_EXTENSION__VARIATION_POINT = 20;
    public static final int TIMING_EXTENSION__TIMING_DESCRIPTIONS = 21;
    public static final int TIMING_EXTENSION__TIMING_GUARANTEES = 22;
    public static final int TIMING_EXTENSION__TIMING_REQUIREMENTS = 23;
    public static final int TIMING_EXTENSION_FEATURE_COUNT = 24;
    public static final int BSW_MODULE_TIMING = 0;
    public static final int BSW_MODULE_TIMING__GCHECKSUM = 0;
    public static final int BSW_MODULE_TIMING__GTIMESTAMP = 1;
    public static final int BSW_MODULE_TIMING__CHECKSUM = 2;
    public static final int BSW_MODULE_TIMING__TIMESTAMP = 3;
    public static final int BSW_MODULE_TIMING__GSHORT_NAME = 4;
    public static final int BSW_MODULE_TIMING__SHORT_NAME = 5;
    public static final int BSW_MODULE_TIMING__LONG_NAME = 6;
    public static final int BSW_MODULE_TIMING__GUUID = 7;
    public static final int BSW_MODULE_TIMING__GCATEGORY = 8;
    public static final int BSW_MODULE_TIMING__GDESC = 9;
    public static final int BSW_MODULE_TIMING__DESC = 10;
    public static final int BSW_MODULE_TIMING__CATEGORY = 11;
    public static final int BSW_MODULE_TIMING__ADMIN_DATA = 12;
    public static final int BSW_MODULE_TIMING__INTRODUCTION = 13;
    public static final int BSW_MODULE_TIMING__ANNOTATIONS = 14;
    public static final int BSW_MODULE_TIMING__UUID = 15;
    public static final int BSW_MODULE_TIMING__ALL_EXTENSIONS = 16;
    public static final int BSW_MODULE_TIMING__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_MODULE_TIMING__GAR_PACKAGE = 18;
    public static final int BSW_MODULE_TIMING__AR_PACKAGE = 19;
    public static final int BSW_MODULE_TIMING__VARIATION_POINT = 20;
    public static final int BSW_MODULE_TIMING__TIMING_DESCRIPTIONS = 21;
    public static final int BSW_MODULE_TIMING__TIMING_GUARANTEES = 22;
    public static final int BSW_MODULE_TIMING__TIMING_REQUIREMENTS = 23;
    public static final int BSW_MODULE_TIMING__BEHAVIOR = 24;
    public static final int BSW_MODULE_TIMING_FEATURE_COUNT = 25;
    public static final int ECU_TIMING = 2;
    public static final int ECU_TIMING__GCHECKSUM = 0;
    public static final int ECU_TIMING__GTIMESTAMP = 1;
    public static final int ECU_TIMING__CHECKSUM = 2;
    public static final int ECU_TIMING__TIMESTAMP = 3;
    public static final int ECU_TIMING__GSHORT_NAME = 4;
    public static final int ECU_TIMING__SHORT_NAME = 5;
    public static final int ECU_TIMING__LONG_NAME = 6;
    public static final int ECU_TIMING__GUUID = 7;
    public static final int ECU_TIMING__GCATEGORY = 8;
    public static final int ECU_TIMING__GDESC = 9;
    public static final int ECU_TIMING__DESC = 10;
    public static final int ECU_TIMING__CATEGORY = 11;
    public static final int ECU_TIMING__ADMIN_DATA = 12;
    public static final int ECU_TIMING__INTRODUCTION = 13;
    public static final int ECU_TIMING__ANNOTATIONS = 14;
    public static final int ECU_TIMING__UUID = 15;
    public static final int ECU_TIMING__ALL_EXTENSIONS = 16;
    public static final int ECU_TIMING__CONTAINED_EXTENSIONS = 17;
    public static final int ECU_TIMING__GAR_PACKAGE = 18;
    public static final int ECU_TIMING__AR_PACKAGE = 19;
    public static final int ECU_TIMING__VARIATION_POINT = 20;
    public static final int ECU_TIMING__TIMING_DESCRIPTIONS = 21;
    public static final int ECU_TIMING__TIMING_GUARANTEES = 22;
    public static final int ECU_TIMING__TIMING_REQUIREMENTS = 23;
    public static final int ECU_TIMING__ECU_CONFIGURATION = 24;
    public static final int ECU_TIMING_FEATURE_COUNT = 25;
    public static final int SWC_TIMING = 3;
    public static final int SWC_TIMING__GCHECKSUM = 0;
    public static final int SWC_TIMING__GTIMESTAMP = 1;
    public static final int SWC_TIMING__CHECKSUM = 2;
    public static final int SWC_TIMING__TIMESTAMP = 3;
    public static final int SWC_TIMING__GSHORT_NAME = 4;
    public static final int SWC_TIMING__SHORT_NAME = 5;
    public static final int SWC_TIMING__LONG_NAME = 6;
    public static final int SWC_TIMING__GUUID = 7;
    public static final int SWC_TIMING__GCATEGORY = 8;
    public static final int SWC_TIMING__GDESC = 9;
    public static final int SWC_TIMING__DESC = 10;
    public static final int SWC_TIMING__CATEGORY = 11;
    public static final int SWC_TIMING__ADMIN_DATA = 12;
    public static final int SWC_TIMING__INTRODUCTION = 13;
    public static final int SWC_TIMING__ANNOTATIONS = 14;
    public static final int SWC_TIMING__UUID = 15;
    public static final int SWC_TIMING__ALL_EXTENSIONS = 16;
    public static final int SWC_TIMING__CONTAINED_EXTENSIONS = 17;
    public static final int SWC_TIMING__GAR_PACKAGE = 18;
    public static final int SWC_TIMING__AR_PACKAGE = 19;
    public static final int SWC_TIMING__VARIATION_POINT = 20;
    public static final int SWC_TIMING__TIMING_DESCRIPTIONS = 21;
    public static final int SWC_TIMING__TIMING_GUARANTEES = 22;
    public static final int SWC_TIMING__TIMING_REQUIREMENTS = 23;
    public static final int SWC_TIMING__BEHAVIOR = 24;
    public static final int SWC_TIMING__COMPONENT = 25;
    public static final int SWC_TIMING_FEATURE_COUNT = 26;
    public static final int SYSTEM_TIMING = 4;
    public static final int SYSTEM_TIMING__GCHECKSUM = 0;
    public static final int SYSTEM_TIMING__GTIMESTAMP = 1;
    public static final int SYSTEM_TIMING__CHECKSUM = 2;
    public static final int SYSTEM_TIMING__TIMESTAMP = 3;
    public static final int SYSTEM_TIMING__GSHORT_NAME = 4;
    public static final int SYSTEM_TIMING__SHORT_NAME = 5;
    public static final int SYSTEM_TIMING__LONG_NAME = 6;
    public static final int SYSTEM_TIMING__GUUID = 7;
    public static final int SYSTEM_TIMING__GCATEGORY = 8;
    public static final int SYSTEM_TIMING__GDESC = 9;
    public static final int SYSTEM_TIMING__DESC = 10;
    public static final int SYSTEM_TIMING__CATEGORY = 11;
    public static final int SYSTEM_TIMING__ADMIN_DATA = 12;
    public static final int SYSTEM_TIMING__INTRODUCTION = 13;
    public static final int SYSTEM_TIMING__ANNOTATIONS = 14;
    public static final int SYSTEM_TIMING__UUID = 15;
    public static final int SYSTEM_TIMING__ALL_EXTENSIONS = 16;
    public static final int SYSTEM_TIMING__CONTAINED_EXTENSIONS = 17;
    public static final int SYSTEM_TIMING__GAR_PACKAGE = 18;
    public static final int SYSTEM_TIMING__AR_PACKAGE = 19;
    public static final int SYSTEM_TIMING__VARIATION_POINT = 20;
    public static final int SYSTEM_TIMING__TIMING_DESCRIPTIONS = 21;
    public static final int SYSTEM_TIMING__TIMING_GUARANTEES = 22;
    public static final int SYSTEM_TIMING__TIMING_REQUIREMENTS = 23;
    public static final int SYSTEM_TIMING__SYSTEM = 24;
    public static final int SYSTEM_TIMING_FEATURE_COUNT = 25;
    public static final int VFB_TIMING = 5;
    public static final int VFB_TIMING__GCHECKSUM = 0;
    public static final int VFB_TIMING__GTIMESTAMP = 1;
    public static final int VFB_TIMING__CHECKSUM = 2;
    public static final int VFB_TIMING__TIMESTAMP = 3;
    public static final int VFB_TIMING__GSHORT_NAME = 4;
    public static final int VFB_TIMING__SHORT_NAME = 5;
    public static final int VFB_TIMING__LONG_NAME = 6;
    public static final int VFB_TIMING__GUUID = 7;
    public static final int VFB_TIMING__GCATEGORY = 8;
    public static final int VFB_TIMING__GDESC = 9;
    public static final int VFB_TIMING__DESC = 10;
    public static final int VFB_TIMING__CATEGORY = 11;
    public static final int VFB_TIMING__ADMIN_DATA = 12;
    public static final int VFB_TIMING__INTRODUCTION = 13;
    public static final int VFB_TIMING__ANNOTATIONS = 14;
    public static final int VFB_TIMING__UUID = 15;
    public static final int VFB_TIMING__ALL_EXTENSIONS = 16;
    public static final int VFB_TIMING__CONTAINED_EXTENSIONS = 17;
    public static final int VFB_TIMING__GAR_PACKAGE = 18;
    public static final int VFB_TIMING__AR_PACKAGE = 19;
    public static final int VFB_TIMING__VARIATION_POINT = 20;
    public static final int VFB_TIMING__TIMING_DESCRIPTIONS = 21;
    public static final int VFB_TIMING__TIMING_GUARANTEES = 22;
    public static final int VFB_TIMING__TIMING_REQUIREMENTS = 23;
    public static final int VFB_TIMING__COMPONENT = 24;
    public static final int VFB_TIMING_FEATURE_COUNT = 25;

    public EClass getBswModuleTiming();

    public EReference getBswModuleTiming_Behavior();

    public EClass getTimingExtension();

    public EReference getTimingExtension_TimingDescriptions();

    public EReference getTimingExtension_TimingGuarantees();

    public EReference getTimingExtension_TimingRequirements();

    public EClass getEcuTiming();

    public EReference getEcuTiming_EcuConfiguration();

    public EClass getSwcTiming();

    public EReference getSwcTiming_Behavior();

    public EReference getSwcTiming_Component();

    public EClass getSystemTiming();

    public EReference getSystemTiming_System();

    public EClass getVfbTiming();

    public EReference getVfbTiming_Component();

    public TimingFactory getTimingFactory();

    public static interface Literals {
        public static final EClass BSW_MODULE_TIMING = eINSTANCE.getBswModuleTiming();
        public static final EReference BSW_MODULE_TIMING__BEHAVIOR = eINSTANCE.getBswModuleTiming_Behavior();
        public static final EClass TIMING_EXTENSION = eINSTANCE.getTimingExtension();
        public static final EReference TIMING_EXTENSION__TIMING_DESCRIPTIONS = eINSTANCE.getTimingExtension_TimingDescriptions();
        public static final EReference TIMING_EXTENSION__TIMING_GUARANTEES = eINSTANCE.getTimingExtension_TimingGuarantees();
        public static final EReference TIMING_EXTENSION__TIMING_REQUIREMENTS = eINSTANCE.getTimingExtension_TimingRequirements();
        public static final EClass ECU_TIMING = eINSTANCE.getEcuTiming();
        public static final EReference ECU_TIMING__ECU_CONFIGURATION = eINSTANCE.getEcuTiming_EcuConfiguration();
        public static final EClass SWC_TIMING = eINSTANCE.getSwcTiming();
        public static final EReference SWC_TIMING__BEHAVIOR = eINSTANCE.getSwcTiming_Behavior();
        public static final EReference SWC_TIMING__COMPONENT = eINSTANCE.getSwcTiming_Component();
        public static final EClass SYSTEM_TIMING = eINSTANCE.getSystemTiming();
        public static final EReference SYSTEM_TIMING__SYSTEM = eINSTANCE.getSystemTiming_System();
        public static final EClass VFB_TIMING = eINSTANCE.getVfbTiming();
        public static final EReference VFB_TIMING__COMPONENT = eINSTANCE.getVfbTiming_Component();
    }
}

