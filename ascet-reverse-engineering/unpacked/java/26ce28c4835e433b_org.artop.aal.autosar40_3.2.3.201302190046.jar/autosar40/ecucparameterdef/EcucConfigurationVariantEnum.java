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
public enum EcucConfigurationVariantEnum implements Enumerator
{
    PRECONFIGURED_CONFIGURATION(0, "PreconfiguredConfiguration", "PRECONFIGURED-CONFIGURATION"),
    RECOMMENDED_CONFIGURATION(1, "RecommendedConfiguration", "RECOMMENDED-CONFIGURATION"),
    VARIANT_PRE_COMPILE(2, "VariantPreCompile", "VARIANT-PRE-COMPILE"),
    VARIANT_LINK_TIME(3, "VariantLinkTime", "VARIANT-LINK-TIME"),
    VARIANT_POST_BUILD(4, "VariantPostBuild", "VARIANT-POST-BUILD"),
    VARIANT_POST_BUILD_LOADABLE(5, "VariantPostBuildLoadable", "VARIANT-POST-BUILD-LOADABLE"),
    VARIANT_POST_BUILD_SELECTABLE(6, "VariantPostBuildSelectable", "VARIANT-POST-BUILD-SELECTABLE");

    public static final int PRECONFIGURED_CONFIGURATION_VALUE = 0;
    public static final int RECOMMENDED_CONFIGURATION_VALUE = 1;
    public static final int VARIANT_PRE_COMPILE_VALUE = 2;
    public static final int VARIANT_LINK_TIME_VALUE = 3;
    public static final int VARIANT_POST_BUILD_VALUE = 4;
    public static final int VARIANT_POST_BUILD_LOADABLE_VALUE = 5;
    public static final int VARIANT_POST_BUILD_SELECTABLE_VALUE = 6;
    private static final EcucConfigurationVariantEnum[] VALUES_ARRAY;
    public static final List<EcucConfigurationVariantEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new EcucConfigurationVariantEnum[]{PRECONFIGURED_CONFIGURATION, RECOMMENDED_CONFIGURATION, VARIANT_PRE_COMPILE, VARIANT_LINK_TIME, VARIANT_POST_BUILD, VARIANT_POST_BUILD_LOADABLE, VARIANT_POST_BUILD_SELECTABLE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static EcucConfigurationVariantEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EcucConfigurationVariantEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EcucConfigurationVariantEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EcucConfigurationVariantEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EcucConfigurationVariantEnum get(int value) {
        switch (value) {
            case 0: {
                return PRECONFIGURED_CONFIGURATION;
            }
            case 1: {
                return RECOMMENDED_CONFIGURATION;
            }
            case 2: {
                return VARIANT_PRE_COMPILE;
            }
            case 3: {
                return VARIANT_LINK_TIME;
            }
            case 4: {
                return VARIANT_POST_BUILD;
            }
            case 5: {
                return VARIANT_POST_BUILD_LOADABLE;
            }
            case 6: {
                return VARIANT_POST_BUILD_SELECTABLE;
            }
        }
        return null;
    }

    private EcucConfigurationVariantEnum(int value, String name, String literal) {
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

