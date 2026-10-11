/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum VariableAccessScopeEnum implements Enumerator
{
    COMMUNICATION_INTER_ECU(0, "communicationInterEcu", "COMMUNICATION-INTER-ECU"),
    COMMUNICATION_INTRA_PARTITION(1, "communicationIntraPartition", "COMMUNICATION-INTRA-PARTITION"),
    INTER_PARTITION_INTRA_ECU(2, "interPartitionIntraEcu", "INTER-PARTITION-INTRA-ECU");

    public static final int COMMUNICATION_INTER_ECU_VALUE = 0;
    public static final int COMMUNICATION_INTRA_PARTITION_VALUE = 1;
    public static final int INTER_PARTITION_INTRA_ECU_VALUE = 2;
    private static final VariableAccessScopeEnum[] VALUES_ARRAY;
    public static final List<VariableAccessScopeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new VariableAccessScopeEnum[]{COMMUNICATION_INTER_ECU, COMMUNICATION_INTRA_PARTITION, INTER_PARTITION_INTRA_ECU};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static VariableAccessScopeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            VariableAccessScopeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static VariableAccessScopeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            VariableAccessScopeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static VariableAccessScopeEnum get(int value) {
        switch (value) {
            case 0: {
                return COMMUNICATION_INTER_ECU;
            }
            case 1: {
                return COMMUNICATION_INTRA_PARTITION;
            }
            case 2: {
                return INTER_PARTITION_INTRA_ECU;
            }
        }
        return null;
    }

    private VariableAccessScopeEnum(int value, String name, String literal) {
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

