/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 */
package org.eclipse.pde.internal.core;

import java.util.ArrayList;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;

public class PDEStateHelper {
    public static BundleDescription[] getImportedBundles(BundleDescription root) {
        if (root == null) {
            return new BundleDescription[0];
        }
        ExportPackageDescription[] packages = root.getResolvedImports();
        ArrayList<BundleDescription> resolvedImports = new ArrayList<BundleDescription>(packages.length);
        int i = 0;
        while (i < packages.length) {
            if (!root.getLocation().equals(packages[i].getExporter().getLocation()) && !resolvedImports.contains(packages[i].getExporter())) {
                resolvedImports.add(packages[i].getExporter());
            }
            ++i;
        }
        return resolvedImports.toArray(new BundleDescription[resolvedImports.size()]);
    }
}

