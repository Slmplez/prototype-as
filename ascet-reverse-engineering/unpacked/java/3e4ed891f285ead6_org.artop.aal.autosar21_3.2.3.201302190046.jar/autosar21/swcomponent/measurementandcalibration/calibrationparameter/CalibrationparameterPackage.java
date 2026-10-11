/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.measurementandcalibration.calibrationparameter;

import autosar21.swcomponent.measurementandcalibration.calibrationparameter.CalibrationparameterFactory;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl.CalibrationparameterPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CalibrationparameterPackage
extends EPackage {
    public static final String eNAME = "calibrationparameter";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/cp";
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
    public static final int SW_CALPRM_AXIS__SW_CALPRM_AXIS_AXIS_TYPE = 7;
    public static final int SW_CALPRM_AXIS__SW_CALIBRATION_ACCESS = 8;
    public static final int SW_CALPRM_AXIS__BASE_TYPE = 9;
    public static final int SW_CALPRM_AXIS_FEATURE_COUNT = 10;
    public static final int SW_CALPRM_AXIS_AXIS = 1;
    public static final int SW_CALPRM_AXIS_AXIS__GCHECKSUM = 0;
    public static final int SW_CALPRM_AXIS_AXIS__GTIMESTAMP = 1;
    public static final int SW_CALPRM_AXIS_AXIS__CHECKSUM = 2;
    public static final int SW_CALPRM_AXIS_AXIS__TIMESTAMP = 3;
    public static final int SW_CALPRM_AXIS_AXIS__SW_CALPRM_AXIS = 4;
    public static final int SW_CALPRM_AXIS_AXIS_FEATURE_COUNT = 5;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS = 2;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__GCHECKSUM = 0;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__GTIMESTAMP = 1;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__CHECKSUM = 2;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__TIMESTAMP = 3;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__SW_CALPRM_AXIS = 4;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS__SW_AXIS_GROUPED = 5;
    public static final int SW_CALPRM_AXIS_COMMON_AXIS_FEATURE_COUNT = 6;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS = 3;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__GCHECKSUM = 0;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__GTIMESTAMP = 1;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__CHECKSUM = 2;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__TIMESTAMP = 3;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__SW_CALPRM_AXIS = 4;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS__SW_AXIS_INDIVIDUAL = 5;
    public static final int SW_CALPRM_AXIS_INDIVIDUAL_AXIS_FEATURE_COUNT = 6;
    public static final int SW_CALPRM_AXIS_SET = 4;
    public static final int SW_CALPRM_AXIS_SET__GCHECKSUM = 0;
    public static final int SW_CALPRM_AXIS_SET__GTIMESTAMP = 1;
    public static final int SW_CALPRM_AXIS_SET__CHECKSUM = 2;
    public static final int SW_CALPRM_AXIS_SET__TIMESTAMP = 3;
    public static final int SW_CALPRM_AXIS_SET__SW_DATA_DEF_PROPS = 4;
    public static final int SW_CALPRM_AXIS_SET__SW_CALPRM_AXIS = 5;
    public static final int SW_CALPRM_AXIS_SET_FEATURE_COUNT = 6;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS = 5;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS__GCHECKSUM = 0;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS__GTIMESTAMP = 1;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS__CHECKSUM = 2;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS__TIMESTAMP = 3;
    public static final int SW_CALPRM_VALUE_AXIS_LABELS_FEATURE_COUNT = 4;
    public static final int SW_CALPRM = 6;
    public static final int SW_CALPRM__GCHECKSUM = 0;
    public static final int SW_CALPRM__GTIMESTAMP = 1;
    public static final int SW_CALPRM__CHECKSUM = 2;
    public static final int SW_CALPRM__TIMESTAMP = 3;
    public static final int SW_CALPRM__GSHORT_NAME = 4;
    public static final int SW_CALPRM__GUUID = 5;
    public static final int SW_CALPRM__GCATEGORY = 6;
    public static final int SW_CALPRM__GDESC = 7;
    public static final int SW_CALPRM__SHORT_NAME = 8;
    public static final int SW_CALPRM__LONG_NAME = 9;
    public static final int SW_CALPRM__DESC = 10;
    public static final int SW_CALPRM__CATEGORY = 11;
    public static final int SW_CALPRM__ADMIN_DATA = 12;
    public static final int SW_CALPRM__UUID = 13;
    public static final int SW_CALPRM__ALL_EXTENSIONS = 14;
    public static final int SW_CALPRM__CONTAINED_EXTENSIONS = 15;
    public static final int SW_CALPRM__GAR_PACKAGE = 16;
    public static final int SW_CALPRM__AR_PACKAGE = 17;
    public static final int SW_CALPRM__SW_CALPRM = 18;
    public static final int SW_CALPRM__SW_ARRAYSIZE = 19;
    public static final int SW_CALPRM__SW_DATA_DEF_PROPS = 20;
    public static final int SW_CALPRM__SW_CALPRMS = 21;
    public static final int SW_CALPRM_FEATURE_COUNT = 22;

    public EClass getSwCalprmAxis();

    public EReference getSwCalprmAxis_SwCalprmAxisSet();

    public EAttribute getSwCalprmAxis_SwAxisIndex();

    public EAttribute getSwCalprmAxis_Category();

    public EReference getSwCalprmAxis_SwCalprmAxisAxisType();

    public EAttribute getSwCalprmAxis_SwCalibrationAccess();

    public EReference getSwCalprmAxis_BaseType();

    public EClass getSwCalprmAxisAxis();

    public EReference getSwCalprmAxisAxis_SwCalprmAxis();

    public EClass getSwCalprmAxisCommonAxis();

    public EReference getSwCalprmAxisCommonAxis_SwAxisGrouped();

    public EClass getSwCalprmAxisIndividualAxis();

    public EReference getSwCalprmAxisIndividualAxis_SwAxisIndividual();

    public EClass getSwCalprmAxisSet();

    public EReference getSwCalprmAxisSet_SwDataDefProps();

    public EReference getSwCalprmAxisSet_SwCalprmAxis();

    public EClass getSwCalprmValueAxisLabels();

    public EClass getSwCalprm();

    public EReference getSwCalprm_SwCalprm();

    public EReference getSwCalprm_SwArraysize();

    public EReference getSwCalprm_SwDataDefProps();

    public EReference getSwCalprm_SwCalprms();

    public CalibrationparameterFactory getCalibrationparameterFactory();

    public static interface Literals {
        public static final EClass SW_CALPRM_AXIS = eINSTANCE.getSwCalprmAxis();
        public static final EReference SW_CALPRM_AXIS__SW_CALPRM_AXIS_SET = eINSTANCE.getSwCalprmAxis_SwCalprmAxisSet();
        public static final EAttribute SW_CALPRM_AXIS__SW_AXIS_INDEX = eINSTANCE.getSwCalprmAxis_SwAxisIndex();
        public static final EAttribute SW_CALPRM_AXIS__CATEGORY = eINSTANCE.getSwCalprmAxis_Category();
        public static final EReference SW_CALPRM_AXIS__SW_CALPRM_AXIS_AXIS_TYPE = eINSTANCE.getSwCalprmAxis_SwCalprmAxisAxisType();
        public static final EAttribute SW_CALPRM_AXIS__SW_CALIBRATION_ACCESS = eINSTANCE.getSwCalprmAxis_SwCalibrationAccess();
        public static final EReference SW_CALPRM_AXIS__BASE_TYPE = eINSTANCE.getSwCalprmAxis_BaseType();
        public static final EClass SW_CALPRM_AXIS_AXIS = eINSTANCE.getSwCalprmAxisAxis();
        public static final EReference SW_CALPRM_AXIS_AXIS__SW_CALPRM_AXIS = eINSTANCE.getSwCalprmAxisAxis_SwCalprmAxis();
        public static final EClass SW_CALPRM_AXIS_COMMON_AXIS = eINSTANCE.getSwCalprmAxisCommonAxis();
        public static final EReference SW_CALPRM_AXIS_COMMON_AXIS__SW_AXIS_GROUPED = eINSTANCE.getSwCalprmAxisCommonAxis_SwAxisGrouped();
        public static final EClass SW_CALPRM_AXIS_INDIVIDUAL_AXIS = eINSTANCE.getSwCalprmAxisIndividualAxis();
        public static final EReference SW_CALPRM_AXIS_INDIVIDUAL_AXIS__SW_AXIS_INDIVIDUAL = eINSTANCE.getSwCalprmAxisIndividualAxis_SwAxisIndividual();
        public static final EClass SW_CALPRM_AXIS_SET = eINSTANCE.getSwCalprmAxisSet();
        public static final EReference SW_CALPRM_AXIS_SET__SW_DATA_DEF_PROPS = eINSTANCE.getSwCalprmAxisSet_SwDataDefProps();
        public static final EReference SW_CALPRM_AXIS_SET__SW_CALPRM_AXIS = eINSTANCE.getSwCalprmAxisSet_SwCalprmAxis();
        public static final EClass SW_CALPRM_VALUE_AXIS_LABELS = eINSTANCE.getSwCalprmValueAxisLabels();
        public static final EClass SW_CALPRM = eINSTANCE.getSwCalprm();
        public static final EReference SW_CALPRM__SW_CALPRM = eINSTANCE.getSwCalprm_SwCalprm();
        public static final EReference SW_CALPRM__SW_ARRAYSIZE = eINSTANCE.getSwCalprm_SwArraysize();
        public static final EReference SW_CALPRM__SW_DATA_DEF_PROPS = eINSTANCE.getSwCalprm_SwDataDefProps();
        public static final EReference SW_CALPRM__SW_CALPRMS = eINSTANCE.getSwCalprm_SwCalprms();
    }
}

