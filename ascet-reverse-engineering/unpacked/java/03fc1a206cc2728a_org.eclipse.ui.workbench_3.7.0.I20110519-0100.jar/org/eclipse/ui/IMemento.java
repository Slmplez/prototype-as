/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

public interface IMemento {
    public static final String TAG_ID = "IMemento.internal.id";

    public IMemento createChild(String var1);

    public IMemento createChild(String var1, String var2);

    public IMemento getChild(String var1);

    public IMemento[] getChildren(String var1);

    public Float getFloat(String var1);

    public String getType();

    public String getID();

    public Integer getInteger(String var1);

    public String getString(String var1);

    public Boolean getBoolean(String var1);

    public String getTextData();

    public String[] getAttributeKeys();

    public void putFloat(String var1, float var2);

    public void putInteger(String var1, int var2);

    public void putMemento(IMemento var1);

    public void putString(String var1, String var2);

    public void putBoolean(String var1, boolean var2);

    public void putTextData(String var1);
}

