/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar3x.genericstructure.commonpatterns.enumerations;

import autosar3x.genericstructure.commonpatterns.enumerations.EnumerationsFactory;
import autosar3x.genericstructure.commonpatterns.enumerations.impl.EnumerationsPackageImpl;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface EnumerationsPackage
extends EPackage {
    public static final String eNAME = "enumerations";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/cp/e";
    public static final String eNS_PREFIX = "";
    public static final EnumerationsPackage eINSTANCE = EnumerationsPackageImpl.init();
    public static final int BYTE_ORDER_ENUM = 0;
    public static final int MONOTONY_ENUM = 1;

    public EEnum getByteOrderEnum();

    public EEnum getMonotonyEnum();

    public EnumerationsFactory getEnumerationsFactory();

    public static interface Literals {
        public static final EEnum BYTE_ORDER_ENUM = eINSTANCE.getByteOrderEnum();
        public static final EEnum MONOTONY_ENUM = eINSTANCE.getMonotonyEnum();
    }
}

