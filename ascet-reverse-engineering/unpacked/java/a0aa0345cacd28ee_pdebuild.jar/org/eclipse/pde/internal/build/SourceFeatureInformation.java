/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.build;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.internal.build.IPDEBuildConstants;

public class SourceFeatureInformation
implements IPDEBuildConstants {
    private Map sourceFeatureInformation = new HashMap(8);

    public void addElementEntry(String bundle, BundleDescription plugin) {
        HashSet<BundleDescription> entry = (HashSet<BundleDescription>)this.sourceFeatureInformation.get(bundle);
        if (entry == null) {
            entry = new HashSet<BundleDescription>();
            this.sourceFeatureInformation.put(bundle, entry);
        }
        entry.add(plugin);
    }

    public Map getElementEntries() {
        return this.sourceFeatureInformation;
    }
}

