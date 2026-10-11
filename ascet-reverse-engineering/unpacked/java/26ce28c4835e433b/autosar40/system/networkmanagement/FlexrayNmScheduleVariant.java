/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.networkmanagement;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum FlexrayNmScheduleVariant implements Enumerator
{
    SCHEDULE_VARIANT1(0, "scheduleVariant1", "SCHEDULE-VARIANT-1"),
    SCHEDULE_VARIANT2(1, "scheduleVariant2", "SCHEDULE-VARIANT-2"),
    SCHEDULE_VARIANT3(2, "scheduleVariant3", "SCHEDULE-VARIANT-3"),
    SCHEDULE_VARIANT4(3, "scheduleVariant4", "SCHEDULE-VARIANT-4"),
    SCHEDULE_VARIANT5(4, "scheduleVariant5", "SCHEDULE-VARIANT-5"),
    SCHEDULE_VARIANT6(5, "scheduleVariant6", "SCHEDULE-VARIANT-6"),
    SCHEDULE_VARIANT7(6, "scheduleVariant7", "SCHEDULE-VARIANT-7");

    public static final int SCHEDULE_VARIANT1_VALUE = 0;
    public static final int SCHEDULE_VARIANT2_VALUE = 1;
    public static final int SCHEDULE_VARIANT3_VALUE = 2;
    public static final int SCHEDULE_VARIANT4_VALUE = 3;
    public static final int SCHEDULE_VARIANT5_VALUE = 4;
    public static final int SCHEDULE_VARIANT6_VALUE = 5;
    public static final int SCHEDULE_VARIANT7_VALUE = 6;
    private static final FlexrayNmScheduleVariant[] VALUES_ARRAY;
    public static final List<FlexrayNmScheduleVariant> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new FlexrayNmScheduleVariant[]{SCHEDULE_VARIANT1, SCHEDULE_VARIANT2, SCHEDULE_VARIANT3, SCHEDULE_VARIANT4, SCHEDULE_VARIANT5, SCHEDULE_VARIANT6, SCHEDULE_VARIANT7};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static FlexrayNmScheduleVariant get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FlexrayNmScheduleVariant result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FlexrayNmScheduleVariant getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FlexrayNmScheduleVariant result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FlexrayNmScheduleVariant get(int value) {
        switch (value) {
            case 0: {
                return SCHEDULE_VARIANT1;
            }
            case 1: {
                return SCHEDULE_VARIANT2;
            }
            case 2: {
                return SCHEDULE_VARIANT3;
            }
            case 3: {
                return SCHEDULE_VARIANT4;
            }
            case 4: {
                return SCHEDULE_VARIANT5;
            }
            case 5: {
                return SCHEDULE_VARIANT6;
            }
            case 6: {
                return SCHEDULE_VARIANT7;
            }
        }
        return null;
    }

    private FlexrayNmScheduleVariant(int value, String name, String literal) {
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

