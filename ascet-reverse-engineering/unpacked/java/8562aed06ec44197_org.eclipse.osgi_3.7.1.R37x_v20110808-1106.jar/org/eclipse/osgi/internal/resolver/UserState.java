/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.internal.resolver.StateDeltaImpl;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateDelta;
import org.osgi.framework.BundleException;

public class UserState
extends StateImpl {
    private final Set<String> updated = Collections.synchronizedSet(new HashSet());

    public boolean removeBundle(BundleDescription description) {
        if (description.getLocation() != null) {
            this.updated.remove(description.getLocation());
        }
        return super.removeBundle(description);
    }

    public boolean updateBundle(BundleDescription newDescription) {
        if (!super.updateBundle(newDescription)) {
            return false;
        }
        this.updated.add(newDescription.getLocation());
        return true;
    }

    public StateDelta compare(State baseState) throws BundleException {
        BundleDescription[] current = this.getBundles();
        StateDeltaImpl delta = new StateDeltaImpl(this);
        int i = 0;
        while (i < current.length) {
            BundleDescription existing = baseState.getBundleByLocation(current[i].getLocation());
            if (existing == null) {
                delta.recordBundleAdded((BundleDescriptionImpl)current[i]);
            } else if (this.updated.contains(current[i].getLocation())) {
                delta.recordBundleUpdated((BundleDescriptionImpl)current[i]);
            }
            ++i;
        }
        BundleDescription[] existing = baseState.getBundles();
        int i2 = 0;
        while (i2 < existing.length) {
            BundleDescription local = this.getBundleByLocation(existing[i2].getLocation());
            if (local == null) {
                delta.recordBundleRemoved((BundleDescriptionImpl)existing[i2]);
            }
            ++i2;
        }
        return delta;
    }
}

