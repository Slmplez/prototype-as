/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader;

import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.PackageSource;
import org.eclipse.osgi.internal.loader.SingleSourcePackage;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MultiSourcePackage
extends PackageSource {
    SingleSourcePackage[] suppliers;

    MultiSourcePackage(String id, SingleSourcePackage[] suppliers) {
        super(id);
        this.suppliers = suppliers;
    }

    @Override
    public SingleSourcePackage[] getSuppliers() {
        return this.suppliers;
    }

    @Override
    public Class<?> loadClass(String name) throws ClassNotFoundException {
        Class<?> result = null;
        int i = 0;
        while (i < this.suppliers.length) {
            result = this.suppliers[i].loadClass(name);
            if (result != null) {
                return result;
            }
            ++i;
        }
        return result;
    }

    @Override
    public URL getResource(String name) {
        URL result = null;
        int i = 0;
        while (i < this.suppliers.length) {
            result = this.suppliers[i].getResource(name);
            if (result != null) {
                return result;
            }
            ++i;
        }
        return result;
    }

    @Override
    public Enumeration<URL> getResources(String name) {
        Enumeration<URL> results = null;
        int i = 0;
        while (i < this.suppliers.length) {
            results = BundleLoader.compoundEnumerations(results, this.suppliers[i].getResources(name));
            ++i;
        }
        return results;
    }

    @Override
    public Collection<String> listResources(String path, String filePattern) {
        ArrayList<String> result = new ArrayList<String>();
        SingleSourcePackage[] singleSourcePackageArray = this.suppliers;
        int n = this.suppliers.length;
        int n2 = 0;
        while (n2 < n) {
            SingleSourcePackage source = singleSourcePackageArray[n2];
            Collection<String> sourceResources = source.listResources(path, filePattern);
            for (String resource : sourceResources) {
                if (result.contains(resource)) continue;
                result.add(resource);
            }
            ++n2;
        }
        return result;
    }
}

