/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.commonstructure.resourceconsumption.memorysectionusage;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum MemorySectionType implements Enumerator
{
    CODE(0, "code", "CODE"),
    VAR_NO_INIT(1, "varNoInit", "VAR-NO-INIT"),
    VAR_POWER_ON_INIT(2, "varPowerOnInit", "VAR-POWER-ON-INIT"),
    VAR_FAST(3, "varFast", "VAR-FAST"),
    VAR(4, "var", "VAR"),
    CONST(5, "const", "CONST"),
    CONFIG_DATA(6, "configData", "CONFIG-DATA"),
    USER_DEFINED(7, "userDefined", "USER-DEFINED");

    public static final int CODE_VALUE = 0;
    public static final int VAR_NO_INIT_VALUE = 1;
    public static final int VAR_POWER_ON_INIT_VALUE = 2;
    public static final int VAR_FAST_VALUE = 3;
    public static final int VAR_VALUE = 4;
    public static final int CONST_VALUE = 5;
    public static final int CONFIG_DATA_VALUE = 6;
    public static final int USER_DEFINED_VALUE = 7;
    private static final MemorySectionType[] VALUES_ARRAY;
    public static final List<MemorySectionType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MemorySectionType[]{CODE, VAR_NO_INIT, VAR_POWER_ON_INIT, VAR_FAST, VAR, CONST, CONFIG_DATA, USER_DEFINED};
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
                return CODE;
            }
            case 1: {
                return VAR_NO_INIT;
            }
            case 2: {
                return VAR_POWER_ON_INIT;
            }
            case 3: {
                return VAR_FAST;
            }
            case 4: {
                return VAR;
            }
            case 5: {
                return CONST;
            }
            case 6: {
                return CONFIG_DATA;
            }
            case 7: {
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

