/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader;

import java.net.URL;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import org.eclipse.osgi.framework.util.KeyedHashSet;
import org.eclipse.osgi.internal.loader.PackageSource;
import org.eclipse.osgi.internal.loader.SingleSourcePackage;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NullPackageSource
extends PackageSource {
    static KeyedHashSet sources;

    private NullPackageSource(String name) {
        super(name);
    }

    @Override
    public SingleSourcePackage[] getSuppliers() {
        return null;
    }

    @Override
    public boolean isNullSource() {
        return true;
    }

    public String toString() {
        return new StringBuffer(String.valueOf(this.id)).append(" -> null").toString();
    }

    @Override
    public Class<?> loadClass(String name) {
        return null;
    }

    @Override
    public URL getResource(String name) {
        return null;
    }

    @Override
    public Enumeration<URL> getResources(String name) {
        return null;
    }

    public static synchronized NullPackageSource getNullPackageSource(String name) {
        NullPackageSource result;
        if (sources == null) {
            sources = new KeyedHashSet();
        }
        if ((result = (NullPackageSource)sources.getByKey(name)) != null) {
            return result;
        }
        result = new NullPackageSource(name);
        sources.add(result);
        return result;
    }

    public List<String> listResources(String path, String filePattern) {
        return Collections.EMPTY_LIST;
    }
}

