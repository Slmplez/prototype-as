/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing.timingconstraint.offsetconstraint;

import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.impl.OffsetconstraintPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface OffsetconstraintPackage
extends EPackage {
    public static final String eNAME = "offsetconstraint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/tc/oc";
    public static final String eNS_PREFIX = "";
    public static final OffsetconstraintPackage eINSTANCE = OffsetconstraintPackageImpl.init();
    public static final int OFFSET_TIMING_CONSTRAINT = 0;
    public static final int OFFSET_TIMING_CONSTRAINT__GCHECKSUM = 0;
    public static final int OFFSET_TIMING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int OFFSET_TIMING_CONSTRAINT__CHECKSUM = 2;
    public static final int OFFSET_TIMING_CONSTRAINT__TIMESTAMP = 3;
    public static final int OFFSET_TIMING_CONSTRAINT__GSHORT_NAME = 4;
    public static final int OFFSET_TIMING_CONSTRAINT__SHORT_NAME = 5;
    public static final int OFFSET_TIMING_CONSTRAINT__LONG_NAME = 6;
    public static final int OFFSET_TIMING_CONSTRAINT__GUUID = 7;
    public static final int OFFSET_TIMING_CONSTRAINT__GCATEGORY = 8;
    public static final int OFFSET_TIMING_CONSTRAINT__GDESC = 9;
    public static final int OFFSET_TIMING_CONSTRAINT__DESC = 10;
    public static final int OFFSET_TIMING_CONSTRAINT__CATEGORY = 11;
    public static final int OFFSET_TIMING_CONSTRAINT__ADMIN_DATA = 12;
    public static final int OFFSET_TIMING_CONSTRAINT__INTRODUCTION = 13;
    public static final int OFFSET_TIMING_CONSTRAINT__ANNOTATIONS = 14;
    public static final int OFFSET_TIMING_CONSTRAINT__UUID = 15;
    public static final int OFFSET_TIMING_CONSTRAINT__ALL_EXTENSIONS = 16;
    public static final int OFFSET_TIMING_CONSTRAINT__CONTAINED_EXTENSIONS = 17;
    public static final int OFFSET_TIMING_CONSTRAINT__TRACES = 18;
    public static final int OFFSET_TIMING_CONSTRAINT__VARIATION_POINT = 19;
    public static final int OFFSET_TIMING_CONSTRAINT__SOURCE = 20;
    public static final int OFFSET_TIMING_CONSTRAINT__TARGET = 21;
    public static final int OFFSET_TIMING_CONSTRAINT__MINIMUM = 22;
    public static final int OFFSET_TIMING_CONSTRAINT__MAXIMUM = 23;
    public static final int OFFSET_TIMING_CONSTRAINT_FEATURE_COUNT = 24;

    public EClass getOffsetTimingConstraint();

    public EReference getOffsetTimingConstraint_Source();

    public EReference getOffsetTimingConstraint_Target();

    public EReference getOffsetTimingConstraint_Minimum();

    public EReference getOffsetTimingConstraint_Maximum();

    public OffsetconstraintFactory getOffsetconstraintFactory();

    public static interface Literals {
        public static final EClass OFFSET_TIMING_CONSTRAINT = eINSTANCE.getOffsetTimingConstraint();
        public static final EReference OFFSET_TIMING_CONSTRAINT__SOURCE = eINSTANCE.getOffsetTimingConstraint_Source();
        public static final EReference OFFSET_TIMING_CONSTRAINT__TARGET = eINSTANCE.getOffsetTimingConstraint_Target();
        public static final EReference OFFSET_TIMING_CONSTRAINT__MINIMUM = eINSTANCE.getOffsetTimingConstraint_Minimum();
        public static final EReference OFFSET_TIMING_CONSTRAINT__MAXIMUM = eINSTANCE.getOffsetTimingConstraint_Maximum();
    }
}

