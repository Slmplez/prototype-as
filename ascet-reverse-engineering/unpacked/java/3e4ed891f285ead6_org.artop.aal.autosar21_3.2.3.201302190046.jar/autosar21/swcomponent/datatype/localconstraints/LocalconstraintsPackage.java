/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar21.swcomponent.datatype.localconstraints;

import autosar21.swcomponent.datatype.localconstraints.LocalconstraintsFactory;
import autosar21.swcomponent.datatype.localconstraints.impl.LocalconstraintsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface LocalconstraintsPackage
extends EPackage {
    public static final String eNAME = "localconstraints";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/d/lc";
    public static final String eNS_PREFIX = "";
    public static final LocalconstraintsPackage eINSTANCE = LocalconstraintsPackageImpl.init();
    public static final int INTERSTRING = 0;
    public static final int INTERSTRING__GCHECKSUM = 0;
    public static final int INTERSTRING__GTIMESTAMP = 1;
    public static final int INTERSTRING__CHECKSUM = 2;
    public static final int INTERSTRING__TIMESTAMP = 3;
    public static final int INTERSTRING_FEATURE_COUNT = 4;
    public static final int LIMIT = 1;
    public static final int LIMIT__GCHECKSUM = 0;
    public static final int LIMIT__GTIMESTAMP = 1;
    public static final int LIMIT__CHECKSUM = 2;
    public static final int LIMIT__TIMESTAMP = 3;
    public static final int LIMIT__MIXED = 4;
    public static final int LIMIT__GINTERVAL_TYPE = 5;
    public static final int LIMIT__INTERVAL_TYPE = 6;
    public static final int LIMIT_FEATURE_COUNT = 7;
    public static final int INTERVAL_TYPE_ENUM = 2;

    public EClass getInterstring();

    public EClass getLimit();

    public EAttribute getLimit_IntervalType();

    public EEnum getIntervalTypeEnum();

    public LocalconstraintsFactory getLocalconstraintsFactory();

    public static interface Literals {
        public static final EClass INTERSTRING = eINSTANCE.getInterstring();
        public static final EClass LIMIT = eINSTANCE.getLimit();
        public static final EAttribute LIMIT__INTERVAL_TYPE = eINSTANCE.getLimit_IntervalType();
        public static final EEnum INTERVAL_TYPE_ENUM = eINSTANCE.getIntervalTypeEnum();
    }
}

