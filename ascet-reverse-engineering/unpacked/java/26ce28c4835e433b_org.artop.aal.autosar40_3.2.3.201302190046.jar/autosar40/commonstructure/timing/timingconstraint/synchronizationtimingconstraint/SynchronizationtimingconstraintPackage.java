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
package autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint;

import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationtimingconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.impl.SynchronizationtimingconstraintPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SynchronizationtimingconstraintPackage
extends EPackage {
    public static final String eNAME = "synchronizationtimingconstraint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/tc/stc";
    public static final String eNS_PREFIX = "";
    public static final SynchronizationtimingconstraintPackage eINSTANCE = SynchronizationtimingconstraintPackageImpl.init();
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT = 0;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__GCHECKSUM = 0;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__CHECKSUM = 2;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__TIMESTAMP = 3;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__GSHORT_NAME = 4;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__SHORT_NAME = 5;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__LONG_NAME = 6;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__GUUID = 7;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__GCATEGORY = 8;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__GDESC = 9;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__DESC = 10;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__CATEGORY = 11;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__ADMIN_DATA = 12;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__INTRODUCTION = 13;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__ANNOTATIONS = 14;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__UUID = 15;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__ALL_EXTENSIONS = 16;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__CONTAINED_EXTENSIONS = 17;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__TRACES = 18;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__VARIATION_POINT = 19;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__SCOPES = 20;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__SYNCHRONIZATION_CONSTRAINT_TYPE = 21;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT__TOLERANCE = 22;
    public static final int SYNCHRONIZATION_TIMING_CONSTRAINT_FEATURE_COUNT = 23;
    public static final int SYNCHRONIZATION_TYPE_ENUM = 1;

    public EClass getSynchronizationTimingConstraint();

    public EReference getSynchronizationTimingConstraint_Scopes();

    public EAttribute getSynchronizationTimingConstraint_SynchronizationConstraintType();

    public EReference getSynchronizationTimingConstraint_Tolerance();

    public EEnum getSynchronizationTypeEnum();

    public SynchronizationtimingconstraintFactory getSynchronizationtimingconstraintFactory();

    public static interface Literals {
        public static final EClass SYNCHRONIZATION_TIMING_CONSTRAINT = eINSTANCE.getSynchronizationTimingConstraint();
        public static final EReference SYNCHRONIZATION_TIMING_CONSTRAINT__SCOPES = eINSTANCE.getSynchronizationTimingConstraint_Scopes();
        public static final EAttribute SYNCHRONIZATION_TIMING_CONSTRAINT__SYNCHRONIZATION_CONSTRAINT_TYPE = eINSTANCE.getSynchronizationTimingConstraint_SynchronizationConstraintType();
        public static final EReference SYNCHRONIZATION_TIMING_CONSTRAINT__TOLERANCE = eINSTANCE.getSynchronizationTimingConstraint_Tolerance();
        public static final EEnum SYNCHRONIZATION_TYPE_ENUM = eINSTANCE.getSynchronizationTypeEnum();
    }
}

