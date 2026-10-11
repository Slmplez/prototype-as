/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.dialogs;

import java.io.IOException;
import java.io.Reader;
import java.io.Writer;

public interface IDialogSettings {
    public IDialogSettings addNewSection(String var1);

    public void addSection(IDialogSettings var1);

    public String get(String var1);

    public String[] getArray(String var1);

    public boolean getBoolean(String var1);

    public double getDouble(String var1) throws NumberFormatException;

    public float getFloat(String var1) throws NumberFormatException;

    public int getInt(String var1) throws NumberFormatException;

    public long getLong(String var1) throws NumberFormatException;

    public String getName();

    public IDialogSettings getSection(String var1);

    public IDialogSettings[] getSections();

    public void load(Reader var1) throws IOException;

    public void load(String var1) throws IOException;

    public void put(String var1, String[] var2);

    public void put(String var1, double var2);

    public void put(String var1, float var2);

    public void put(String var1, int var2);

    public void put(String var1, long var2);

    public void put(String var1, String var2);

    public void put(String var1, boolean var2);

    public void save(Writer var1) throws IOException;

    public void save(String var1) throws IOException;
}

