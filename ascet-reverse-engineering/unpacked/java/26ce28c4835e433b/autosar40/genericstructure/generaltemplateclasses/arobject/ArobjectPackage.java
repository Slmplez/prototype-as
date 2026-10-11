/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.genericstructure.generaltemplateclasses.arobject;

import autosar40.genericstructure.generaltemplateclasses.arobject.ArobjectFactory;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ArobjectPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface ArobjectPackage
extends EPackage {
    public static final String eNAME = "arobject";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/ao";
    public static final String eNS_PREFIX = "";
    public static final ArobjectPackage eINSTANCE = ArobjectPackageImpl.init();
    public static final int AR_OBJECT = 0;
    public static final int AR_OBJECT__GCHECKSUM = 0;
    public static final int AR_OBJECT__GTIMESTAMP = 1;
    public static final int AR_OBJECT__CHECKSUM = 2;
    public static final int AR_OBJECT__TIMESTAMP = 3;
    public static final int AR_OBJECT_FEATURE_COUNT = 4;

    public EClass getARObject();

    public EAttribute getARObject_Checksum();

    public EAttribute getARObject_Timestamp();

    public ArobjectFactory getArobjectFactory();

    public static interface Literals {
        public static final EClass AR_OBJECT = eINSTANCE.getARObject();
        public static final EAttribute AR_OBJECT__CHECKSUM = eINSTANCE.getARObject_Checksum();
        public static final EAttribute AR_OBJECT__TIMESTAMP = eINSTANCE.getARObject_Timestamp();
    }
}

