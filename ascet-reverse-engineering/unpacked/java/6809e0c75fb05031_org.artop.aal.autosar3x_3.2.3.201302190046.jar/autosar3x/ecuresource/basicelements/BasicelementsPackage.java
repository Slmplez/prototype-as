/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.ecuresource.basicelements;

import autosar3x.ecuresource.basicelements.BasicelementsFactory;
import autosar3x.ecuresource.basicelements.impl.BasicelementsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BasicelementsPackage
extends EPackage {
    public static final String eNAME = "basicelements";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/ecur/be";
    public static final String eNS_PREFIX = "";
    public static final BasicelementsPackage eINSTANCE = BasicelementsPackageImpl.init();
    public static final int BOOT_TIME = 0;
    public static final int BOOT_TIME__GCHECKSUM = 0;
    public static final int BOOT_TIME__GTIMESTAMP = 1;
    public static final int BOOT_TIME__CHECKSUM = 2;
    public static final int BOOT_TIME__TIMESTAMP = 3;
    public static final int BOOT_TIME__PROCESSING_UNIT = 4;
    public static final int BOOT_TIME__COLD_START_TIME = 5;
    public static final int BOOT_TIME__RESET_TIME = 6;
    public static final int BOOT_TIME_FEATURE_COUNT = 7;
    public static final int ELECTRICAL_RANGE = 1;
    public static final int ELECTRICAL_RANGE__GCHECKSUM = 0;
    public static final int ELECTRICAL_RANGE__GTIMESTAMP = 1;
    public static final int ELECTRICAL_RANGE__CHECKSUM = 2;
    public static final int ELECTRICAL_RANGE__TIMESTAMP = 3;
    public static final int ELECTRICAL_RANGE__MAX_CURRENT = 4;
    public static final int ELECTRICAL_RANGE__MAX_VOLTAGE = 5;
    public static final int ELECTRICAL_RANGE__MIN_CURRENT = 6;
    public static final int ELECTRICAL_RANGE__MIN_VOLTAGE = 7;
    public static final int ELECTRICAL_RANGE__TYPICAL_CURRENT = 8;
    public static final int ELECTRICAL_RANGE__TYPICAL_VOLTAGE = 9;
    public static final int ELECTRICAL_RANGE_FEATURE_COUNT = 10;
    public static final int ERROR_DETECTION_CORRECTION = 2;
    public static final int ERROR_DETECTION_CORRECTION__GCHECKSUM = 0;
    public static final int ERROR_DETECTION_CORRECTION__GTIMESTAMP = 1;
    public static final int ERROR_DETECTION_CORRECTION__CHECKSUM = 2;
    public static final int ERROR_DETECTION_CORRECTION__TIMESTAMP = 3;
    public static final int ERROR_DETECTION_CORRECTION__CORRECTED_BITS = 4;
    public static final int ERROR_DETECTION_CORRECTION__DETECTED_BITS = 5;
    public static final int ERROR_DETECTION_CORRECTION__EXTRA_BITS = 6;
    public static final int ERROR_DETECTION_CORRECTION_FEATURE_COUNT = 7;
    public static final int FREQUENCY_RANGE = 3;
    public static final int FREQUENCY_RANGE__GCHECKSUM = 0;
    public static final int FREQUENCY_RANGE__GTIMESTAMP = 1;
    public static final int FREQUENCY_RANGE__CHECKSUM = 2;
    public static final int FREQUENCY_RANGE__TIMESTAMP = 3;
    public static final int FREQUENCY_RANGE__MAX_FREQUENCY = 4;
    public static final int FREQUENCY_RANGE__MIN_FREQUENCY = 5;
    public static final int FREQUENCY_RANGE__TYPICAL_FREQUENCY = 6;
    public static final int FREQUENCY_RANGE_FEATURE_COUNT = 7;
    public static final int SUPPORTS_SAFETY = 4;
    public static final int SUPPORTS_SAFETY__GCHECKSUM = 0;
    public static final int SUPPORTS_SAFETY__GTIMESTAMP = 1;
    public static final int SUPPORTS_SAFETY__CHECKSUM = 2;
    public static final int SUPPORTS_SAFETY__TIMESTAMP = 3;
    public static final int SUPPORTS_SAFETY__HW_ELEMENT = 4;
    public static final int SUPPORTS_SAFETY_FEATURE_COUNT = 5;
    public static final int SUPPORTS_SECURITY = 5;
    public static final int SUPPORTS_SECURITY__GCHECKSUM = 0;
    public static final int SUPPORTS_SECURITY__GTIMESTAMP = 1;
    public static final int SUPPORTS_SECURITY__CHECKSUM = 2;
    public static final int SUPPORTS_SECURITY__TIMESTAMP = 3;
    public static final int SUPPORTS_SECURITY__HW_ELEMENT = 4;
    public static final int SUPPORTS_SECURITY_FEATURE_COUNT = 5;
    public static final int TEMPERATURE = 6;
    public static final int TEMPERATURE__GCHECKSUM = 0;
    public static final int TEMPERATURE__GTIMESTAMP = 1;
    public static final int TEMPERATURE__CHECKSUM = 2;
    public static final int TEMPERATURE__TIMESTAMP = 3;
    public static final int TEMPERATURE__HW_ELEMENT = 4;
    public static final int TEMPERATURE__NEEDS_COOLING = 5;
    public static final int TEMPERATURE__NEEDS_HEATING = 6;
    public static final int TEMPERATURE__OPERATION_MAX = 7;
    public static final int TEMPERATURE__OPERATION_MIN = 8;
    public static final int TEMPERATURE__OPERATION_TYPICAL = 9;
    public static final int TEMPERATURE__STORAGE_MAX = 10;
    public static final int TEMPERATURE__STORAGE_MIN = 11;
    public static final int TEMPERATURE_FEATURE_COUNT = 12;
    public static final int TIME_RANGE = 7;
    public static final int TIME_RANGE__GCHECKSUM = 0;
    public static final int TIME_RANGE__GTIMESTAMP = 1;
    public static final int TIME_RANGE__CHECKSUM = 2;
    public static final int TIME_RANGE__TIMESTAMP = 3;
    public static final int TIME_RANGE__MAX = 4;
    public static final int TIME_RANGE__MIN = 5;
    public static final int TIME_RANGE__TYPICAL = 6;
    public static final int TIME_RANGE_FEATURE_COUNT = 7;

    public EClass getBootTime();

    public EReference getBootTime_ProcessingUnit();

    public EAttribute getBootTime_ColdStartTime();

    public EAttribute getBootTime_ResetTime();

    public EClass getElectricalRange();

    public EAttribute getElectricalRange_MaxCurrent();

    public EAttribute getElectricalRange_MaxVoltage();

    public EAttribute getElectricalRange_MinCurrent();

    public EAttribute getElectricalRange_MinVoltage();

    public EAttribute getElectricalRange_TypicalCurrent();

    public EAttribute getElectricalRange_TypicalVoltage();

    public EClass getErrorDetectionCorrection();

    public EAttribute getErrorDetectionCorrection_CorrectedBits();

    public EAttribute getErrorDetectionCorrection_DetectedBits();

    public EAttribute getErrorDetectionCorrection_ExtraBits();

    public EClass getFrequencyRange();

    public EAttribute getFrequencyRange_MaxFrequency();

    public EAttribute getFrequencyRange_MinFrequency();

    public EAttribute getFrequencyRange_TypicalFrequency();

    public EClass getSupportsSafety();

    public EReference getSupportsSafety_HWElement();

    public EClass getSupportsSecurity();

    public EReference getSupportsSecurity_HWElement();

    public EClass getTemperature();

    public EReference getTemperature_HWElement();

    public EAttribute getTemperature_NeedsCooling();

    public EAttribute getTemperature_NeedsHeating();

    public EAttribute getTemperature_OperationMax();

    public EAttribute getTemperature_OperationMin();

    public EAttribute getTemperature_OperationTypical();

    public EAttribute getTemperature_StorageMax();

    public EAttribute getTemperature_StorageMin();

    public EClass getTimeRange();

    public EAttribute getTimeRange_Max();

    public EAttribute getTimeRange_Min();

    public EAttribute getTimeRange_Typical();

    public BasicelementsFactory getBasicelementsFactory();

    public static interface Literals {
        public static final EClass BOOT_TIME = eINSTANCE.getBootTime();
        public static final EReference BOOT_TIME__PROCESSING_UNIT = eINSTANCE.getBootTime_ProcessingUnit();
        public static final EAttribute BOOT_TIME__COLD_START_TIME = eINSTANCE.getBootTime_ColdStartTime();
        public static final EAttribute BOOT_TIME__RESET_TIME = eINSTANCE.getBootTime_ResetTime();
        public static final EClass ELECTRICAL_RANGE = eINSTANCE.getElectricalRange();
        public static final EAttribute ELECTRICAL_RANGE__MAX_CURRENT = eINSTANCE.getElectricalRange_MaxCurrent();
        public static final EAttribute ELECTRICAL_RANGE__MAX_VOLTAGE = eINSTANCE.getElectricalRange_MaxVoltage();
        public static final EAttribute ELECTRICAL_RANGE__MIN_CURRENT = eINSTANCE.getElectricalRange_MinCurrent();
        public static final EAttribute ELECTRICAL_RANGE__MIN_VOLTAGE = eINSTANCE.getElectricalRange_MinVoltage();
        public static final EAttribute ELECTRICAL_RANGE__TYPICAL_CURRENT = eINSTANCE.getElectricalRange_TypicalCurrent();
        public static final EAttribute ELECTRICAL_RANGE__TYPICAL_VOLTAGE = eINSTANCE.getElectricalRange_TypicalVoltage();
        public static final EClass ERROR_DETECTION_CORRECTION = eINSTANCE.getErrorDetectionCorrection();
        public static final EAttribute ERROR_DETECTION_CORRECTION__CORRECTED_BITS = eINSTANCE.getErrorDetectionCorrection_CorrectedBits();
        public static final EAttribute ERROR_DETECTION_CORRECTION__DETECTED_BITS = eINSTANCE.getErrorDetectionCorrection_DetectedBits();
        public static final EAttribute ERROR_DETECTION_CORRECTION__EXTRA_BITS = eINSTANCE.getErrorDetectionCorrection_ExtraBits();
        public static final EClass FREQUENCY_RANGE = eINSTANCE.getFrequencyRange();
        public static final EAttribute FREQUENCY_RANGE__MAX_FREQUENCY = eINSTANCE.getFrequencyRange_MaxFrequency();
        public static final EAttribute FREQUENCY_RANGE__MIN_FREQUENCY = eINSTANCE.getFrequencyRange_MinFrequency();
        public static final EAttribute FREQUENCY_RANGE__TYPICAL_FREQUENCY = eINSTANCE.getFrequencyRange_TypicalFrequency();
        public static final EClass SUPPORTS_SAFETY = eINSTANCE.getSupportsSafety();
        public static final EReference SUPPORTS_SAFETY__HW_ELEMENT = eINSTANCE.getSupportsSafety_HWElement();
        public static final EClass SUPPORTS_SECURITY = eINSTANCE.getSupportsSecurity();
        public static final EReference SUPPORTS_SECURITY__HW_ELEMENT = eINSTANCE.getSupportsSecurity_HWElement();
        public static final EClass TEMPERATURE = eINSTANCE.getTemperature();
        public static final EReference TEMPERATURE__HW_ELEMENT = eINSTANCE.getTemperature_HWElement();
        public static final EAttribute TEMPERATURE__NEEDS_COOLING = eINSTANCE.getTemperature_NeedsCooling();
        public static final EAttribute TEMPERATURE__NEEDS_HEATING = eINSTANCE.getTemperature_NeedsHeating();
        public static final EAttribute TEMPERATURE__OPERATION_MAX = eINSTANCE.getTemperature_OperationMax();
        public static final EAttribute TEMPERATURE__OPERATION_MIN = eINSTANCE.getTemperature_OperationMin();
        public static final EAttribute TEMPERATURE__OPERATION_TYPICAL = eINSTANCE.getTemperature_OperationTypical();
        public static final EAttribute TEMPERATURE__STORAGE_MAX = eINSTANCE.getTemperature_StorageMax();
        public static final EAttribute TEMPERATURE__STORAGE_MIN = eINSTANCE.getTemperature_StorageMin();
        public static final EClass TIME_RANGE = eINSTANCE.getTimeRange();
        public static final EAttribute TIME_RANGE__MAX = eINSTANCE.getTimeRange_Max();
        public static final EAttribute TIME_RANGE__MIN = eINSTANCE.getTimeRange_Min();
        public static final EAttribute TIME_RANGE__TYPICAL = eINSTANCE.getTimeRange_Typical();
    }
}

