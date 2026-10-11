/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import org.eclipse.osgi.internal.module.ResolverBundle;
import org.eclipse.osgi.internal.module.VersionSupplier;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;

public class ResolverExport
extends VersionSupplier {
    private ResolverBundle resolverBundle;

    ResolverExport(ResolverBundle resolverBundle, ExportPackageDescription epd) {
        super(epd);
        this.resolverBundle = resolverBundle;
    }

    public ExportPackageDescription getExportPackageDescription() {
        return (ExportPackageDescription)this.base;
    }

    public BundleDescription getBundleDescription() {
        return this.getExportPackageDescription().getExporter();
    }

    ResolverBundle getExporter() {
        return this.resolverBundle;
    }

    ResolverBundle getResolverBundle() {
        return this.getExporter();
    }

    String[] getUsesDirective() {
        return (String[])this.getExportPackageDescription().getDirective("uses");
    }
}

