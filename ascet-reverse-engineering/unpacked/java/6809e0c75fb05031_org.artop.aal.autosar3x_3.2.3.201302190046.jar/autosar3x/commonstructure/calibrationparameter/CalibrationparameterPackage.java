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
package autosar3x.commonstructure.calibrationparameter;

import autosar3x.commonstructure.calibrationparameter.CalibrationparameterFactory;
import autosar3x.commonstructure.calibrationparameter.impl.CalibrationparameterPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CalibrationparameterPackage
extends EPackage {
    public static final String eNAME = "calibrationparameter";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/cp";
    public static final String eNS_PREFIX = "";
    public static final CalibrationparameterPackage eINSTANCE = CalibrationparameterPackageImpl.init();
    public static final int SW_CALPRM_AXIS = 0;
    public static final int SW_CALPRM_AXIS__GCHECKSUM = 0;
    public static final int SW_CALPRM_AXIS__GTIMESTAMP = 1;
    public static final int SW_CALPRM_AXIS__CHECKSUM = 2;
    public static final int SW_CALPRM_AXIS__TIMESTAMP = 3;
    public static final int SW_CALPRM_AXIS__SW_CALPRM_AXIS_SET = 4;
    public static final int SW_CALPRM_AXIS__SW_AXIS_INDEX = 5;
    public static final int SW_CALPRM_AXIS__CATEGORY = 6;
    public static final int SW_CALPRM_AXIS__SW_CALPRM_AXIS_TYPE_PROPS = 7;
    public static final int SW_CALPRM_AXIS__SW_CALIBRATION_ACCESS = 8;
    public static final int SW_CALPRM_AXIS__DISPLAY_FORMAT = 9;
    public static final int SW_CALPRM_AXIS__BASE_TYPE = 10;
    public static final int SW_CALPRM_AXIS_FEATURE_COUNT = 11;
    public static final int SW_CALPRM_AXIS_SET = 1;
    public static final int SW_CALPRM_AXIS_SET__GCHECKSUM = 0;
    public static final int SW_CALPRM_AXIS_SET__GTIMESTAMP = 1;
    public static final int SW_CALPRM_AXIS_SET__CHECKSUM = 2;
    public static final int SW_CALPRM_AXIS_SET__TIMESTAMP = 3;
    public static final int SW_CALPRM_AXIS_SET__SW_DATA_DEF_PROPS = 4;
    public static final int SW_CALPRM_AXIS_SET__SW_CALPRM_AXIS = 5;
    public static final int SW_CALPRM_AXIS_SET_FEATURE_COUNT = 6;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS = 2;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS__GCHECKSUM = 0;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS__GTIMESTAMP = 1;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS__CHECKSUM = 2;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS__TIMESTAMP = 3;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS_FEATURE_COUNT = 4;
    public static final int SW_CALPRM_AXIS_TYPE_PROPS = 3;
    public static final int SW_CALPRM_AXIS_TYPE_PROPS__GCHECKSUM = 0;
    public static final int SW_CALPRM_AXIS_TYPE_PROPS__GTIMESTAMP = 1;
    public static final int SW_CALPRM_AXIS_TYPE_PROPS__CHECKSUM = 2;
    public static final int SW_CALPRM_AXIS_TYPE_PROPS__TIMESTAMP = 3;
    public static final int SW_CALPRM_AXIS_TYPE_PROPS__SW_CALPRM_AXIS = 4;
    public static final int SW_CALPRM_AXIS_TYPE_PROPS_FEATURE_COUNT = 5;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS = 4;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__GCHECKSUM = 0;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__GTIMESTAMP = 1;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__CHECKSUM = 2;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__TIMESTAMP = 3;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__SW_CALPRM_AXIS = 4;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__SW_AXIS_GROUPED = 5;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS_FEATURE_COUNT = 6;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS = 5;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__GCHECKSUM = 0;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__GTIMESTAMP = 1;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__CHECKSUM = 2;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__TIMESTAMP = 3;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__SW_CALPRM_AXIS = 4;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__SW_AXIS_INDIVIDUAL = 5;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS_FEATURE_COUNT = 6;
    public static final int CALPRM_AXIS_CATEGORY_ENUM = 6;

    public EClass getSwCalprmAxis();

    public EReference getSwCalprmAxis_SwCalprmAxisSet();

    public EAttribute getSwCalprmAxis_SwAxisIndex();

    public EAttribute getSwCalprmAxis_Category();

    public EReference getSwCalprmAxis_SwCalprmAxisTypeProps();

    public EAttribute getSwCalprmAxis_SwCalibrationAccess();

    public EAttribute getSwCalprmAxis_DisplayFormat();

    public EReference getSwCalprmAxis_BaseType();

    public EClass getSwCalprmAxisSet();

    public EReference getSwCalprmAxisSet_SwDataDefProps();

    public EReference getSwCalprmAxisSet_SwCalprmAxis();

    public EClass getSwCalprmValueAxisLabels();

    public EClass getSwCalprmAxisTypeProps();

    public EReference getSwCalprmAxisTypeProps_SwCalprmAxis();

    public EClass getSwCalprmAxisCommonAxis();

    public EReference getSwCalprmAxisCommonAxis_SwAxisGrouped();

    public EClass getSwCalprmAxisIndividualAxis();

    public EReference getSwCalprmAxisIndividualAxis_SwAxisIndividual();

    public EEnum getCalprmAxisCategoryEnum();

    public CalibrationparameterFactory getCalibrationparameterFactory();

    public static interface Literals {
        public static final EClass SW_CALPRM_AXIS = eINSTANCE.getSwCalprmAxis();
        public static final EReference SW_CALPRM_AXIS__SW_CALPRM_AXIS_SET = eINSTANCE.getSwCalprmAxis_SwCalprmAxisSet();
        public static final EAttribute SW_CALPRM_AXIS__SW_AXIS_INDEX = eINSTANCE.getSwCalprmAxis_SwAxisIndex();
        public static final EAttribute SW_CALPRM_AXIS__CATEGORY = eINSTANCE.getSwCalprmAxis_Category();
        public static final EReference SW_CALPRM_AXIS__SW_CALPRM_AXIS_TYPE_PROPS = eINSTANCE.getSwCalprmAxis_SwCalprmAxisTypeProps();
        public static final EAttribute SW_CALPRM_AXIS__SW_CALIBRATION_ACCESS = eINSTANCE.getSwCalprmAxis_SwCalibrationAccess();
        public static final EAttribute SW_CALPRM_AXIS__DISPLAY_FORMAT = eINSTANCE.getSwCalprmAxis_DisplayFormat();
        public static final EReference SW_CALPRM_AXIS__BASE_TYPE = eINSTANCE.getSwCalprmAxis_BaseType();
        public static final EClass SW_CALPRM_AXIS_SET = eINSTANCE.getSwCalprmAxisSet();
        public static final EReference SW_CALPRM_AXIS_SET__SW_DATA_DEF_PROPS = eINSTANCE.getSwCalprmAxisSet_SwDataDefProps();
        public static final EReference SW_CALPRM_AXIS_SET__SW_CALPRM_AXIS = eINSTANCE.getSwCalprmAxisSet_SwCalprmAxis();
        public static final EClass SW_CALPRM_VALUE_AXIS_LABELS = eINSTANCE.getSwCalprmValueAxisLabels();
        public static final EClass SW_CALPRM_AXIS_TYPE_PROPS = eINSTANCE.getSwCalprmAxisTypeProps();
        public static final EReference SW_CALPRM_AXIS_TYPE_PROPS__SW_CALPRM_AXIS = eINSTANCE.getSwCalprmAxisTypeProps_SwCalprmAxis();
        public static final EClass SW_CALPRM_AXIS_COMMON_AXIS = eINSTANCE.getSwCalprmAxisCommonAxis();
        public static final EReference SW_CALPRM_AXIS_COMMON_AXIS__SW_AXIS_GROUPED = eINSTANCE.getSwCalprmAxisCommonAxis_SwAxisGrouped();
        public static final EClass SW_CALPRM_AXIS_INDIVIDUAL_AXIS = eINSTANCE.getSwCalprmAxisIndividualAxis();
        public static final EReference SW_CALPRM_AXIS_INDIVIDUAL_AXIS__SW_AXIS_INDIVIDUAL = eINSTANCE.getSwCalprmAxisIndividualAxis_SwAxisIndividual();
        public static final EEnum CALPRM_AXIS_CATEGORY_ENUM = eINSTANCE.getCalprmAxisCategoryEnum();
    }
}

