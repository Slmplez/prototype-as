/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;

class ImportsHolder {
    private final ImportPackageSpecification[] importedPackages;
    private final ExportPackageDescription[] resolvedImports;
    private final boolean isUsingResolved;

    ImportsHolder(BundleDescription bundle, int options) {
        boolean bl = this.isUsingResolved = (options & 2) != 0;
        if (this.isUsingResolved) {
            this.importedPackages = null;
            this.resolvedImports = bundle.getResolvedImports();
        } else {
            this.importedPackages = bundle.getImportPackages();
            this.resolvedImports = null;
        }
    }

    ExportPackageDescription getSupplier(int index) {
        if (this.isUsingResolved) {
            return this.resolvedImports[index];
        }
        return (ExportPackageDescription)this.importedPackages[index].getSupplier();
    }

    String getName(int index) {
        if (this.isUsingResolved) {
            return this.resolvedImports[index].getName();
        }
        return this.importedPackages[index].getName();
    }

    int getSize() {
        if (this.isUsingResolved) {
            return this.resolvedImports.length;
        }
        return this.importedPackages.length;
    }
}

