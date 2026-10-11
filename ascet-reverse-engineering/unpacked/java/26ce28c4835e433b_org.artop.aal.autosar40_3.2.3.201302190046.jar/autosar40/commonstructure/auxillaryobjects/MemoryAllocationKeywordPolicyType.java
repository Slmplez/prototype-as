/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.auxillaryobjects;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum MemoryAllocationKeywordPolicyType implements Enumerator
{
    ADDR_METHOD_SHORT_NAME(0, "AddrMethodShortName", "ADDR-METHOD-SHORT-NAME"),
    ADDR_METHOD_SHORT_NAME_AND_ALIGNMENT(1, "AddrMethodShortNameAndAlignment", "ADDR-METHOD-SHORT-NAME-AND-ALIGNMENT");

    public static final int ADDR_METHOD_SHORT_NAME_VALUE = 0;
    public static final int ADDR_METHOD_SHORT_NAME_AND_ALIGNMENT_VALUE = 1;
    private static final MemoryAllocationKeywordPolicyType[] VALUES_ARRAY;
    public static final List<MemoryAllocationKeywordPolicyType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MemoryAllocationKeywordPolicyType[]{ADDR_METHOD_SHORT_NAME, ADDR_METHOD_SHORT_NAME_AND_ALIGNMENT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static MemoryAllocationKeywordPolicyType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MemoryAllocationKeywordPolicyType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MemoryAllocationKeywordPolicyType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MemoryAllocationKeywordPolicyType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MemoryAllocationKeywordPolicyType get(int value) {
        switch (value) {
            case 0: {
                return ADDR_METHOD_SHORT_NAME;
            }
            case 1: {
                return ADDR_METHOD_SHORT_NAME_AND_ALIGNMENT;
            }
        }
        return null;
    }

    private MemoryAllocationKeywordPolicyType(int value, String name, String literal) {
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

