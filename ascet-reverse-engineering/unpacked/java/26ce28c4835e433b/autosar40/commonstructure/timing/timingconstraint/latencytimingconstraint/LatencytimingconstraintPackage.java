/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint;

import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencytimingconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.impl.LatencytimingconstraintPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface LatencytimingconstraintPackage
extends EPackage {
    public static final String eNAME = "latencytimingconstraint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ltc";
    public static final String eNS_PREFIX = "";
    public static final LatencytimingconstraintPackage eINSTANCE = LatencytimingconstraintPackageImpl.init();
    public static final int LATENCY_TIMING_CONSTRAINT = 0;
    public static final int LATENCY_TIMING_CONSTRAINT__GCHECKSUM = 0;
    public static final int LATENCY_TIMING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int LATENCY_TIMING_CONSTRAINT__CHECKSUM = 2;
    public static final int LATENCY_TIMING_CONSTRAINT__TIMESTAMP = 3;
    public static final int LATENCY_TIMING_CONSTRAINT__GSHORT_NAME = 4;
    public static final int LATENCY_TIMING_CONSTRAINT__SHORT_NAME = 5;
    public static final int LATENCY_TIMING_CONSTRAINT__LONG_NAME = 6;
    public static final int LATENCY_TIMING_CONSTRAINT__GUUID = 7;
    public static final int LATENCY_TIMING_CONSTRAINT__GCATEGORY = 8;
    public static final int LATENCY_TIMING_CONSTRAINT__GDESC = 9;
    public static final int LATENCY_TIMING_CONSTRAINT__DESC = 10;
    public static final int LATENCY_TIMING_CONSTRAINT__CATEGORY = 11;
    public static final int LATENCY_TIMING_CONSTRAINT__ADMIN_DATA = 12;
    public static final int LATENCY_TIMING_CONSTRAINT__INTRODUCTION = 13;
    public static final int LATENCY_TIMING_CONSTRAINT__ANNOTATIONS = 14;
    public static final int LATENCY_TIMING_CONSTRAINT__UUID = 15;
    public static final int LATENCY_TIMING_CONSTRAINT__ALL_EXTENSIONS = 16;
    public static final int LATENCY_TIMING_CONSTRAINT__CONTAINED_EXTENSIONS = 17;
    public static final int LATENCY_TIMING_CONSTRAINT__TRACES = 18;
    public static final int LATENCY_TIMING_CONSTRAINT__VARIATION_POINT = 19;
    public static final int LATENCY_TIMING_CONSTRAINT__LATENCY_CONSTRAINT_TYPE = 20;
    public static final int LATENCY_TIMING_CONSTRAINT__SCOPE = 21;
    public static final int LATENCY_TIMING_CONSTRAINT__MINIMUM = 22;
    public static final int LATENCY_TIMING_CONSTRAINT__MAXIMUM = 23;
    public static final int LATENCY_TIMING_CONSTRAINT__NOMINAL = 24;
    public static final int LATENCY_TIMING_CONSTRAINT_FEATURE_COUNT = 25;
    public static final int LATENCY_CONSTRAINT_TYPE_ENUM = 1;

    public EClass getLatencyTimingConstraint();

    public EAttribute getLatencyTimingConstraint_LatencyConstraintType();

    public EReference getLatencyTimingConstraint_Scope();

    public EReference getLatencyTimingConstraint_Minimum();

    public EReference getLatencyTimingConstraint_Maximum();

    public EReference getLatencyTimingConstraint_Nominal();

    public EEnum getLatencyConstraintTypeEnum();

    public LatencytimingconstraintFactory getLatencytimingconstraintFactory();

    public static interface Literals {
        public static final EClass LATENCY_TIMING_CONSTRAINT = eINSTANCE.getLatencyTimingConstraint();
        public static final EAttribute LATENCY_TIMING_CONSTRAINT__LATENCY_CONSTRAINT_TYPE = eINSTANCE.getLatencyTimingConstraint_LatencyConstraintType();
        public static final EReference LATENCY_TIMING_CONSTRAINT__SCOPE = eINSTANCE.getLatencyTimingConstraint_Scope();
        public static final EReference LATENCY_TIMING_CONSTRAINT__MINIMUM = eINSTANCE.getLatencyTimingConstraint_Minimum();
        public static final EReference LATENCY_TIMING_CONSTRAINT__MAXIMUM = eINSTANCE.getLatencyTimingConstraint_Maximum();
        public static final EReference LATENCY_TIMING_CONSTRAINT__NOMINAL = eINSTANCE.getLatencyTimingConstraint_Nominal();
        public static final EEnum LATENCY_CONSTRAINT_TYPE_ENUM = eINSTANCE.getLatencyConstraintTypeEnum();
    }
}

