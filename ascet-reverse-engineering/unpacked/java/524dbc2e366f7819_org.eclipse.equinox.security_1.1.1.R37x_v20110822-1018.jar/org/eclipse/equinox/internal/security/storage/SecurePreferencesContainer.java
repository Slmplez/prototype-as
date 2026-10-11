/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.storage;

import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.equinox.internal.security.storage.SecurePreferences;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesRoot;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesWrapper;
import org.eclipse.equinox.security.storage.ISecurePreferences;
import org.eclipse.equinox.security.storage.provider.IPreferencesContainer;

public class SecurePreferencesContainer
implements IPreferencesContainer {
    private Map wrappers = new HashMap();
    private final Map options;
    private final SecurePreferencesRoot root;

    public SecurePreferencesContainer(SecurePreferencesRoot root, Map options) {
        this.root = root;
        if (options != null) {
            this.options = new HashMap(options.size());
            this.options.putAll(options);
        } else {
            this.options = new HashMap(2);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ISecurePreferences wrapper(SecurePreferences node) {
        Map map = this.wrappers;
        synchronized (map) {
            if (this.wrappers.containsKey(node)) {
                return (ISecurePreferences)this.wrappers.get(node);
            }
            SecurePreferencesWrapper newWrapper = new SecurePreferencesWrapper(node, this);
            this.wrappers.put(node, newWrapper);
            return newWrapper;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeWrapper(SecurePreferences node) {
        Map map = this.wrappers;
        synchronized (map) {
            if (this.wrappers.containsKey(node)) {
                this.wrappers.remove(node);
            }
        }
    }

    public URL getLocation() {
        return this.root.getLocation();
    }

    public ISecurePreferences getPreferences() {
        return this.wrapper(this.root);
    }

    public SecurePreferencesRoot getRootData() {
        return this.root;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean hasOption(Object key) {
        Map map = this.options;
        synchronized (map) {
            return this.options.containsKey(key);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object getOption(Object key) {
        Map map = this.options;
        synchronized (map) {
            return this.options.get(key);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object setOption(Object key, Object value) {
        Map map = this.options;
        synchronized (map) {
            return this.options.put(key, value);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object removeOption(Object key) {
        Map map = this.options;
        synchronized (map) {
            return this.options.remove(key);
        }
    }
}

