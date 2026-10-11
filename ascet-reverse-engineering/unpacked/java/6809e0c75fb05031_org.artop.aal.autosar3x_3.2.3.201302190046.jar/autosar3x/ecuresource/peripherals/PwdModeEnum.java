/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.ecuresource.peripherals;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum PwdModeEnum implements Enumerator
{
    TWO_PHASE_INPUT(0, "twoPhaseInput", "TWO-PHASE-INPUT"),
    THREE_PHASE_INPUT(1, "threePhaseInput", "THREE-PHASE-INPUT");

    public static final int TWO_PHASE_INPUT_VALUE = 0;
    public static final int THREE_PHASE_INPUT_VALUE = 1;
    private static final PwdModeEnum[] VALUES_ARRAY;
    public static final List<PwdModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new PwdModeEnum[]{TWO_PHASE_INPUT, THREE_PHASE_INPUT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static PwdModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PwdModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PwdModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PwdModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PwdModeEnum get(int value) {
        switch (value) {
            case 0: {
                return TWO_PHASE_INPUT;
            }
            case 1: {
                return THREE_PHASE_INPUT;
            }
        }
        return null;
    }

    private PwdModeEnum(int value, String name, String literal) {
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

