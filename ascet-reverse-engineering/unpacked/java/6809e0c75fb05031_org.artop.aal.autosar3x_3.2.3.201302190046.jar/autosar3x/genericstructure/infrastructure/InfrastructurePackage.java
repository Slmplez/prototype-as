/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar3x.genericstructure.infrastructure;

import autosar3x.genericstructure.infrastructure.InfrastructureFactory;
import autosar3x.genericstructure.infrastructure.impl.InfrastructurePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface InfrastructurePackage
extends EPackage {
    public static final String eNAME = "infrastructure";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/i";
    public static final String eNS_PREFIX = "";
    public static final InfrastructurePackage eINSTANCE = InfrastructurePackageImpl.init();
    public static final int AR_OBJECT = 0;
    public static final int AR_OBJECT__GCHECKSUM = 0;
    public static final int AR_OBJECT__GTIMESTAMP = 1;
    public static final int AR_OBJECT__CHECKSUM = 2;
    public static final int AR_OBJECT__TIMESTAMP = 3;
    public static final int AR_OBJECT_FEATURE_COUNT = 4;

    public EClass getARObject();

    public EAttribute getARObject_Checksum();

    public EAttribute getARObject_Timestamp();

    public InfrastructureFactory getInfrastructureFactory();

    public static interface Literals {
        public static final EClass AR_OBJECT = eINSTANCE.getARObject();
        public static final EAttribute AR_OBJECT__CHECKSUM = eINSTANCE.getARObject_Checksum();
        public static final EAttribute AR_OBJECT__TIMESTAMP = eINSTANCE.getARObject_Timestamp();
    }
}

