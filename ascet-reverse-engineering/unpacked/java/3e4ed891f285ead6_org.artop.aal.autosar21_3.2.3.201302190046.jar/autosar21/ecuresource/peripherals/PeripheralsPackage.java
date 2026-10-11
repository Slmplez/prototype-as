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
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.PeripheralsFactory;
import autosar21.ecuresource.peripherals.impl.PeripheralsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PeripheralsPackage
extends EPackage {
    public static final String eNAME = "peripherals";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/ecur/p";
    public static final String eNS_PREFIX = "";
    public static final PeripheralsPackage eINSTANCE = PeripheralsPackageImpl.init();
    public static final int BUFFER = 0;
    public static final int BUFFER__GCHECKSUM = 0;
    public static final int BUFFER__GTIMESTAMP = 1;
    public static final int BUFFER__CHECKSUM = 2;
    public static final int BUFFER__TIMESTAMP = 3;
    public static final int BUFFER__PERIPHERAL_HW_PORT = 4;
    public static final int BUFFER__NUMBER = 5;
    public static final int BUFFER__SIZE = 6;
    public static final int BUFFER__TYPE = 7;
    public static final int BUFFER_FEATURE_COUNT = 8;
    public static final int PERIPHERAL = 3;
    public static final int PERIPHERAL__GCHECKSUM = 0;
    public static final int PERIPHERAL__GTIMESTAMP = 1;
    public static final int PERIPHERAL__CHECKSUM = 2;
    public static final int PERIPHERAL__TIMESTAMP = 3;
    public static final int PERIPHERAL__GSHORT_NAME = 4;
    public static final int PERIPHERAL__GUUID = 5;
    public static final int PERIPHERAL__GCATEGORY = 6;
    public static final int PERIPHERAL__GDESC = 7;
    public static final int PERIPHERAL__SHORT_NAME = 8;
    public static final int PERIPHERAL__LONG_NAME = 9;
    public static final int PERIPHERAL__DESC = 10;
    public static final int PERIPHERAL__CATEGORY = 11;
    public static final int PERIPHERAL__ADMIN_DATA = 12;
    public static final int PERIPHERAL__UUID = 13;
    public static final int PERIPHERAL__ALL_EXTENSIONS = 14;
    public static final int PERIPHERAL__CONTAINED_EXTENSIONS = 15;
    public static final int PERIPHERAL__GAR_PACKAGE = 16;
    public static final int PERIPHERAL__AR_PACKAGE = 17;
    public static final int PERIPHERAL__HW_ELEMENT_CONTAINER = 18;
    public static final int PERIPHERAL__HW_ELEMENT_TEMPERATURE = 19;
    public static final int PERIPHERAL__PORTS = 20;
    public static final int PERIPHERAL__SIGNAL_TRANSFORMATIONS = 21;
    public static final int PERIPHERAL__STANDBY_CURRENT = 22;
    public static final int PERIPHERAL__SUPPORTS_SAFETY = 23;
    public static final int PERIPHERAL__SUPPORTS_SECURITY = 24;
    public static final int PERIPHERAL__CAN_BE_DISABLED = 25;
    public static final int PERIPHERAL_FEATURE_COUNT = 26;
    public static final int GENERAL_PURPOSE_TIMER = 2;
    public static final int GENERAL_PURPOSE_TIMER__GCHECKSUM = 0;
    public static final int GENERAL_PURPOSE_TIMER__GTIMESTAMP = 1;
    public static final int GENERAL_PURPOSE_TIMER__CHECKSUM = 2;
    public static final int GENERAL_PURPOSE_TIMER__TIMESTAMP = 3;
    public static final int GENERAL_PURPOSE_TIMER__GSHORT_NAME = 4;
    public static final int GENERAL_PURPOSE_TIMER__GUUID = 5;
    public static final int GENERAL_PURPOSE_TIMER__GCATEGORY = 6;
    public static final int GENERAL_PURPOSE_TIMER__GDESC = 7;
    public static final int GENERAL_PURPOSE_TIMER__SHORT_NAME = 8;
    public static final int GENERAL_PURPOSE_TIMER__LONG_NAME = 9;
    public static final int GENERAL_PURPOSE_TIMER__DESC = 10;
    public static final int GENERAL_PURPOSE_TIMER__CATEGORY = 11;
    public static final int GENERAL_PURPOSE_TIMER__ADMIN_DATA = 12;
    public static final int GENERAL_PURPOSE_TIMER__UUID = 13;
    public static final int GENERAL_PURPOSE_TIMER__ALL_EXTENSIONS = 14;
    public static final int GENERAL_PURPOSE_TIMER__CONTAINED_EXTENSIONS = 15;
    public static final int GENERAL_PURPOSE_TIMER__GAR_PACKAGE = 16;
    public static final int GENERAL_PURPOSE_TIMER__AR_PACKAGE = 17;
    public static final int GENERAL_PURPOSE_TIMER__HW_ELEMENT_CONTAINER = 18;
    public static final int GENERAL_PURPOSE_TIMER__HW_ELEMENT_TEMPERATURE = 19;
    public static final int GENERAL_PURPOSE_TIMER__PORTS = 20;
    public static final int GENERAL_PURPOSE_TIMER__SIGNAL_TRANSFORMATIONS = 21;
    public static final int GENERAL_PURPOSE_TIMER__STANDBY_CURRENT = 22;
    public static final int GENERAL_PURPOSE_TIMER__SUPPORTS_SAFETY = 23;
    public static final int GENERAL_PURPOSE_TIMER__SUPPORTS_SECURITY = 24;
    public static final int GENERAL_PURPOSE_TIMER__CAN_BE_DISABLED = 25;
    public static final int GENERAL_PURPOSE_TIMER__CLOCK_SOURCE = 26;
    public static final int GENERAL_PURPOSE_TIMER__PHASE_DETECTION = 27;
    public static final int GENERAL_PURPOSE_TIMER__RESOLUTION = 28;
    public static final int GENERAL_PURPOSE_TIMER__THRESHOLD_VALUES = 29;
    public static final int GENERAL_PURPOSE_TIMER_FEATURE_COUNT = 30;
    public static final int CCU = 1;
    public static final int CCU__GCHECKSUM = 0;
    public static final int CCU__GTIMESTAMP = 1;
    public static final int CCU__CHECKSUM = 2;
    public static final int CCU__TIMESTAMP = 3;
    public static final int CCU__GSHORT_NAME = 4;
    public static final int CCU__GUUID = 5;
    public static final int CCU__GCATEGORY = 6;
    public static final int CCU__GDESC = 7;
    public static final int CCU__SHORT_NAME = 8;
    public static final int CCU__LONG_NAME = 9;
    public static final int CCU__DESC = 10;
    public static final int CCU__CATEGORY = 11;
    public static final int CCU__ADMIN_DATA = 12;
    public static final int CCU__UUID = 13;
    public static final int CCU__ALL_EXTENSIONS = 14;
    public static final int CCU__CONTAINED_EXTENSIONS = 15;
    public static final int CCU__GAR_PACKAGE = 16;
    public static final int CCU__AR_PACKAGE = 17;
    public static final int CCU__HW_ELEMENT_CONTAINER = 18;
    public static final int CCU__HW_ELEMENT_TEMPERATURE = 19;
    public static final int CCU__PORTS = 20;
    public static final int CCU__SIGNAL_TRANSFORMATIONS = 21;
    public static final int CCU__STANDBY_CURRENT = 22;
    public static final int CCU__SUPPORTS_SAFETY = 23;
    public static final int CCU__SUPPORTS_SECURITY = 24;
    public static final int CCU__CAN_BE_DISABLED = 25;
    public static final int CCU__CLOCK_SOURCE = 26;
    public static final int CCU__PHASE_DETECTION = 27;
    public static final int CCU__RESOLUTION = 28;
    public static final int CCU__THRESHOLD_VALUES = 29;
    public static final int CCU__MODE = 30;
    public static final int CCU_FEATURE_COUNT = 31;
    public static final int COMMUNICATION_FILTER = 4;
    public static final int COMMUNICATION_FILTER__GCHECKSUM = 0;
    public static final int COMMUNICATION_FILTER__GTIMESTAMP = 1;
    public static final int COMMUNICATION_FILTER__CHECKSUM = 2;
    public static final int COMMUNICATION_FILTER__TIMESTAMP = 3;
    public static final int COMMUNICATION_FILTER__FILTER_COUNT = 4;
    public static final int COMMUNICATION_FILTER__FILTER_WIDTH = 5;
    public static final int COMMUNICATION_FILTER__WILD_CARDS = 6;
    public static final int COMMUNICATION_FILTER_FEATURE_COUNT = 7;
    public static final int PERIPHERAL_HW_PORT = 6;
    public static final int PERIPHERAL_HW_PORT__GCHECKSUM = 0;
    public static final int PERIPHERAL_HW_PORT__GTIMESTAMP = 1;
    public static final int PERIPHERAL_HW_PORT__CHECKSUM = 2;
    public static final int PERIPHERAL_HW_PORT__TIMESTAMP = 3;
    public static final int PERIPHERAL_HW_PORT__GSHORT_NAME = 4;
    public static final int PERIPHERAL_HW_PORT__GUUID = 5;
    public static final int PERIPHERAL_HW_PORT__GCATEGORY = 6;
    public static final int PERIPHERAL_HW_PORT__GDESC = 7;
    public static final int PERIPHERAL_HW_PORT__SHORT_NAME = 8;
    public static final int PERIPHERAL_HW_PORT__LONG_NAME = 9;
    public static final int PERIPHERAL_HW_PORT__DESC = 10;
    public static final int PERIPHERAL_HW_PORT__CATEGORY = 11;
    public static final int PERIPHERAL_HW_PORT__ADMIN_DATA = 12;
    public static final int PERIPHERAL_HW_PORT__UUID = 13;
    public static final int PERIPHERAL_HW_PORT__ALL_EXTENSIONS = 14;
    public static final int PERIPHERAL_HW_PORT__CONTAINED_EXTENSIONS = 15;
    public static final int PERIPHERAL_HW_PORT__HW_ELEMENT = 16;
    public static final int PERIPHERAL_HW_PORT__DIRECTION = 17;
    public static final int PERIPHERAL_HW_PORT__PINS = 18;
    public static final int PERIPHERAL_HW_PORT__BUFFERS = 19;
    public static final int PERIPHERAL_HW_PORT__INVERSION = 20;
    public static final int PERIPHERAL_HW_PORT__POWER_ON_CAPABILITY = 21;
    public static final int PERIPHERAL_HW_PORT__WAKE_UP_CAPABILITY = 22;
    public static final int PERIPHERAL_HW_PORT_FEATURE_COUNT = 23;
    public static final int COMMUNICATION_HW_PORT = 5;
    public static final int COMMUNICATION_HW_PORT__GCHECKSUM = 0;
    public static final int COMMUNICATION_HW_PORT__GTIMESTAMP = 1;
    public static final int COMMUNICATION_HW_PORT__CHECKSUM = 2;
    public static final int COMMUNICATION_HW_PORT__TIMESTAMP = 3;
    public static final int COMMUNICATION_HW_PORT__GSHORT_NAME = 4;
    public static final int COMMUNICATION_HW_PORT__GUUID = 5;
    public static final int COMMUNICATION_HW_PORT__GCATEGORY = 6;
    public static final int COMMUNICATION_HW_PORT__GDESC = 7;
    public static final int COMMUNICATION_HW_PORT__SHORT_NAME = 8;
    public static final int COMMUNICATION_HW_PORT__LONG_NAME = 9;
    public static final int COMMUNICATION_HW_PORT__DESC = 10;
    public static final int COMMUNICATION_HW_PORT__CATEGORY = 11;
    public static final int COMMUNICATION_HW_PORT__ADMIN_DATA = 12;
    public static final int COMMUNICATION_HW_PORT__UUID = 13;
    public static final int COMMUNICATION_HW_PORT__ALL_EXTENSIONS = 14;
    public static final int COMMUNICATION_HW_PORT__CONTAINED_EXTENSIONS = 15;
    public static final int COMMUNICATION_HW_PORT__HW_ELEMENT = 16;
    public static final int COMMUNICATION_HW_PORT__DIRECTION = 17;
    public static final int COMMUNICATION_HW_PORT__PINS = 18;
    public static final int COMMUNICATION_HW_PORT__BUFFERS = 19;
    public static final int COMMUNICATION_HW_PORT__INVERSION = 20;
    public static final int COMMUNICATION_HW_PORT__POWER_ON_CAPABILITY = 21;
    public static final int COMMUNICATION_HW_PORT__WAKE_UP_CAPABILITY = 22;
    public static final int COMMUNICATION_HW_PORT__COMMUNICATION_PERIPHERAL = 23;
    public static final int COMMUNICATION_HW_PORT__PHYSICAL_LAYER = 24;
    public static final int COMMUNICATION_HW_PORT__SPEED = 25;
    public static final int COMMUNICATION_HW_PORT_FEATURE_COUNT = 26;
    public static final int COMMUNICATION_SPEED = 7;
    public static final int COMMUNICATION_SPEED__GCHECKSUM = 0;
    public static final int COMMUNICATION_SPEED__GTIMESTAMP = 1;
    public static final int COMMUNICATION_SPEED__CHECKSUM = 2;
    public static final int COMMUNICATION_SPEED__TIMESTAMP = 3;
    public static final int COMMUNICATION_SPEED__COMMUNICATION_HW_PORT = 4;
    public static final int COMMUNICATION_SPEED__TOLERANCE = 5;
    public static final int COMMUNICATION_SPEED_FEATURE_COUNT = 6;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM = 8;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM__GCHECKSUM = 0;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM__GTIMESTAMP = 1;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM__CHECKSUM = 2;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM__TIMESTAMP = 3;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM__COMMUNICATION_HW_PORT = 4;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM__PHYSICAL_MEDIUM_DATA_LINES = 5;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM__PHYSICAL_MEDIUM_STANDARD = 6;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM__PHYSICAL_MEDIUM_TYPE = 7;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM_FEATURE_COUNT = 8;
    public static final int COMMUNICATION_PERIPHERAL = 9;
    public static final int COMMUNICATION_PERIPHERAL__GCHECKSUM = 0;
    public static final int COMMUNICATION_PERIPHERAL__GTIMESTAMP = 1;
    public static final int COMMUNICATION_PERIPHERAL__CHECKSUM = 2;
    public static final int COMMUNICATION_PERIPHERAL__TIMESTAMP = 3;
    public static final int COMMUNICATION_PERIPHERAL__GSHORT_NAME = 4;
    public static final int COMMUNICATION_PERIPHERAL__GUUID = 5;
    public static final int COMMUNICATION_PERIPHERAL__GCATEGORY = 6;
    public static final int COMMUNICATION_PERIPHERAL__GDESC = 7;
    public static final int COMMUNICATION_PERIPHERAL__SHORT_NAME = 8;
    public static final int COMMUNICATION_PERIPHERAL__LONG_NAME = 9;
    public static final int COMMUNICATION_PERIPHERAL__DESC = 10;
    public static final int COMMUNICATION_PERIPHERAL__CATEGORY = 11;
    public static final int COMMUNICATION_PERIPHERAL__ADMIN_DATA = 12;
    public static final int COMMUNICATION_PERIPHERAL__UUID = 13;
    public static final int COMMUNICATION_PERIPHERAL__ALL_EXTENSIONS = 14;
    public static final int COMMUNICATION_PERIPHERAL__CONTAINED_EXTENSIONS = 15;
    public static final int COMMUNICATION_PERIPHERAL__GAR_PACKAGE = 16;
    public static final int COMMUNICATION_PERIPHERAL__AR_PACKAGE = 17;
    public static final int COMMUNICATION_PERIPHERAL__HW_ELEMENT_CONTAINER = 18;
    public static final int COMMUNICATION_PERIPHERAL__HW_ELEMENT_TEMPERATURE = 19;
    public static final int COMMUNICATION_PERIPHERAL__PORTS = 20;
    public static final int COMMUNICATION_PERIPHERAL__SIGNAL_TRANSFORMATIONS = 21;
    public static final int COMMUNICATION_PERIPHERAL__STANDBY_CURRENT = 22;
    public static final int COMMUNICATION_PERIPHERAL__SUPPORTS_SAFETY = 23;
    public static final int COMMUNICATION_PERIPHERAL__SUPPORTS_SECURITY = 24;
    public static final int COMMUNICATION_PERIPHERAL__CAN_BE_DISABLED = 25;
    public static final int COMMUNICATION_PERIPHERAL__ACCEPTANCE_FILTER = 26;
    public static final int COMMUNICATION_PERIPHERAL__ARCHITECTURE = 27;
    public static final int COMMUNICATION_PERIPHERAL__CLOCK = 28;
    public static final int COMMUNICATION_PERIPHERAL__ERROR_DETECTION = 29;
    public static final int COMMUNICATION_PERIPHERAL__HW_PORTS = 30;
    public static final int COMMUNICATION_PERIPHERAL__MONITOR = 31;
    public static final int COMMUNICATION_PERIPHERAL__PROTOCOLS = 32;
    public static final int COMMUNICATION_PERIPHERAL__REJECTION_FILTER = 33;
    public static final int COMMUNICATION_PERIPHERAL__TIMESTAMP_AVAILABLE = 34;
    public static final int COMMUNICATION_PERIPHERAL_FEATURE_COUNT = 35;
    public static final int COMMUNICATION_PROTOCOL = 10;
    public static final int COMMUNICATION_PROTOCOL__GCHECKSUM = 0;
    public static final int COMMUNICATION_PROTOCOL__GTIMESTAMP = 1;
    public static final int COMMUNICATION_PROTOCOL__CHECKSUM = 2;
    public static final int COMMUNICATION_PROTOCOL__TIMESTAMP = 3;
    public static final int COMMUNICATION_PROTOCOL__GSHORT_NAME = 4;
    public static final int COMMUNICATION_PROTOCOL__GUUID = 5;
    public static final int COMMUNICATION_PROTOCOL__GCATEGORY = 6;
    public static final int COMMUNICATION_PROTOCOL__GDESC = 7;
    public static final int COMMUNICATION_PROTOCOL__SHORT_NAME = 8;
    public static final int COMMUNICATION_PROTOCOL__LONG_NAME = 9;
    public static final int COMMUNICATION_PROTOCOL__DESC = 10;
    public static final int COMMUNICATION_PROTOCOL__CATEGORY = 11;
    public static final int COMMUNICATION_PROTOCOL__ADMIN_DATA = 12;
    public static final int COMMUNICATION_PROTOCOL__UUID = 13;
    public static final int COMMUNICATION_PROTOCOL__ALL_EXTENSIONS = 14;
    public static final int COMMUNICATION_PROTOCOL__CONTAINED_EXTENSIONS = 15;
    public static final int COMMUNICATION_PROTOCOL__COMMUNICATION_PERIPHERAL = 16;
    public static final int COMMUNICATION_PROTOCOL__VERSIONS = 17;
    public static final int COMMUNICATION_PROTOCOL_FEATURE_COUNT = 18;
    public static final int COMMUNICATION_SPEED_FIXED = 11;
    public static final int COMMUNICATION_SPEED_FIXED__GCHECKSUM = 0;
    public static final int COMMUNICATION_SPEED_FIXED__GTIMESTAMP = 1;
    public static final int COMMUNICATION_SPEED_FIXED__CHECKSUM = 2;
    public static final int COMMUNICATION_SPEED_FIXED__TIMESTAMP = 3;
    public static final int COMMUNICATION_SPEED_FIXED__COMMUNICATION_HW_PORT = 4;
    public static final int COMMUNICATION_SPEED_FIXED__TOLERANCE = 5;
    public static final int COMMUNICATION_SPEED_FIXED__FIX_SPEED = 6;
    public static final int COMMUNICATION_SPEED_FIXED_FEATURE_COUNT = 7;
    public static final int COMMUNICATION_SPEED_LIST = 12;
    public static final int COMMUNICATION_SPEED_LIST__GCHECKSUM = 0;
    public static final int COMMUNICATION_SPEED_LIST__GTIMESTAMP = 1;
    public static final int COMMUNICATION_SPEED_LIST__CHECKSUM = 2;
    public static final int COMMUNICATION_SPEED_LIST__TIMESTAMP = 3;
    public static final int COMMUNICATION_SPEED_LIST__COMMUNICATION_HW_PORT = 4;
    public static final int COMMUNICATION_SPEED_LIST__TOLERANCE = 5;
    public static final int COMMUNICATION_SPEED_LIST__SPEEDS = 6;
    public static final int COMMUNICATION_SPEED_LIST_FEATURE_COUNT = 7;
    public static final int COMMUNICATION_SPEED_RANGE = 13;
    public static final int COMMUNICATION_SPEED_RANGE__GCHECKSUM = 0;
    public static final int COMMUNICATION_SPEED_RANGE__GTIMESTAMP = 1;
    public static final int COMMUNICATION_SPEED_RANGE__CHECKSUM = 2;
    public static final int COMMUNICATION_SPEED_RANGE__TIMESTAMP = 3;
    public static final int COMMUNICATION_SPEED_RANGE__COMMUNICATION_HW_PORT = 4;
    public static final int COMMUNICATION_SPEED_RANGE__TOLERANCE = 5;
    public static final int COMMUNICATION_SPEED_RANGE__MAX_SPEED = 6;
    public static final int COMMUNICATION_SPEED_RANGE__MIN_SPEED = 7;
    public static final int COMMUNICATION_SPEED_RANGE_FEATURE_COUNT = 8;
    public static final int TIMER = 14;
    public static final int TIMER__GCHECKSUM = 0;
    public static final int TIMER__GTIMESTAMP = 1;
    public static final int TIMER__CHECKSUM = 2;
    public static final int TIMER__TIMESTAMP = 3;
    public static final int TIMER__GSHORT_NAME = 4;
    public static final int TIMER__GUUID = 5;
    public static final int TIMER__GCATEGORY = 6;
    public static final int TIMER__GDESC = 7;
    public static final int TIMER__SHORT_NAME = 8;
    public static final int TIMER__LONG_NAME = 9;
    public static final int TIMER__DESC = 10;
    public static final int TIMER__CATEGORY = 11;
    public static final int TIMER__ADMIN_DATA = 12;
    public static final int TIMER__UUID = 13;
    public static final int TIMER__ALL_EXTENSIONS = 14;
    public static final int TIMER__CONTAINED_EXTENSIONS = 15;
    public static final int TIMER__GAR_PACKAGE = 16;
    public static final int TIMER__AR_PACKAGE = 17;
    public static final int TIMER__HW_ELEMENT_CONTAINER = 18;
    public static final int TIMER__HW_ELEMENT_TEMPERATURE = 19;
    public static final int TIMER__PORTS = 20;
    public static final int TIMER__SIGNAL_TRANSFORMATIONS = 21;
    public static final int TIMER__STANDBY_CURRENT = 22;
    public static final int TIMER__SUPPORTS_SAFETY = 23;
    public static final int TIMER__SUPPORTS_SECURITY = 24;
    public static final int TIMER__CAN_BE_DISABLED = 25;
    public static final int TIMER__CLOCK_SOURCE = 26;
    public static final int TIMER__PHASE_DETECTION = 27;
    public static final int TIMER__RESOLUTION = 28;
    public static final int TIMER__THRESHOLD_VALUES = 29;
    public static final int TIMER__CAN_BE_RE_INIT = 30;
    public static final int TIMER__COUNT_DIRECTION = 31;
    public static final int TIMER__MODE = 32;
    public static final int TIMER_FEATURE_COUNT = 33;
    public static final int WATCH_DOG = 15;
    public static final int WATCH_DOG__GCHECKSUM = 0;
    public static final int WATCH_DOG__GTIMESTAMP = 1;
    public static final int WATCH_DOG__CHECKSUM = 2;
    public static final int WATCH_DOG__TIMESTAMP = 3;
    public static final int WATCH_DOG__GSHORT_NAME = 4;
    public static final int WATCH_DOG__GUUID = 5;
    public static final int WATCH_DOG__GCATEGORY = 6;
    public static final int WATCH_DOG__GDESC = 7;
    public static final int WATCH_DOG__SHORT_NAME = 8;
    public static final int WATCH_DOG__LONG_NAME = 9;
    public static final int WATCH_DOG__DESC = 10;
    public static final int WATCH_DOG__CATEGORY = 11;
    public static final int WATCH_DOG__ADMIN_DATA = 12;
    public static final int WATCH_DOG__UUID = 13;
    public static final int WATCH_DOG__ALL_EXTENSIONS = 14;
    public static final int WATCH_DOG__CONTAINED_EXTENSIONS = 15;
    public static final int WATCH_DOG__GAR_PACKAGE = 16;
    public static final int WATCH_DOG__AR_PACKAGE = 17;
    public static final int WATCH_DOG__HW_ELEMENT_CONTAINER = 18;
    public static final int WATCH_DOG__HW_ELEMENT_TEMPERATURE = 19;
    public static final int WATCH_DOG__PORTS = 20;
    public static final int WATCH_DOG__SIGNAL_TRANSFORMATIONS = 21;
    public static final int WATCH_DOG__STANDBY_CURRENT = 22;
    public static final int WATCH_DOG__SUPPORTS_SAFETY = 23;
    public static final int WATCH_DOG__SUPPORTS_SECURITY = 24;
    public static final int WATCH_DOG__CAN_BE_DISABLED = 25;
    public static final int WATCH_DOG__CLOCK_SOURCE = 26;
    public static final int WATCH_DOG__MODE = 27;
    public static final int WATCH_DOG__THRESHOLD_VALUES = 28;
    public static final int WATCH_DOG_FEATURE_COUNT = 29;
    public static final int ANALOGUE_IO = 17;
    public static final int ANALOGUE_IO__GCHECKSUM = 0;
    public static final int ANALOGUE_IO__GTIMESTAMP = 1;
    public static final int ANALOGUE_IO__CHECKSUM = 2;
    public static final int ANALOGUE_IO__TIMESTAMP = 3;
    public static final int ANALOGUE_IO__GSHORT_NAME = 4;
    public static final int ANALOGUE_IO__GUUID = 5;
    public static final int ANALOGUE_IO__GCATEGORY = 6;
    public static final int ANALOGUE_IO__GDESC = 7;
    public static final int ANALOGUE_IO__SHORT_NAME = 8;
    public static final int ANALOGUE_IO__LONG_NAME = 9;
    public static final int ANALOGUE_IO__DESC = 10;
    public static final int ANALOGUE_IO__CATEGORY = 11;
    public static final int ANALOGUE_IO__ADMIN_DATA = 12;
    public static final int ANALOGUE_IO__UUID = 13;
    public static final int ANALOGUE_IO__ALL_EXTENSIONS = 14;
    public static final int ANALOGUE_IO__CONTAINED_EXTENSIONS = 15;
    public static final int ANALOGUE_IO__GAR_PACKAGE = 16;
    public static final int ANALOGUE_IO__AR_PACKAGE = 17;
    public static final int ANALOGUE_IO__HW_ELEMENT_CONTAINER = 18;
    public static final int ANALOGUE_IO__HW_ELEMENT_TEMPERATURE = 19;
    public static final int ANALOGUE_IO__PORTS = 20;
    public static final int ANALOGUE_IO__SIGNAL_TRANSFORMATIONS = 21;
    public static final int ANALOGUE_IO__STANDBY_CURRENT = 22;
    public static final int ANALOGUE_IO__SUPPORTS_SAFETY = 23;
    public static final int ANALOGUE_IO__SUPPORTS_SECURITY = 24;
    public static final int ANALOGUE_IO__CAN_BE_DISABLED = 25;
    public static final int ANALOGUE_IO__ACCURACY = 26;
    public static final int ANALOGUE_IO__CONVERSION_TIME = 27;
    public static final int ANALOGUE_IO__EXTERNAL_REFERENCE_VOLTAGE = 28;
    public static final int ANALOGUE_IO__MODE = 29;
    public static final int ANALOGUE_IO__MULTIPLEXED_M = 30;
    public static final int ANALOGUE_IO__MULTIPLEXED_N = 31;
    public static final int ANALOGUE_IO__RESOLUTION = 32;
    public static final int ANALOGUE_IO__WIDTH = 33;
    public static final int ANALOGUE_IO_FEATURE_COUNT = 34;
    public static final int ADC = 16;
    public static final int ADC__GCHECKSUM = 0;
    public static final int ADC__GTIMESTAMP = 1;
    public static final int ADC__CHECKSUM = 2;
    public static final int ADC__TIMESTAMP = 3;
    public static final int ADC__GSHORT_NAME = 4;
    public static final int ADC__GUUID = 5;
    public static final int ADC__GCATEGORY = 6;
    public static final int ADC__GDESC = 7;
    public static final int ADC__SHORT_NAME = 8;
    public static final int ADC__LONG_NAME = 9;
    public static final int ADC__DESC = 10;
    public static final int ADC__CATEGORY = 11;
    public static final int ADC__ADMIN_DATA = 12;
    public static final int ADC__UUID = 13;
    public static final int ADC__ALL_EXTENSIONS = 14;
    public static final int ADC__CONTAINED_EXTENSIONS = 15;
    public static final int ADC__GAR_PACKAGE = 16;
    public static final int ADC__AR_PACKAGE = 17;
    public static final int ADC__HW_ELEMENT_CONTAINER = 18;
    public static final int ADC__HW_ELEMENT_TEMPERATURE = 19;
    public static final int ADC__PORTS = 20;
    public static final int ADC__SIGNAL_TRANSFORMATIONS = 21;
    public static final int ADC__STANDBY_CURRENT = 22;
    public static final int ADC__SUPPORTS_SAFETY = 23;
    public static final int ADC__SUPPORTS_SECURITY = 24;
    public static final int ADC__CAN_BE_DISABLED = 25;
    public static final int ADC__ACCURACY = 26;
    public static final int ADC__CONVERSION_TIME = 27;
    public static final int ADC__EXTERNAL_REFERENCE_VOLTAGE = 28;
    public static final int ADC__MODE = 29;
    public static final int ADC__MULTIPLEXED_M = 30;
    public static final int ADC__MULTIPLEXED_N = 31;
    public static final int ADC__RESOLUTION = 32;
    public static final int ADC__WIDTH = 33;
    public static final int ADC__BEHAVIOUR_AT_LIMIT = 34;
    public static final int ADC_FEATURE_COUNT = 35;
    public static final int DAC = 18;
    public static final int DAC__GCHECKSUM = 0;
    public static final int DAC__GTIMESTAMP = 1;
    public static final int DAC__CHECKSUM = 2;
    public static final int DAC__TIMESTAMP = 3;
    public static final int DAC__GSHORT_NAME = 4;
    public static final int DAC__GUUID = 5;
    public static final int DAC__GCATEGORY = 6;
    public static final int DAC__GDESC = 7;
    public static final int DAC__SHORT_NAME = 8;
    public static final int DAC__LONG_NAME = 9;
    public static final int DAC__DESC = 10;
    public static final int DAC__CATEGORY = 11;
    public static final int DAC__ADMIN_DATA = 12;
    public static final int DAC__UUID = 13;
    public static final int DAC__ALL_EXTENSIONS = 14;
    public static final int DAC__CONTAINED_EXTENSIONS = 15;
    public static final int DAC__GAR_PACKAGE = 16;
    public static final int DAC__AR_PACKAGE = 17;
    public static final int DAC__HW_ELEMENT_CONTAINER = 18;
    public static final int DAC__HW_ELEMENT_TEMPERATURE = 19;
    public static final int DAC__PORTS = 20;
    public static final int DAC__SIGNAL_TRANSFORMATIONS = 21;
    public static final int DAC__STANDBY_CURRENT = 22;
    public static final int DAC__SUPPORTS_SAFETY = 23;
    public static final int DAC__SUPPORTS_SECURITY = 24;
    public static final int DAC__CAN_BE_DISABLED = 25;
    public static final int DAC__ACCURACY = 26;
    public static final int DAC__CONVERSION_TIME = 27;
    public static final int DAC__EXTERNAL_REFERENCE_VOLTAGE = 28;
    public static final int DAC__MODE = 29;
    public static final int DAC__MULTIPLEXED_M = 30;
    public static final int DAC__MULTIPLEXED_N = 31;
    public static final int DAC__RESOLUTION = 32;
    public static final int DAC__WIDTH = 33;
    public static final int DAC_FEATURE_COUNT = 34;
    public static final int DIGITAL_IO = 19;
    public static final int DIGITAL_IO__GCHECKSUM = 0;
    public static final int DIGITAL_IO__GTIMESTAMP = 1;
    public static final int DIGITAL_IO__CHECKSUM = 2;
    public static final int DIGITAL_IO__TIMESTAMP = 3;
    public static final int DIGITAL_IO__GSHORT_NAME = 4;
    public static final int DIGITAL_IO__GUUID = 5;
    public static final int DIGITAL_IO__GCATEGORY = 6;
    public static final int DIGITAL_IO__GDESC = 7;
    public static final int DIGITAL_IO__SHORT_NAME = 8;
    public static final int DIGITAL_IO__LONG_NAME = 9;
    public static final int DIGITAL_IO__DESC = 10;
    public static final int DIGITAL_IO__CATEGORY = 11;
    public static final int DIGITAL_IO__ADMIN_DATA = 12;
    public static final int DIGITAL_IO__UUID = 13;
    public static final int DIGITAL_IO__ALL_EXTENSIONS = 14;
    public static final int DIGITAL_IO__CONTAINED_EXTENSIONS = 15;
    public static final int DIGITAL_IO__GAR_PACKAGE = 16;
    public static final int DIGITAL_IO__AR_PACKAGE = 17;
    public static final int DIGITAL_IO__HW_ELEMENT_CONTAINER = 18;
    public static final int DIGITAL_IO__HW_ELEMENT_TEMPERATURE = 19;
    public static final int DIGITAL_IO__PORTS = 20;
    public static final int DIGITAL_IO__SIGNAL_TRANSFORMATIONS = 21;
    public static final int DIGITAL_IO__STANDBY_CURRENT = 22;
    public static final int DIGITAL_IO__SUPPORTS_SAFETY = 23;
    public static final int DIGITAL_IO__SUPPORTS_SECURITY = 24;
    public static final int DIGITAL_IO__CAN_BE_DISABLED = 25;
    public static final int DIGITAL_IO__EDGE_DETECTION = 26;
    public static final int DIGITAL_IO_FEATURE_COUNT = 27;
    public static final int PULSE_WIDTH_PERIPHERAL = 21;
    public static final int PULSE_WIDTH_PERIPHERAL__GCHECKSUM = 0;
    public static final int PULSE_WIDTH_PERIPHERAL__GTIMESTAMP = 1;
    public static final int PULSE_WIDTH_PERIPHERAL__CHECKSUM = 2;
    public static final int PULSE_WIDTH_PERIPHERAL__TIMESTAMP = 3;
    public static final int PULSE_WIDTH_PERIPHERAL__GSHORT_NAME = 4;
    public static final int PULSE_WIDTH_PERIPHERAL__GUUID = 5;
    public static final int PULSE_WIDTH_PERIPHERAL__GCATEGORY = 6;
    public static final int PULSE_WIDTH_PERIPHERAL__GDESC = 7;
    public static final int PULSE_WIDTH_PERIPHERAL__SHORT_NAME = 8;
    public static final int PULSE_WIDTH_PERIPHERAL__LONG_NAME = 9;
    public static final int PULSE_WIDTH_PERIPHERAL__DESC = 10;
    public static final int PULSE_WIDTH_PERIPHERAL__CATEGORY = 11;
    public static final int PULSE_WIDTH_PERIPHERAL__ADMIN_DATA = 12;
    public static final int PULSE_WIDTH_PERIPHERAL__UUID = 13;
    public static final int PULSE_WIDTH_PERIPHERAL__ALL_EXTENSIONS = 14;
    public static final int PULSE_WIDTH_PERIPHERAL__CONTAINED_EXTENSIONS = 15;
    public static final int PULSE_WIDTH_PERIPHERAL__GAR_PACKAGE = 16;
    public static final int PULSE_WIDTH_PERIPHERAL__AR_PACKAGE = 17;
    public static final int PULSE_WIDTH_PERIPHERAL__HW_ELEMENT_CONTAINER = 18;
    public static final int PULSE_WIDTH_PERIPHERAL__HW_ELEMENT_TEMPERATURE = 19;
    public static final int PULSE_WIDTH_PERIPHERAL__PORTS = 20;
    public static final int PULSE_WIDTH_PERIPHERAL__SIGNAL_TRANSFORMATIONS = 21;
    public static final int PULSE_WIDTH_PERIPHERAL__STANDBY_CURRENT = 22;
    public static final int PULSE_WIDTH_PERIPHERAL__SUPPORTS_SAFETY = 23;
    public static final int PULSE_WIDTH_PERIPHERAL__SUPPORTS_SECURITY = 24;
    public static final int PULSE_WIDTH_PERIPHERAL__CAN_BE_DISABLED = 25;
    public static final int PULSE_WIDTH_PERIPHERAL__RESOLUTION = 26;
    public static final int PULSE_WIDTH_PERIPHERAL_FEATURE_COUNT = 27;
    public static final int PWD = 20;
    public static final int PWD__GCHECKSUM = 0;
    public static final int PWD__GTIMESTAMP = 1;
    public static final int PWD__CHECKSUM = 2;
    public static final int PWD__TIMESTAMP = 3;
    public static final int PWD__GSHORT_NAME = 4;
    public static final int PWD__GUUID = 5;
    public static final int PWD__GCATEGORY = 6;
    public static final int PWD__GDESC = 7;
    public static final int PWD__SHORT_NAME = 8;
    public static final int PWD__LONG_NAME = 9;
    public static final int PWD__DESC = 10;
    public static final int PWD__CATEGORY = 11;
    public static final int PWD__ADMIN_DATA = 12;
    public static final int PWD__UUID = 13;
    public static final int PWD__ALL_EXTENSIONS = 14;
    public static final int PWD__CONTAINED_EXTENSIONS = 15;
    public static final int PWD__GAR_PACKAGE = 16;
    public static final int PWD__AR_PACKAGE = 17;
    public static final int PWD__HW_ELEMENT_CONTAINER = 18;
    public static final int PWD__HW_ELEMENT_TEMPERATURE = 19;
    public static final int PWD__PORTS = 20;
    public static final int PWD__SIGNAL_TRANSFORMATIONS = 21;
    public static final int PWD__STANDBY_CURRENT = 22;
    public static final int PWD__SUPPORTS_SAFETY = 23;
    public static final int PWD__SUPPORTS_SECURITY = 24;
    public static final int PWD__CAN_BE_DISABLED = 25;
    public static final int PWD__RESOLUTION = 26;
    public static final int PWD__MODE = 27;
    public static final int PWD__PHASE_DETECTION = 28;
    public static final int PWD_FEATURE_COUNT = 29;
    public static final int PWM = 22;
    public static final int PWM__GCHECKSUM = 0;
    public static final int PWM__GTIMESTAMP = 1;
    public static final int PWM__CHECKSUM = 2;
    public static final int PWM__TIMESTAMP = 3;
    public static final int PWM__GSHORT_NAME = 4;
    public static final int PWM__GUUID = 5;
    public static final int PWM__GCATEGORY = 6;
    public static final int PWM__GDESC = 7;
    public static final int PWM__SHORT_NAME = 8;
    public static final int PWM__LONG_NAME = 9;
    public static final int PWM__DESC = 10;
    public static final int PWM__CATEGORY = 11;
    public static final int PWM__ADMIN_DATA = 12;
    public static final int PWM__UUID = 13;
    public static final int PWM__ALL_EXTENSIONS = 14;
    public static final int PWM__CONTAINED_EXTENSIONS = 15;
    public static final int PWM__GAR_PACKAGE = 16;
    public static final int PWM__AR_PACKAGE = 17;
    public static final int PWM__HW_ELEMENT_CONTAINER = 18;
    public static final int PWM__HW_ELEMENT_TEMPERATURE = 19;
    public static final int PWM__PORTS = 20;
    public static final int PWM__SIGNAL_TRANSFORMATIONS = 21;
    public static final int PWM__STANDBY_CURRENT = 22;
    public static final int PWM__SUPPORTS_SAFETY = 23;
    public static final int PWM__SUPPORTS_SECURITY = 24;
    public static final int PWM__CAN_BE_DISABLED = 25;
    public static final int PWM__RESOLUTION = 26;
    public static final int PWM_FEATURE_COUNT = 27;
    public static final int ECU_COMMUNICATION_PORT = 23;
    public static final int ECU_COMMUNICATION_PORT__GCHECKSUM = 0;
    public static final int ECU_COMMUNICATION_PORT__GTIMESTAMP = 1;
    public static final int ECU_COMMUNICATION_PORT__CHECKSUM = 2;
    public static final int ECU_COMMUNICATION_PORT__TIMESTAMP = 3;
    public static final int ECU_COMMUNICATION_PORT__GSHORT_NAME = 4;
    public static final int ECU_COMMUNICATION_PORT__GUUID = 5;
    public static final int ECU_COMMUNICATION_PORT__GCATEGORY = 6;
    public static final int ECU_COMMUNICATION_PORT__GDESC = 7;
    public static final int ECU_COMMUNICATION_PORT__SHORT_NAME = 8;
    public static final int ECU_COMMUNICATION_PORT__LONG_NAME = 9;
    public static final int ECU_COMMUNICATION_PORT__DESC = 10;
    public static final int ECU_COMMUNICATION_PORT__CATEGORY = 11;
    public static final int ECU_COMMUNICATION_PORT__ADMIN_DATA = 12;
    public static final int ECU_COMMUNICATION_PORT__UUID = 13;
    public static final int ECU_COMMUNICATION_PORT__ALL_EXTENSIONS = 14;
    public static final int ECU_COMMUNICATION_PORT__CONTAINED_EXTENSIONS = 15;
    public static final int ECU_COMMUNICATION_PORT__HW_ELEMENT = 16;
    public static final int ECU_COMMUNICATION_PORT__DIRECTION = 17;
    public static final int ECU_COMMUNICATION_PORT__PINS = 18;
    public static final int ECU_COMMUNICATION_PORT__BUFFERS = 19;
    public static final int ECU_COMMUNICATION_PORT__INVERSION = 20;
    public static final int ECU_COMMUNICATION_PORT__POWER_ON_CAPABILITY = 21;
    public static final int ECU_COMMUNICATION_PORT__WAKE_UP_CAPABILITY = 22;
    public static final int ECU_COMMUNICATION_PORT__COMMUNICATION_PERIPHERAL = 23;
    public static final int ECU_COMMUNICATION_PORT__PHYSICAL_LAYER = 24;
    public static final int ECU_COMMUNICATION_PORT__SPEED = 25;
    public static final int ECU_COMMUNICATION_PORT_FEATURE_COUNT = 26;
    public static final int BUFFER_TYPE_ENUM = 24;
    public static final int CCU_MODE_ENUM = 25;
    public static final int COMMUNICATION_PHYSICAL_MEDIUM_PHYSICAL_MEDIUM_TYPE_ENUM = 26;
    public static final int COMMUNICATION_PERIPHERAL_ARCHITECTURE_ENUM = 27;
    public static final int TIMER_COUNT_DIRECTION_ENUM = 28;
    public static final int TIMER_MODE_ENUM = 29;
    public static final int WATCH_DOG_MODE_ENUM = 30;
    public static final int ANALOGUE_IO_MODE_ENUM = 31;
    public static final int ADC_BEHAVIOUR_AT_LIMIT_ENUM = 32;
    public static final int DIGITAL_IO_EDGE_DETECTION_ENUM = 33;
    public static final int PWD_MODE_ENUM = 34;

    public EClass getBuffer();

    public EReference getBuffer_PeripheralHWPort();

    public EAttribute getBuffer_Number();

    public EAttribute getBuffer_Size();

    public EAttribute getBuffer_Type();

    public EClass getCCU();

    public EAttribute getCCU_Mode();

    public EClass getGeneralPurposeTimer();

    public EReference getGeneralPurposeTimer_ClockSource();

    public EAttribute getGeneralPurposeTimer_PhaseDetection();

    public EAttribute getGeneralPurposeTimer_Resolution();

    public EAttribute getGeneralPurposeTimer_ThresholdValues();

    public EClass getPeripheral();

    public EAttribute getPeripheral_CanBeDisabled();

    public EClass getCommunicationFilter();

    public EAttribute getCommunicationFilter_FilterCount();

    public EAttribute getCommunicationFilter_FilterWidth();

    public EAttribute getCommunicationFilter_WildCards();

    public EClass getCommunicationHWPort();

    public EReference getCommunicationHWPort_CommunicationPeripheral();

    public EReference getCommunicationHWPort_PhysicalLayer();

    public EReference getCommunicationHWPort_Speed();

    public EClass getPeripheralHWPort();

    public EReference getPeripheralHWPort_Buffers();

    public EAttribute getPeripheralHWPort_Inversion();

    public EAttribute getPeripheralHWPort_PowerOnCapability();

    public EAttribute getPeripheralHWPort_WakeUpCapability();

    public EClass getCommunicationSpeed();

    public EReference getCommunicationSpeed_CommunicationHWPort();

    public EAttribute getCommunicationSpeed_Tolerance();

    public EClass getCommunicationPhysicalMedium();

    public EReference getCommunicationPhysicalMedium_CommunicationHWPort();

    public EAttribute getCommunicationPhysicalMedium_PhysicalMediumDataLines();

    public EAttribute getCommunicationPhysicalMedium_PhysicalMediumStandard();

    public EAttribute getCommunicationPhysicalMedium_PhysicalMediumType();

    public EClass getCommunicationPeripheral();

    public EReference getCommunicationPeripheral_AcceptanceFilter();

    public EAttribute getCommunicationPeripheral_Architecture();

    public EReference getCommunicationPeripheral_Clock();

    public EReference getCommunicationPeripheral_ErrorDetection();

    public EReference getCommunicationPeripheral_HwPorts();

    public EAttribute getCommunicationPeripheral_Monitor();

    public EReference getCommunicationPeripheral_Protocols();

    public EReference getCommunicationPeripheral_RejectionFilter();

    public EAttribute getCommunicationPeripheral_TimestampAvailable();

    public EClass getCommunicationProtocol();

    public EReference getCommunicationProtocol_CommunicationPeripheral();

    public EAttribute getCommunicationProtocol_Versions();

    public EClass getCommunicationSpeedFixed();

    public EAttribute getCommunicationSpeedFixed_FixSpeed();

    public EClass getCommunicationSpeedList();

    public EAttribute getCommunicationSpeedList_Speeds();

    public EClass getCommunicationSpeedRange();

    public EAttribute getCommunicationSpeedRange_MaxSpeed();

    public EAttribute getCommunicationSpeedRange_MinSpeed();

    public EClass getTimer();

    public EAttribute getTimer_CanBeReInit();

    public EAttribute getTimer_CountDirection();

    public EAttribute getTimer_Mode();

    public EClass getWatchDog();

    public EReference getWatchDog_ClockSource();

    public EAttribute getWatchDog_Mode();

    public EAttribute getWatchDog_ThresholdValues();

    public EClass getADC();

    public EAttribute getADC_BehaviourAtLimit();

    public EClass getAnalogueIO();

    public EAttribute getAnalogueIO_Accuracy();

    public EAttribute getAnalogueIO_ConversionTime();

    public EReference getAnalogueIO_ExternalReferenceVoltage();

    public EAttribute getAnalogueIO_Mode();

    public EAttribute getAnalogueIO_MultiplexedM();

    public EAttribute getAnalogueIO_MultiplexedN();

    public EAttribute getAnalogueIO_Resolution();

    public EAttribute getAnalogueIO_Width();

    public EClass getDAC();

    public EClass getDigitalIO();

    public EAttribute getDigitalIO_EdgeDetection();

    public EClass getPWD();

    public EAttribute getPWD_Mode();

    public EAttribute getPWD_PhaseDetection();

    public EClass getPulseWidthPeripheral();

    public EAttribute getPulseWidthPeripheral_Resolution();

    public EClass getPWM();

    public EClass getECUCommunicationPort();

    public EEnum getBufferTypeEnum();

    public EEnum getCCUModeEnum();

    public EEnum getCommunicationPhysicalMediumPhysicalMediumTypeEnum();

    public EEnum getCommunicationPeripheralArchitectureEnum();

    public EEnum getTimerCountDirectionEnum();

    public EEnum getTimerModeEnum();

    public EEnum getWatchDogModeEnum();

    public EEnum getAnalogueIOModeEnum();

    public EEnum getADCBehaviourAtLimitEnum();

    public EEnum getDigitalIOEdgeDetectionEnum();

    public EEnum getPWDModeEnum();

    public PeripheralsFactory getPeripheralsFactory();

    public static interface Literals {
        public static final EClass BUFFER = eINSTANCE.getBuffer();
        public static final EReference BUFFER__PERIPHERAL_HW_PORT = eINSTANCE.getBuffer_PeripheralHWPort();
        public static final EAttribute BUFFER__NUMBER = eINSTANCE.getBuffer_Number();
        public static final EAttribute BUFFER__SIZE = eINSTANCE.getBuffer_Size();
        public static final EAttribute BUFFER__TYPE = eINSTANCE.getBuffer_Type();
        public static final EClass CCU = eINSTANCE.getCCU();
        public static final EAttribute CCU__MODE = eINSTANCE.getCCU_Mode();
        public static final EClass GENERAL_PURPOSE_TIMER = eINSTANCE.getGeneralPurposeTimer();
        public static final EReference GENERAL_PURPOSE_TIMER__CLOCK_SOURCE = eINSTANCE.getGeneralPurposeTimer_ClockSource();
        public static final EAttribute GENERAL_PURPOSE_TIMER__PHASE_DETECTION = eINSTANCE.getGeneralPurposeTimer_PhaseDetection();
        public static final EAttribute GENERAL_PURPOSE_TIMER__RESOLUTION = eINSTANCE.getGeneralPurposeTimer_Resolution();
        public static final EAttribute GENERAL_PURPOSE_TIMER__THRESHOLD_VALUES = eINSTANCE.getGeneralPurposeTimer_ThresholdValues();
        public static final EClass PERIPHERAL = eINSTANCE.getPeripheral();
        public static final EAttribute PERIPHERAL__CAN_BE_DISABLED = eINSTANCE.getPeripheral_CanBeDisabled();
        public static final EClass COMMUNICATION_FILTER = eINSTANCE.getCommunicationFilter();
        public static final EAttribute COMMUNICATION_FILTER__FILTER_COUNT = eINSTANCE.getCommunicationFilter_FilterCount();
        public static final EAttribute COMMUNICATION_FILTER__FILTER_WIDTH = eINSTANCE.getCommunicationFilter_FilterWidth();
        public static final EAttribute COMMUNICATION_FILTER__WILD_CARDS = eINSTANCE.getCommunicationFilter_WildCards();
        public static final EClass COMMUNICATION_HW_PORT = eINSTANCE.getCommunicationHWPort();
        public static final EReference COMMUNICATION_HW_PORT__COMMUNICATION_PERIPHERAL = eINSTANCE.getCommunicationHWPort_CommunicationPeripheral();
        public static final EReference COMMUNICATION_HW_PORT__PHYSICAL_LAYER = eINSTANCE.getCommunicationHWPort_PhysicalLayer();
        public static final EReference COMMUNICATION_HW_PORT__SPEED = eINSTANCE.getCommunicationHWPort_Speed();
        public static final EClass PERIPHERAL_HW_PORT = eINSTANCE.getPeripheralHWPort();
        public static final EReference PERIPHERAL_HW_PORT__BUFFERS = eINSTANCE.getPeripheralHWPort_Buffers();
        public static final EAttribute PERIPHERAL_HW_PORT__INVERSION = eINSTANCE.getPeripheralHWPort_Inversion();
        public static final EAttribute PERIPHERAL_HW_PORT__POWER_ON_CAPABILITY = eINSTANCE.getPeripheralHWPort_PowerOnCapability();
        public static final EAttribute PERIPHERAL_HW_PORT__WAKE_UP_CAPABILITY = eINSTANCE.getPeripheralHWPort_WakeUpCapability();
        public static final EClass COMMUNICATION_SPEED = eINSTANCE.getCommunicationSpeed();
        public static final EReference COMMUNICATION_SPEED__COMMUNICATION_HW_PORT = eINSTANCE.getCommunicationSpeed_CommunicationHWPort();
        public static final EAttribute COMMUNICATION_SPEED__TOLERANCE = eINSTANCE.getCommunicationSpeed_Tolerance();
        public static final EClass COMMUNICATION_PHYSICAL_MEDIUM = eINSTANCE.getCommunicationPhysicalMedium();
        public static final EReference COMMUNICATION_PHYSICAL_MEDIUM__COMMUNICATION_HW_PORT = eINSTANCE.getCommunicationPhysicalMedium_CommunicationHWPort();
        public static final EAttribute COMMUNICATION_PHYSICAL_MEDIUM__PHYSICAL_MEDIUM_DATA_LINES = eINSTANCE.getCommunicationPhysicalMedium_PhysicalMediumDataLines();
        public static final EAttribute COMMUNICATION_PHYSICAL_MEDIUM__PHYSICAL_MEDIUM_STANDARD = eINSTANCE.getCommunicationPhysicalMedium_PhysicalMediumStandard();
        public static final EAttribute COMMUNICATION_PHYSICAL_MEDIUM__PHYSICAL_MEDIUM_TYPE = eINSTANCE.getCommunicationPhysicalMedium_PhysicalMediumType();
        public static final EClass COMMUNICATION_PERIPHERAL = eINSTANCE.getCommunicationPeripheral();
        public static final EReference COMMUNICATION_PERIPHERAL__ACCEPTANCE_FILTER = eINSTANCE.getCommunicationPeripheral_AcceptanceFilter();
        public static final EAttribute COMMUNICATION_PERIPHERAL__ARCHITECTURE = eINSTANCE.getCommunicationPeripheral_Architecture();
        public static final EReference COMMUNICATION_PERIPHERAL__CLOCK = eINSTANCE.getCommunicationPeripheral_Clock();
        public static final EReference COMMUNICATION_PERIPHERAL__ERROR_DETECTION = eINSTANCE.getCommunicationPeripheral_ErrorDetection();
        public static final EReference COMMUNICATION_PERIPHERAL__HW_PORTS = eINSTANCE.getCommunicationPeripheral_HwPorts();
        public static final EAttribute COMMUNICATION_PERIPHERAL__MONITOR = eINSTANCE.getCommunicationPeripheral_Monitor();
        public static final EReference COMMUNICATION_PERIPHERAL__PROTOCOLS = eINSTANCE.getCommunicationPeripheral_Protocols();
        public static final EReference COMMUNICATION_PERIPHERAL__REJECTION_FILTER = eINSTANCE.getCommunicationPeripheral_RejectionFilter();
        public static final EAttribute COMMUNICATION_PERIPHERAL__TIMESTAMP_AVAILABLE = eINSTANCE.getCommunicationPeripheral_TimestampAvailable();
        public static final EClass COMMUNICATION_PROTOCOL = eINSTANCE.getCommunicationProtocol();
        public static final EReference COMMUNICATION_PROTOCOL__COMMUNICATION_PERIPHERAL = eINSTANCE.getCommunicationProtocol_CommunicationPeripheral();
        public static final EAttribute COMMUNICATION_PROTOCOL__VERSIONS = eINSTANCE.getCommunicationProtocol_Versions();
        public static final EClass COMMUNICATION_SPEED_FIXED = eINSTANCE.getCommunicationSpeedFixed();
        public static final EAttribute COMMUNICATION_SPEED_FIXED__FIX_SPEED = eINSTANCE.getCommunicationSpeedFixed_FixSpeed();
        public static final EClass COMMUNICATION_SPEED_LIST = eINSTANCE.getCommunicationSpeedList();
        public static final EAttribute COMMUNICATION_SPEED_LIST__SPEEDS = eINSTANCE.getCommunicationSpeedList_Speeds();
        public static final EClass COMMUNICATION_SPEED_RANGE = eINSTANCE.getCommunicationSpeedRange();
        public static final EAttribute COMMUNICATION_SPEED_RANGE__MAX_SPEED = eINSTANCE.getCommunicationSpeedRange_MaxSpeed();
        public static final EAttribute COMMUNICATION_SPEED_RANGE__MIN_SPEED = eINSTANCE.getCommunicationSpeedRange_MinSpeed();
        public static final EClass TIMER = eINSTANCE.getTimer();
        public static final EAttribute TIMER__CAN_BE_RE_INIT = eINSTANCE.getTimer_CanBeReInit();
        public static final EAttribute TIMER__COUNT_DIRECTION = eINSTANCE.getTimer_CountDirection();
        public static final EAttribute TIMER__MODE = eINSTANCE.getTimer_Mode();
        public static final EClass WATCH_DOG = eINSTANCE.getWatchDog();
        public static final EReference WATCH_DOG__CLOCK_SOURCE = eINSTANCE.getWatchDog_ClockSource();
        public static final EAttribute WATCH_DOG__MODE = eINSTANCE.getWatchDog_Mode();
        public static final EAttribute WATCH_DOG__THRESHOLD_VALUES = eINSTANCE.getWatchDog_ThresholdValues();
        public static final EClass ADC = eINSTANCE.getADC();
        public static final EAttribute ADC__BEHAVIOUR_AT_LIMIT = eINSTANCE.getADC_BehaviourAtLimit();
        public static final EClass ANALOGUE_IO = eINSTANCE.getAnalogueIO();
        public static final EAttribute ANALOGUE_IO__ACCURACY = eINSTANCE.getAnalogueIO_Accuracy();
        public static final EAttribute ANALOGUE_IO__CONVERSION_TIME = eINSTANCE.getAnalogueIO_ConversionTime();
        public static final EReference ANALOGUE_IO__EXTERNAL_REFERENCE_VOLTAGE = eINSTANCE.getAnalogueIO_ExternalReferenceVoltage();
        public static final EAttribute ANALOGUE_IO__MODE = eINSTANCE.getAnalogueIO_Mode();
        public static final EAttribute ANALOGUE_IO__MULTIPLEXED_M = eINSTANCE.getAnalogueIO_MultiplexedM();
        public static final EAttribute ANALOGUE_IO__MULTIPLEXED_N = eINSTANCE.getAnalogueIO_MultiplexedN();
        public static final EAttribute ANALOGUE_IO__RESOLUTION = eINSTANCE.getAnalogueIO_Resolution();
        public static final EAttribute ANALOGUE_IO__WIDTH = eINSTANCE.getAnalogueIO_Width();
        public static final EClass DAC = eINSTANCE.getDAC();
        public static final EClass DIGITAL_IO = eINSTANCE.getDigitalIO();
        public static final EAttribute DIGITAL_IO__EDGE_DETECTION = eINSTANCE.getDigitalIO_EdgeDetection();
        public static final EClass PWD = eINSTANCE.getPWD();
        public static final EAttribute PWD__MODE = eINSTANCE.getPWD_Mode();
        public static final EAttribute PWD__PHASE_DETECTION = eINSTANCE.getPWD_PhaseDetection();
        public static final EClass PULSE_WIDTH_PERIPHERAL = eINSTANCE.getPulseWidthPeripheral();
        public static final EAttribute PULSE_WIDTH_PERIPHERAL__RESOLUTION = eINSTANCE.getPulseWidthPeripheral_Resolution();
        public static final EClass PWM = eINSTANCE.getPWM();
        public static final EClass ECU_COMMUNICATION_PORT = eINSTANCE.getECUCommunicationPort();
        public static final EEnum BUFFER_TYPE_ENUM = eINSTANCE.getBufferTypeEnum();
        public static final EEnum CCU_MODE_ENUM = eINSTANCE.getCCUModeEnum();
        public static final EEnum COMMUNICATION_PHYSICAL_MEDIUM_PHYSICAL_MEDIUM_TYPE_ENUM = eINSTANCE.getCommunicationPhysicalMediumPhysicalMediumTypeEnum();
        public static final EEnum COMMUNICATION_PERIPHERAL_ARCHITECTURE_ENUM = eINSTANCE.getCommunicationPeripheralArchitectureEnum();
        public static final EEnum TIMER_COUNT_DIRECTION_ENUM = eINSTANCE.getTimerCountDirectionEnum();
        public static final EEnum TIMER_MODE_ENUM = eINSTANCE.getTimerModeEnum();
        public static final EEnum WATCH_DOG_MODE_ENUM = eINSTANCE.getWatchDogModeEnum();
        public static final EEnum ANALOGUE_IO_MODE_ENUM = eINSTANCE.getAnalogueIOModeEnum();
        public static final EEnum ADC_BEHAVIOUR_AT_LIMIT_ENUM = eINSTANCE.getADCBehaviourAtLimitEnum();
        public static final EEnum DIGITAL_IO_EDGE_DETECTION_ENUM = eINSTANCE.getDigitalIOEdgeDetectionEnum();
        public static final EEnum PWD_MODE_ENUM = eINSTANCE.getPWDModeEnum();
    }
}

