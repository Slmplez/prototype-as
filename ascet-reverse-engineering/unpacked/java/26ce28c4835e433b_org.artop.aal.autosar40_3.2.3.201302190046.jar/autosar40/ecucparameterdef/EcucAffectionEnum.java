/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.ecucparameterdef;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum EcucAffectionEnum implements Enumerator
{
    NO_AFFECT(0, "NOAffect", "NO-AFFECT"),
    PC_AFFECTS_LT(1, "PCAffectsLT", "PC-AFFECTS-LT"),
    PC_AFFECTS_PB(2, "PCAffectsPB", "PC-AFFECTS-PB"),
    PC_AFFECTS_LT_AND_PB(3, "PCAffectsLTAndPB", "PC-AFFECTS-LT-AND-PB"),
    LT_AFFECTS_PB(4, "LTAffectsPB", "LT-AFFECTS-PB");

    public static final int NO_AFFECT_VALUE = 0;
    public static final int PC_AFFECTS_LT_VALUE = 1;
    public static final int PC_AFFECTS_PB_VALUE = 2;
    public static final int PC_AFFECTS_LT_AND_PB_VALUE = 3;
    public static final int LT_AFFECTS_PB_VALUE = 4;
    private static final EcucAffectionEnum[] VALUES_ARRAY;
    public static final List<EcucAffectionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new EcucAffectionEnum[]{NO_AFFECT, PC_AFFECTS_LT, PC_AFFECTS_PB, PC_AFFECTS_LT_AND_PB, LT_AFFECTS_PB};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static EcucAffectionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EcucAffectionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EcucAffectionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EcucAffectionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EcucAffectionEnum get(int value) {
        switch (value) {
            case 0: {
                return NO_AFFECT;
            }
            case 1: {
                return PC_AFFECTS_LT;
            }
            case 2: {
                return PC_AFFECTS_PB;
            }
            case 3: {
                return PC_AFFECTS_LT_AND_PB;
            }
            case 4: {
                return LT_AFFECTS_PB;
            }
        }
        return null;
    }

    private EcucAffectionEnum(int value, String name, String literal) {
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

