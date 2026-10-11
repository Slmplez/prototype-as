/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.serviceneeds;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ServiceProviderEnum implements Enumerator
{
    BASIC_SOFTWARE_MODE_MANAGER(0, "basicSoftwareModeManager", "BASIC-SOFTWARE-MODE-MANAGER"),
    COM_MANAGER(1, "comManager", "COM-MANAGER"),
    CRYPTO_SERVICE_MANAGER(2, "cryptoServiceManager", "CRYPTO-SERVICE-MANAGER"),
    DIAGNOSTIC_COMMUNICATION_MANAGER(3, "diagnosticCommunicationManager", "DIAGNOSTIC-COMMUNICATION-MANAGER"),
    DIAGNOSTIC_EVENT_MANAGER(4, "diagnosticEventManager", "DIAGNOSTIC-EVENT-MANAGER"),
    DIAGNOSTIC_LOG_AND_TRACE(5, "diagnosticLogAndTrace", "DIAGNOSTIC-LOG-AND-TRACE"),
    ECU_MANAGER(6, "ecuManager", "ECU-MANAGER"),
    FUNCTION_INHIBITION_MANAGER(7, "functionInhibitionManager", "FUNCTION-INHIBITION-MANAGER"),
    NON_VOLATILE_RAM_MANAGER(8, "nonVolatileRamManager", "NON-VOLATILE-RAM-MANAGER"),
    SYNC_BASE_TIME_MANAGER(9, "syncBaseTimeManager", "SYNC-BASE-TIME-MANAGER"),
    WATCH_DOG_MANAGER(10, "watchDogManager", "WATCH-DOG-MANAGER"),
    ANY_STANDARDIZED(11, "anyStandardized", "ANY-STANDARDIZED"),
    VENDOR_SPECIFIC(12, "vendorSpecific", "VENDOR-SPECIFIC"),
    DEVELOPMENT_ERROR_TRACER(13, "developmentErrorTracer", "DEVELOPMENT-ERROR-TRACER"),
    OPERATING_SYSTEM(14, "operatingSystem", "OPERATING-SYSTEM");

    public static final int BASIC_SOFTWARE_MODE_MANAGER_VALUE = 0;
    public static final int COM_MANAGER_VALUE = 1;
    public static final int CRYPTO_SERVICE_MANAGER_VALUE = 2;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_VALUE = 3;
    public static final int DIAGNOSTIC_EVENT_MANAGER_VALUE = 4;
    public static final int DIAGNOSTIC_LOG_AND_TRACE_VALUE = 5;
    public static final int ECU_MANAGER_VALUE = 6;
    public static final int FUNCTION_INHIBITION_MANAGER_VALUE = 7;
    public static final int NON_VOLATILE_RAM_MANAGER_VALUE = 8;
    public static final int SYNC_BASE_TIME_MANAGER_VALUE = 9;
    public static final int WATCH_DOG_MANAGER_VALUE = 10;
    public static final int ANY_STANDARDIZED_VALUE = 11;
    public static final int VENDOR_SPECIFIC_VALUE = 12;
    public static final int DEVELOPMENT_ERROR_TRACER_VALUE = 13;
    public static final int OPERATING_SYSTEM_VALUE = 14;
    private static final ServiceProviderEnum[] VALUES_ARRAY;
    public static final List<ServiceProviderEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ServiceProviderEnum[]{BASIC_SOFTWARE_MODE_MANAGER, COM_MANAGER, CRYPTO_SERVICE_MANAGER, DIAGNOSTIC_COMMUNICATION_MANAGER, DIAGNOSTIC_EVENT_MANAGER, DIAGNOSTIC_LOG_AND_TRACE, ECU_MANAGER, FUNCTION_INHIBITION_MANAGER, NON_VOLATILE_RAM_MANAGER, SYNC_BASE_TIME_MANAGER, WATCH_DOG_MANAGER, ANY_STANDARDIZED, VENDOR_SPECIFIC, DEVELOPMENT_ERROR_TRACER, OPERATING_SYSTEM};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ServiceProviderEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ServiceProviderEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ServiceProviderEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ServiceProviderEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ServiceProviderEnum get(int value) {
        switch (value) {
            case 0: {
                return BASIC_SOFTWARE_MODE_MANAGER;
            }
            case 1: {
                return COM_MANAGER;
            }
            case 2: {
                return CRYPTO_SERVICE_MANAGER;
            }
            case 3: {
                return DIAGNOSTIC_COMMUNICATION_MANAGER;
            }
            case 4: {
                return DIAGNOSTIC_EVENT_MANAGER;
            }
            case 5: {
                return DIAGNOSTIC_LOG_AND_TRACE;
            }
            case 6: {
                return ECU_MANAGER;
            }
            case 7: {
                return FUNCTION_INHIBITION_MANAGER;
            }
            case 8: {
                return NON_VOLATILE_RAM_MANAGER;
            }
            case 9: {
                return SYNC_BASE_TIME_MANAGER;
            }
            case 10: {
                return WATCH_DOG_MANAGER;
            }
            case 11: {
                return ANY_STANDARDIZED;
            }
            case 12: {
                return VENDOR_SPECIFIC;
            }
            case 13: {
                return DEVELOPMENT_ERROR_TRACER;
            }
            case 14: {
                return OPERATING_SYSTEM;
            }
        }
        return null;
    }

    private ServiceProviderEnum(int value, String name, String literal) {
        this.value = value;
        this.name = name;
        this.literal = literal;
    }

    public int getValue() {
        return this.value;
    }

    public String getName() {
        return this.name;
    }

    public String getLiteral() {
        return this.literal;
    }

    public String toString() {
        return this.literal;
    }
}

