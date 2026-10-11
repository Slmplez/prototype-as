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
package autosar21.ecuresource.sensoractuator;

import autosar21.ecuresource.sensoractuator.SensoractuatorFactory;
import autosar21.ecuresource.sensoractuator.impl.SensoractuatorPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SensoractuatorPackage
extends EPackage {
    public static final String eNAME = "sensoractuator";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/ecur/sa";
    public static final String eNS_PREFIX = "";
    public static final SensoractuatorPackage eINSTANCE = SensoractuatorPackageImpl.init();
    public static final int SENSOR_ACTUATOR_HW = 3;
    public static final int SENSOR_ACTUATOR_HW__GCHECKSUM = 0;
    public static final int SENSOR_ACTUATOR_HW__GTIMESTAMP = 1;
    public static final int SENSOR_ACTUATOR_HW__CHECKSUM = 2;
    public static final int SENSOR_ACTUATOR_HW__TIMESTAMP = 3;
    public static final int SENSOR_ACTUATOR_HW__GSHORT_NAME = 4;
    public static final int SENSOR_ACTUATOR_HW__GUUID = 5;
    public static final int SENSOR_ACTUATOR_HW__GCATEGORY = 6;
    public static final int SENSOR_ACTUATOR_HW__GDESC = 7;
    public static final int SENSOR_ACTUATOR_HW__SHORT_NAME = 8;
    public static final int SENSOR_ACTUATOR_HW__LONG_NAME = 9;
    public static final int SENSOR_ACTUATOR_HW__DESC = 10;
    public static final int SENSOR_ACTUATOR_HW__CATEGORY = 11;
    public static final int SENSOR_ACTUATOR_HW__ADMIN_DATA = 12;
    public static final int SENSOR_ACTUATOR_HW__UUID = 13;
    public static final int SENSOR_ACTUATOR_HW__ALL_EXTENSIONS = 14;
    public static final int SENSOR_ACTUATOR_HW__CONTAINED_EXTENSIONS = 15;
    public static final int SENSOR_ACTUATOR_HW__GAR_PACKAGE = 16;
    public static final int SENSOR_ACTUATOR_HW__AR_PACKAGE = 17;
    public static final int SENSOR_ACTUATOR_HW__HW_ELEMENT_CONTAINER = 18;
    public static final int SENSOR_ACTUATOR_HW__HW_ELEMENT_TEMPERATURE = 19;
    public static final int SENSOR_ACTUATOR_HW__PORTS = 20;
    public static final int SENSOR_ACTUATOR_HW__SIGNAL_TRANSFORMATIONS = 21;
    public static final int SENSOR_ACTUATOR_HW__STANDBY_CURRENT = 22;
    public static final int SENSOR_ACTUATOR_HW__SUPPORTS_SAFETY = 23;
    public static final int SENSOR_ACTUATOR_HW__SUPPORTS_SECURITY = 24;
    public static final int SENSOR_ACTUATOR_HW__ACCURACY = 25;
    public static final int SENSOR_ACTUATOR_HW__CYCLE_TIME = 26;
    public static final int SENSOR_ACTUATOR_HW__RESOLUTION = 27;
    public static final int SENSOR_ACTUATOR_HW__TYPE = 28;
    public static final int SENSOR_ACTUATOR_HW_FEATURE_COUNT = 29;
    public static final int ACTUATOR_HW = 0;
    public static final int ACTUATOR_HW__GCHECKSUM = 0;
    public static final int ACTUATOR_HW__GTIMESTAMP = 1;
    public static final int ACTUATOR_HW__CHECKSUM = 2;
    public static final int ACTUATOR_HW__TIMESTAMP = 3;
    public static final int ACTUATOR_HW__GSHORT_NAME = 4;
    public static final int ACTUATOR_HW__GUUID = 5;
    public static final int ACTUATOR_HW__GCATEGORY = 6;
    public static final int ACTUATOR_HW__GDESC = 7;
    public static final int ACTUATOR_HW__SHORT_NAME = 8;
    public static final int ACTUATOR_HW__LONG_NAME = 9;
    public static final int ACTUATOR_HW__DESC = 10;
    public static final int ACTUATOR_HW__CATEGORY = 11;
    public static final int ACTUATOR_HW__ADMIN_DATA = 12;
    public static final int ACTUATOR_HW__UUID = 13;
    public static final int ACTUATOR_HW__ALL_EXTENSIONS = 14;
    public static final int ACTUATOR_HW__CONTAINED_EXTENSIONS = 15;
    public static final int ACTUATOR_HW__GAR_PACKAGE = 16;
    public static final int ACTUATOR_HW__AR_PACKAGE = 17;
    public static final int ACTUATOR_HW__HW_ELEMENT_CONTAINER = 18;
    public static final int ACTUATOR_HW__HW_ELEMENT_TEMPERATURE = 19;
    public static final int ACTUATOR_HW__PORTS = 20;
    public static final int ACTUATOR_HW__SIGNAL_TRANSFORMATIONS = 21;
    public static final int ACTUATOR_HW__STANDBY_CURRENT = 22;
    public static final int ACTUATOR_HW__SUPPORTS_SAFETY = 23;
    public static final int ACTUATOR_HW__SUPPORTS_SECURITY = 24;
    public static final int ACTUATOR_HW__ACCURACY = 25;
    public static final int ACTUATOR_HW__CYCLE_TIME = 26;
    public static final int ACTUATOR_HW__RESOLUTION = 27;
    public static final int ACTUATOR_HW__TYPE = 28;
    public static final int ACTUATOR_HW__DEFAULT_POSITION_TYPE = 29;
    public static final int ACTUATOR_HW__DEFAULT_POSITION_VALUE = 30;
    public static final int ACTUATOR_HW__ELECTRICAL_TYPE = 31;
    public static final int ACTUATOR_HW__ENDURANCE = 32;
    public static final int ACTUATOR_HW__MOVEMENT = 33;
    public static final int ACTUATOR_HW_FEATURE_COUNT = 34;
    public static final int DISPLAY_HW = 1;
    public static final int DISPLAY_HW__GCHECKSUM = 0;
    public static final int DISPLAY_HW__GTIMESTAMP = 1;
    public static final int DISPLAY_HW__CHECKSUM = 2;
    public static final int DISPLAY_HW__TIMESTAMP = 3;
    public static final int DISPLAY_HW__GSHORT_NAME = 4;
    public static final int DISPLAY_HW__GUUID = 5;
    public static final int DISPLAY_HW__GCATEGORY = 6;
    public static final int DISPLAY_HW__GDESC = 7;
    public static final int DISPLAY_HW__SHORT_NAME = 8;
    public static final int DISPLAY_HW__LONG_NAME = 9;
    public static final int DISPLAY_HW__DESC = 10;
    public static final int DISPLAY_HW__CATEGORY = 11;
    public static final int DISPLAY_HW__ADMIN_DATA = 12;
    public static final int DISPLAY_HW__UUID = 13;
    public static final int DISPLAY_HW__ALL_EXTENSIONS = 14;
    public static final int DISPLAY_HW__CONTAINED_EXTENSIONS = 15;
    public static final int DISPLAY_HW__GAR_PACKAGE = 16;
    public static final int DISPLAY_HW__AR_PACKAGE = 17;
    public static final int DISPLAY_HW__HW_ELEMENT_CONTAINER = 18;
    public static final int DISPLAY_HW__HW_ELEMENT_TEMPERATURE = 19;
    public static final int DISPLAY_HW__PORTS = 20;
    public static final int DISPLAY_HW__SIGNAL_TRANSFORMATIONS = 21;
    public static final int DISPLAY_HW__STANDBY_CURRENT = 22;
    public static final int DISPLAY_HW__SUPPORTS_SAFETY = 23;
    public static final int DISPLAY_HW__SUPPORTS_SECURITY = 24;
    public static final int DISPLAY_HW__ACCURACY = 25;
    public static final int DISPLAY_HW__CYCLE_TIME = 26;
    public static final int DISPLAY_HW__RESOLUTION = 27;
    public static final int DISPLAY_HW__TYPE = 28;
    public static final int DISPLAY_HW__BACKLIGHT = 29;
    public static final int DISPLAY_HW__BRIGHTNESS = 30;
    public static final int DISPLAY_HW__CHARACTER_GENERATOR = 31;
    public static final int DISPLAY_HW__CHARACTER_SET = 32;
    public static final int DISPLAY_HW__COLOUR = 33;
    public static final int DISPLAY_HW__RESOLUTION_RATION = 34;
    public static final int DISPLAY_HW__RESOLUTION_X = 35;
    public static final int DISPLAY_HW__RESOLUTION_Y = 36;
    public static final int DISPLAY_HW__RESPONSE_TIME = 37;
    public static final int DISPLAY_HW__TYPE_OF_CHARACTERS = 38;
    public static final int DISPLAY_HW__VIEWING_ANGLE = 39;
    public static final int DISPLAY_HW_FEATURE_COUNT = 40;
    public static final int SENSOR_HW = 2;
    public static final int SENSOR_HW__GCHECKSUM = 0;
    public static final int SENSOR_HW__GTIMESTAMP = 1;
    public static final int SENSOR_HW__CHECKSUM = 2;
    public static final int SENSOR_HW__TIMESTAMP = 3;
    public static final int SENSOR_HW__GSHORT_NAME = 4;
    public static final int SENSOR_HW__GUUID = 5;
    public static final int SENSOR_HW__GCATEGORY = 6;
    public static final int SENSOR_HW__GDESC = 7;
    public static final int SENSOR_HW__SHORT_NAME = 8;
    public static final int SENSOR_HW__LONG_NAME = 9;
    public static final int SENSOR_HW__DESC = 10;
    public static final int SENSOR_HW__CATEGORY = 11;
    public static final int SENSOR_HW__ADMIN_DATA = 12;
    public static final int SENSOR_HW__UUID = 13;
    public static final int SENSOR_HW__ALL_EXTENSIONS = 14;
    public static final int SENSOR_HW__CONTAINED_EXTENSIONS = 15;
    public static final int SENSOR_HW__GAR_PACKAGE = 16;
    public static final int SENSOR_HW__AR_PACKAGE = 17;
    public static final int SENSOR_HW__HW_ELEMENT_CONTAINER = 18;
    public static final int SENSOR_HW__HW_ELEMENT_TEMPERATURE = 19;
    public static final int SENSOR_HW__PORTS = 20;
    public static final int SENSOR_HW__SIGNAL_TRANSFORMATIONS = 21;
    public static final int SENSOR_HW__STANDBY_CURRENT = 22;
    public static final int SENSOR_HW__SUPPORTS_SAFETY = 23;
    public static final int SENSOR_HW__SUPPORTS_SECURITY = 24;
    public static final int SENSOR_HW__ACCURACY = 25;
    public static final int SENSOR_HW__CYCLE_TIME = 26;
    public static final int SENSOR_HW__RESOLUTION = 27;
    public static final int SENSOR_HW__TYPE = 28;
    public static final int SENSOR_HW__SIGNAL_QUALITY = 29;
    public static final int SENSOR_HW_FEATURE_COUNT = 30;
    public static final int ACTUATOR_HW_ELECTRICAL_TYPE_ENUM = 4;
    public static final int ACTUATOR_HW_MOVEMENT_ENUM = 5;
    public static final int ACTUATOR_HW_DEFAULT_POSITION_TYPE_ENUM = 6;
    public static final int DISPLAY_HW_COLOUR_ENUM = 7;
    public static final int DISPLAY_HW_TYPE_OF_CHARACTERS_ENUM = 8;
    public static final int SENSOR_HW_SIGNAL_QUALITY_ENUM = 9;

    public EClass getActuatorHW();

    public EAttribute getActuatorHW_DefaultPositionType();

    public EAttribute getActuatorHW_DefaultPositionValue();

    public EAttribute getActuatorHW_ElectricalType();

    public EAttribute getActuatorHW_Endurance();

    public EAttribute getActuatorHW_Movement();

    public EClass getDisplayHW();

    public EAttribute getDisplayHW_Backlight();

    public EAttribute getDisplayHW_Brightness();

    public EAttribute getDisplayHW_CharacterGenerator();

    public EAttribute getDisplayHW_CharacterSet();

    public EAttribute getDisplayHW_Colour();

    public EAttribute getDisplayHW_ResolutionRation();

    public EAttribute getDisplayHW_ResolutionX();

    public EAttribute getDisplayHW_ResolutionY();

    public EAttribute getDisplayHW_ResponseTime();

    public EAttribute getDisplayHW_TypeOfCharacters();

    public EAttribute getDisplayHW_ViewingAngle();

    public EClass getSensorHW();

    public EAttribute getSensorHW_SignalQuality();

    public EClass getSensorActuatorHW();

    public EAttribute getSensorActuatorHW_Accuracy();

    public EReference getSensorActuatorHW_CycleTime();

    public EAttribute getSensorActuatorHW_Resolution();

    public EAttribute getSensorActuatorHW_Type();

    public EEnum getActuatorHWElectricalTypeEnum();

    public EEnum getActuatorHWMovementEnum();

    public EEnum getActuatorHWDefaultPositionTypeEnum();

    public EEnum getDisplayHWColourEnum();

    public EEnum getDisplayHWTypeOfCharactersEnum();

    public EEnum getSensorHWSignalQualityEnum();

    public SensoractuatorFactory getSensoractuatorFactory();

    public static interface Literals {
        public static final EClass ACTUATOR_HW = eINSTANCE.getActuatorHW();
        public static final EAttribute ACTUATOR_HW__DEFAULT_POSITION_TYPE = eINSTANCE.getActuatorHW_DefaultPositionType();
        public static final EAttribute ACTUATOR_HW__DEFAULT_POSITION_VALUE = eINSTANCE.getActuatorHW_DefaultPositionValue();
        public static final EAttribute ACTUATOR_HW__ELECTRICAL_TYPE = eINSTANCE.getActuatorHW_ElectricalType();
        public static final EAttribute ACTUATOR_HW__ENDURANCE = eINSTANCE.getActuatorHW_Endurance();
        public static final EAttribute ACTUATOR_HW__MOVEMENT = eINSTANCE.getActuatorHW_Movement();
        public static final EClass DISPLAY_HW = eINSTANCE.getDisplayHW();
        public static final EAttribute DISPLAY_HW__BACKLIGHT = eINSTANCE.getDisplayHW_Backlight();
        public static final EAttribute DISPLAY_HW__BRIGHTNESS = eINSTANCE.getDisplayHW_Brightness();
        public static final EAttribute DISPLAY_HW__CHARACTER_GENERATOR = eINSTANCE.getDisplayHW_CharacterGenerator();
        public static final EAttribute DISPLAY_HW__CHARACTER_SET = eINSTANCE.getDisplayHW_CharacterSet();
        public static final EAttribute DISPLAY_HW__COLOUR = eINSTANCE.getDisplayHW_Colour();
        public static final EAttribute DISPLAY_HW__RESOLUTION_RATION = eINSTANCE.getDisplayHW_ResolutionRation();
        public static final EAttribute DISPLAY_HW__RESOLUTION_X = eINSTANCE.getDisplayHW_ResolutionX();
        public static final EAttribute DISPLAY_HW__RESOLUTION_Y = eINSTANCE.getDisplayHW_ResolutionY();
        public static final EAttribute DISPLAY_HW__RESPONSE_TIME = eINSTANCE.getDisplayHW_ResponseTime();
        public static final EAttribute DISPLAY_HW__TYPE_OF_CHARACTERS = eINSTANCE.getDisplayHW_TypeOfCharacters();
        public static final EAttribute DISPLAY_HW__VIEWING_ANGLE = eINSTANCE.getDisplayHW_ViewingAngle();
        public static final EClass SENSOR_HW = eINSTANCE.getSensorHW();
        public static final EAttribute SENSOR_HW__SIGNAL_QUALITY = eINSTANCE.getSensorHW_SignalQuality();
        public static final EClass SENSOR_ACTUATOR_HW = eINSTANCE.getSensorActuatorHW();
        public static final EAttribute SENSOR_ACTUATOR_HW__ACCURACY = eINSTANCE.getSensorActuatorHW_Accuracy();
        public static final EReference SENSOR_ACTUATOR_HW__CYCLE_TIME = eINSTANCE.getSensorActuatorHW_CycleTime();
        public static final EAttribute SENSOR_ACTUATOR_HW__RESOLUTION = eINSTANCE.getSensorActuatorHW_Resolution();
        public static final EAttribute SENSOR_ACTUATOR_HW__TYPE = eINSTANCE.getSensorActuatorHW_Type();
        public static final EEnum ACTUATOR_HW_ELECTRICAL_TYPE_ENUM = eINSTANCE.getActuatorHWElectricalTypeEnum();
        public static final EEnum ACTUATOR_HW_MOVEMENT_ENUM = eINSTANCE.getActuatorHWMovementEnum();
        public static final EEnum ACTUATOR_HW_DEFAULT_POSITION_TYPE_ENUM = eINSTANCE.getActuatorHWDefaultPositionTypeEnum();
        public static final EEnum DISPLAY_HW_COLOUR_ENUM = eINSTANCE.getDisplayHWColourEnum();
        public static final EEnum DISPLAY_HW_TYPE_OF_CHARACTERS_ENUM = eINSTANCE.getDisplayHWTypeOfCharactersEnum();
        public static final EEnum SENSOR_HW_SIGNAL_QUALITY_ENUM = eINSTANCE.getSensorHWSignalQualityEnum();
    }
}

