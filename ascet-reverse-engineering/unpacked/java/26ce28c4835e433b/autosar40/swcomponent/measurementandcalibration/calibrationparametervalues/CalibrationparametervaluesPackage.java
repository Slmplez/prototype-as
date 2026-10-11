/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.measurementandcalibration.calibrationparametervalues;

import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationparametervaluesFactory;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.impl.CalibrationparametervaluesPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CalibrationparametervaluesPackage
extends EPackage {
    public static final String eNAME = "calibrationparametervalues";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/mac/cpv";
    public static final String eNS_PREFIX = "";
    public static final CalibrationparametervaluesPackage eINSTANCE = CalibrationparametervaluesPackageImpl.init();
    public static final int CALIBRATION_PARAMETER_VALUE = 0;
    public static final int CALIBRATION_PARAMETER_VALUE__GCHECKSUM = 0;
    public static final int CALIBRATION_PARAMETER_VALUE__GTIMESTAMP = 1;
    public static final int CALIBRATION_PARAMETER_VALUE__CHECKSUM = 2;
    public static final int CALIBRATION_PARAMETER_VALUE__TIMESTAMP = 3;
    public static final int CALIBRATION_PARAMETER_VALUE__CALIBRATION_PARAMETER_VALUE_SET = 4;
    public static final int CALIBRATION_PARAMETER_VALUE__APPL_INIT_VALUE = 5;
    public static final int CALIBRATION_PARAMETER_VALUE__IMPL_INIT_VALUE = 6;
    public static final int CALIBRATION_PARAMETER_VALUE__INITIALIZED_PARAMETER = 7;
    public static final int CALIBRATION_PARAMETER_VALUE_FEATURE_COUNT = 8;
    public static final int CALIBRATION_PARAMETER_VALUE_SET = 1;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__GCHECKSUM = 0;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__GTIMESTAMP = 1;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__CHECKSUM = 2;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__TIMESTAMP = 3;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__GSHORT_NAME = 4;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__SHORT_NAME = 5;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__LONG_NAME = 6;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__GUUID = 7;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__GCATEGORY = 8;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__GDESC = 9;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__DESC = 10;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__CATEGORY = 11;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__ADMIN_DATA = 12;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__INTRODUCTION = 13;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__ANNOTATIONS = 14;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__UUID = 15;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__ALL_EXTENSIONS = 16;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__CONTAINED_EXTENSIONS = 17;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__GAR_PACKAGE = 18;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__AR_PACKAGE = 19;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__VARIATION_POINT = 20;
    public static final int CALIBRATION_PARAMETER_VALUE_SET__CALIBRATION_PARAMETER_VALUES = 21;
    public static final int CALIBRATION_PARAMETER_VALUE_SET_FEATURE_COUNT = 22;

    public EClass getCalibrationParameterValue();

    public EReference getCalibrationParameterValue_CalibrationParameterValueSet();

    public EReference getCalibrationParameterValue_ApplInitValue();

    public EReference getCalibrationParameterValue_ImplInitValue();

    public EReference getCalibrationParameterValue_InitializedParameter();

    public EClass getCalibrationParameterValueSet();

    public EReference getCalibrationParameterValueSet_CalibrationParameterValues();

    public CalibrationparametervaluesFactory getCalibrationparametervaluesFactory();

    public static interface Literals {
        public static final EClass CALIBRATION_PARAMETER_VALUE = eINSTANCE.getCalibrationParameterValue();
        public static final EReference CALIBRATION_PARAMETER_VALUE__CALIBRATION_PARAMETER_VALUE_SET = eINSTANCE.getCalibrationParameterValue_CalibrationParameterValueSet();
        public static final EReference CALIBRATION_PARAMETER_VALUE__APPL_INIT_VALUE = eINSTANCE.getCalibrationParameterValue_ApplInitValue();
        public static final EReference CALIBRATION_PARAMETER_VALUE__IMPL_INIT_VALUE = eINSTANCE.getCalibrationParameterValue_ImplInitValue();
        public static final EReference CALIBRATION_PARAMETER_VALUE__INITIALIZED_PARAMETER = eINSTANCE.getCalibrationParameterValue_InitializedParameter();
        public static final EClass CALIBRATION_PARAMETER_VALUE_SET = eINSTANCE.getCalibrationParameterValueSet();
        public static final EReference CALIBRATION_PARAMETER_VALUE_SET__CALIBRATION_PARAMETER_VALUES = eINSTANCE.getCalibrationParameterValueSet_CalibrationParameterValues();
    }
}

