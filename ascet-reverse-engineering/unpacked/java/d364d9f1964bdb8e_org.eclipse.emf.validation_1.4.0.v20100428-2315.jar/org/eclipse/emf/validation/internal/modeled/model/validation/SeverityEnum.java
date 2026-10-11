/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package org.eclipse.emf.validation.internal.modeled.model.validation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SeverityEnum implements Enumerator
{
    INFO(0, "INFO", "INFO"),
    WARNING(1, "WARNING", "WARNING"),
    ERROR(2, "ERROR", "ERROR"),
    CANCEL(3, "CANCEL", "CANCEL");

    public static final int INFO_VALUE = 0;
    public static final int WARNING_VALUE = 1;
    public static final int ERROR_VALUE = 2;
    public static final int CANCEL_VALUE = 3;
    private static final SeverityEnum[] VALUES_ARRAY;
    public static final List<SeverityEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SeverityEnum[]{INFO, WARNING, ERROR, CANCEL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SeverityEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SeverityEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SeverityEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SeverityEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SeverityEnum get(int value) {
        switch (value) {
            case 0: {
                return INFO;
            }
            case 1: {
                return WARNING;
            }
            case 2: {
                return ERROR;
            }
            case 3: {
                return CANCEL;
            }
        }
        return null;
    }

    private SeverityEnum(int value, String name, String literal) {
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

