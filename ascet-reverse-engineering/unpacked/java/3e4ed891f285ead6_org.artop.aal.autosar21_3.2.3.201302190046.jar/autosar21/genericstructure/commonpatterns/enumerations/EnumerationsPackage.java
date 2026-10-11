/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar21.genericstructure.commonpatterns.enumerations;

import autosar21.genericstructure.commonpatterns.enumerations.EnumerationsFactory;
import autosar21.genericstructure.commonpatterns.enumerations.impl.EnumerationsPackageImpl;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface EnumerationsPackage
extends EPackage {
    public static final String eNAME = "enumerations";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/gs/cp/e";
    public static final String eNS_PREFIX = "";
    public static final EnumerationsPackage eINSTANCE = EnumerationsPackageImpl.init();
    public static final int BYTE_ORDER_ENUM = 0;

    public EEnum getByteOrderEnum();

    public EnumerationsFactory getEnumerationsFactory();

    public static interface Literals {
        public static final EEnum BYTE_ORDER_ENUM = eINSTANCE.getByteOrderEnum();
    }
}

