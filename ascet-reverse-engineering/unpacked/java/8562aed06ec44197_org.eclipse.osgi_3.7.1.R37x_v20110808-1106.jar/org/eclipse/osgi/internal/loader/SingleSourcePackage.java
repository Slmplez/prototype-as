/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader;

import java.net.URL;
import java.util.Collection;
import java.util.Enumeration;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.internal.loader.PackageSource;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SingleSourcePackage
extends PackageSource {
    BundleLoaderProxy supplier;

    public SingleSourcePackage(String id, BundleLoaderProxy supplier) {
        super(id);
        this.supplier = supplier;
    }

    @Override
    public SingleSourcePackage[] getSuppliers() {
        return new SingleSourcePackage[]{this};
    }

    public String toString() {
        return new StringBuffer(String.valueOf(this.id)).append(" -> ").append(this.supplier).toString();
    }

    @Override
    public Class<?> loadClass(String name) throws ClassNotFoundException {
        return this.supplier.getBundleLoader().findLocalClass(name);
    }

    @Override
    public URL getResource(String name) {
        return this.supplier.getBundleLoader().findLocalResource(name);
    }

    @Override
    public Enumeration<URL> getResources(String name) {
        return this.supplier.getBundleLoader().findLocalResources(name);
    }

    public boolean equals(Object source) {
        if (this == source) {
            return true;
        }
        if (!(source instanceof SingleSourcePackage)) {
            return false;
        }
        SingleSourcePackage singleSource = (SingleSourcePackage)source;
        return this.supplier == singleSource.supplier && this.id == singleSource.getId();
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + this.id.hashCode();
        result = 31 * result + this.supplier.hashCode();
        return result;
    }

    @Override
    public Collection<String> listResources(String path, String filePattern) {
        BundleClassLoader bcl = this.supplier.getBundleLoader().createClassLoader();
        return bcl.listLocalResources(path, filePattern, 0);
    }
}

