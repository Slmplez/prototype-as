/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;

class RequiresHolder {
    private final BundleSpecification[] requiredBundles;
    private final BundleDescription[] resolvedRequires;
    private final boolean isUsingResolved;
    private final Map<BundleDescription, Boolean> resolvedBundlesExported;

    RequiresHolder(BundleDescription bundle, int options) {
        boolean bl = this.isUsingResolved = (options & 2) != 0;
        if (this.isUsingResolved) {
            this.requiredBundles = null;
            this.resolvedBundlesExported = new HashMap<BundleDescription, Boolean>();
            this.resolvedRequires = bundle.getResolvedRequires();
            this.determineRequiresVisibility(bundle);
        } else {
            this.requiredBundles = bundle.getRequiredBundles();
            this.resolvedBundlesExported = null;
            this.resolvedRequires = null;
        }
    }

    BundleDescription getSupplier(int index) {
        if (this.isUsingResolved) {
            return this.resolvedRequires[index];
        }
        return (BundleDescription)this.requiredBundles[index].getSupplier();
    }

    boolean isExported(int index) {
        if (this.isUsingResolved) {
            return this.resolvedBundlesExported.get(this.resolvedRequires[index]);
        }
        return this.requiredBundles[index].isExported();
    }

    int getSize() {
        if (this.isUsingResolved) {
            return this.resolvedRequires.length;
        }
        return this.requiredBundles.length;
    }

    private void determineRequiresVisibility(BundleDescription bundle) {
        BundleSpecification[] required = bundle.getRequiredBundles();
        HashSet<BundleDescription> resolved = new HashSet<BundleDescription>();
        int i = 0;
        while (i < this.resolvedRequires.length) {
            resolved.add(this.resolvedRequires[i]);
            ++i;
        }
        i = 0;
        while (i < required.length) {
            if (required[i].getSupplier() != null) {
                this.resolvedBundlesExported.put((BundleDescription)required[i].getSupplier(), new Boolean(required[i].isExported()));
                resolved.remove(required[i].getSupplier());
            }
            ++i;
        }
        BundleDescription[] fragments = bundle.getFragments();
        if (resolved.size() > 0) {
            int i2 = 0;
            while (i2 < fragments.length) {
                BundleSpecification[] fragmentRequiredBundles = fragments[i2].getRequiredBundles();
                int j = 0;
                while (j < fragmentRequiredBundles.length) {
                    if (resolved.contains(fragmentRequiredBundles[j].getSupplier())) {
                        this.resolvedBundlesExported.put((BundleDescription)fragmentRequiredBundles[j].getSupplier(), new Boolean(fragmentRequiredBundles[j].isExported()));
                        resolved.remove(fragmentRequiredBundles[j].getSupplier());
                    }
                    ++j;
                }
                if (resolved.size() == 0) break;
                ++i2;
            }
        }
    }
}

