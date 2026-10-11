/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader.buddy;

import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.buddy.IBuddyPolicy;
import org.osgi.service.packageadmin.ExportedPackage;
import org.osgi.service.packageadmin.PackageAdmin;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GlobalPolicy
implements IBuddyPolicy {
    private PackageAdmin admin;

    public GlobalPolicy(PackageAdmin admin) {
        this.admin = admin;
    }

    @Override
    public Class<?> loadClass(String name) {
        ExportedPackage pkg = this.admin.getExportedPackage(BundleLoader.getPackageName(name));
        if (pkg == null) {
            return null;
        }
        try {
            return pkg.getExportingBundle().loadClass(name);
        }
        catch (ClassNotFoundException classNotFoundException) {
            return null;
        }
    }

    @Override
    public URL loadResource(String name) {
        ExportedPackage pkg = this.admin.getExportedPackage(BundleLoader.getResourcePackageName(name));
        if (pkg == null) {
            return null;
        }
        return pkg.getExportingBundle().getResource(name);
    }

    @Override
    public Enumeration<URL> loadResources(String name) {
        ExportedPackage[] pkgs = this.admin.getExportedPackages(BundleLoader.getResourcePackageName(name));
        if (pkgs == null || pkgs.length == 0) {
            return null;
        }
        Enumeration<URL> results = null;
        int i = 0;
        while (i < pkgs.length) {
            try {
                results = BundleLoader.compoundEnumerations(results, pkgs[i].getExportingBundle().getResources(name));
            }
            catch (IOException iOException) {}
            ++i;
        }
        return results;
    }
}

