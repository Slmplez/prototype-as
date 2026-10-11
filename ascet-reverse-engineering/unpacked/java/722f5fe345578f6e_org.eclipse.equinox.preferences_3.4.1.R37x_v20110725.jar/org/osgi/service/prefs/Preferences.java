/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.prefs;

import org.osgi.service.prefs.BackingStoreException;

public interface Preferences {
    public void put(String var1, String var2);

    public String get(String var1, String var2);

    public void remove(String var1);

    public void clear() throws BackingStoreException;

    public void putInt(String var1, int var2);

    public int getInt(String var1, int var2);

    public void putLong(String var1, long var2);

    public long getLong(String var1, long var2);

    public void putBoolean(String var1, boolean var2);

    public boolean getBoolean(String var1, boolean var2);

    public void putFloat(String var1, float var2);

    public float getFloat(String var1, float var2);

    public void putDouble(String var1, double var2);

    public double getDouble(String var1, double var2);

    public void putByteArray(String var1, byte[] var2);

    public byte[] getByteArray(String var1, byte[] var2);

    public String[] keys() throws BackingStoreException;

    public String[] childrenNames() throws BackingStoreException;

    public Preferences parent();

    public Preferences node(String var1);

    public boolean nodeExists(String var1) throws BackingStoreException;

    public void removeNode() throws BackingStoreException;

    public String name();

    public String absolutePath();

    public void flush() throws BackingStoreException;

    public void sync() throws BackingStoreException;
}

