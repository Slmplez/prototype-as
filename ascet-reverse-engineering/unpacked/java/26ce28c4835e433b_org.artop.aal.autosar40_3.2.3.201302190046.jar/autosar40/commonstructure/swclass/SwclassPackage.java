/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.commonstructure.swclass;

import autosar40.commonstructure.swclass.SwclassFactory;
import autosar40.commonstructure.swclass.impl.SwclassPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface SwclassPackage
extends EPackage {
    public static final String eNAME = "swclass";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/sclass";
    public static final String eNS_PREFIX = "";
    public static final SwclassPackage eINSTANCE = SwclassPackageImpl.init();
    public static final int SW_VARIABLE_IMPL = 0;
    public static final int SW_VARIABLE_IMPL__GCHECKSUM = 0;
    public static final int SW_VARIABLE_IMPL__GTIMESTAMP = 1;
    public static final int SW_VARIABLE_IMPL__CHECKSUM = 2;
    public static final int SW_VARIABLE_IMPL__TIMESTAMP = 3;
    public static final int SW_VARIABLE_IMPL_FEATURE_COUNT = 4;

    public EClass getSwVariableImpl();

    public SwclassFactory getSwclassFactory();

    public static interface Literals {
        public static final EClass SW_VARIABLE_IMPL = eINSTANCE.getSwVariableImpl();
    }
}

