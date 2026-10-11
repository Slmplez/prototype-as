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
package autosar21.ecuresource.ecuelectronics;

import autosar21.ecuresource.ecuelectronics.EcuelectronicsFactory;
import autosar21.ecuresource.ecuelectronics.impl.EcuelectronicsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EcuelectronicsPackage
extends EPackage {
    public static final String eNAME = "ecuelectronics";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/ecur/ecue";
    public static final String eNS_PREFIX = "";
    public static final EcuelectronicsPackage eINSTANCE = EcuelectronicsPackageImpl.init();
    public static final int BUS_TERMINATION = 0;
    public static final int BUS_TERMINATION__GCHECKSUM = 0;
    public static final int BUS_TERMINATION__GTIMESTAMP = 1;
    public static final int BUS_TERMINATION__CHECKSUM = 2;
    public static final int BUS_TERMINATION__TIMESTAMP = 3;
    public static final int BUS_TERMINATION__COMMUNICATION_TRANSCEIVER = 4;
    public static final int BUS_TERMINATION__ACTIVE_SWITCHABLE = 5;
    public static final int BUS_TERMINATION__CHOKE = 6;
    public static final int BUS_TERMINATION__EMC_FILTER = 7;
    public static final int BUS_TERMINATION__SPLIT = 8;
    public static final int BUS_TERMINATION__VALUE = 9;
    public static final int BUS_TERMINATION_FEATURE_COUNT = 10;
    public static final int ECU_ELECTRONICS = 2;
    public static final int ECU_ELECTRONICS__GCHECKSUM = 0;
    public static final int ECU_ELECTRONICS__GTIMESTAMP = 1;
    public static final int ECU_ELECTRONICS__CHECKSUM = 2;
    public static final int ECU_ELECTRONICS__TIMESTAMP = 3;
    public static final int ECU_ELECTRONICS__GSHORT_NAME = 4;
    public static final int ECU_ELECTRONICS__GUUID = 5;
    public static final int ECU_ELECTRONICS__GCATEGORY = 6;
    public static final int ECU_ELECTRONICS__GDESC = 7;
    public static final int ECU_ELECTRONICS__SHORT_NAME = 8;
    public static final int ECU_ELECTRONICS__LONG_NAME = 9;
    public static final int ECU_ELECTRONICS__DESC = 10;
    public static final int ECU_ELECTRONICS__CATEGORY = 11;
    public static final int ECU_ELECTRONICS__ADMIN_DATA = 12;
    public static final int ECU_ELECTRONICS__UUID = 13;
    public static final int ECU_ELECTRONICS__ALL_EXTENSIONS = 14;
    public static final int ECU_ELECTRONICS__CONTAINED_EXTENSIONS = 15;
    public static final int ECU_ELECTRONICS__GAR_PACKAGE = 16;
    public static final int ECU_ELECTRONICS__AR_PACKAGE = 17;
    public static final int ECU_ELECTRONICS__HW_ELEMENT_CONTAINER = 18;
    public static final int ECU_ELECTRONICS__HW_ELEMENT_TEMPERATURE = 19;
    public static final int ECU_ELECTRONICS__PORTS = 20;
    public static final int ECU_ELECTRONICS__SIGNAL_TRANSFORMATIONS = 21;
    public static final int ECU_ELECTRONICS__STANDBY_CURRENT = 22;
    public static final int ECU_ELECTRONICS__SUPPORTS_SAFETY = 23;
    public static final int ECU_ELECTRONICS__SUPPORTS_SECURITY = 24;
    public static final int ECU_ELECTRONICS__CAN_BE_DISABLED = 25;
    public static final int ECU_ELECTRONICS_FEATURE_COUNT = 26;
    public static final int CLOCK = 1;
    public static final int CLOCK__GCHECKSUM = 0;
    public static final int CLOCK__GTIMESTAMP = 1;
    public static final int CLOCK__CHECKSUM = 2;
    public static final int CLOCK__TIMESTAMP = 3;
    public static final int CLOCK__GSHORT_NAME = 4;
    public static final int CLOCK__GUUID = 5;
    public static final int CLOCK__GCATEGORY = 6;
    public static final int CLOCK__GDESC = 7;
    public static final int CLOCK__SHORT_NAME = 8;
    public static final int CLOCK__LONG_NAME = 9;
    public static final int CLOCK__DESC = 10;
    public static final int CLOCK__CATEGORY = 11;
    public static final int CLOCK__ADMIN_DATA = 12;
    public static final int CLOCK__UUID = 13;
    public static final int CLOCK__ALL_EXTENSIONS = 14;
    public static final int CLOCK__CONTAINED_EXTENSIONS = 15;
    public static final int CLOCK__GAR_PACKAGE = 16;
    public static final int CLOCK__AR_PACKAGE = 17;
    public static final int CLOCK__HW_ELEMENT_CONTAINER = 18;
    public static final int CLOCK__HW_ELEMENT_TEMPERATURE = 19;
    public static final int CLOCK__PORTS = 20;
    public static final int CLOCK__SIGNAL_TRANSFORMATIONS = 21;
    public static final int CLOCK__STANDBY_CURRENT = 22;
    public static final int CLOCK__SUPPORTS_SAFETY = 23;
    public static final int CLOCK__SUPPORTS_SECURITY = 24;
    public static final int CLOCK__CAN_BE_DISABLED = 25;
    public static final int CLOCK__PROCESSING_UNIT = 26;
    public static final int CLOCK__ADJUSTABLE = 27;
    public static final int CLOCK__CLOCK_JITTER = 28;
    public static final int CLOCK__CLOCK_STARTUP_TIME = 29;
    public static final int CLOCK__CLOCK_TOLERANCE = 30;
    public static final int CLOCK__FREQUENCY = 31;
    public static final int CLOCK__OSCILLATORS = 32;
    public static final int CLOCK__TYPE = 33;
    public static final int CLOCK_FEATURE_COUNT = 34;
    public static final int COMMUNICATION_TRANSCEIVER = 3;
    public static final int COMMUNICATION_TRANSCEIVER__GCHECKSUM = 0;
    public static final int COMMUNICATION_TRANSCEIVER__GTIMESTAMP = 1;
    public static final int COMMUNICATION_TRANSCEIVER__CHECKSUM = 2;
    public static final int COMMUNICATION_TRANSCEIVER__TIMESTAMP = 3;
    public static final int COMMUNICATION_TRANSCEIVER__GSHORT_NAME = 4;
    public static final int COMMUNICATION_TRANSCEIVER__GUUID = 5;
    public static final int COMMUNICATION_TRANSCEIVER__GCATEGORY = 6;
    public static final int COMMUNICATION_TRANSCEIVER__GDESC = 7;
    public static final int COMMUNICATION_TRANSCEIVER__SHORT_NAME = 8;
    public static final int COMMUNICATION_TRANSCEIVER__LONG_NAME = 9;
    public static final int COMMUNICATION_TRANSCEIVER__DESC = 10;
    public static final int COMMUNICATION_TRANSCEIVER__CATEGORY = 11;
    public static final int COMMUNICATION_TRANSCEIVER__ADMIN_DATA = 12;
    public static final int COMMUNICATION_TRANSCEIVER__UUID = 13;
    public static final int COMMUNICATION_TRANSCEIVER__ALL_EXTENSIONS = 14;
    public static final int COMMUNICATION_TRANSCEIVER__CONTAINED_EXTENSIONS = 15;
    public static final int COMMUNICATION_TRANSCEIVER__GAR_PACKAGE = 16;
    public static final int COMMUNICATION_TRANSCEIVER__AR_PACKAGE = 17;
    public static final int COMMUNICATION_TRANSCEIVER__HW_ELEMENT_CONTAINER = 18;
    public static final int COMMUNICATION_TRANSCEIVER__HW_ELEMENT_TEMPERATURE = 19;
    public static final int COMMUNICATION_TRANSCEIVER__PORTS = 20;
    public static final int COMMUNICATION_TRANSCEIVER__SIGNAL_TRANSFORMATIONS = 21;
    public static final int COMMUNICATION_TRANSCEIVER__STANDBY_CURRENT = 22;
    public static final int COMMUNICATION_TRANSCEIVER__SUPPORTS_SAFETY = 23;
    public static final int COMMUNICATION_TRANSCEIVER__SUPPORTS_SECURITY = 24;
    public static final int COMMUNICATION_TRANSCEIVER__CAN_BE_DISABLED = 25;
    public static final int COMMUNICATION_TRANSCEIVER__ACCEPTANCE_FILTER = 26;
    public static final int COMMUNICATION_TRANSCEIVER__ARCHITECTURE = 27;
    public static final int COMMUNICATION_TRANSCEIVER__REJECTION_FILTER = 28;
    public static final int COMMUNICATION_TRANSCEIVER__TERMINATION = 29;
    public static final int COMMUNICATION_TRANSCEIVER_FEATURE_COUNT = 30;
    public static final int DISCRETE_ECU_ELECTRONICS = 4;
    public static final int DISCRETE_ECU_ELECTRONICS__GCHECKSUM = 0;
    public static final int DISCRETE_ECU_ELECTRONICS__GTIMESTAMP = 1;
    public static final int DISCRETE_ECU_ELECTRONICS__CHECKSUM = 2;
    public static final int DISCRETE_ECU_ELECTRONICS__TIMESTAMP = 3;
    public static final int DISCRETE_ECU_ELECTRONICS__GSHORT_NAME = 4;
    public static final int DISCRETE_ECU_ELECTRONICS__GUUID = 5;
    public static final int DISCRETE_ECU_ELECTRONICS__GCATEGORY = 6;
    public static final int DISCRETE_ECU_ELECTRONICS__GDESC = 7;
    public static final int DISCRETE_ECU_ELECTRONICS__SHORT_NAME = 8;
    public static final int DISCRETE_ECU_ELECTRONICS__LONG_NAME = 9;
    public static final int DISCRETE_ECU_ELECTRONICS__DESC = 10;
    public static final int DISCRETE_ECU_ELECTRONICS__CATEGORY = 11;
    public static final int DISCRETE_ECU_ELECTRONICS__ADMIN_DATA = 12;
    public static final int DISCRETE_ECU_ELECTRONICS__UUID = 13;
    public static final int DISCRETE_ECU_ELECTRONICS__ALL_EXTENSIONS = 14;
    public static final int DISCRETE_ECU_ELECTRONICS__CONTAINED_EXTENSIONS = 15;
    public static final int DISCRETE_ECU_ELECTRONICS__GAR_PACKAGE = 16;
    public static final int DISCRETE_ECU_ELECTRONICS__AR_PACKAGE = 17;
    public static final int DISCRETE_ECU_ELECTRONICS__HW_ELEMENT_CONTAINER = 18;
    public static final int DISCRETE_ECU_ELECTRONICS__HW_ELEMENT_TEMPERATURE = 19;
    public static final int DISCRETE_ECU_ELECTRONICS__PORTS = 20;
    public static final int DISCRETE_ECU_ELECTRONICS__SIGNAL_TRANSFORMATIONS = 21;
    public static final int DISCRETE_ECU_ELECTRONICS__STANDBY_CURRENT = 22;
    public static final int DISCRETE_ECU_ELECTRONICS__SUPPORTS_SAFETY = 23;
    public static final int DISCRETE_ECU_ELECTRONICS__SUPPORTS_SECURITY = 24;
    public static final int DISCRETE_ECU_ELECTRONICS__CAN_BE_DISABLED = 25;
    public static final int DISCRETE_ECU_ELECTRONICS_FEATURE_COUNT = 26;
    public static final int POWER_DRIVER_HW_ELEMENT = 5;
    public static final int POWER_DRIVER_HW_ELEMENT__GCHECKSUM = 0;
    public static final int POWER_DRIVER_HW_ELEMENT__GTIMESTAMP = 1;
    public static final int POWER_DRIVER_HW_ELEMENT__CHECKSUM = 2;
    public static final int POWER_DRIVER_HW_ELEMENT__TIMESTAMP = 3;
    public static final int POWER_DRIVER_HW_ELEMENT__GSHORT_NAME = 4;
    public static final int POWER_DRIVER_HW_ELEMENT__GUUID = 5;
    public static final int POWER_DRIVER_HW_ELEMENT__GCATEGORY = 6;
    public static final int POWER_DRIVER_HW_ELEMENT__GDESC = 7;
    public static final int POWER_DRIVER_HW_ELEMENT__SHORT_NAME = 8;
    public static final int POWER_DRIVER_HW_ELEMENT__LONG_NAME = 9;
    public static final int POWER_DRIVER_HW_ELEMENT__DESC = 10;
    public static final int POWER_DRIVER_HW_ELEMENT__CATEGORY = 11;
    public static final int POWER_DRIVER_HW_ELEMENT__ADMIN_DATA = 12;
    public static final int POWER_DRIVER_HW_ELEMENT__UUID = 13;
    public static final int POWER_DRIVER_HW_ELEMENT__ALL_EXTENSIONS = 14;
    public static final int POWER_DRIVER_HW_ELEMENT__CONTAINED_EXTENSIONS = 15;
    public static final int POWER_DRIVER_HW_ELEMENT__GAR_PACKAGE = 16;
    public static final int POWER_DRIVER_HW_ELEMENT__AR_PACKAGE = 17;
    public static final int POWER_DRIVER_HW_ELEMENT__HW_ELEMENT_CONTAINER = 18;
    public static final int POWER_DRIVER_HW_ELEMENT__HW_ELEMENT_TEMPERATURE = 19;
    public static final int POWER_DRIVER_HW_ELEMENT__PORTS = 20;
    public static final int POWER_DRIVER_HW_ELEMENT__SIGNAL_TRANSFORMATIONS = 21;
    public static final int POWER_DRIVER_HW_ELEMENT__STANDBY_CURRENT = 22;
    public static final int POWER_DRIVER_HW_ELEMENT__SUPPORTS_SAFETY = 23;
    public static final int POWER_DRIVER_HW_ELEMENT__SUPPORTS_SECURITY = 24;
    public static final int POWER_DRIVER_HW_ELEMENT__CAN_BE_DISABLED = 25;
    public static final int POWER_DRIVER_HW_ELEMENT__CURRENT_LIMITATION = 26;
    public static final int POWER_DRIVER_HW_ELEMENT__DEFAULT_RESET_BEHAVIUOR = 27;
    public static final int POWER_DRIVER_HW_ELEMENT__NOTIFICATION = 28;
    public static final int POWER_DRIVER_HW_ELEMENT__ON_STATE_RESISTANCE = 29;
    public static final int POWER_DRIVER_HW_ELEMENT__POWER_DRIVER_TYPE = 30;
    public static final int POWER_DRIVER_HW_ELEMENT__PROTECTION = 31;
    public static final int POWER_DRIVER_HW_ELEMENT__RESET_ON_FAULT_BEHAVIOUR = 32;
    public static final int POWER_DRIVER_HW_ELEMENT_FEATURE_COUNT = 33;
    public static final int POWER_DRIVER_PROTECTION = 6;
    public static final int POWER_DRIVER_PROTECTION__GCHECKSUM = 0;
    public static final int POWER_DRIVER_PROTECTION__GTIMESTAMP = 1;
    public static final int POWER_DRIVER_PROTECTION__CHECKSUM = 2;
    public static final int POWER_DRIVER_PROTECTION__TIMESTAMP = 3;
    public static final int POWER_DRIVER_PROTECTION__POWER_DRIVER_HW_ELEMENT = 4;
    public static final int POWER_DRIVER_PROTECTION__LOSS_OF_GROUND_PROTECTION = 5;
    public static final int POWER_DRIVER_PROTECTION__MAX_CURRENT_PROTECTION = 6;
    public static final int POWER_DRIVER_PROTECTION__MAX_VOLTAGE_PROTECTION = 7;
    public static final int POWER_DRIVER_PROTECTION__MIN_CURRENT_PROTECTION = 8;
    public static final int POWER_DRIVER_PROTECTION__MIN_VOLTAGE_PROTECTION = 9;
    public static final int POWER_DRIVER_PROTECTION__OVER_TEMPERATURE_PROTECTION = 10;
    public static final int POWER_DRIVER_PROTECTION__REVERSE_BATTERY_PROTECTION = 11;
    public static final int POWER_DRIVER_PROTECTION_FEATURE_COUNT = 12;
    public static final int POWER_DRIVER_NOTIFICATION = 7;
    public static final int POWER_DRIVER_NOTIFICATION__GCHECKSUM = 0;
    public static final int POWER_DRIVER_NOTIFICATION__GTIMESTAMP = 1;
    public static final int POWER_DRIVER_NOTIFICATION__CHECKSUM = 2;
    public static final int POWER_DRIVER_NOTIFICATION__TIMESTAMP = 3;
    public static final int POWER_DRIVER_NOTIFICATION__POWER_DRIVER_HW_ELEMENT = 4;
    public static final int POWER_DRIVER_NOTIFICATION__ISSUED_INTERRUPT_SOURCE = 5;
    public static final int POWER_DRIVER_NOTIFICATION__LOSS_OF_GROUND = 6;
    public static final int POWER_DRIVER_NOTIFICATION__MAX_CURRENT = 7;
    public static final int POWER_DRIVER_NOTIFICATION__MAX_VOLTAGE = 8;
    public static final int POWER_DRIVER_NOTIFICATION__MIN_CURRENT = 9;
    public static final int POWER_DRIVER_NOTIFICATION__MIN_VOLTAGE = 10;
    public static final int POWER_DRIVER_NOTIFICATION__OPEN_LOAD = 11;
    public static final int POWER_DRIVER_NOTIFICATION__OVER_TEMPERATURE = 12;
    public static final int POWER_DRIVER_NOTIFICATION__SHORT_LOAD = 13;
    public static final int POWER_DRIVER_NOTIFICATION__SHORT_TO_BATT = 14;
    public static final int POWER_DRIVER_NOTIFICATION__SHORT_TO_GROUND = 15;
    public static final int POWER_DRIVER_NOTIFICATION_FEATURE_COUNT = 16;
    public static final int POWER_DRIVER_HW_PORT = 8;
    public static final int POWER_DRIVER_HW_PORT__GCHECKSUM = 0;
    public static final int POWER_DRIVER_HW_PORT__GTIMESTAMP = 1;
    public static final int POWER_DRIVER_HW_PORT__CHECKSUM = 2;
    public static final int POWER_DRIVER_HW_PORT__TIMESTAMP = 3;
    public static final int POWER_DRIVER_HW_PORT__GSHORT_NAME = 4;
    public static final int POWER_DRIVER_HW_PORT__GUUID = 5;
    public static final int POWER_DRIVER_HW_PORT__GCATEGORY = 6;
    public static final int POWER_DRIVER_HW_PORT__GDESC = 7;
    public static final int POWER_DRIVER_HW_PORT__SHORT_NAME = 8;
    public static final int POWER_DRIVER_HW_PORT__LONG_NAME = 9;
    public static final int POWER_DRIVER_HW_PORT__DESC = 10;
    public static final int POWER_DRIVER_HW_PORT__CATEGORY = 11;
    public static final int POWER_DRIVER_HW_PORT__ADMIN_DATA = 12;
    public static final int POWER_DRIVER_HW_PORT__UUID = 13;
    public static final int POWER_DRIVER_HW_PORT__ALL_EXTENSIONS = 14;
    public static final int POWER_DRIVER_HW_PORT__CONTAINED_EXTENSIONS = 15;
    public static final int POWER_DRIVER_HW_PORT__HW_ELEMENT = 16;
    public static final int POWER_DRIVER_HW_PORT__DIRECTION = 17;
    public static final int POWER_DRIVER_HW_PORT__PINS = 18;
    public static final int POWER_DRIVER_HW_PORT__PWM_MAX_FREQUENCY = 19;
    public static final int POWER_DRIVER_HW_PORT__PWM_MIN_OFF_TIME = 20;
    public static final int POWER_DRIVER_HW_PORT__PWM_MIN_ON_TIME = 21;
    public static final int POWER_DRIVER_HW_PORT_FEATURE_COUNT = 22;
    public static final int POWER_SUPPLY_CURRENT_NOTIFICATION = 9;
    public static final int POWER_SUPPLY_CURRENT_NOTIFICATION__GCHECKSUM = 0;
    public static final int POWER_SUPPLY_CURRENT_NOTIFICATION__GTIMESTAMP = 1;
    public static final int POWER_SUPPLY_CURRENT_NOTIFICATION__CHECKSUM = 2;
    public static final int POWER_SUPPLY_CURRENT_NOTIFICATION__TIMESTAMP = 3;
    public static final int POWER_SUPPLY_CURRENT_NOTIFICATION__POWER_SUPPLY_HW_ELEMENT = 4;
    public static final int POWER_SUPPLY_CURRENT_NOTIFICATION__HYSTERESIS = 5;
    public static final int POWER_SUPPLY_CURRENT_NOTIFICATION__INTERRUPTS = 6;
    public static final int POWER_SUPPLY_CURRENT_NOTIFICATION__LEVEL = 7;
    public static final int POWER_SUPPLY_CURRENT_NOTIFICATION_FEATURE_COUNT = 8;
    public static final int POWER_SUPPLY_HW_ELEMENT = 10;
    public static final int POWER_SUPPLY_HW_ELEMENT__GCHECKSUM = 0;
    public static final int POWER_SUPPLY_HW_ELEMENT__GTIMESTAMP = 1;
    public static final int POWER_SUPPLY_HW_ELEMENT__CHECKSUM = 2;
    public static final int POWER_SUPPLY_HW_ELEMENT__TIMESTAMP = 3;
    public static final int POWER_SUPPLY_HW_ELEMENT__GSHORT_NAME = 4;
    public static final int POWER_SUPPLY_HW_ELEMENT__GUUID = 5;
    public static final int POWER_SUPPLY_HW_ELEMENT__GCATEGORY = 6;
    public static final int POWER_SUPPLY_HW_ELEMENT__GDESC = 7;
    public static final int POWER_SUPPLY_HW_ELEMENT__SHORT_NAME = 8;
    public static final int POWER_SUPPLY_HW_ELEMENT__LONG_NAME = 9;
    public static final int POWER_SUPPLY_HW_ELEMENT__DESC = 10;
    public static final int POWER_SUPPLY_HW_ELEMENT__CATEGORY = 11;
    public static final int POWER_SUPPLY_HW_ELEMENT__ADMIN_DATA = 12;
    public static final int POWER_SUPPLY_HW_ELEMENT__UUID = 13;
    public static final int POWER_SUPPLY_HW_ELEMENT__ALL_EXTENSIONS = 14;
    public static final int POWER_SUPPLY_HW_ELEMENT__CONTAINED_EXTENSIONS = 15;
    public static final int POWER_SUPPLY_HW_ELEMENT__GAR_PACKAGE = 16;
    public static final int POWER_SUPPLY_HW_ELEMENT__AR_PACKAGE = 17;
    public static final int POWER_SUPPLY_HW_ELEMENT__HW_ELEMENT_CONTAINER = 18;
    public static final int POWER_SUPPLY_HW_ELEMENT__HW_ELEMENT_TEMPERATURE = 19;
    public static final int POWER_SUPPLY_HW_ELEMENT__PORTS = 20;
    public static final int POWER_SUPPLY_HW_ELEMENT__SIGNAL_TRANSFORMATIONS = 21;
    public static final int POWER_SUPPLY_HW_ELEMENT__STANDBY_CURRENT = 22;
    public static final int POWER_SUPPLY_HW_ELEMENT__SUPPORTS_SAFETY = 23;
    public static final int POWER_SUPPLY_HW_ELEMENT__SUPPORTS_SECURITY = 24;
    public static final int POWER_SUPPLY_HW_ELEMENT__CAN_BE_DISABLED = 25;
    public static final int POWER_SUPPLY_HW_ELEMENT__BACKUP_CAPACITY = 26;
    public static final int POWER_SUPPLY_HW_ELEMENT__DEFAULT_VOLTAGE_ON_RESET = 27;
    public static final int POWER_SUPPLY_HW_ELEMENT__MAX_VOLTAGE = 28;
    public static final int POWER_SUPPLY_HW_ELEMENT__MIN_VOLTAGE = 29;
    public static final int POWER_SUPPLY_HW_ELEMENT__NOTIFICATION_OVER_TEMPERATURE = 30;
    public static final int POWER_SUPPLY_HW_ELEMENT__NOTIFICATION_RESET = 31;
    public static final int POWER_SUPPLY_HW_ELEMENT__OVER_CURRENT_NOTIFICATION = 32;
    public static final int POWER_SUPPLY_HW_ELEMENT__OVER_VOLTAGE_NOTIFICATION = 33;
    public static final int POWER_SUPPLY_HW_ELEMENT__RESET_DELAY = 34;
    public static final int POWER_SUPPLY_HW_ELEMENT__RESET_ON_FAULT_BEHAVIOUR = 35;
    public static final int POWER_SUPPLY_HW_ELEMENT__UNDER_VOLTAGE_NOTIFICATION = 36;
    public static final int POWER_SUPPLY_HW_ELEMENT__WAKEUP_CAPABILITY = 37;
    public static final int POWER_SUPPLY_HW_ELEMENT_FEATURE_COUNT = 38;
    public static final int POWER_SUPPLY_VOLTAGE_NOTIFICATION = 11;
    public static final int POWER_SUPPLY_VOLTAGE_NOTIFICATION__GCHECKSUM = 0;
    public static final int POWER_SUPPLY_VOLTAGE_NOTIFICATION__GTIMESTAMP = 1;
    public static final int POWER_SUPPLY_VOLTAGE_NOTIFICATION__CHECKSUM = 2;
    public static final int POWER_SUPPLY_VOLTAGE_NOTIFICATION__TIMESTAMP = 3;
    public static final int POWER_SUPPLY_VOLTAGE_NOTIFICATION__HYSTERESES = 4;
    public static final int POWER_SUPPLY_VOLTAGE_NOTIFICATION__INTERRUPTS = 5;
    public static final int POWER_SUPPLY_VOLTAGE_NOTIFICATION__LEVEL = 6;
    public static final int POWER_SUPPLY_VOLTAGE_NOTIFICATION_FEATURE_COUNT = 7;
    public static final int POWER_SUPPLY_HW_PORT = 12;
    public static final int POWER_SUPPLY_HW_PORT__GCHECKSUM = 0;
    public static final int POWER_SUPPLY_HW_PORT__GTIMESTAMP = 1;
    public static final int POWER_SUPPLY_HW_PORT__CHECKSUM = 2;
    public static final int POWER_SUPPLY_HW_PORT__TIMESTAMP = 3;
    public static final int POWER_SUPPLY_HW_PORT__GSHORT_NAME = 4;
    public static final int POWER_SUPPLY_HW_PORT__GUUID = 5;
    public static final int POWER_SUPPLY_HW_PORT__GCATEGORY = 6;
    public static final int POWER_SUPPLY_HW_PORT__GDESC = 7;
    public static final int POWER_SUPPLY_HW_PORT__SHORT_NAME = 8;
    public static final int POWER_SUPPLY_HW_PORT__LONG_NAME = 9;
    public static final int POWER_SUPPLY_HW_PORT__DESC = 10;
    public static final int POWER_SUPPLY_HW_PORT__CATEGORY = 11;
    public static final int POWER_SUPPLY_HW_PORT__ADMIN_DATA = 12;
    public static final int POWER_SUPPLY_HW_PORT__UUID = 13;
    public static final int POWER_SUPPLY_HW_PORT__ALL_EXTENSIONS = 14;
    public static final int POWER_SUPPLY_HW_PORT__CONTAINED_EXTENSIONS = 15;
    public static final int POWER_SUPPLY_HW_PORT__HW_ELEMENT = 16;
    public static final int POWER_SUPPLY_HW_PORT__DIRECTION = 17;
    public static final int POWER_SUPPLY_HW_PORT__PINS = 18;
    public static final int POWER_SUPPLY_HW_PORT__CAN_BE_SWITCHED_OFF = 19;
    public static final int POWER_SUPPLY_HW_PORT__SUPPLIED = 20;
    public static final int POWER_SUPPLY_HW_PORT_FEATURE_COUNT = 21;
    public static final int OSCILLATOR = 13;
    public static final int OSCILLATOR__GCHECKSUM = 0;
    public static final int OSCILLATOR__GTIMESTAMP = 1;
    public static final int OSCILLATOR__CHECKSUM = 2;
    public static final int OSCILLATOR__TIMESTAMP = 3;
    public static final int OSCILLATOR__GSHORT_NAME = 4;
    public static final int OSCILLATOR__GUUID = 5;
    public static final int OSCILLATOR__GCATEGORY = 6;
    public static final int OSCILLATOR__GDESC = 7;
    public static final int OSCILLATOR__SHORT_NAME = 8;
    public static final int OSCILLATOR__LONG_NAME = 9;
    public static final int OSCILLATOR__DESC = 10;
    public static final int OSCILLATOR__CATEGORY = 11;
    public static final int OSCILLATOR__ADMIN_DATA = 12;
    public static final int OSCILLATOR__UUID = 13;
    public static final int OSCILLATOR__ALL_EXTENSIONS = 14;
    public static final int OSCILLATOR__CONTAINED_EXTENSIONS = 15;
    public static final int OSCILLATOR__GAR_PACKAGE = 16;
    public static final int OSCILLATOR__AR_PACKAGE = 17;
    public static final int OSCILLATOR__HW_ELEMENT_CONTAINER = 18;
    public static final int OSCILLATOR__HW_ELEMENT_TEMPERATURE = 19;
    public static final int OSCILLATOR__PORTS = 20;
    public static final int OSCILLATOR__SIGNAL_TRANSFORMATIONS = 21;
    public static final int OSCILLATOR__STANDBY_CURRENT = 22;
    public static final int OSCILLATOR__SUPPORTS_SAFETY = 23;
    public static final int OSCILLATOR__SUPPORTS_SECURITY = 24;
    public static final int OSCILLATOR__CAN_BE_DISABLED = 25;
    public static final int OSCILLATOR__OSCILLATOR = 26;
    public static final int OSCILLATOR__ADJUSTIBLE = 27;
    public static final int OSCILLATOR__BACKUP_OSCILLATOR = 28;
    public static final int OSCILLATOR__OSCILLATOR_FREQUENCY_RANGE = 29;
    public static final int OSCILLATOR__OSCILLATOR_JITTER = 30;
    public static final int OSCILLATOR__OSCILLATOR_MODE = 31;
    public static final int OSCILLATOR__OSCILLATOR_STARTUP_TIME = 32;
    public static final int OSCILLATOR__OSCILLATOR_TOLERANCE = 33;
    public static final int OSCILLATOR_FEATURE_COUNT = 34;
    public static final int CLOCK_TYPE_ENUM = 14;
    public static final int COMMUNICATION_TRANSCEIVER_ARCHITECTURE_ENUM = 15;
    public static final int POWER_DRIVER_HW_ELEMENT_RESET_ON_FAULT_BEHAVIOUR_ENUM = 16;
    public static final int POWER_DRIVER_HW_ELEMENT_DEFAULT_RESET_BEHAVIUOR_ENUM = 17;
    public static final int POWER_DRIVER_HW_ELEMENT_POWER_DRIVER_TYPE_ENUM = 18;
    public static final int POWER_SUPPLY_HW_ELEMENT_RESET_ON_FAULT_BEHAVIOUR_ENUM = 19;
    public static final int OSCILLATOR_OSCILLATOR_MODE_ENUM = 20;

    public EClass getBusTermination();

    public EReference getBusTermination_CommunicationTransceiver();

    public EAttribute getBusTermination_ActiveSwitchable();

    public EAttribute getBusTermination_Choke();

    public EAttribute getBusTermination_EmcFilter();

    public EAttribute getBusTermination_Split();

    public EAttribute getBusTermination_Value();

    public EClass getClock();

    public EReference getClock_ProcessingUnit();

    public EAttribute getClock_Adjustable();

    public EAttribute getClock_ClockJitter();

    public EAttribute getClock_ClockStartupTime();

    public EAttribute getClock_ClockTolerance();

    public EReference getClock_Frequency();

    public EReference getClock_Oscillators();

    public EAttribute getClock_Type();

    public EClass getECUElectronics();

    public EAttribute getECUElectronics_CanBeDisabled();

    public EClass getCommunicationTransceiver();

    public EReference getCommunicationTransceiver_AcceptanceFilter();

    public EAttribute getCommunicationTransceiver_Architecture();

    public EReference getCommunicationTransceiver_RejectionFilter();

    public EReference getCommunicationTransceiver_Termination();

    public EClass getDiscreteECUElectronics();

    public EClass getPowerDriverHWElement();

    public EAttribute getPowerDriverHWElement_CurrentLimitation();

    public EAttribute getPowerDriverHWElement_DefaultResetBehaviuor();

    public EReference getPowerDriverHWElement_Notification();

    public EAttribute getPowerDriverHWElement_OnStateResistance();

    public EAttribute getPowerDriverHWElement_PowerDriverType();

    public EReference getPowerDriverHWElement_Protection();

    public EAttribute getPowerDriverHWElement_ResetOnFaultBehaviour();

    public EClass getPowerDriverProtection();

    public EReference getPowerDriverProtection_PowerDriverHWElement();

    public EAttribute getPowerDriverProtection_LossOfGroundProtection();

    public EAttribute getPowerDriverProtection_MaxCurrentProtection();

    public EAttribute getPowerDriverProtection_MaxVoltageProtection();

    public EAttribute getPowerDriverProtection_MinCurrentProtection();

    public EAttribute getPowerDriverProtection_MinVoltageProtection();

    public EAttribute getPowerDriverProtection_OverTemperatureProtection();

    public EAttribute getPowerDriverProtection_ReverseBatteryProtection();

    public EClass getPowerDriverNotification();

    public EReference getPowerDriverNotification_PowerDriverHWElement();

    public EReference getPowerDriverNotification_IssuedInterruptSource();

    public EAttribute getPowerDriverNotification_LossOfGround();

    public EAttribute getPowerDriverNotification_MaxCurrent();

    public EAttribute getPowerDriverNotification_MaxVoltage();

    public EAttribute getPowerDriverNotification_MinCurrent();

    public EAttribute getPowerDriverNotification_MinVoltage();

    public EAttribute getPowerDriverNotification_OpenLoad();

    public EAttribute getPowerDriverNotification_OverTemperature();

    public EAttribute getPowerDriverNotification_ShortLoad();

    public EAttribute getPowerDriverNotification_ShortToBatt();

    public EAttribute getPowerDriverNotification_ShortToGround();

    public EClass getPowerDriverHWPort();

    public EAttribute getPowerDriverHWPort_PwmMaxFrequency();

    public EAttribute getPowerDriverHWPort_PwmMinOffTime();

    public EAttribute getPowerDriverHWPort_PwmMinOnTime();

    public EClass getPowerSupplyCurrentNotification();

    public EReference getPowerSupplyCurrentNotification_PowerSupplyHWElement();

    public EAttribute getPowerSupplyCurrentNotification_Hysteresis();

    public EReference getPowerSupplyCurrentNotification_Interrupts();

    public EAttribute getPowerSupplyCurrentNotification_Level();

    public EClass getPowerSupplyHWElement();

    public EAttribute getPowerSupplyHWElement_BackupCapacity();

    public EAttribute getPowerSupplyHWElement_DefaultVoltageOnReset();

    public EAttribute getPowerSupplyHWElement_MaxVoltage();

    public EAttribute getPowerSupplyHWElement_MinVoltage();

    public EAttribute getPowerSupplyHWElement_NotificationOverTemperature();

    public EAttribute getPowerSupplyHWElement_NotificationReset();

    public EReference getPowerSupplyHWElement_OverCurrentNotification();

    public EReference getPowerSupplyHWElement_OverVoltageNotification();

    public EAttribute getPowerSupplyHWElement_ResetDelay();

    public EAttribute getPowerSupplyHWElement_ResetOnFaultBehaviour();

    public EReference getPowerSupplyHWElement_UnderVoltageNotification();

    public EAttribute getPowerSupplyHWElement_WakeupCapability();

    public EClass getPowerSupplyVoltageNotification();

    public EAttribute getPowerSupplyVoltageNotification_Hystereses();

    public EReference getPowerSupplyVoltageNotification_Interrupts();

    public EAttribute getPowerSupplyVoltageNotification_Level();

    public EClass getPowerSupplyHWPort();

    public EAttribute getPowerSupplyHWPort_CanBeSwitchedOff();

    public EReference getPowerSupplyHWPort_Supplied();

    public EClass getOscillator();

    public EReference getOscillator_Oscillator();

    public EAttribute getOscillator_Adjustible();

    public EReference getOscillator_BackupOscillator();

    public EReference getOscillator_OscillatorFrequencyRange();

    public EAttribute getOscillator_OscillatorJitter();

    public EAttribute getOscillator_OscillatorMode();

    public EAttribute getOscillator_OscillatorStartupTime();

    public EAttribute getOscillator_OscillatorTolerance();

    public EEnum getClockTypeEnum();

    public EEnum getCommunicationTransceiverArchitectureEnum();

    public EEnum getPowerDriverHWElementResetOnFaultBehaviourEnum();

    public EEnum getPowerDriverHWElementDefaultResetBehaviuorEnum();

    public EEnum getPowerDriverHWElementPowerDriverTypeEnum();

    public EEnum getPowerSupplyHWElementResetOnFaultBehaviourEnum();

    public EEnum getOscillatorOscillatorModeEnum();

    public EcuelectronicsFactory getEcuelectronicsFactory();

    public static interface Literals {
        public static final EClass BUS_TERMINATION = eINSTANCE.getBusTermination();
        public static final EReference BUS_TERMINATION__COMMUNICATION_TRANSCEIVER = eINSTANCE.getBusTermination_CommunicationTransceiver();
        public static final EAttribute BUS_TERMINATION__ACTIVE_SWITCHABLE = eINSTANCE.getBusTermination_ActiveSwitchable();
        public static final EAttribute BUS_TERMINATION__CHOKE = eINSTANCE.getBusTermination_Choke();
        public static final EAttribute BUS_TERMINATION__EMC_FILTER = eINSTANCE.getBusTermination_EmcFilter();
        public static final EAttribute BUS_TERMINATION__SPLIT = eINSTANCE.getBusTermination_Split();
        public static final EAttribute BUS_TERMINATION__VALUE = eINSTANCE.getBusTermination_Value();
        public static final EClass CLOCK = eINSTANCE.getClock();
        public static final EReference CLOCK__PROCESSING_UNIT = eINSTANCE.getClock_ProcessingUnit();
        public static final EAttribute CLOCK__ADJUSTABLE = eINSTANCE.getClock_Adjustable();
        public static final EAttribute CLOCK__CLOCK_JITTER = eINSTANCE.getClock_ClockJitter();
        public static final EAttribute CLOCK__CLOCK_STARTUP_TIME = eINSTANCE.getClock_ClockStartupTime();
        public static final EAttribute CLOCK__CLOCK_TOLERANCE = eINSTANCE.getClock_ClockTolerance();
        public static final EReference CLOCK__FREQUENCY = eINSTANCE.getClock_Frequency();
        public static final EReference CLOCK__OSCILLATORS = eINSTANCE.getClock_Oscillators();
        public static final EAttribute CLOCK__TYPE = eINSTANCE.getClock_Type();
        public static final EClass ECU_ELECTRONICS = eINSTANCE.getECUElectronics();
        public static final EAttribute ECU_ELECTRONICS__CAN_BE_DISABLED = eINSTANCE.getECUElectronics_CanBeDisabled();
        public static final EClass COMMUNICATION_TRANSCEIVER = eINSTANCE.getCommunicationTransceiver();
        public static final EReference COMMUNICATION_TRANSCEIVER__ACCEPTANCE_FILTER = eINSTANCE.getCommunicationTransceiver_AcceptanceFilter();
        public static final EAttribute COMMUNICATION_TRANSCEIVER__ARCHITECTURE = eINSTANCE.getCommunicationTransceiver_Architecture();
        public static final EReference COMMUNICATION_TRANSCEIVER__REJECTION_FILTER = eINSTANCE.getCommunicationTransceiver_RejectionFilter();
        public static final EReference COMMUNICATION_TRANSCEIVER__TERMINATION = eINSTANCE.getCommunicationTransceiver_Termination();
        public static final EClass DISCRETE_ECU_ELECTRONICS = eINSTANCE.getDiscreteECUElectronics();
        public static final EClass POWER_DRIVER_HW_ELEMENT = eINSTANCE.getPowerDriverHWElement();
        public static final EAttribute POWER_DRIVER_HW_ELEMENT__CURRENT_LIMITATION = eINSTANCE.getPowerDriverHWElement_CurrentLimitation();
        public static final EAttribute POWER_DRIVER_HW_ELEMENT__DEFAULT_RESET_BEHAVIUOR = eINSTANCE.getPowerDriverHWElement_DefaultResetBehaviuor();
        public static final EReference POWER_DRIVER_HW_ELEMENT__NOTIFICATION = eINSTANCE.getPowerDriverHWElement_Notification();
        public static final EAttribute POWER_DRIVER_HW_ELEMENT__ON_STATE_RESISTANCE = eINSTANCE.getPowerDriverHWElement_OnStateResistance();
        public static final EAttribute POWER_DRIVER_HW_ELEMENT__POWER_DRIVER_TYPE = eINSTANCE.getPowerDriverHWElement_PowerDriverType();
        public static final EReference POWER_DRIVER_HW_ELEMENT__PROTECTION = eINSTANCE.getPowerDriverHWElement_Protection();
        public static final EAttribute POWER_DRIVER_HW_ELEMENT__RESET_ON_FAULT_BEHAVIOUR = eINSTANCE.getPowerDriverHWElement_ResetOnFaultBehaviour();
        public static final EClass POWER_DRIVER_PROTECTION = eINSTANCE.getPowerDriverProtection();
        public static final EReference POWER_DRIVER_PROTECTION__POWER_DRIVER_HW_ELEMENT = eINSTANCE.getPowerDriverProtection_PowerDriverHWElement();
        public static final EAttribute POWER_DRIVER_PROTECTION__LOSS_OF_GROUND_PROTECTION = eINSTANCE.getPowerDriverProtection_LossOfGroundProtection();
        public static final EAttribute POWER_DRIVER_PROTECTION__MAX_CURRENT_PROTECTION = eINSTANCE.getPowerDriverProtection_MaxCurrentProtection();
        public static final EAttribute POWER_DRIVER_PROTECTION__MAX_VOLTAGE_PROTECTION = eINSTANCE.getPowerDriverProtection_MaxVoltageProtection();
        public static final EAttribute POWER_DRIVER_PROTECTION__MIN_CURRENT_PROTECTION = eINSTANCE.getPowerDriverProtection_MinCurrentProtection();
        public static final EAttribute POWER_DRIVER_PROTECTION__MIN_VOLTAGE_PROTECTION = eINSTANCE.getPowerDriverProtection_MinVoltageProtection();
        public static final EAttribute POWER_DRIVER_PROTECTION__OVER_TEMPERATURE_PROTECTION = eINSTANCE.getPowerDriverProtection_OverTemperatureProtection();
        public static final EAttribute POWER_DRIVER_PROTECTION__REVERSE_BATTERY_PROTECTION = eINSTANCE.getPowerDriverProtection_ReverseBatteryProtection();
        public static final EClass POWER_DRIVER_NOTIFICATION = eINSTANCE.getPowerDriverNotification();
        public static final EReference POWER_DRIVER_NOTIFICATION__POWER_DRIVER_HW_ELEMENT = eINSTANCE.getPowerDriverNotification_PowerDriverHWElement();
        public static final EReference POWER_DRIVER_NOTIFICATION__ISSUED_INTERRUPT_SOURCE = eINSTANCE.getPowerDriverNotification_IssuedInterruptSource();
        public static final EAttribute POWER_DRIVER_NOTIFICATION__LOSS_OF_GROUND = eINSTANCE.getPowerDriverNotification_LossOfGround();
        public static final EAttribute POWER_DRIVER_NOTIFICATION__MAX_CURRENT = eINSTANCE.getPowerDriverNotification_MaxCurrent();
        public static final EAttribute POWER_DRIVER_NOTIFICATION__MAX_VOLTAGE = eINSTANCE.getPowerDriverNotification_MaxVoltage();
        public static final EAttribute POWER_DRIVER_NOTIFICATION__MIN_CURRENT = eINSTANCE.getPowerDriverNotification_MinCurrent();
        public static final EAttribute POWER_DRIVER_NOTIFICATION__MIN_VOLTAGE = eINSTANCE.getPowerDriverNotification_MinVoltage();
        public static final EAttribute POWER_DRIVER_NOTIFICATION__OPEN_LOAD = eINSTANCE.getPowerDriverNotification_OpenLoad();
        public static final EAttribute POWER_DRIVER_NOTIFICATION__OVER_TEMPERATURE = eINSTANCE.getPowerDriverNotification_OverTemperature();
        public static final EAttribute POWER_DRIVER_NOTIFICATION__SHORT_LOAD = eINSTANCE.getPowerDriverNotification_ShortLoad();
        public static final EAttribute POWER_DRIVER_NOTIFICATION__SHORT_TO_BATT = eINSTANCE.getPowerDriverNotification_ShortToBatt();
        public static final EAttribute POWER_DRIVER_NOTIFICATION__SHORT_TO_GROUND = eINSTANCE.getPowerDriverNotification_ShortToGround();
        public static final EClass POWER_DRIVER_HW_PORT = eINSTANCE.getPowerDriverHWPort();
        public static final EAttribute POWER_DRIVER_HW_PORT__PWM_MAX_FREQUENCY = eINSTANCE.getPowerDriverHWPort_PwmMaxFrequency();
        public static final EAttribute POWER_DRIVER_HW_PORT__PWM_MIN_OFF_TIME = eINSTANCE.getPowerDriverHWPort_PwmMinOffTime();
        public static final EAttribute POWER_DRIVER_HW_PORT__PWM_MIN_ON_TIME = eINSTANCE.getPowerDriverHWPort_PwmMinOnTime();
        public static final EClass POWER_SUPPLY_CURRENT_NOTIFICATION = eINSTANCE.getPowerSupplyCurrentNotification();
        public static final EReference POWER_SUPPLY_CURRENT_NOTIFICATION__POWER_SUPPLY_HW_ELEMENT = eINSTANCE.getPowerSupplyCurrentNotification_PowerSupplyHWElement();
        public static final EAttribute POWER_SUPPLY_CURRENT_NOTIFICATION__HYSTERESIS = eINSTANCE.getPowerSupplyCurrentNotification_Hysteresis();
        public static final EReference POWER_SUPPLY_CURRENT_NOTIFICATION__INTERRUPTS = eINSTANCE.getPowerSupplyCurrentNotification_Interrupts();
        public static final EAttribute POWER_SUPPLY_CURRENT_NOTIFICATION__LEVEL = eINSTANCE.getPowerSupplyCurrentNotification_Level();
        public static final EClass POWER_SUPPLY_HW_ELEMENT = eINSTANCE.getPowerSupplyHWElement();
        public static final EAttribute POWER_SUPPLY_HW_ELEMENT__BACKUP_CAPACITY = eINSTANCE.getPowerSupplyHWElement_BackupCapacity();
        public static final EAttribute POWER_SUPPLY_HW_ELEMENT__DEFAULT_VOLTAGE_ON_RESET = eINSTANCE.getPowerSupplyHWElement_DefaultVoltageOnReset();
        public static final EAttribute POWER_SUPPLY_HW_ELEMENT__MAX_VOLTAGE = eINSTANCE.getPowerSupplyHWElement_MaxVoltage();
        public static final EAttribute POWER_SUPPLY_HW_ELEMENT__MIN_VOLTAGE = eINSTANCE.getPowerSupplyHWElement_MinVoltage();
        public static final EAttribute POWER_SUPPLY_HW_ELEMENT__NOTIFICATION_OVER_TEMPERATURE = eINSTANCE.getPowerSupplyHWElement_NotificationOverTemperature();
        public static final EAttribute POWER_SUPPLY_HW_ELEMENT__NOTIFICATION_RESET = eINSTANCE.getPowerSupplyHWElement_NotificationReset();
        public static final EReference POWER_SUPPLY_HW_ELEMENT__OVER_CURRENT_NOTIFICATION = eINSTANCE.getPowerSupplyHWElement_OverCurrentNotification();
        public static final EReference POWER_SUPPLY_HW_ELEMENT__OVER_VOLTAGE_NOTIFICATION = eINSTANCE.getPowerSupplyHWElement_OverVoltageNotification();
        public static final EAttribute POWER_SUPPLY_HW_ELEMENT__RESET_DELAY = eINSTANCE.getPowerSupplyHWElement_ResetDelay();
        public static final EAttribute POWER_SUPPLY_HW_ELEMENT__RESET_ON_FAULT_BEHAVIOUR = eINSTANCE.getPowerSupplyHWElement_ResetOnFaultBehaviour();
        public static final EReference POWER_SUPPLY_HW_ELEMENT__UNDER_VOLTAGE_NOTIFICATION = eINSTANCE.getPowerSupplyHWElement_UnderVoltageNotification();
        public static final EAttribute POWER_SUPPLY_HW_ELEMENT__WAKEUP_CAPABILITY = eINSTANCE.getPowerSupplyHWElement_WakeupCapability();
        public static final EClass POWER_SUPPLY_VOLTAGE_NOTIFICATION = eINSTANCE.getPowerSupplyVoltageNotification();
        public static final EAttribute POWER_SUPPLY_VOLTAGE_NOTIFICATION__HYSTERESES = eINSTANCE.getPowerSupplyVoltageNotification_Hystereses();
        public static final EReference POWER_SUPPLY_VOLTAGE_NOTIFICATION__INTERRUPTS = eINSTANCE.getPowerSupplyVoltageNotification_Interrupts();
        public static final EAttribute POWER_SUPPLY_VOLTAGE_NOTIFICATION__LEVEL = eINSTANCE.getPowerSupplyVoltageNotification_Level();
        public static final EClass POWER_SUPPLY_HW_PORT = eINSTANCE.getPowerSupplyHWPort();
        public static final EAttribute POWER_SUPPLY_HW_PORT__CAN_BE_SWITCHED_OFF = eINSTANCE.getPowerSupplyHWPort_CanBeSwitchedOff();
        public static final EReference POWER_SUPPLY_HW_PORT__SUPPLIED = eINSTANCE.getPowerSupplyHWPort_Supplied();
        public static final EClass OSCILLATOR = eINSTANCE.getOscillator();
        public static final EReference OSCILLATOR__OSCILLATOR = eINSTANCE.getOscillator_Oscillator();
        public static final EAttribute OSCILLATOR__ADJUSTIBLE = eINSTANCE.getOscillator_Adjustible();
        public static final EReference OSCILLATOR__BACKUP_OSCILLATOR = eINSTANCE.getOscillator_BackupOscillator();
        public static final EReference OSCILLATOR__OSCILLATOR_FREQUENCY_RANGE = eINSTANCE.getOscillator_OscillatorFrequencyRange();
        public static final EAttribute OSCILLATOR__OSCILLATOR_JITTER = eINSTANCE.getOscillator_OscillatorJitter();
        public static final EAttribute OSCILLATOR__OSCILLATOR_MODE = eINSTANCE.getOscillator_OscillatorMode();
        public static final EAttribute OSCILLATOR__OSCILLATOR_STARTUP_TIME = eINSTANCE.getOscillator_OscillatorStartupTime();
        public static final EAttribute OSCILLATOR__OSCILLATOR_TOLERANCE = eINSTANCE.getOscillator_OscillatorTolerance();
        public static final EEnum CLOCK_TYPE_ENUM = eINSTANCE.getClockTypeEnum();
        public static final EEnum COMMUNICATION_TRANSCEIVER_ARCHITECTURE_ENUM = eINSTANCE.getCommunicationTransceiverArchitectureEnum();
        public static final EEnum POWER_DRIVER_HW_ELEMENT_RESET_ON_FAULT_BEHAVIOUR_ENUM = eINSTANCE.getPowerDriverHWElementResetOnFaultBehaviourEnum();
        public static final EEnum POWER_DRIVER_HW_ELEMENT_DEFAULT_RESET_BEHAVIUOR_ENUM = eINSTANCE.getPowerDriverHWElementDefaultResetBehaviuorEnum();
        public static final EEnum POWER_DRIVER_HW_ELEMENT_POWER_DRIVER_TYPE_ENUM = eINSTANCE.getPowerDriverHWElementPowerDriverTypeEnum();
        public static final EEnum POWER_SUPPLY_HW_ELEMENT_RESET_ON_FAULT_BEHAVIOUR_ENUM = eINSTANCE.getPowerSupplyHWElementResetOnFaultBehaviourEnum();
        public static final EEnum OSCILLATOR_OSCILLATOR_MODE_ENUM = eINSTANCE.getOscillatorOscillatorModeEnum();
    }
}

