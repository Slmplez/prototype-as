/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ResumePosition implements Enumerator
{
    START_FROM_BEGINNING(0, "startFromBeginning", "START-FROM-BEGINNING"),
    CONTINUE_AT_IT_POSITION(1, "continueAtItPosition", "CONTINUE-AT-IT-POSITION");

    public static final int START_FROM_BEGINNING_VALUE = 0;
    public static final int CONTINUE_AT_IT_POSITION_VALUE = 1;
    private static final ResumePosition[] VALUES_ARRAY;
    public static final List<ResumePosition> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ResumePosition[]{START_FROM_BEGINNING, CONTINUE_AT_IT_POSITION};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ResumePosition get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ResumePosition result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ResumePosition getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ResumePosition result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ResumePosition get(int value) {
        switch (value) {
            case 0: {
                return START_FROM_BEGINNING;
            }
            case 1: {
                return CONTINUE_AT_IT_POSITION;
            }
        }
        return null;
    }

    private ResumePosition(int value, String name, String literal) {
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

