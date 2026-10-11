/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.storage;

import java.io.IOException;
import org.eclipse.equinox.internal.security.storage.SecurePreferences;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesContainer;
import org.eclipse.equinox.security.storage.ISecurePreferences;
import org.eclipse.equinox.security.storage.StorageException;

public class SecurePreferencesWrapper
implements ISecurePreferences {
    protected final SecurePreferences node;
    protected final SecurePreferencesContainer container;

    public SecurePreferencesWrapper(SecurePreferences node, SecurePreferencesContainer container) {
        this.node = node;
        this.container = container;
    }

    public SecurePreferencesContainer getContainer() {
        return this.container;
    }

    public String absolutePath() {
        return this.node.absolutePath();
    }

    public String[] childrenNames() {
        return this.node.childrenNames();
    }

    public void clear() {
        this.node.clear();
    }

    public void flush() throws IOException {
        this.node.flush();
    }

    public String[] keys() {
        return this.node.keys();
    }

    public String name() {
        return this.node.name();
    }

    public void remove(String key) {
        this.node.remove(key);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof SecurePreferencesWrapper)) {
            return false;
        }
        SecurePreferencesWrapper other = (SecurePreferencesWrapper)obj;
        return this.container.equals(other.container) && this.node.equals(other.node);
    }

    public int hashCode() {
        String tmp = String.valueOf(Integer.toString(this.container.hashCode())) + '|' + Integer.toString(this.node.hashCode());
        return tmp.hashCode();
    }

    public ISecurePreferences node(String pathName) {
        return this.container.wrapper(this.node.node(pathName));
    }

    public ISecurePreferences parent() {
        SecurePreferences parent = this.node.parent();
        if (parent == null) {
            return null;
        }
        return this.container.wrapper(this.node.parent());
    }

    public boolean nodeExists(String pathName) {
        return this.node.nodeExists(pathName);
    }

    public void removeNode() {
        this.container.removeWrapper(this.node);
        this.node.removeNode();
    }

    public String get(String key, String def) throws StorageException {
        return this.node.get(key, def, this.container);
    }

    public void put(String key, String value, boolean encrypt) throws StorageException {
        this.node.put(key, value, encrypt, this.container);
    }

    public boolean getBoolean(String key, boolean def) throws StorageException {
        return this.node.getBoolean(key, def, this.container);
    }

    public void putBoolean(String key, boolean value, boolean encrypt) throws StorageException {
        this.node.putBoolean(key, value, encrypt, this.container);
    }

    public int getInt(String key, int def) throws StorageException {
        return this.node.getInt(key, def, this.container);
    }

    public void putInt(String key, int value, boolean encrypt) throws StorageException {
        this.node.putInt(key, value, encrypt, this.container);
    }

    public float getFloat(String key, float def) throws StorageException {
        return this.node.getFloat(key, def, this.container);
    }

    public void putFloat(String key, float value, boolean encrypt) throws StorageException {
        this.node.putFloat(key, value, encrypt, this.container);
    }

    public long getLong(String key, long def) throws StorageException {
        return this.node.getLong(key, def, this.container);
    }

    public void putLong(String key, long value, boolean encrypt) throws StorageException {
        this.node.putLong(key, value, encrypt, this.container);
    }

    public double getDouble(String key, double def) throws StorageException {
        return this.node.getDouble(key, def, this.container);
    }

    public void putDouble(String key, double value, boolean encrypt) throws StorageException {
        this.node.putDouble(key, value, encrypt, this.container);
    }

    public byte[] getByteArray(String key, byte[] def) throws StorageException {
        return this.node.getByteArray(key, def, this.container);
    }

    public void putByteArray(String key, byte[] value, boolean encrypt) throws StorageException {
        this.node.putByteArray(key, value, encrypt, this.container);
    }

    public boolean isEncrypted(String key) throws StorageException {
        return this.node.isEncrypted(key);
    }

    public String getModule(String key) {
        return this.node.getModule(key);
    }

    public boolean passwordChanging(String moduleID) {
        return this.node.passwordChanging(this.container, moduleID);
    }
}

