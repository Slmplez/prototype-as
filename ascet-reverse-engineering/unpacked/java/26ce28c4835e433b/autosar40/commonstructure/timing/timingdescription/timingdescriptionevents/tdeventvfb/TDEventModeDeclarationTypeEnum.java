/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TDEventModeDeclarationTypeEnum implements Enumerator
{
    MODE_DECLARATION_SWITCH_INITIATED(0, "modeDeclarationSwitchInitiated", "MODE-DECLARATION-SWITCH-INITIATED"),
    MODE_DECLARATION_SWITCH_COMPLETED(1, "modeDeclarationSwitchCompleted", "MODE-DECLARATION-SWITCH-COMPLETED");

    public static final int MODE_DECLARATION_SWITCH_INITIATED_VALUE = 0;
    public static final int MODE_DECLARATION_SWITCH_COMPLETED_VALUE = 1;
    private static final TDEventModeDeclarationTypeEnum[] VALUES_ARRAY;
    public static final List<TDEventModeDeclarationTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TDEventModeDeclarationTypeEnum[]{MODE_DECLARATION_SWITCH_INITIATED, MODE_DECLARATION_SWITCH_COMPLETED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TDEventModeDeclarationTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventModeDeclarationTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventModeDeclarationTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventModeDeclarationTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventModeDeclarationTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return MODE_DECLARATION_SWITCH_INITIATED;
            }
            case 1: {
                return MODE_DECLARATION_SWITCH_COMPLETED;
            }
        }
        return null;
    }

    private TDEventModeDeclarationTypeEnum(int value, String name, String literal) {
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

