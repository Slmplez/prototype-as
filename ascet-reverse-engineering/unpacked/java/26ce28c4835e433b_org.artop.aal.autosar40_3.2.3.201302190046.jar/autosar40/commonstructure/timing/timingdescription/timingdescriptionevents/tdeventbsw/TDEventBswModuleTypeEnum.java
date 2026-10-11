/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TDEventBswModuleTypeEnum implements Enumerator
{
    BSW_MENTRY_CALLED(0, "bswMEntryCalled", "BSW-M-ENTRY-CALLED"),
    BSW_MENTRY_CALL_RETURNED(1, "bswMEntryCallReturned", "BSW-M-ENTRY-CALL-RETURNED");

    public static final int BSW_MENTRY_CALLED_VALUE = 0;
    public static final int BSW_MENTRY_CALL_RETURNED_VALUE = 1;
    private static final TDEventBswModuleTypeEnum[] VALUES_ARRAY;
    public static final List<TDEventBswModuleTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TDEventBswModuleTypeEnum[]{BSW_MENTRY_CALLED, BSW_MENTRY_CALL_RETURNED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TDEventBswModuleTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventBswModuleTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventBswModuleTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventBswModuleTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventBswModuleTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return BSW_MENTRY_CALLED;
            }
            case 1: {
                return BSW_MENTRY_CALL_RETURNED;
            }
        }
        return null;
    }

    private TDEventBswModuleTypeEnum(int value, String name, String literal) {
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

