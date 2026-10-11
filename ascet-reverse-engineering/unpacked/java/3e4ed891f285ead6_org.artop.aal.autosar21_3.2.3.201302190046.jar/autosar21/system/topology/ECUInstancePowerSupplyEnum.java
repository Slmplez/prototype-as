/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.system.topology;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ECUInstancePowerSupplyEnum implements Enumerator
{
    BATTERY(0, "Battery", "BATTERY"),
    IGNITION(1, "Ignition", "IGNITION"),
    ACCESSORY(2, "Accessory", "ACCESSORY"),
    OTHER(3, "Other", "OTHER");

    public static final int BATTERY_VALUE = 0;
    public static final int IGNITION_VALUE = 1;
    public static final int ACCESSORY_VALUE = 2;
    public static final int OTHER_VALUE = 3;
    private static final ECUInstancePowerSupplyEnum[] VALUES_ARRAY;
    public static final List<ECUInstancePowerSupplyEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ECUInstancePowerSupplyEnum[]{BATTERY, IGNITION, ACCESSORY, OTHER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ECUInstancePowerSupplyEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ECUInstancePowerSupplyEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ECUInstancePowerSupplyEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ECUInstancePowerSupplyEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ECUInstancePowerSupplyEnum get(int value) {
        switch (value) {
            case 0: {
                return BATTERY;
            }
            case 1: {
                return IGNITION;
            }
            case 2: {
                return ACCESSORY;
            }
            case 3: {
                return OTHER;
            }
        }
        return null;
    }

    private ECUInstancePowerSupplyEnum(int value, String name, String literal) {
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

