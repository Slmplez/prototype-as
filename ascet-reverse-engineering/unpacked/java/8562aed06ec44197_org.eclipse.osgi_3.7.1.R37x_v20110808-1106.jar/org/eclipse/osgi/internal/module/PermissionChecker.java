/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import java.security.BasicPermission;
import org.eclipse.osgi.internal.module.ResolverImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundlePermission;
import org.osgi.framework.CapabilityPermission;
import org.osgi.framework.PackagePermission;

public class PermissionChecker {
    private boolean checkPermissions = false;
    private ResolverImpl resolver;

    public PermissionChecker(boolean checkPermissions, ResolverImpl resolver) {
        this.checkPermissions = checkPermissions;
        this.resolver = resolver;
    }

    public boolean checkPermission(VersionConstraint vc, BaseDescription bd) {
        if (!this.checkPermissions) {
            return true;
        }
        boolean success = false;
        BasicPermission producerPermission = null;
        BasicPermission consumerPermission = null;
        Bundle consumer = null;
        Bundle producer = bd.getSupplier().getBundle();
        int errorType = 0;
        if (vc instanceof ImportPackageSpecification) {
            errorType = 128;
            producerPermission = new PackagePermission(bd.getName(), "exportonly");
            consumerPermission = producer != null ? new PackagePermission(vc.getName(), producer, "import") : new PackagePermission(vc.getName(), "import");
        } else if (vc instanceof BundleSpecification || vc instanceof HostSpecification) {
            boolean requireBundle = vc instanceof BundleSpecification;
            errorType = requireBundle ? 512 : 4096;
            producerPermission = new BundlePermission(bd.getName(), requireBundle ? "provide" : "host");
            consumerPermission = new BundlePermission(vc.getName(), requireBundle ? "require" : "fragment");
        } else if (vc instanceof GenericSpecification) {
            errorType = 524288;
            GenericDescription gd = (GenericDescription)bd;
            producerPermission = new CapabilityPermission(gd.getType(), "provide");
            consumerPermission = new CapabilityPermission(gd.getType(), gd.getDeclaredAttributes(), producer, "require");
        }
        consumer = vc.getBundle().getBundle();
        if (producer != null && (producer.getState() & 1) == 0 && !(success = producer.hasPermission(producerPermission))) {
            switch (errorType) {
                case 128: {
                    errorType = 256;
                    break;
                }
                case 512: 
                case 4096: {
                    errorType = errorType == 512 ? 1024 : 2048;
                    break;
                }
                case 524288: {
                    errorType = 1024;
                }
            }
            this.resolver.getState().addResolverError(vc.getBundle(), errorType, producerPermission.toString(), vc);
        }
        if (success && consumer != null && (consumer.getState() & 1) == 0 && !(success = consumer.hasPermission(consumerPermission))) {
            this.resolver.getState().addResolverError(vc.getBundle(), errorType, consumerPermission.toString(), vc);
        }
        return success;
    }

    boolean checkPackagePermission(ExportPackageDescription export) {
        if (!this.checkPermissions) {
            return true;
        }
        export.getSupplier().getBundle();
        Bundle bundle = export.getSupplier().getBundle();
        return bundle == null ? false : bundle.hasPermission(new PackagePermission(export.getName(), "exportonly"));
    }

    boolean checkCapabilityPermission(GenericDescription capability) {
        if (!this.checkPermissions) {
            return true;
        }
        Bundle bundle = capability.getSupplier().getBundle();
        return bundle == null ? false : bundle.hasPermission(new CapabilityPermission(capability.getType(), "provide"));
    }
}

