/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.util.IPropertyChangeListener;

public interface IPreferenceStore {
    public static final boolean BOOLEAN_DEFAULT_DEFAULT = false;
    public static final double DOUBLE_DEFAULT_DEFAULT = 0.0;
    public static final float FLOAT_DEFAULT_DEFAULT = 0.0f;
    public static final int INT_DEFAULT_DEFAULT = 0;
    public static final long LONG_DEFAULT_DEFAULT = 0L;
    public static final String STRING_DEFAULT_DEFAULT = "";
    public static final String TRUE = "true";
    public static final String FALSE = "false";

    public void addPropertyChangeListener(IPropertyChangeListener var1);

    public boolean contains(String var1);

    public void firePropertyChangeEvent(String var1, Object var2, Object var3);

    public boolean getBoolean(String var1);

    public boolean getDefaultBoolean(String var1);

    public double getDefaultDouble(String var1);

    public float getDefaultFloat(String var1);

    public int getDefaultInt(String var1);

    public long getDefaultLong(String var1);

    public String getDefaultString(String var1);

    public double getDouble(String var1);

    public float getFloat(String var1);

    public int getInt(String var1);

    public long getLong(String var1);

    public String getString(String var1);

    public boolean isDefault(String var1);

    public boolean needsSaving();

    public void putValue(String var1, String var2);

    public void removePropertyChangeListener(IPropertyChangeListener var1);

    public void setDefault(String var1, double var2);

    public void setDefault(String var1, float var2);

    public void setDefault(String var1, int var2);

    public void setDefault(String var1, long var2);

    public void setDefault(String var1, String var2);

    public void setDefault(String var1, boolean var2);

    public void setToDefault(String var1);

    public void setValue(String var1, double var2);

    public void setValue(String var1, float var2);

    public void setValue(String var1, int var2);

    public void setValue(String var1, long var2);

    public void setValue(String var1, String var2);

    public void setValue(String var1, boolean var2);
}

