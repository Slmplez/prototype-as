/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Notification {
    @Deprecated
    public static final int CREATE = 0;
    public static final int SET = 1;
    public static final int UNSET = 2;
    public static final int ADD = 3;
    public static final int REMOVE = 4;
    public static final int ADD_MANY = 5;
    public static final int REMOVE_MANY = 6;
    public static final int MOVE = 7;
    public static final int REMOVING_ADAPTER = 8;
    public static final int RESOLVE = 9;
    public static final int EVENT_TYPE_COUNT = 10;
    public static final int NO_FEATURE_ID = -1;
    public static final int NO_INDEX = -1;

    public Object getNotifier();

    public int getEventType();

    public int getFeatureID(Class<?> var1);

    public Object getFeature();

    public Object getOldValue();

    public Object getNewValue();

    public boolean wasSet();

    public boolean isTouch();

    public boolean isReset();

    public int getPosition();

    public boolean merge(Notification var1);

    public boolean getOldBooleanValue();

    public boolean getNewBooleanValue();

    public byte getOldByteValue();

    public byte getNewByteValue();

    public char getOldCharValue();

    public char getNewCharValue();

    public double getOldDoubleValue();

    public double getNewDoubleValue();

    public float getOldFloatValue();

    public float getNewFloatValue();

    public int getOldIntValue();

    public int getNewIntValue();

    public long getOldLongValue();

    public long getNewLongValue();

    public short getOldShortValue();

    public short getNewShortValue();

    public String getOldStringValue();

    public String getNewStringValue();
}

