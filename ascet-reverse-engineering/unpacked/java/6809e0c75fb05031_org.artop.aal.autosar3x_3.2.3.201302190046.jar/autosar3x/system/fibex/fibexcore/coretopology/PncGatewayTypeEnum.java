/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.system.fibex.fibexcore.coretopology;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum PncGatewayTypeEnum implements Enumerator
{
    NONE(0, "none", "NONE"),
    ACTIVE(1, "active", "ACTIVE"),
    PASSIVE(2, "passive", "PASSIVE");

    public static final int NONE_VALUE = 0;
    public static final int ACTIVE_VALUE = 1;
    public static final int PASSIVE_VALUE = 2;
    private static final PncGatewayTypeEnum[] VALUES_ARRAY;
    public static final List<PncGatewayTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new PncGatewayTypeEnum[]{NONE, ACTIVE, PASSIVE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static PncGatewayTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PncGatewayTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PncGatewayTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PncGatewayTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PncGatewayTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return NONE;
            }
            case 1: {
                return ACTIVE;
            }
            case 2: {
                return PASSIVE;
            }
        }
        return null;
    }

    private PncGatewayTypeEnum(int value, String name, String literal) {
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

