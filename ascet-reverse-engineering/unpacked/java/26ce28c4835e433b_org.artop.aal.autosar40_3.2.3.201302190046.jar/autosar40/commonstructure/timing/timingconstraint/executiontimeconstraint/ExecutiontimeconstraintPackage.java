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
package autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint;

import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutiontimeconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.impl.ExecutiontimeconstraintPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ExecutiontimeconstraintPackage
extends EPackage {
    public static final String eNAME = "executiontimeconstraint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etimeconstraint";
    public static final String eNS_PREFIX = "";
    public static final ExecutiontimeconstraintPackage eINSTANCE = ExecutiontimeconstraintPackageImpl.init();
    public static final int EXECUTION_TIME_CONSTRAINT = 0;
    public static final int EXECUTION_TIME_CONSTRAINT__GCHECKSUM = 0;
    public static final int EXECUTION_TIME_CONSTRAINT__GTIMESTAMP = 1;
    public static final int EXECUTION_TIME_CONSTRAINT__CHECKSUM = 2;
    public static final int EXECUTION_TIME_CONSTRAINT__TIMESTAMP = 3;
    public static final int EXECUTION_TIME_CONSTRAINT__GSHORT_NAME = 4;
    public static final int EXECUTION_TIME_CONSTRAINT__SHORT_NAME = 5;
    public static final int EXECUTION_TIME_CONSTRAINT__LONG_NAME = 6;
    public static final int EXECUTION_TIME_CONSTRAINT__GUUID = 7;
    public static final int EXECUTION_TIME_CONSTRAINT__GCATEGORY = 8;
    public static final int EXECUTION_TIME_CONSTRAINT__GDESC = 9;
    public static final int EXECUTION_TIME_CONSTRAINT__DESC = 10;
    public static final int EXECUTION_TIME_CONSTRAINT__CATEGORY = 11;
    public static final int EXECUTION_TIME_CONSTRAINT__ADMIN_DATA = 12;
    public static final int EXECUTION_TIME_CONSTRAINT__INTRODUCTION = 13;
    public static final int EXECUTION_TIME_CONSTRAINT__ANNOTATIONS = 14;
    public static final int EXECUTION_TIME_CONSTRAINT__UUID = 15;
    public static final int EXECUTION_TIME_CONSTRAINT__ALL_EXTENSIONS = 16;
    public static final int EXECUTION_TIME_CONSTRAINT__CONTAINED_EXTENSIONS = 17;
    public static final int EXECUTION_TIME_CONSTRAINT__TRACES = 18;
    public static final int EXECUTION_TIME_CONSTRAINT__VARIATION_POINT = 19;
    public static final int EXECUTION_TIME_CONSTRAINT__COMPONENT = 20;
    public static final int EXECUTION_TIME_CONSTRAINT__EXECUTABLE = 21;
    public static final int EXECUTION_TIME_CONSTRAINT__EXECUTION_TIME_TYPE = 22;
    public static final int EXECUTION_TIME_CONSTRAINT__MAXIMUM = 23;
    public static final int EXECUTION_TIME_CONSTRAINT__MINIMUM = 24;
    public static final int EXECUTION_TIME_CONSTRAINT_FEATURE_COUNT = 25;
    public static final int EXECUTION_TIME_TYPE_ENUM = 1;

    public EClass getExecutionTimeConstraint();

    public EReference getExecutionTimeConstraint_Component();

    public EReference getExecutionTimeConstraint_Executable();

    public EAttribute getExecutionTimeConstraint_ExecutionTimeType();

    public EReference getExecutionTimeConstraint_Maximum();

    public EReference getExecutionTimeConstraint_Minimum();

    public EEnum getExecutionTimeTypeEnum();

    public ExecutiontimeconstraintFactory getExecutiontimeconstraintFactory();

    public static interface Literals {
        public static final EClass EXECUTION_TIME_CONSTRAINT = eINSTANCE.getExecutionTimeConstraint();
        public static final EReference EXECUTION_TIME_CONSTRAINT__COMPONENT = eINSTANCE.getExecutionTimeConstraint_Component();
        public static final EReference EXECUTION_TIME_CONSTRAINT__EXECUTABLE = eINSTANCE.getExecutionTimeConstraint_Executable();
        public static final EAttribute EXECUTION_TIME_CONSTRAINT__EXECUTION_TIME_TYPE = eINSTANCE.getExecutionTimeConstraint_ExecutionTimeType();
        public static final EReference EXECUTION_TIME_CONSTRAINT__MAXIMUM = eINSTANCE.getExecutionTimeConstraint_Maximum();
        public static final EReference EXECUTION_TIME_CONSTRAINT__MINIMUM = eINSTANCE.getExecutionTimeConstraint_Minimum();
        public static final EEnum EXECUTION_TIME_TYPE_ENUM = eINSTANCE.getExecutionTimeTypeEnum();
    }
}

