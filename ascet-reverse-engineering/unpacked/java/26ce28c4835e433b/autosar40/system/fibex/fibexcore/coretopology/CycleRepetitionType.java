/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.fibex.fibexcore.coretopology;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CycleRepetitionType implements Enumerator
{
    CYCLE_REPETITION1(0, "cycleRepetition1", "CYCLE-REPETITION-1"),
    CYCLE_REPETITION2(1, "cycleRepetition2", "CYCLE-REPETITION-2"),
    CYCLE_REPETITION4(2, "cycleRepetition4", "CYCLE-REPETITION-4"),
    CYCLE_REPETITION8(3, "cycleRepetition8", "CYCLE-REPETITION-8"),
    CYCLE_REPETITION16(4, "cycleRepetition16", "CYCLE-REPETITION-16"),
    CYCLE_REPETITION32(5, "cycleRepetition32", "CYCLE-REPETITION-32"),
    CYCLE_REPETITION64(6, "cycleRepetition64", "CYCLE-REPETITION-64"),
    CYCLE_REPETITION5(7, "cycleRepetition5", "CYCLE-REPETITION-5"),
    CYCLE_REPETITION10(8, "cycleRepetition10", "CYCLE-REPETITION-10"),
    CYCLE_REPETITION20(9, "cycleRepetition20", "CYCLE-REPETITION-20"),
    CYCLE_REPETITION40(10, "cycleRepetition40", "CYCLE-REPETITION-40"),
    CYCLE_REPETITION50(11, "cycleRepetition50", "CYCLE-REPETITION-50");

    public static final int CYCLE_REPETITION1_VALUE = 0;
    public static final int CYCLE_REPETITION2_VALUE = 1;
    public static final int CYCLE_REPETITION4_VALUE = 2;
    public static final int CYCLE_REPETITION8_VALUE = 3;
    public static final int CYCLE_REPETITION16_VALUE = 4;
    public static final int CYCLE_REPETITION32_VALUE = 5;
    public static final int CYCLE_REPETITION64_VALUE = 6;
    public static final int CYCLE_REPETITION5_VALUE = 7;
    public static final int CYCLE_REPETITION10_VALUE = 8;
    public static final int CYCLE_REPETITION20_VALUE = 9;
    public static final int CYCLE_REPETITION40_VALUE = 10;
    public static final int CYCLE_REPETITION50_VALUE = 11;
    private static final CycleRepetitionType[] VALUES_ARRAY;
    public static final List<CycleRepetitionType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CycleRepetitionType[]{CYCLE_REPETITION1, CYCLE_REPETITION2, CYCLE_REPETITION4, CYCLE_REPETITION8, CYCLE_REPETITION16, CYCLE_REPETITION32, CYCLE_REPETITION64, CYCLE_REPETITION5, CYCLE_REPETITION10, CYCLE_REPETITION20, CYCLE_REPETITION40, CYCLE_REPETITION50};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CycleRepetitionType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CycleRepetitionType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CycleRepetitionType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CycleRepetitionType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CycleRepetitionType get(int value) {
        switch (value) {
            case 0: {
                return CYCLE_REPETITION1;
            }
            case 1: {
                return CYCLE_REPETITION2;
            }
            case 2: {
                return CYCLE_REPETITION4;
            }
            case 3: {
                return CYCLE_REPETITION8;
            }
            case 4: {
                return CYCLE_REPETITION16;
            }
            case 5: {
                return CYCLE_REPETITION32;
            }
            case 6: {
                return CYCLE_REPETITION64;
            }
            case 7: {
                return CYCLE_REPETITION5;
            }
            case 8: {
                return CYCLE_REPETITION10;
            }
            case 9: {
                return CYCLE_REPETITION20;
            }
            case 10: {
                return CYCLE_REPETITION40;
            }
            case 11: {
                return CYCLE_REPETITION50;
            }
        }
        return null;
    }

    private CycleRepetitionType(int value, String name, String literal) {
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

