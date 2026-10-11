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
public enum DtcKindEnum implements Enumerator
{
    EMISSION_RELATED_DTC(0, "emissionRelatedDtc", "EMISSION-RELATED-DTC"),
    NON_EMMISSION_RELATED_DTC(1, "nonEmmissionRelatedDtc", "NON-EMMISSION-RELATED-DTC");

    public static final int EMISSION_RELATED_DTC_VALUE = 0;
    public static final int NON_EMMISSION_RELATED_DTC_VALUE = 1;
    private static final DtcKindEnum[] VALUES_ARRAY;
    public static final List<DtcKindEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DtcKindEnum[]{EMISSION_RELATED_DTC, NON_EMMISSION_RELATED_DTC};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DtcKindEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DtcKindEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DtcKindEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DtcKindEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DtcKindEnum get(int value) {
        switch (value) {
            case 0: {
                return EMISSION_RELATED_DTC;
            }
            case 1: {
                return NON_EMMISSION_RELATED_DTC;
            }
        }
        return null;
    }

    private DtcKindEnum(int value, String name, String literal) {
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

