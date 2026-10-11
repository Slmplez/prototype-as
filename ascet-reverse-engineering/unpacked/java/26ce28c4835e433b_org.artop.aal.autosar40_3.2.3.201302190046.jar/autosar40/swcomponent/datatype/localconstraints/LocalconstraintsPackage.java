/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.swcomponent.datatype.localconstraints;

import autosar40.swcomponent.datatype.localconstraints.LocalconstraintsFactory;
import autosar40.swcomponent.datatype.localconstraints.impl.LocalconstraintsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface LocalconstraintsPackage
extends EPackage {
    public static final String eNAME = "localconstraints";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/d/lc";
    public static final String eNS_PREFIX = "";
    public static final LocalconstraintsPackage eINSTANCE = LocalconstraintsPackageImpl.init();
    public static final int LIMIT = 0;
    public static final int LIMIT__GCHECKSUM = 0;
    public static final int LIMIT__GTIMESTAMP = 1;
    public static final int LIMIT__CHECKSUM = 2;
    public static final int LIMIT__TIMESTAMP = 3;
    public static final int LIMIT__MIXED = 4;
    public static final int LIMIT__SYSC_STRINGS = 5;
    public static final int LIMIT__SYSCS = 6;
    public static final int LIMIT__VARIATION_POINT_PROXY = 7;
    public static final int LIMIT__BINDING_TIME = 8;
    public static final int LIMIT__BLUEPRINT_VALUE = 9;
    public static final int LIMIT__SD = 10;
    public static final int LIMIT__SHORT_LABEL = 11;
    public static final int LIMIT__GINTERVAL_TYPE = 12;
    public static final int LIMIT__GVALUE = 13;
    public static final int LIMIT__INTERVAL_TYPE = 14;
    public static final int LIMIT_FEATURE_COUNT = 15;
    public static final int INTERVAL_TYPE_ENUM = 1;

    public EClass getLimit();

    public EAttribute getLimit_IntervalType();

    public EEnum getIntervalTypeEnum();

    public LocalconstraintsFactory getLocalconstraintsFactory();

    public static interface Literals {
        public static final EClass LIMIT = eINSTANCE.getLimit();
        public static final EAttribute LIMIT__INTERVAL_TYPE = eINSTANCE.getLimit_IntervalType();
        public static final EEnum INTERVAL_TYPE_ENUM = eINSTANCE.getIntervalTypeEnum();
    }
}

