/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import java.util.Collections;
import java.util.Comparator;
import java.util.Dictionary;
import java.util.List;
import org.eclipse.osgi.internal.module.MappedList;
import org.eclipse.osgi.internal.module.ResolverImpl;
import org.eclipse.osgi.internal.module.VersionSupplier;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class VersionHashMap<V extends VersionSupplier>
extends MappedList<String, V>
implements Comparator<V> {
    private final ResolverImpl resolver;
    private final boolean preferSystemPackages;

    public VersionHashMap(ResolverImpl resolver) {
        String preferSystem;
        this.resolver = resolver;
        Dictionary[] allProperties = resolver.getState().getPlatformProperties();
        String string = preferSystem = allProperties.length == 0 ? "true" : allProperties[0].get("osgi.resolver.preferSystemPackages");
        if (preferSystem == null) {
            preferSystem = "true";
        }
        this.preferSystemPackages = Boolean.valueOf(preferSystem.toString());
    }

    @Override
    protected int insertionIndex(List<V> existing, V value) {
        int index = existing.size();
        if (this.compare((V)((VersionSupplier)existing.get(existing.size() - 1)), value) > 0 && (index = Collections.binarySearch(existing, value, this)) < 0) {
            index = -index - 1;
        }
        return index;
    }

    public void put(V[] versionSuppliers) {
        int i = 0;
        while (i < versionSuppliers.length) {
            this.put(((VersionSupplier)versionSuppliers[i]).getName(), versionSuppliers[i]);
            ++i;
        }
    }

    public boolean contains(V vs) {
        return this.contains(vs, false) != null;
    }

    private V contains(V vs, boolean remove) {
        List existing = (List)this.internal.get(((VersionSupplier)vs).getName());
        if (existing == null) {
            return null;
        }
        int index = existing.indexOf(vs);
        if (index >= 0) {
            if (remove) {
                existing.remove(index);
                if (existing.size() == 0) {
                    this.internal.remove(((VersionSupplier)vs).getName());
                }
            }
            return vs;
        }
        return null;
    }

    public V remove(V toBeRemoved) {
        return this.contains(toBeRemoved, true);
    }

    public void remove(V[] versionSuppliers) {
        int i = 0;
        while (i < versionSuppliers.length) {
            this.remove(versionSuppliers[i]);
            ++i;
        }
    }

    void reorder() {
        for (List existing : this.internal.values()) {
            if (existing.size() <= 1) continue;
            Collections.sort(existing, this);
        }
    }

    @Override
    public int compare(V vs1, V vs2) {
        if (this.resolver.getSelectionPolicy() != null) {
            return this.resolver.getSelectionPolicy().compare(((VersionSupplier)vs1).getBaseDescription(), ((VersionSupplier)vs2).getBaseDescription());
        }
        if (this.preferSystemPackages) {
            String systemBundle = this.resolver.getSystemBundle();
            if (systemBundle.equals(((VersionSupplier)vs1).getBundleDescription().getSymbolicName()) && !systemBundle.equals(((VersionSupplier)vs2).getBundleDescription().getSymbolicName())) {
                return -1;
            }
            if (!systemBundle.equals(((VersionSupplier)vs1).getBundleDescription().getSymbolicName()) && systemBundle.equals(((VersionSupplier)vs2).getBundleDescription().getSymbolicName())) {
                return 1;
            }
        }
        if (((VersionSupplier)vs1).getBundleDescription().isResolved() != ((VersionSupplier)vs2).getBundleDescription().isResolved()) {
            return ((VersionSupplier)vs1).getBundleDescription().isResolved() ? -1 : 1;
        }
        int versionCompare = -((VersionSupplier)vs1).getVersion().compareTo(((VersionSupplier)vs2).getVersion());
        if (versionCompare != 0) {
            return versionCompare;
        }
        return ((VersionSupplier)vs1).getBundleDescription().getBundleId() <= ((VersionSupplier)vs2).getBundleDescription().getBundleId() ? -1 : 1;
    }
}

