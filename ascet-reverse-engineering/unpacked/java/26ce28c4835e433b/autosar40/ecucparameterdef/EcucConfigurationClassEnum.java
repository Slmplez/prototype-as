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
public enum EcucConfigurationClassEnum implements Enumerator
{
    PUBLISHED_INFORMATION(0, "PublishedInformation", "PUBLISHED-INFORMATION"),
    PRE_COMPILE(1, "PreCompile", "PRE-COMPILE"),
    LINK(2, "Link", "LINK"),
    POST_BUILD(3, "PostBuild", "POST-BUILD");

    public static final int PUBLISHED_INFORMATION_VALUE = 0;
    public static final int PRE_COMPILE_VALUE = 1;
    public static final int LINK_VALUE = 2;
    public static final int POST_BUILD_VALUE = 3;
    private static final EcucConfigurationClassEnum[] VALUES_ARRAY;
    public static final List<EcucConfigurationClassEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new EcucConfigurationClassEnum[]{PUBLISHED_INFORMATION, PRE_COMPILE, LINK, POST_BUILD};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static EcucConfigurationClassEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EcucConfigurationClassEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EcucConfigurationClassEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EcucConfigurationClassEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EcucConfigurationClassEnum get(int value) {
        switch (value) {
            case 0: {
                return PUBLISHED_INFORMATION;
            }
            case 1: {
                return PRE_COMPILE;
            }
            case 2: {
                return LINK;
            }
            case 3: {
                return POST_BUILD;
            }
        }
        return null;
    }

    private EcucConfigurationClassEnum(int value, String name, String literal) {
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

