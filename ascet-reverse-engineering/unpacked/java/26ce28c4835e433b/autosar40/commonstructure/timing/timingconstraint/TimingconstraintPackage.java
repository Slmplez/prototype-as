/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing.timingconstraint;

import autosar40.commonstructure.timing.timingconstraint.TimingconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.impl.TimingconstraintPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TimingconstraintPackage
extends EPackage {
    public static final String eNAME = "timingconstraint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/tc";
    public static final String eNS_PREFIX = "";
    public static final TimingconstraintPackage eINSTANCE = TimingconstraintPackageImpl.init();
    public static final int TIMING_CONSTRAINT = 0;
    public static final int TIMING_CONSTRAINT__GCHECKSUM = 0;
    public static final int TIMING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int TIMING_CONSTRAINT__CHECKSUM = 2;
    public static final int TIMING_CONSTRAINT__TIMESTAMP = 3;
    public static final int TIMING_CONSTRAINT__GSHORT_NAME = 4;
    public static final int TIMING_CONSTRAINT__SHORT_NAME = 5;
    public static final int TIMING_CONSTRAINT__LONG_NAME = 6;
    public static final int TIMING_CONSTRAINT__GUUID = 7;
    public static final int TIMING_CONSTRAINT__GCATEGORY = 8;
    public static final int TIMING_CONSTRAINT__GDESC = 9;
    public static final int TIMING_CONSTRAINT__DESC = 10;
    public static final int TIMING_CONSTRAINT__CATEGORY = 11;
    public static final int TIMING_CONSTRAINT__ADMIN_DATA = 12;
    public static final int TIMING_CONSTRAINT__INTRODUCTION = 13;
    public static final int TIMING_CONSTRAINT__ANNOTATIONS = 14;
    public static final int TIMING_CONSTRAINT__UUID = 15;
    public static final int TIMING_CONSTRAINT__ALL_EXTENSIONS = 16;
    public static final int TIMING_CONSTRAINT__CONTAINED_EXTENSIONS = 17;
    public static final int TIMING_CONSTRAINT__TRACES = 18;
    public static final int TIMING_CONSTRAINT__VARIATION_POINT = 19;
    public static final int TIMING_CONSTRAINT_FEATURE_COUNT = 20;

    public EClass getTimingConstraint();

    public EReference getTimingConstraint_VariationPoint();

    public TimingconstraintFactory getTimingconstraintFactory();

    public static interface Literals {
        public static final EClass TIMING_CONSTRAINT = eINSTANCE.getTimingConstraint();
        public static final EReference TIMING_CONSTRAINT__VARIATION_POINT = eINSTANCE.getTimingConstraint_VariationPoint();
    }
}

