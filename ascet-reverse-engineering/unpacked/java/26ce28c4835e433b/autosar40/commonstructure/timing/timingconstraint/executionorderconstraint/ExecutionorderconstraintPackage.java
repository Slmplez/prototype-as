/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing.timingconstraint.executionorderconstraint;

import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionorderconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.impl.ExecutionorderconstraintPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ExecutionorderconstraintPackage
extends EPackage {
    public static final String eNAME = "executionorderconstraint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/tc/eoc";
    public static final String eNS_PREFIX = "";
    public static final ExecutionorderconstraintPackage eINSTANCE = ExecutionorderconstraintPackageImpl.init();
    public static final int EOC_EXECUTABLE_ENTITY_REF = 0;
    public static final int EOC_EXECUTABLE_ENTITY_REF__GCHECKSUM = 0;
    public static final int EOC_EXECUTABLE_ENTITY_REF__GTIMESTAMP = 1;
    public static final int EOC_EXECUTABLE_ENTITY_REF__CHECKSUM = 2;
    public static final int EOC_EXECUTABLE_ENTITY_REF__TIMESTAMP = 3;
    public static final int EOC_EXECUTABLE_ENTITY_REF__GSHORT_NAME = 4;
    public static final int EOC_EXECUTABLE_ENTITY_REF__SHORT_NAME = 5;
    public static final int EOC_EXECUTABLE_ENTITY_REF__LONG_NAME = 6;
    public static final int EOC_EXECUTABLE_ENTITY_REF__GUUID = 7;
    public static final int EOC_EXECUTABLE_ENTITY_REF__GCATEGORY = 8;
    public static final int EOC_EXECUTABLE_ENTITY_REF__GDESC = 9;
    public static final int EOC_EXECUTABLE_ENTITY_REF__DESC = 10;
    public static final int EOC_EXECUTABLE_ENTITY_REF__CATEGORY = 11;
    public static final int EOC_EXECUTABLE_ENTITY_REF__ADMIN_DATA = 12;
    public static final int EOC_EXECUTABLE_ENTITY_REF__INTRODUCTION = 13;
    public static final int EOC_EXECUTABLE_ENTITY_REF__ANNOTATIONS = 14;
    public static final int EOC_EXECUTABLE_ENTITY_REF__UUID = 15;
    public static final int EOC_EXECUTABLE_ENTITY_REF__ALL_EXTENSIONS = 16;
    public static final int EOC_EXECUTABLE_ENTITY_REF__CONTAINED_EXTENSIONS = 17;
    public static final int EOC_EXECUTABLE_ENTITY_REF__EXECUTION_ORDER_CONSTRAINT = 18;
    public static final int EOC_EXECUTABLE_ENTITY_REF__COMPONENT = 19;
    public static final int EOC_EXECUTABLE_ENTITY_REF__EXECUTABLE = 20;
    public static final int EOC_EXECUTABLE_ENTITY_REF__SUCCESSORS = 21;
    public static final int EOC_EXECUTABLE_ENTITY_REF_FEATURE_COUNT = 22;
    public static final int EXECUTION_ORDER_CONSTRAINT = 1;
    public static final int EXECUTION_ORDER_CONSTRAINT__GCHECKSUM = 0;
    public static final int EXECUTION_ORDER_CONSTRAINT__GTIMESTAMP = 1;
    public static final int EXECUTION_ORDER_CONSTRAINT__CHECKSUM = 2;
    public static final int EXECUTION_ORDER_CONSTRAINT__TIMESTAMP = 3;
    public static final int EXECUTION_ORDER_CONSTRAINT__GSHORT_NAME = 4;
    public static final int EXECUTION_ORDER_CONSTRAINT__SHORT_NAME = 5;
    public static final int EXECUTION_ORDER_CONSTRAINT__LONG_NAME = 6;
    public static final int EXECUTION_ORDER_CONSTRAINT__GUUID = 7;
    public static final int EXECUTION_ORDER_CONSTRAINT__GCATEGORY = 8;
    public static final int EXECUTION_ORDER_CONSTRAINT__GDESC = 9;
    public static final int EXECUTION_ORDER_CONSTRAINT__DESC = 10;
    public static final int EXECUTION_ORDER_CONSTRAINT__CATEGORY = 11;
    public static final int EXECUTION_ORDER_CONSTRAINT__ADMIN_DATA = 12;
    public static final int EXECUTION_ORDER_CONSTRAINT__INTRODUCTION = 13;
    public static final int EXECUTION_ORDER_CONSTRAINT__ANNOTATIONS = 14;
    public static final int EXECUTION_ORDER_CONSTRAINT__UUID = 15;
    public static final int EXECUTION_ORDER_CONSTRAINT__ALL_EXTENSIONS = 16;
    public static final int EXECUTION_ORDER_CONSTRAINT__CONTAINED_EXTENSIONS = 17;
    public static final int EXECUTION_ORDER_CONSTRAINT__TRACES = 18;
    public static final int EXECUTION_ORDER_CONSTRAINT__VARIATION_POINT = 19;
    public static final int EXECUTION_ORDER_CONSTRAINT__ORDERED_ELEMENTS = 20;
    public static final int EXECUTION_ORDER_CONSTRAINT_FEATURE_COUNT = 21;

    public EClass getEOCExecutableEntityRef();

    public EReference getEOCExecutableEntityRef_ExecutionOrderConstraint();

    public EReference getEOCExecutableEntityRef_Component();

    public EReference getEOCExecutableEntityRef_Executable();

    public EReference getEOCExecutableEntityRef_Successors();

    public EClass getExecutionOrderConstraint();

    public EReference getExecutionOrderConstraint_OrderedElements();

    public ExecutionorderconstraintFactory getExecutionorderconstraintFactory();

    public static interface Literals {
        public static final EClass EOC_EXECUTABLE_ENTITY_REF = eINSTANCE.getEOCExecutableEntityRef();
        public static final EReference EOC_EXECUTABLE_ENTITY_REF__EXECUTION_ORDER_CONSTRAINT = eINSTANCE.getEOCExecutableEntityRef_ExecutionOrderConstraint();
        public static final EReference EOC_EXECUTABLE_ENTITY_REF__COMPONENT = eINSTANCE.getEOCExecutableEntityRef_Component();
        public static final EReference EOC_EXECUTABLE_ENTITY_REF__EXECUTABLE = eINSTANCE.getEOCExecutableEntityRef_Executable();
        public static final EReference EOC_EXECUTABLE_ENTITY_REF__SUCCESSORS = eINSTANCE.getEOCExecutableEntityRef_Successors();
        public static final EClass EXECUTION_ORDER_CONSTRAINT = eINSTANCE.getExecutionOrderConstraint();
        public static final EReference EXECUTION_ORDER_CONSTRAINT__ORDERED_ELEMENTS = eINSTANCE.getExecutionOrderConstraint_OrderedElements();
    }
}

