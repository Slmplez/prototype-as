/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.axis;

import autosar40.commonstructure.axis.AxisFactory;
import autosar40.commonstructure.axis.impl.AxisPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AxisPackage
extends EPackage {
    public static final String eNAME = "axis";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/a";
    public static final String eNS_PREFIX = "";
    public static final AxisPackage eINSTANCE = AxisPackageImpl.init();
    public static final int SW_AXIS_GENERIC = 0;
    public static final int SW_AXIS_GENERIC__GCHECKSUM = 0;
    public static final int SW_AXIS_GENERIC__GTIMESTAMP = 1;
    public static final int SW_AXIS_GENERIC__CHECKSUM = 2;
    public static final int SW_AXIS_GENERIC__TIMESTAMP = 3;
    public static final int SW_AXIS_GENERIC__SW_AXIS_INDIVIDUAL = 4;
    public static final int SW_AXIS_GENERIC__SW_AXIS_TYPE = 5;
    public static final int SW_AXIS_GENERIC__SW_NUMBER_OF_AXIS_POINTS = 6;
    public static final int SW_AXIS_GENERIC__SW_GENERIC_AXIS_PARAMS = 7;
    public static final int SW_AXIS_GENERIC_FEATURE_COUNT = 8;
    public static final int SW_AXIS_TYPE = 1;
    public static final int SW_AXIS_TYPE__GCHECKSUM = 0;
    public static final int SW_AXIS_TYPE__GTIMESTAMP = 1;
    public static final int SW_AXIS_TYPE__CHECKSUM = 2;
    public static final int SW_AXIS_TYPE__TIMESTAMP = 3;
    public static final int SW_AXIS_TYPE__GSHORT_NAME = 4;
    public static final int SW_AXIS_TYPE__SHORT_NAME = 5;
    public static final int SW_AXIS_TYPE__LONG_NAME = 6;
    public static final int SW_AXIS_TYPE__GUUID = 7;
    public static final int SW_AXIS_TYPE__GCATEGORY = 8;
    public static final int SW_AXIS_TYPE__GDESC = 9;
    public static final int SW_AXIS_TYPE__DESC = 10;
    public static final int SW_AXIS_TYPE__CATEGORY = 11;
    public static final int SW_AXIS_TYPE__ADMIN_DATA = 12;
    public static final int SW_AXIS_TYPE__INTRODUCTION = 13;
    public static final int SW_AXIS_TYPE__ANNOTATIONS = 14;
    public static final int SW_AXIS_TYPE__UUID = 15;
    public static final int SW_AXIS_TYPE__ALL_EXTENSIONS = 16;
    public static final int SW_AXIS_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int SW_AXIS_TYPE__GAR_PACKAGE = 18;
    public static final int SW_AXIS_TYPE__AR_PACKAGE = 19;
    public static final int SW_AXIS_TYPE__VARIATION_POINT = 20;
    public static final int SW_AXIS_TYPE__SW_GENERIC_AXIS_DESC = 21;
    public static final int SW_AXIS_TYPE__SW_GENERIC_AXIS_PARAM_TYPES = 22;
    public static final int SW_AXIS_TYPE_FEATURE_COUNT = 23;
    public static final int SW_GENERIC_AXIS_PARAM = 2;
    public static final int SW_GENERIC_AXIS_PARAM__GCHECKSUM = 0;
    public static final int SW_GENERIC_AXIS_PARAM__GTIMESTAMP = 1;
    public static final int SW_GENERIC_AXIS_PARAM__CHECKSUM = 2;
    public static final int SW_GENERIC_AXIS_PARAM__TIMESTAMP = 3;
    public static final int SW_GENERIC_AXIS_PARAM__SW_AXIS_GENERIC = 4;
    public static final int SW_GENERIC_AXIS_PARAM__SW_GENERIC_AXIS_PARAM_TYPE = 5;
    public static final int SW_GENERIC_AXIS_PARAM__VF = 6;
    public static final int SW_GENERIC_AXIS_PARAM_FEATURE_COUNT = 7;
    public static final int SW_AXIS_GROUPED = 3;
    public static final int SW_AXIS_GROUPED__GCHECKSUM = 0;
    public static final int SW_AXIS_GROUPED__GTIMESTAMP = 1;
    public static final int SW_AXIS_GROUPED__CHECKSUM = 2;
    public static final int SW_AXIS_GROUPED__TIMESTAMP = 3;
    public static final int SW_AXIS_GROUPED__SW_CALPRM_AXIS = 4;
    public static final int SW_AXIS_GROUPED__SHARED_AXIS_TYPE = 5;
    public static final int SW_AXIS_GROUPED__SW_AXIS_INDEX = 6;
    public static final int SW_AXIS_GROUPED__SW_CALPRM_REF = 7;
    public static final int SW_AXIS_GROUPED_FEATURE_COUNT = 8;
    public static final int SW_AXIS_INDIVIDUAL = 4;
    public static final int SW_AXIS_INDIVIDUAL__GCHECKSUM = 0;
    public static final int SW_AXIS_INDIVIDUAL__GTIMESTAMP = 1;
    public static final int SW_AXIS_INDIVIDUAL__CHECKSUM = 2;
    public static final int SW_AXIS_INDIVIDUAL__TIMESTAMP = 3;
    public static final int SW_AXIS_INDIVIDUAL__SW_CALPRM_AXIS = 4;
    public static final int SW_AXIS_INDIVIDUAL__INPUT_VARIABLE_TYPE = 5;
    public static final int SW_AXIS_INDIVIDUAL__SW_VARIABLE_REFS = 6;
    public static final int SW_AXIS_INDIVIDUAL__COMPU_METHOD = 7;
    public static final int SW_AXIS_INDIVIDUAL__UNIT = 8;
    public static final int SW_AXIS_INDIVIDUAL__SW_MAX_AXIS_POINTS = 9;
    public static final int SW_AXIS_INDIVIDUAL__SW_MIN_AXIS_POINTS = 10;
    public static final int SW_AXIS_INDIVIDUAL__DATA_CONSTR = 11;
    public static final int SW_AXIS_INDIVIDUAL__SW_AXIS_GENERIC = 12;
    public static final int SW_AXIS_INDIVIDUAL_FEATURE_COUNT = 13;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE = 5;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__GCHECKSUM = 0;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__GTIMESTAMP = 1;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__CHECKSUM = 2;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__TIMESTAMP = 3;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__GSHORT_NAME = 4;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__SHORT_NAME = 5;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__LONG_NAME = 6;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__GUUID = 7;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__GCATEGORY = 8;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__GDESC = 9;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__DESC = 10;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__CATEGORY = 11;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__ADMIN_DATA = 12;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__INTRODUCTION = 13;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__ANNOTATIONS = 14;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__UUID = 15;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__ALL_EXTENSIONS = 16;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__SW_AXIS_TYPE = 18;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE__DATA_CONSTR = 19;
    public static final int SW_GENERIC_AXIS_PARAM_TYPE_FEATURE_COUNT = 20;

    public EClass getSwAxisGeneric();

    public EReference getSwAxisGeneric_SwAxisIndividual();

    public EReference getSwAxisGeneric_SwAxisType();

    public EReference getSwAxisGeneric_SwNumberOfAxisPoints();

    public EReference getSwAxisGeneric_SwGenericAxisParams();

    public EClass getSwAxisType();

    public EReference getSwAxisType_SwGenericAxisDesc();

    public EReference getSwAxisType_SwGenericAxisParamTypes();

    public EClass getSwGenericAxisParam();

    public EReference getSwGenericAxisParam_SwAxisGeneric();

    public EReference getSwGenericAxisParam_SwGenericAxisParamType();

    public EReference getSwGenericAxisParam_Vf();

    public EClass getSwAxisGrouped();

    public EReference getSwAxisGrouped_SharedAxisType();

    public EAttribute getSwAxisGrouped_SwAxisIndex();

    public EReference getSwAxisGrouped_SwCalprmRef();

    public EClass getSwAxisIndividual();

    public EReference getSwAxisIndividual_InputVariableType();

    public EReference getSwAxisIndividual_SwVariableRefs();

    public EReference getSwAxisIndividual_CompuMethod();

    public EReference getSwAxisIndividual_Unit();

    public EReference getSwAxisIndividual_SwMaxAxisPoints();

    public EReference getSwAxisIndividual_SwMinAxisPoints();

    public EReference getSwAxisIndividual_DataConstr();

    public EReference getSwAxisIndividual_SwAxisGeneric();

    public EClass getSwGenericAxisParamType();

    public EReference getSwGenericAxisParamType_SwAxisType();

    public EReference getSwGenericAxisParamType_DataConstr();

    public AxisFactory getAxisFactory();

    public static interface Literals {
        public static final EClass SW_AXIS_GENERIC = eINSTANCE.getSwAxisGeneric();
        public static final EReference SW_AXIS_GENERIC__SW_AXIS_INDIVIDUAL = eINSTANCE.getSwAxisGeneric_SwAxisIndividual();
        public static final EReference SW_AXIS_GENERIC__SW_AXIS_TYPE = eINSTANCE.getSwAxisGeneric_SwAxisType();
        public static final EReference SW_AXIS_GENERIC__SW_NUMBER_OF_AXIS_POINTS = eINSTANCE.getSwAxisGeneric_SwNumberOfAxisPoints();
        public static final EReference SW_AXIS_GENERIC__SW_GENERIC_AXIS_PARAMS = eINSTANCE.getSwAxisGeneric_SwGenericAxisParams();
        public static final EClass SW_AXIS_TYPE = eINSTANCE.getSwAxisType();
        public static final EReference SW_AXIS_TYPE__SW_GENERIC_AXIS_DESC = eINSTANCE.getSwAxisType_SwGenericAxisDesc();
        public static final EReference SW_AXIS_TYPE__SW_GENERIC_AXIS_PARAM_TYPES = eINSTANCE.getSwAxisType_SwGenericAxisParamTypes();
        public static final EClass SW_GENERIC_AXIS_PARAM = eINSTANCE.getSwGenericAxisParam();
        public static final EReference SW_GENERIC_AXIS_PARAM__SW_AXIS_GENERIC = eINSTANCE.getSwGenericAxisParam_SwAxisGeneric();
        public static final EReference SW_GENERIC_AXIS_PARAM__SW_GENERIC_AXIS_PARAM_TYPE = eINSTANCE.getSwGenericAxisParam_SwGenericAxisParamType();
        public static final EReference SW_GENERIC_AXIS_PARAM__VF = eINSTANCE.getSwGenericAxisParam_Vf();
        public static final EClass SW_AXIS_GROUPED = eINSTANCE.getSwAxisGrouped();
        public static final EReference SW_AXIS_GROUPED__SHARED_AXIS_TYPE = eINSTANCE.getSwAxisGrouped_SharedAxisType();
        public static final EAttribute SW_AXIS_GROUPED__SW_AXIS_INDEX = eINSTANCE.getSwAxisGrouped_SwAxisIndex();
        public static final EReference SW_AXIS_GROUPED__SW_CALPRM_REF = eINSTANCE.getSwAxisGrouped_SwCalprmRef();
        public static final EClass SW_AXIS_INDIVIDUAL = eINSTANCE.getSwAxisIndividual();
        public static final EReference SW_AXIS_INDIVIDUAL__INPUT_VARIABLE_TYPE = eINSTANCE.getSwAxisIndividual_InputVariableType();
        public static final EReference SW_AXIS_INDIVIDUAL__SW_VARIABLE_REFS = eINSTANCE.getSwAxisIndividual_SwVariableRefs();
        public static final EReference SW_AXIS_INDIVIDUAL__COMPU_METHOD = eINSTANCE.getSwAxisIndividual_CompuMethod();
        public static final EReference SW_AXIS_INDIVIDUAL__UNIT = eINSTANCE.getSwAxisIndividual_Unit();
        public static final EReference SW_AXIS_INDIVIDUAL__SW_MAX_AXIS_POINTS = eINSTANCE.getSwAxisIndividual_SwMaxAxisPoints();
        public static final EReference SW_AXIS_INDIVIDUAL__SW_MIN_AXIS_POINTS = eINSTANCE.getSwAxisIndividual_SwMinAxisPoints();
        public static final EReference SW_AXIS_INDIVIDUAL__DATA_CONSTR = eINSTANCE.getSwAxisIndividual_DataConstr();
        public static final EReference SW_AXIS_INDIVIDUAL__SW_AXIS_GENERIC = eINSTANCE.getSwAxisIndividual_SwAxisGeneric();
        public static final EClass SW_GENERIC_AXIS_PARAM_TYPE = eINSTANCE.getSwGenericAxisParamType();
        public static final EReference SW_GENERIC_AXIS_PARAM_TYPE__SW_AXIS_TYPE = eINSTANCE.getSwGenericAxisParamType_SwAxisType();
        public static final EReference SW_GENERIC_AXIS_PARAM_TYPE__DATA_CONSTR = eINSTANCE.getSwGenericAxisParamType_DataConstr();
    }
}

