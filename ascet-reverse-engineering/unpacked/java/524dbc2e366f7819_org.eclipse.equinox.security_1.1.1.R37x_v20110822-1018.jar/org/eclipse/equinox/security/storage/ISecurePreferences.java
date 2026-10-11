/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.storage;

import java.io.IOException;
import org.eclipse.equinox.security.storage.StorageException;

public interface ISecurePreferences {
    public void put(String var1, String var2, boolean var3) throws StorageException;

    public String get(String var1, String var2) throws StorageException;

    public void remove(String var1);

    public void clear();

    public String[] keys();

    public String[] childrenNames();

    public ISecurePreferences parent();

    public ISecurePreferences node(String var1);

    public boolean nodeExists(String var1);

    public void removeNode();

    public String name();

    public String absolutePath();

    public void flush() throws IOException;

    public void putInt(String var1, int var2, boolean var3) throws StorageException;

    public int getInt(String var1, int var2) throws StorageException;

    public void putLong(String var1, long var2, boolean var4) throws StorageException;

    public long getLong(String var1, long var2) throws StorageException;

    public void putBoolean(String var1, boolean var2, boolean var3) throws StorageException;

    public boolean getBoolean(String var1, boolean var2) throws StorageException;

    public void putFloat(String var1, float var2, boolean var3) throws StorageException;

    public float getFloat(String var1, float var2) throws StorageException;

    public void putDouble(String var1, double var2, boolean var4) throws StorageException;

    public double getDouble(String var1, double var2) throws StorageException;

    public void putByteArray(String var1, byte[] var2, boolean var3) throws StorageException;

    public byte[] getByteArray(String var1, byte[] var2) throws StorageException;

    public boolean isEncrypted(String var1) throws StorageException;
}

