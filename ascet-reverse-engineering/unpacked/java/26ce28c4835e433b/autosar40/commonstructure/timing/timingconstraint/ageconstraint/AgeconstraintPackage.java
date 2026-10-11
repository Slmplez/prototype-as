/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing.timingconstraint.ageconstraint;

import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.impl.AgeconstraintPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AgeconstraintPackage
extends EPackage {
    public static final String eNAME = "ageconstraint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ac";
    public static final String eNS_PREFIX = "";
    public static final AgeconstraintPackage eINSTANCE = AgeconstraintPackageImpl.init();
    public static final int AGE_CONSTRAINT = 0;
    public static final int AGE_CONSTRAINT__GCHECKSUM = 0;
    public static final int AGE_CONSTRAINT__GTIMESTAMP = 1;
    public static final int AGE_CONSTRAINT__CHECKSUM = 2;
    public static final int AGE_CONSTRAINT__TIMESTAMP = 3;
    public static final int AGE_CONSTRAINT__GSHORT_NAME = 4;
    public static final int AGE_CONSTRAINT__SHORT_NAME = 5;
    public static final int AGE_CONSTRAINT__LONG_NAME = 6;
    public static final int AGE_CONSTRAINT__GUUID = 7;
    public static final int AGE_CONSTRAINT__GCATEGORY = 8;
    public static final int AGE_CONSTRAINT__GDESC = 9;
    public static final int AGE_CONSTRAINT__DESC = 10;
    public static final int AGE_CONSTRAINT__CATEGORY = 11;
    public static final int AGE_CONSTRAINT__ADMIN_DATA = 12;
    public static final int AGE_CONSTRAINT__INTRODUCTION = 13;
    public static final int AGE_CONSTRAINT__ANNOTATIONS = 14;
    public static final int AGE_CONSTRAINT__UUID = 15;
    public static final int AGE_CONSTRAINT__ALL_EXTENSIONS = 16;
    public static final int AGE_CONSTRAINT__CONTAINED_EXTENSIONS = 17;
    public static final int AGE_CONSTRAINT__TRACES = 18;
    public static final int AGE_CONSTRAINT__VARIATION_POINT = 19;
    public static final int AGE_CONSTRAINT__MAXIMUM = 20;
    public static final int AGE_CONSTRAINT__MINIMUM = 21;
    public static final int AGE_CONSTRAINT__SCOPE = 22;
    public static final int AGE_CONSTRAINT_FEATURE_COUNT = 23;

    public EClass getAgeConstraint();

    public EReference getAgeConstraint_Maximum();

    public EReference getAgeConstraint_Minimum();

    public EReference getAgeConstraint_Scope();

    public AgeconstraintFactory getAgeconstraintFactory();

    public static interface Literals {
        public static final EClass AGE_CONSTRAINT = eINSTANCE.getAgeConstraint();
        public static final EReference AGE_CONSTRAINT__MAXIMUM = eINSTANCE.getAgeConstraint_Maximum();
        public static final EReference AGE_CONSTRAINT__MINIMUM = eINSTANCE.getAgeConstraint_Minimum();
        public static final EReference AGE_CONSTRAINT__SCOPE = eINSTANCE.getAgeConstraint_Scope();
    }
}

