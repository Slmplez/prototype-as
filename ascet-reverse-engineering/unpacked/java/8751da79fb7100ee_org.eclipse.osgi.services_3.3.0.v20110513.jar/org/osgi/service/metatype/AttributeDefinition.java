/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.metatype;

public interface AttributeDefinition {
    public static final int STRING = 1;
    public static final int LONG = 2;
    public static final int INTEGER = 3;
    public static final int SHORT = 4;
    public static final int CHARACTER = 5;
    public static final int BYTE = 6;
    public static final int DOUBLE = 7;
    public static final int FLOAT = 8;
    public static final int BIGINTEGER = 9;
    public static final int BIGDECIMAL = 10;
    public static final int BOOLEAN = 11;
    public static final int PASSWORD = 12;

    public String getName();

    public String getID();

    public String getDescription();

    public int getCardinality();

    public int getType();

    public String[] getOptionValues();

    public String[] getOptionLabels();

    public String validate(String var1);

    public String[] getDefaultValue();
}

