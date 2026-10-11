/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.serviceneeds;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum DiagnosticValueAccessEnum implements Enumerator
{
    READ_ONLY(0, "readOnly", "READ-ONLY"),
    READ_WRITE(1, "readWrite", "READ-WRITE");

    public static final int READ_ONLY_VALUE = 0;
    public static final int READ_WRITE_VALUE = 1;
    private static final DiagnosticValueAccessEnum[] VALUES_ARRAY;
    public static final List<DiagnosticValueAccessEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DiagnosticValueAccessEnum[]{READ_ONLY, READ_WRITE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DiagnosticValueAccessEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DiagnosticValueAccessEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DiagnosticValueAccessEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DiagnosticValueAccessEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DiagnosticValueAccessEnum get(int value) {
        switch (value) {
            case 0: {
                return READ_ONLY;
            }
            case 1: {
                return READ_WRITE;
            }
        }
        return null;
    }

    private DiagnosticValueAccessEnum(int value, String name, String literal) {
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

