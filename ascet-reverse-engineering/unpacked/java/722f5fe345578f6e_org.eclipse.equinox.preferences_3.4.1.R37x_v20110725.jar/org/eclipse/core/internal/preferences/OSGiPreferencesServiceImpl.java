/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.preferences;

import org.eclipse.core.internal.preferences.Base64;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;
import org.osgi.service.prefs.PreferencesService;

public class OSGiPreferencesServiceImpl
implements PreferencesService {
    private IEclipsePreferences bundlePreferences;

    OSGiPreferencesServiceImpl(IEclipsePreferences bundlePreferences) {
        this.bundlePreferences = bundlePreferences;
    }

    public Preferences getSystemPreferences() {
        return new OSGiLocalRootPreferences(this.bundlePreferences.node("system"));
    }

    public Preferences getUserPreferences(String name) {
        return new OSGiLocalRootPreferences(this.bundlePreferences.node("user/" + name));
    }

    public String[] getUsers() {
        String[] users = null;
        try {
            users = this.bundlePreferences.node("user").childrenNames();
        }
        catch (BackingStoreException backingStoreException) {}
        return users == null ? new String[]{} : users;
    }

    private static final class OSGiLocalRootPreferences
    implements Preferences {
        private Preferences root;
        private Preferences wrapped;

        private OSGiLocalRootPreferences(Preferences root) {
            this(root, root);
        }

        private OSGiLocalRootPreferences(Preferences wrapped, Preferences root) {
            this.root = root;
            this.wrapped = wrapped;
        }

        private String fixPath(String pathName) {
            if (pathName.startsWith("/")) {
                if (pathName.equals("/")) {
                    return this.root.absolutePath();
                }
                return this.root.absolutePath().concat(pathName);
            }
            return pathName;
        }

        public Preferences node(String pathName) {
            if ((pathName = this.fixPath(pathName)).length() > 1 && pathName.endsWith("/") || pathName.indexOf("//") != -1) {
                throw new IllegalArgumentException();
            }
            return new OSGiLocalRootPreferences(this.wrapped.node(pathName), this.root);
        }

        public byte[] getByteArray(String key, byte[] defaultValue) {
            byte[] encodedBytes;
            String value = this.wrapped.get(key, null);
            byte[] byteArray = null;
            if (value != null && (encodedBytes = value.getBytes()).length % 4 == 0) {
                try {
                    byteArray = Base64.decode(encodedBytes);
                }
                catch (Exception exception) {}
            }
            return byteArray == null ? defaultValue : byteArray;
        }

        public Preferences parent() {
            if (this.wrapped == this.root) {
                try {
                    if (!this.wrapped.nodeExists("")) {
                        throw new IllegalStateException();
                    }
                }
                catch (BackingStoreException backingStoreException) {}
                return null;
            }
            return new OSGiLocalRootPreferences(this.wrapped.parent(), this.root);
        }

        public boolean nodeExists(String pathName) throws BackingStoreException {
            return this.wrapped.nodeExists(this.fixPath(pathName));
        }

        public String absolutePath() {
            if (this.wrapped == this.root) {
                return "/";
            }
            return this.wrapped.absolutePath().substring(this.root.absolutePath().length(), this.wrapped.absolutePath().length());
        }

        public String name() {
            if (this.wrapped == this.root) {
                return "";
            }
            return this.wrapped.name();
        }

        public void put(String key, String value) {
            this.wrapped.put(key, value);
        }

        public String get(String key, String def) {
            return this.wrapped.get(key, def);
        }

        public void remove(String key) {
            this.wrapped.remove(key);
        }

        public void clear() throws BackingStoreException {
            this.wrapped.clear();
        }

        public void putInt(String key, int value) {
            this.wrapped.putInt(key, value);
        }

        public int getInt(String key, int def) {
            return this.wrapped.getInt(key, def);
        }

        public void putLong(String key, long value) {
            this.wrapped.putLong(key, value);
        }

        public long getLong(String key, long def) {
            return this.wrapped.getLong(key, def);
        }

        public void putBoolean(String key, boolean value) {
            this.wrapped.putBoolean(key, value);
        }

        public boolean getBoolean(String key, boolean def) {
            return this.wrapped.getBoolean(key, def);
        }

        public void putFloat(String key, float value) {
            this.wrapped.putFloat(key, value);
        }

        public float getFloat(String key, float def) {
            return this.wrapped.getFloat(key, def);
        }

        public void putDouble(String key, double value) {
            this.wrapped.putDouble(key, value);
        }

        public double getDouble(String key, double def) {
            return this.wrapped.getDouble(key, def);
        }

        public void putByteArray(String key, byte[] value) {
            this.wrapped.putByteArray(key, value);
        }

        public String[] keys() throws BackingStoreException {
            return this.wrapped.keys();
        }

        public String[] childrenNames() throws BackingStoreException {
            return this.wrapped.childrenNames();
        }

        public void removeNode() throws BackingStoreException {
            this.wrapped.removeNode();
        }

        public void flush() throws BackingStoreException {
            this.wrapped.flush();
        }

        public void sync() throws BackingStoreException {
            this.wrapped.sync();
        }
    }
}

