/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecucparameterdef;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ConfigurationClass implements Enumerator
{
    POST_BUILD_LOADABLE(0, "PostBuildLoadable", "POST-BUILD-LOADABLE"),
    POST_BUILD(1, "PostBuild", "POST-BUILD"),
    PRE_COMPILE(2, "PreCompile", "PRE-COMPILE"),
    POST_BUILD_SELECTABLE(3, "PostBuildSelectable", "POST-BUILD-SELECTABLE"),
    PUBLISHED_INFORMATION(4, "PublishedInformation", "PUBLISHED-INFORMATION"),
    LINK(5, "Link", "LINK");

    public static final int POST_BUILD_LOADABLE_VALUE = 0;
    public static final int POST_BUILD_VALUE = 1;
    public static final int PRE_COMPILE_VALUE = 2;
    public static final int POST_BUILD_SELECTABLE_VALUE = 3;
    public static final int PUBLISHED_INFORMATION_VALUE = 4;
    public static final int LINK_VALUE = 5;
    private static final ConfigurationClass[] VALUES_ARRAY;
    public static final List<ConfigurationClass> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ConfigurationClass[]{POST_BUILD_LOADABLE, POST_BUILD, PRE_COMPILE, POST_BUILD_SELECTABLE, PUBLISHED_INFORMATION, LINK};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ConfigurationClass get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ConfigurationClass result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ConfigurationClass getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ConfigurationClass result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ConfigurationClass get(int value) {
        switch (value) {
            case 0: {
                return POST_BUILD_LOADABLE;
            }
            case 1: {
                return POST_BUILD;
            }
            case 2: {
                return PRE_COMPILE;
            }
            case 3: {
                return POST_BUILD_SELECTABLE;
            }
            case 4: {
                return PUBLISHED_INFORMATION;
            }
            case 5: {
                return LINK;
            }
        }
        return null;
    }

    private ConfigurationClass(int value, String name, String literal) {
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

