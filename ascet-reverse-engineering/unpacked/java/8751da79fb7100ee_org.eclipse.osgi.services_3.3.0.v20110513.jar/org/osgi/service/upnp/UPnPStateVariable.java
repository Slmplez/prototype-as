/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.upnp;

public interface UPnPStateVariable {
    public static final String TYPE_UI1 = "ui1";
    public static final String TYPE_UI2 = "ui2";
    public static final String TYPE_UI4 = "ui4";
    public static final String TYPE_I1 = "i1";
    public static final String TYPE_I2 = "i2";
    public static final String TYPE_I4 = "i4";
    public static final String TYPE_INT = "int";
    public static final String TYPE_R4 = "r4";
    public static final String TYPE_R8 = "r8";
    public static final String TYPE_NUMBER = "number";
    public static final String TYPE_FIXED_14_4 = "fixed.14.4";
    public static final String TYPE_FLOAT = "float";
    public static final String TYPE_CHAR = "char";
    public static final String TYPE_STRING = "string";
    public static final String TYPE_DATE = "date";
    public static final String TYPE_DATETIME = "dateTime";
    public static final String TYPE_DATETIME_TZ = "dateTime.tz";
    public static final String TYPE_TIME = "time";
    public static final String TYPE_TIME_TZ = "time.tz";
    public static final String TYPE_BOOLEAN = "boolean";
    public static final String TYPE_BIN_BASE64 = "bin.base64";
    public static final String TYPE_BIN_HEX = "bin.hex";
    public static final String TYPE_URI = "uri";
    public static final String TYPE_UUID = "uuid";

    public String getName();

    public Class getJavaDataType();

    public String getUPnPDataType();

    public Object getDefaultValue();

    public String[] getAllowedValues();

    public Number getMinimum();

    public Number getMaximum();

    public Number getStep();

    public boolean sendsEvents();
}

