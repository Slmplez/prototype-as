/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum FlexrayChannelName implements Enumerator
{
    CHANNEL_A(0, "channelA", "CHANNEL-A"),
    CHANNEL_B(1, "channelB", "CHANNEL-B");

    public static final int CHANNEL_A_VALUE = 0;
    public static final int CHANNEL_B_VALUE = 1;
    private static final FlexrayChannelName[] VALUES_ARRAY;
    public static final List<FlexrayChannelName> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new FlexrayChannelName[]{CHANNEL_A, CHANNEL_B};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static FlexrayChannelName get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FlexrayChannelName result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FlexrayChannelName getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FlexrayChannelName result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FlexrayChannelName get(int value) {
        switch (value) {
            case 0: {
                return CHANNEL_A;
            }
            case 1: {
                return CHANNEL_B;
            }
        }
        return null;
    }

    private FlexrayChannelName(int value, String name, String literal) {
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

