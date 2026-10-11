/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.framework.util.KeyedHashSet;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class BundleRepository {
    private List<AbstractBundle> bundlesByInstallOrder;
    private KeyedHashSet bundlesById;
    private Map<String, AbstractBundle[]> bundlesBySymbolicName;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public BundleRepository(int initialCapacity) {
        BundleRepository bundleRepository = this;
        synchronized (bundleRepository) {
            this.bundlesByInstallOrder = new ArrayList<AbstractBundle>(initialCapacity);
            this.bundlesById = new KeyedHashSet(initialCapacity, true);
            this.bundlesBySymbolicName = new HashMap<String, AbstractBundle[]>(initialCapacity);
        }
    }

    public synchronized List<AbstractBundle> getBundles() {
        return this.bundlesByInstallOrder;
    }

    public synchronized AbstractBundle getBundle(long bundleId) {
        Long key = new Long(bundleId);
        return (AbstractBundle)this.bundlesById.getByKey(key);
    }

    public synchronized AbstractBundle[] getBundles(String symbolicName) {
        if ("system.bundle".equals(symbolicName)) {
            symbolicName = Constants.getInternalSymbolicName();
        }
        return this.bundlesBySymbolicName.get(symbolicName);
    }

    public synchronized AbstractBundle getBundle(String symbolicName, Version version) {
        AbstractBundle[] bundles = this.getBundles(symbolicName);
        if (bundles != null && bundles.length > 0) {
            int i = 0;
            while (i < bundles.length) {
                if (bundles[i].getVersion().equals(version)) {
                    return bundles[i];
                }
                ++i;
            }
        }
        return null;
    }

    public synchronized void add(AbstractBundle bundle) {
        this.bundlesByInstallOrder.add(bundle);
        this.bundlesById.add(bundle);
        this.addSymbolicName(bundle);
    }

    private void addSymbolicName(AbstractBundle bundle) {
        String symbolicName = bundle.getSymbolicName();
        if (symbolicName == null) {
            return;
        }
        AbstractBundle[] bundles = this.bundlesBySymbolicName.get(symbolicName);
        if (bundles == null) {
            bundles = new AbstractBundle[]{bundle};
            this.bundlesBySymbolicName.put(symbolicName, bundles);
            return;
        }
        ArrayList<AbstractBundle> list = new ArrayList<AbstractBundle>(bundles.length + 1);
        Version newVersion = bundle.getVersion();
        boolean added = false;
        int i = 0;
        while (i < bundles.length) {
            AbstractBundle oldBundle = bundles[i];
            Version oldVersion = oldBundle.getVersion();
            if (!added && newVersion.compareTo(oldVersion) >= 0) {
                added = true;
                list.add(bundle);
            }
            list.add(oldBundle);
            ++i;
        }
        if (!added) {
            list.add(bundle);
        }
        bundles = new AbstractBundle[list.size()];
        list.toArray(bundles);
        this.bundlesBySymbolicName.put(symbolicName, bundles);
    }

    public synchronized boolean remove(AbstractBundle bundle) {
        boolean found = this.bundlesById.remove(bundle);
        if (!found) {
            return false;
        }
        this.bundlesByInstallOrder.remove(bundle);
        String symbolicName = bundle.getSymbolicName();
        if (symbolicName == null) {
            return true;
        }
        this.removeSymbolicName(symbolicName, bundle);
        return true;
    }

    private void removeSymbolicName(String symbolicName, AbstractBundle bundle) {
        AbstractBundle[] bundles = this.bundlesBySymbolicName.get(symbolicName);
        if (bundles == null) {
            return;
        }
        int numRemoved = 0;
        int i = 0;
        while (i < bundles.length) {
            if (bundle == bundles[i]) {
                ++numRemoved;
                bundles[i] = null;
            }
            ++i;
        }
        if (numRemoved > 0) {
            if (bundles.length - numRemoved <= 0) {
                this.bundlesBySymbolicName.remove(symbolicName);
            } else {
                AbstractBundle[] newBundles = new AbstractBundle[bundles.length - numRemoved];
                int indexCnt = 0;
                int i2 = 0;
                while (i2 < bundles.length) {
                    if (bundles[i2] != null) {
                        newBundles[indexCnt] = bundles[i2];
                        ++indexCnt;
                    }
                    ++i2;
                }
                this.bundlesBySymbolicName.put(symbolicName, newBundles);
            }
        }
    }

    public synchronized void update(String oldSymbolicName, AbstractBundle bundle) {
        if (oldSymbolicName != null) {
            if (!oldSymbolicName.equals(bundle.getSymbolicName())) {
                this.removeSymbolicName(oldSymbolicName, bundle);
                this.addSymbolicName(bundle);
            }
        } else {
            this.addSymbolicName(bundle);
        }
    }

    public synchronized void removeAllBundles() {
        this.bundlesByInstallOrder.clear();
        this.bundlesById = new KeyedHashSet();
        this.bundlesBySymbolicName.clear();
    }
}

