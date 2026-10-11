/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.util.ArrayList;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.internal.loader.PackageSource;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.osgi.framework.Bundle;
import org.osgi.framework.Version;
import org.osgi.service.packageadmin.ExportedPackage;

public class ExportedPackageImpl
implements ExportedPackage {
    private final ExportPackageDescription exportedPackage;
    private final BundleLoaderProxy supplier;

    public ExportedPackageImpl(ExportPackageDescription exportedPackage, BundleLoaderProxy supplier) {
        this.exportedPackage = exportedPackage;
        this.supplier = supplier;
    }

    public String getName() {
        return this.exportedPackage.getName();
    }

    public Bundle getExportingBundle() {
        if (this.supplier.isStale()) {
            return null;
        }
        return this.supplier.getBundleHost();
    }

    AbstractBundle getBundle() {
        return this.supplier.getBundleHost();
    }

    public Bundle[] getImportingBundles() {
        if (this.supplier.isStale()) {
            return null;
        }
        AbstractBundle bundle = (AbstractBundle)this.getExportingBundle();
        if (bundle == null) {
            return null;
        }
        AbstractBundle[] bundles = bundle.framework.getAllBundles();
        ArrayList<AbstractBundle> importers = new ArrayList<AbstractBundle>(10);
        PackageSource supplierSource = this.supplier.createPackageSource(this.exportedPackage, false);
        int i = 0;
        while (i < bundles.length) {
            BundleLoader loader;
            if (bundles[i] instanceof BundleHost && (loader = ((BundleHost)bundles[i]).getBundleLoader()) != null && loader.getBundle() != this.supplier.getBundle()) {
                PackageSource importerSource = loader.getPackageSource(this.getName());
                if (supplierSource != null && supplierSource.hasCommonSource(importerSource)) {
                    importers.add(bundles[i]);
                }
            }
            ++i;
        }
        return importers.toArray(new Bundle[importers.size()]);
    }

    public String getSpecificationVersion() {
        return this.exportedPackage.getVersion().toString();
    }

    public Version getVersion() {
        return this.exportedPackage.getVersion();
    }

    public boolean isRemovalPending() {
        BundleDescription exporter = this.exportedPackage.getExporter();
        if (exporter != null) {
            return exporter.isRemovalPending();
        }
        return true;
    }

    public String toString() {
        StringBuffer result = new StringBuffer(this.getName());
        result.append("; ").append("version");
        result.append("=\"").append(this.exportedPackage.getVersion().toString()).append("\"");
        return result.toString();
    }
}

