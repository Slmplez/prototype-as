/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.endtoendprotection;

import autosar40.swcomponent.endtoendprotection.EndtoendprotectionFactory;
import autosar40.swcomponent.endtoendprotection.impl.EndtoendprotectionPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EndtoendprotectionPackage
extends EPackage {
    public static final String eNAME = "endtoendprotection";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/etep";
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
    public static final int END_TO_END_PROTECTION__SHORT_NAME = 5;
    public static final int END_TO_END_PROTECTION__LONG_NAME = 6;
    public static final int END_TO_END_PROTECTION__GUUID = 7;
    public static final int END_TO_END_PROTECTION__GCATEGORY = 8;
    public static final int END_TO_END_PROTECTION__GDESC = 9;
    public static final int END_TO_END_PROTECTION__DESC = 10;
    public static final int END_TO_END_PROTECTION__CATEGORY = 11;
    public static final int END_TO_END_PROTECTION__ADMIN_DATA = 12;
    public static final int END_TO_END_PROTECTION__INTRODUCTION = 13;
    public static final int END_TO_END_PROTECTION__ANNOTATIONS = 14;
    public static final int END_TO_END_PROTECTION__UUID = 15;
    public static final int END_TO_END_PROTECTION__ALL_EXTENSIONS = 16;
    public static final int END_TO_END_PROTECTION__CONTAINED_EXTENSIONS = 17;
    public static final int END_TO_END_PROTECTION__END_TO_END_PROTECTION_SET = 18;
    public static final int END_TO_END_PROTECTION__END_TO_END_PROFILE = 19;
    public static final int END_TO_END_PROTECTION__END_TO_END_PROTECTION_ISIGNAL_IPDUS = 20;
    public static final int END_TO_END_PROTECTION__END_TO_END_PROTECTION_VARIABLE_PROTOTYPES = 21;
    public static final int END_TO_END_PROTECTION__VARIATION_POINT = 22;
    public static final int END_TO_END_PROTECTION_FEATURE_COUNT = 23;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE = 2;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__GCHECKSUM = 0;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__GTIMESTAMP = 1;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__CHECKSUM = 2;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__TIMESTAMP = 3;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__END_TO_END_PROTECTION = 4;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__RECEIVERS = 5;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__SENDER = 6;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__SHORT_LABEL = 7;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__VARIATION_POINT = 8;
    public static final int END_TO_END_PROTECTION_VARIABLE_PROTOTYPE_FEATURE_COUNT = 9;
    public static final int END_TO_END_PROTECTION_SET = 3;
    public static final int END_TO_END_PROTECTION_SET__GCHECKSUM = 0;
    public static final int END_TO_END_PROTECTION_SET__GTIMESTAMP = 1;
    public static final int END_TO_END_PROTECTION_SET__CHECKSUM = 2;
    public static final int END_TO_END_PROTECTION_SET__TIMESTAMP = 3;
    public static final int END_TO_END_PROTECTION_SET__GSHORT_NAME = 4;
    public static final int END_TO_END_PROTECTION_SET__SHORT_NAME = 5;
    public static final int END_TO_END_PROTECTION_SET__LONG_NAME = 6;
    public static final int END_TO_END_PROTECTION_SET__GUUID = 7;
    public static final int END_TO_END_PROTECTION_SET__GCATEGORY = 8;
    public static final int END_TO_END_PROTECTION_SET__GDESC = 9;
    public static final int END_TO_END_PROTECTION_SET__DESC = 10;
    public static final int END_TO_END_PROTECTION_SET__CATEGORY = 11;
    public static final int END_TO_END_PROTECTION_SET__ADMIN_DATA = 12;
    public static final int END_TO_END_PROTECTION_SET__INTRODUCTION = 13;
    public static final int END_TO_END_PROTECTION_SET__ANNOTATIONS = 14;
    public static final int END_TO_END_PROTECTION_SET__UUID = 15;
    public static final int END_TO_END_PROTECTION_SET__ALL_EXTENSIONS = 16;
    public static final int END_TO_END_PROTECTION_SET__CONTAINED_EXTENSIONS = 17;
    public static final int END_TO_END_PROTECTION_SET__GAR_PACKAGE = 18;
    public static final int END_TO_END_PROTECTION_SET__AR_PACKAGE = 19;
    public static final int END_TO_END_PROTECTION_SET__VARIATION_POINT = 20;
    public static final int END_TO_END_PROTECTION_SET__END_TO_END_PROTECTIONS = 21;
    public static final int END_TO_END_PROTECTION_SET_FEATURE_COUNT = 22;

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

    public EReference getEndToEndProtection_EndToEndProtectionISignalIPdus();

    public EReference getEndToEndProtection_EndToEndProtectionVariablePrototypes();

    public EReference getEndToEndProtection_VariationPoint();

    public EClass getEndToEndProtectionVariablePrototype();

    public EReference getEndToEndProtectionVariablePrototype_EndToEndProtection();

    public EReference getEndToEndProtectionVariablePrototype_Receivers();

    public EReference getEndToEndProtectionVariablePrototype_Sender();

    public EAttribute getEndToEndProtectionVariablePrototype_ShortLabel();

    public EReference getEndToEndProtectionVariablePrototype_VariationPoint();

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
        public static final EReference END_TO_END_PROTECTION__END_TO_END_PROTECTION_ISIGNAL_IPDUS = eINSTANCE.getEndToEndProtection_EndToEndProtectionISignalIPdus();
        public static final EReference END_TO_END_PROTECTION__END_TO_END_PROTECTION_VARIABLE_PROTOTYPES = eINSTANCE.getEndToEndProtection_EndToEndProtectionVariablePrototypes();
        public static final EReference END_TO_END_PROTECTION__VARIATION_POINT = eINSTANCE.getEndToEndProtection_VariationPoint();
        public static final EClass END_TO_END_PROTECTION_VARIABLE_PROTOTYPE = eINSTANCE.getEndToEndProtectionVariablePrototype();
        public static final EReference END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__END_TO_END_PROTECTION = eINSTANCE.getEndToEndProtectionVariablePrototype_EndToEndProtection();
        public static final EReference END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__RECEIVERS = eINSTANCE.getEndToEndProtectionVariablePrototype_Receivers();
        public static final EReference END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__SENDER = eINSTANCE.getEndToEndProtectionVariablePrototype_Sender();
        public static final EAttribute END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__SHORT_LABEL = eINSTANCE.getEndToEndProtectionVariablePrototype_ShortLabel();
        public static final EReference END_TO_END_PROTECTION_VARIABLE_PROTOTYPE__VARIATION_POINT = eINSTANCE.getEndToEndProtectionVariablePrototype_VariationPoint();
        public static final EClass END_TO_END_PROTECTION_SET = eINSTANCE.getEndToEndProtectionSet();
        public static final EReference END_TO_END_PROTECTION_SET__END_TO_END_PROTECTIONS = eINSTANCE.getEndToEndProtectionSet_EndToEndProtections();
    }
}

