/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.commonstructure.serviceneeds;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ObdRatioConnectionKind implements Enumerator
{
    API_USE(0, "apiUse", "API-USE"),
    OBSERVER(1, "observer", "OBSERVER");

    public static final int API_USE_VALUE = 0;
    public static final int OBSERVER_VALUE = 1;
    private static final ObdRatioConnectionKind[] VALUES_ARRAY;
    public static final List<ObdRatioConnectionKind> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ObdRatioConnectionKind[]{API_USE, OBSERVER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ObdRatioConnectionKind get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ObdRatioConnectionKind result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ObdRatioConnectionKind getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ObdRatioConnectionKind result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ObdRatioConnectionKind get(int value) {
        switch (value) {
            case 0: {
                return API_USE;
            }
            case 1: {
                return OBSERVER;
            }
        }
        return null;
    }

    private ObdRatioConnectionKind(int value, String name, String literal) {
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

