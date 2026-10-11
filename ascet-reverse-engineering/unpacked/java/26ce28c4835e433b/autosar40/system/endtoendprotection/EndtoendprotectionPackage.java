/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.endtoendprotection;

import autosar40.system.endtoendprotection.EndtoendprotectionFactory;
import autosar40.system.endtoendprotection.impl.EndtoendprotectionPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EndtoendprotectionPackage
extends EPackage {
    public static final String eNAME = "endtoendprotection";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/etep";
    public static final String eNS_PREFIX = "";
    public static final EndtoendprotectionPackage eINSTANCE = EndtoendprotectionPackageImpl.init();
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU = 0;
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU__GCHECKSUM = 0;
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU__GTIMESTAMP = 1;
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU__CHECKSUM = 2;
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU__TIMESTAMP = 3;
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU__END_TO_END_PROTECTION = 4;
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU__DATA_OFFSET = 5;
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU__ISIGNAL_GROUP = 6;
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU__ISIGNAL_IPDU = 7;
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU__VARIATION_POINT = 8;
    public static final int END_TO_END_PROTECTION_ISIGNAL_IPDU_FEATURE_COUNT = 9;

    public EClass getEndToEndProtectionISignalIPdu();

    public EReference getEndToEndProtectionISignalIPdu_EndToEndProtection();

    public EAttribute getEndToEndProtectionISignalIPdu_DataOffset();

    public EReference getEndToEndProtectionISignalIPdu_ISignalGroup();

    public EReference getEndToEndProtectionISignalIPdu_ISignalIPdu();

    public EReference getEndToEndProtectionISignalIPdu_VariationPoint();

    public EndtoendprotectionFactory getEndtoendprotectionFactory();

    public static interface Literals {
        public static final EClass END_TO_END_PROTECTION_ISIGNAL_IPDU = eINSTANCE.getEndToEndProtectionISignalIPdu();
        public static final EReference END_TO_END_PROTECTION_ISIGNAL_IPDU__END_TO_END_PROTECTION = eINSTANCE.getEndToEndProtectionISignalIPdu_EndToEndProtection();
        public static final EAttribute END_TO_END_PROTECTION_ISIGNAL_IPDU__DATA_OFFSET = eINSTANCE.getEndToEndProtectionISignalIPdu_DataOffset();
        public static final EReference END_TO_END_PROTECTION_ISIGNAL_IPDU__ISIGNAL_GROUP = eINSTANCE.getEndToEndProtectionISignalIPdu_ISignalGroup();
        public static final EReference END_TO_END_PROTECTION_ISIGNAL_IPDU__ISIGNAL_IPDU = eINSTANCE.getEndToEndProtectionISignalIPdu_ISignalIPdu();
        public static final EReference END_TO_END_PROTECTION_ISIGNAL_IPDU__VARIATION_POINT = eINSTANCE.getEndToEndProtectionISignalIPdu_VariationPoint();
    }
}

