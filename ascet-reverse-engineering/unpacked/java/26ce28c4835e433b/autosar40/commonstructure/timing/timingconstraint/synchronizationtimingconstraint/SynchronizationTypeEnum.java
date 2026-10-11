/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SynchronizationTypeEnum implements Enumerator
{
    STIMULUS_SYNCHRONIZATION(0, "stimulusSynchronization", "STIMULUS-SYNCHRONIZATION"),
    RESPONSE_SYNCHRONIZATION(1, "responseSynchronization", "RESPONSE-SYNCHRONIZATION");

    public static final int STIMULUS_SYNCHRONIZATION_VALUE = 0;
    public static final int RESPONSE_SYNCHRONIZATION_VALUE = 1;
    private static final SynchronizationTypeEnum[] VALUES_ARRAY;
    public static final List<SynchronizationTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SynchronizationTypeEnum[]{STIMULUS_SYNCHRONIZATION, RESPONSE_SYNCHRONIZATION};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SynchronizationTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SynchronizationTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SynchronizationTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SynchronizationTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SynchronizationTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return STIMULUS_SYNCHRONIZATION;
            }
            case 1: {
                return RESPONSE_SYNCHRONIZATION;
            }
        }
        return null;
    }

    private SynchronizationTypeEnum(int value, String name, String literal) {
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

