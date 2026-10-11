/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.build.site;

import java.util.Iterator;
import java.util.SortedSet;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.internal.build.site.PDEState;
import org.eclipse.pde.internal.build.site.ReachablePlugin;

public class FilteringState
extends PDEState {
    SortedSet allPlugins;

    public void setFilter(SortedSet filter) {
        this.allPlugins = filter;
    }

    public boolean addBundleDescription(BundleDescription toAdd) {
        if (this.allPlugins == null) {
            return super.addBundleDescription(toAdd);
        }
        SortedSet<ReachablePlugin> includedMatches = this.allPlugins.subSet(new ReachablePlugin(toAdd.getSymbolicName(), ReachablePlugin.WIDEST_RANGE), new ReachablePlugin(toAdd.getSymbolicName(), ReachablePlugin.NARROWEST_RANGE));
        Iterator iterator = includedMatches.iterator();
        while (iterator.hasNext()) {
            ReachablePlugin constraint = (ReachablePlugin)iterator.next();
            if (!constraint.getRange().isIncluded(toAdd.getVersion())) continue;
            return super.addBundleDescription(toAdd);
        }
        return false;
    }
}

