/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.loader;

import java.security.ProtectionDomain;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.eclipse.osgi.framework.util.KeyedHashSet;

public class ClasspathEntry {
    private final BundleFile bundlefile;
    private final ProtectionDomain domain;
    private KeyedHashSet userObjects = null;
    private volatile BaseData data;

    public ClasspathEntry(BundleFile bundlefile, ProtectionDomain domain) {
        this.bundlefile = bundlefile;
        this.domain = domain;
    }

    public BundleFile getBundleFile() {
        return this.bundlefile;
    }

    public BaseData getBaseData() {
        return this.data;
    }

    void setBaseData(BaseData data) {
        this.data = data;
    }

    public ProtectionDomain getDomain() {
        return this.domain;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object getUserObject(Object key) {
        if (this.userObjects == null) {
            return null;
        }
        KeyedHashSet keyedHashSet = this.userObjects;
        synchronized (keyedHashSet) {
            return this.userObjects.getByKey(key);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public synchronized void addUserObject(KeyedElement userObject) {
        if (this.userObjects == null) {
            this.userObjects = new KeyedHashSet(5, false);
        }
        KeyedHashSet keyedHashSet = this.userObjects;
        synchronized (keyedHashSet) {
            this.userObjects.add(userObject);
        }
    }
}

