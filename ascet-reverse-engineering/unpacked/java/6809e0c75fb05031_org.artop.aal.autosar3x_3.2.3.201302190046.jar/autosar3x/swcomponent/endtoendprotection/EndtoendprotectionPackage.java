/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.endtoendprotection;

import autosar3x.swcomponent.endtoendprotection.EndtoendprotectionFactory;
import autosar3x.swcomponent.endtoendprotection.impl.EndtoendprotectionPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EndtoendprotectionPackage
extends EPackage {
    public static final String eNAME = "endtoendprotection";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/etep";
    public static final String eNS_PREFIX = "";
    public static final EndtoendprotectionPackage eINSTANCE = EndtoendprotectionPackageImpl.init();
    public static final int END_TO_END_DESCRIPTION = 0;
    public static final int END_TO_END_DESCRIPTION__GCHECKSUM = 0;
    public static final int END_TO_END_DESCRIPTION__GTIMESTAMP = 1;
    public static final int END_TO_END_DESCRIPTION__CHECKSUM = 2;
    public static final int END_TO_END_DESCRIPTION__TIMESTAMP = 3;
    public static final int END_TO_END_DESCRIPTION__END_TO_END_PROTECTION = 4;
    public static final int END_TO_END_DESCRIPTION__CATEGORY = 5;
    public static final int END_TO_END_DESCRIPTION__DATA_IDS = 6;
    public static final int END_TO_END_DESCRIPTION__DATA_ID_MODE = 7;
    public static final int END_TO_END_DESCRIPTION__DATA_LENGTH = 8;
    public static final int END_TO_END_DESCRIPTION__MAX_DELTA_COUNTER_INIT = 9;
    public static final int END_TO_END_DESCRIPTION__CRC_OFFSET = 10;
    public static final int END_TO_END_DESCRIPTION__COUNTER_OFFSET = 11;
    public static final int END_TO_END_DESCRIPTION_FEATURE_COUNT = 12;
    public static final int END_TO_END_PROTECTION = 1;
    public static final int END_TO_END_PROTECTION__GCHECKSUM = 0;
    public static final int END_TO_END_PROTECTION__GTIMESTAMP = 1;
    public static final int END_TO_END_PROTECTION__CHECKSUM = 2;
    public static final int END_TO_END_PROTECTION__TIMESTAMP = 3;
    public static final int END_TO_END_PROTECTION__GSHORT_NAME = 4;
    public static final int END_TO_END_PROTECTION__GUUID = 5;
    public static final int END_TO_END_PROTECTION__GCATEGORY = 6;
    public static final int END_TO_END_PROTECTION__GDESC = 7;
    public static final int END_TO_END_PROTECTION__SHORT_NAME = 8;
    public static final int END_TO_END_PROTECTION__LONG_NAME = 9;
    public static final int END_TO_END_PROTECTION__DESC = 10;
    public static final int END_TO_END_PROTECTION__CATEGORY = 11;
    public static final int END_TO_END_PROTECTION__ADMIN_DATA = 12;
    public static final int END_TO_END_PROTECTION__INTRODUCTION = 13;
    public static final int END_TO_END_PROTECTION__UUID = 14;
    public static final int END_TO_END_PROTECTION__ALL_EXTENSIONS = 15;
    public static final int END_TO_END_PROTECTION__CONTAINED_EXTENSIONS = 16;
    public static final int END_TO_END_PROTECTION__END_TO_END_PROTECTION_SET = 17;
    public static final int END_TO_END_PROTECTION__END_TO_END_PROFILE = 18;
    public static final int END_TO_END_PROTECTION__END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPES = 19;
    public static final int END_TO_END_PROTECTION__END_TO_END_PROTECTION_ISIGNAL_IPDUS = 20;
    public static final int END_TO_END_PROTECTION_FEATURE_COUNT = 21;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE = 2;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE__GCHECKSUM = 0;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE__CHECKSUM = 2;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE__TIMESTAMP = 3;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE__END_TO_END_PROTECTION = 4;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE__RECEIVERS = 5;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE__SENDER = 6;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_FEATURE_COUNT = 7;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT = 3;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT__CHECKSUM = 2;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT__COMPONENT_PROTOTYPES = 4;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT__PORT_PROTOTYPE = 5;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT__TARGET_DATA_PROTOTYPE = 6;
    public static final int END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT_FEATURE_COUNT = 7;
    public static final int END_TO_END_PROTECTION_SET = 4;
    public static final int END_TO_END_PROTECTION_SET__GCHECKSUM = 0;
    public static final int END_TO_END_PROTECTION_SET__GTIMESTAMP = 1;
    public static final int END_TO_END_PROTECTION_SET__CHECKSUM = 2;
    public static final int END_TO_END_PROTECTION_SET__TIMESTAMP = 3;
    public static final int END_TO_END_PROTECTION_SET__GSHORT_NAME = 4;
    public static final int END_TO_END_PROTECTION_SET__GUUID = 5;
    public static final int END_TO_END_PROTECTION_SET__GCATEGORY = 6;
    public static final int END_TO_END_PROTECTION_SET__GDESC = 7;
    public static final int END_TO_END_PROTECTION_SET__SHORT_NAME = 8;
    public static final int END_TO_END_PROTECTION_SET__LONG_NAME = 9;
    public static final int END_TO_END_PROTECTION_SET__DESC = 10;
    public static final int END_TO_END_PROTECTION_SET__CATEGORY = 11;
    public static final int END_TO_END_PROTECTION_SET__ADMIN_DATA = 12;
    public static final int END_TO_END_PROTECTION_SET__INTRODUCTION = 13;
    public static final int END_TO_END_PROTECTION_SET__UUID = 14;
    public static final int END_TO_END_PROTECTION_SET__ALL_EXTENSIONS = 15;
    public static final int END_TO_END_PROTECTION_SET__CONTAINED_EXTENSIONS = 16;
    public static final int END_TO_END_PROTECTION_SET__GAR_PACKAGE = 17;
    public static final int END_TO_END_PROTECTION_SET__AR_PACKAGE = 18;
    public static final int END_TO_END_PROTECTION_SET__END_TO_END_PROTECTIONS = 19;
    public static final int END_TO_END_PROTECTION_SET_FEATURE_COUNT = 20;

    public EClass getEndToEndDescription();

    public EReference getEndToEndDescription_EndToEndProtection();

    public EAttribute getEndToEndDescription_Category();

    public EAttribute getEndToEndDescription_DataIds();

    public EAttribute getEndToEndDescription_DataIdMode();

    public EAttribute getEndToEndDescription_DataLength();

    public EAttribute getEndToEndDescription_MaxDeltaCounterInit();

    public EAttribute getEndToEndDescription_CrcOffset();

    public EAttribute getEndToEndDescription_CounterOffset();

    public EClass getEndToEndProtection();

    public EReference getEndToEndProtection_EndToEndProtectionSet();

    public EReference getEndToEndProtection_EndToEndProfile();

    public EReference getEndToEndProtection_EndToEndProtectionDataElementPrototypes();

    public EReference getEndToEndProtection_EndToEndProtectionISignalIPdus();

    public EClass getEndToEndProtectionDataElementPrototype();

    public EReference getEndToEndProtectionDataElementPrototype_EndToEndProtection();

    public EReference getEndToEndProtectionDataElementPrototype_Receivers();

    public EReference getEndToEndProtectionDataElementPrototype_Sender();

    public EClass getEndToEndProtectionDataElementPrototype_dataElement();

    public EReference getEndToEndProtectionDataElementPrototype_dataElement_ComponentPrototypes();

    public EReference getEndToEndProtectionDataElementPrototype_dataElement_PortPrototype();

    public EReference getEndToEndProtectionDataElementPrototype_dataElement_TargetDataPrototype();

    public EClass getEndToEndProtectionSet();

    public EReference getEndToEndProtectionSet_EndToEndProtections();

    public EndtoendprotectionFactory getEndtoendprotectionFactory();

    public static interface Literals {
        public static final EClass END_TO_END_DESCRIPTION = eINSTANCE.getEndToEndDescription();
        public static final EReference END_TO_END_DESCRIPTION__END_TO_END_PROTECTION = eINSTANCE.getEndToEndDescription_EndToEndProtection();
        public static final EAttribute END_TO_END_DESCRIPTION__CATEGORY = eINSTANCE.getEndToEndDescription_Category();
        public static final EAttribute END_TO_END_DESCRIPTION__DATA_IDS = eINSTANCE.getEndToEndDescription_DataIds();
        public static final EAttribute END_TO_END_DESCRIPTION__DATA_ID_MODE = eINSTANCE.getEndToEndDescription_DataIdMode();
        public static final EAttribute END_TO_END_DESCRIPTION__DATA_LENGTH = eINSTANCE.getEndToEndDescription_DataLength();
        public static final EAttribute END_TO_END_DESCRIPTION__MAX_DELTA_COUNTER_INIT = eINSTANCE.getEndToEndDescription_MaxDeltaCounterInit();
        public static final EAttribute END_TO_END_DESCRIPTION__CRC_OFFSET = eINSTANCE.getEndToEndDescription_CrcOffset();
        public static final EAttribute END_TO_END_DESCRIPTION__COUNTER_OFFSET = eINSTANCE.getEndToEndDescription_CounterOffset();
        public static final EClass END_TO_END_PROTECTION = eINSTANCE.getEndToEndProtection();
        public static final EReference END_TO_END_PROTECTION__END_TO_END_PROTECTION_SET = eINSTANCE.getEndToEndProtection_EndToEndProtectionSet();
        public static final EReference END_TO_END_PROTECTION__END_TO_END_PROFILE = eINSTANCE.getEndToEndProtection_EndToEndProfile();
        public static final EReference END_TO_END_PROTECTION__END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPES = eINSTANCE.getEndToEndProtection_EndToEndProtectionDataElementPrototypes();
        public static final EReference END_TO_END_PROTECTION__END_TO_END_PROTECTION_ISIGNAL_IPDUS = eINSTANCE.getEndToEndProtection_EndToEndProtectionISignalIPdus();
        public static final EClass END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE = eINSTANCE.getEndToEndProtectionDataElementPrototype();
        public static final EReference END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE__END_TO_END_PROTECTION = eINSTANCE.getEndToEndProtectionDataElementPrototype_EndToEndProtection();
        public static final EReference END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE__RECEIVERS = eINSTANCE.getEndToEndProtectionDataElementPrototype_Receivers();
        public static final EReference END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE__SENDER = eINSTANCE.getEndToEndProtectionDataElementPrototype_Sender();
        public static final EClass END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT = eINSTANCE.getEndToEndProtectionDataElementPrototype_dataElement();
        public static final EReference END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT__COMPONENT_PROTOTYPES = eINSTANCE.getEndToEndProtectionDataElementPrototype_dataElement_ComponentPrototypes();
        public static final EReference END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT__PORT_PROTOTYPE = eINSTANCE.getEndToEndProtectionDataElementPrototype_dataElement_PortPrototype();
        public static final EReference END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT__TARGET_DATA_PROTOTYPE = eINSTANCE.getEndToEndProtectionDataElementPrototype_dataElement_TargetDataPrototype();
        public static final EClass END_TO_END_PROTECTION_SET = eINSTANCE.getEndToEndProtectionSet();
        public static final EReference END_TO_END_PROTECTION_SET__END_TO_END_PROTECTIONS = eINSTANCE.getEndToEndProtectionSet_EndToEndProtections();
    }
}

