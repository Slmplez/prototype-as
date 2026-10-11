/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ExecutionTimeTypeEnum implements Enumerator
{
    NET(0, "net", "NET"),
    GROSS(1, "gross", "GROSS");

    public static final int NET_VALUE = 0;
    public static final int GROSS_VALUE = 1;
    private static final ExecutionTimeTypeEnum[] VALUES_ARRAY;
    public static final List<ExecutionTimeTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ExecutionTimeTypeEnum[]{NET, GROSS};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ExecutionTimeTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ExecutionTimeTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ExecutionTimeTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ExecutionTimeTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ExecutionTimeTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return NET;
            }
            case 1: {
                return GROSS;
            }
        }
        return null;
    }

    private ExecutionTimeTypeEnum(int value, String name, String literal) {
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

