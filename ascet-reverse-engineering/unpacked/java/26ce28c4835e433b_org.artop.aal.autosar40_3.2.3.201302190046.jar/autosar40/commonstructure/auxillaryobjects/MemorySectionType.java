/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.auxillaryobjects;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum MemorySectionType implements Enumerator
{
    VAR(0, "var", "VAR"),
    CODE(1, "code", "CODE"),
    CONST(2, "const", "CONST"),
    CALPRM(3, "calprm", "CALPRM"),
    CONFIG_DATA(4, "configData", "CONFIG-DATA"),
    EXCLUDE_FROM_FLASH(5, "excludeFromFlash", "EXCLUDE-FROM-FLASH"),
    CALIBRATION_VARIABLES(6, "calibrationVariables", "CALIBRATION-VARIABLES"),
    VAR_FAST(7, "varFast", "VAR-FAST"),
    VAR_NO_INIT(8, "varNoInit", "VAR-NO-INIT"),
    VAR_POWER_ON_INIT(9, "varPowerOnInit", "VAR-POWER-ON-INIT"),
    CALIBRATION_OFFLINE(10, "calibrationOffline", "CALIBRATION-OFFLINE"),
    CALIBRATION_ONLINE(11, "calibrationOnline", "CALIBRATION-ONLINE"),
    USER_DEFINED(12, "userDefined", "USER-DEFINED");

    public static final int VAR_VALUE = 0;
    public static final int CODE_VALUE = 1;
    public static final int CONST_VALUE = 2;
    public static final int CALPRM_VALUE = 3;
    public static final int CONFIG_DATA_VALUE = 4;
    public static final int EXCLUDE_FROM_FLASH_VALUE = 5;
    public static final int CALIBRATION_VARIABLES_VALUE = 6;
    public static final int VAR_FAST_VALUE = 7;
    public static final int VAR_NO_INIT_VALUE = 8;
    public static final int VAR_POWER_ON_INIT_VALUE = 9;
    public static final int CALIBRATION_OFFLINE_VALUE = 10;
    public static final int CALIBRATION_ONLINE_VALUE = 11;
    public static final int USER_DEFINED_VALUE = 12;
    private static final MemorySectionType[] VALUES_ARRAY;
    public static final List<MemorySectionType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MemorySectionType[]{VAR, CODE, CONST, CALPRM, CONFIG_DATA, EXCLUDE_FROM_FLASH, CALIBRATION_VARIABLES, VAR_FAST, VAR_NO_INIT, VAR_POWER_ON_INIT, CALIBRATION_OFFLINE, CALIBRATION_ONLINE, USER_DEFINED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static MemorySectionType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MemorySectionType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MemorySectionType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MemorySectionType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MemorySectionType get(int value) {
        switch (value) {
            case 0: {
                return VAR;
            }
            case 1: {
                return CODE;
            }
            case 2: {
                return CONST;
            }
            case 3: {
                return CALPRM;
            }
            case 4: {
                return CONFIG_DATA;
            }
            case 5: {
                return EXCLUDE_FROM_FLASH;
            }
            case 6: {
                return CALIBRATION_VARIABLES;
            }
            case 7: {
                return VAR_FAST;
            }
            case 8: {
                return VAR_NO_INIT;
            }
            case 9: {
                return VAR_POWER_ON_INIT;
            }
            case 10: {
                return CALIBRATION_OFFLINE;
            }
            case 11: {
                return CALIBRATION_ONLINE;
            }
            case 12: {
                return USER_DEFINED;
            }
        }
        return null;
    }

    private MemorySectionType(int value, String name, String literal) {
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

