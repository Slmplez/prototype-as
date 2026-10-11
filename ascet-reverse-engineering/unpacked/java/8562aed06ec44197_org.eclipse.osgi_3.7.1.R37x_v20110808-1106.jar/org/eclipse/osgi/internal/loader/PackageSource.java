/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader;

import java.io.IOException;
import java.net.URL;
import java.util.Collection;
import java.util.Enumeration;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.eclipse.osgi.internal.loader.SingleSourcePackage;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class PackageSource
implements KeyedElement {
    protected String id;

    public PackageSource(String id) {
        this.id = id.intern();
    }

    public String getId() {
        return this.id;
    }

    public abstract SingleSourcePackage[] getSuppliers();

    @Override
    public boolean compare(KeyedElement other) {
        return this.id.equals(((PackageSource)other).getId());
    }

    @Override
    public int getKeyHashCode() {
        return this.id.hashCode();
    }

    @Override
    public Object getKey() {
        return this.id;
    }

    public boolean isNullSource() {
        return false;
    }

    public boolean isFriend(String symbolicName) {
        return true;
    }

    public abstract Class<?> loadClass(String var1) throws ClassNotFoundException;

    public abstract URL getResource(String var1);

    public abstract Enumeration<URL> getResources(String var1) throws IOException;

    public boolean hasCommonSource(PackageSource other) {
        if (other == null) {
            return false;
        }
        if (this == other) {
            return true;
        }
        SingleSourcePackage[] suppliers1 = this.getSuppliers();
        SingleSourcePackage[] suppliers2 = other.getSuppliers();
        if (suppliers1 == null || suppliers2 == null) {
            return false;
        }
        int i = 0;
        while (i < suppliers1.length) {
            int j = 0;
            while (j < suppliers2.length) {
                if (suppliers2[j].equals(suppliers1[i])) {
                    return true;
                }
                ++j;
            }
            ++i;
        }
        return false;
    }

    public abstract Collection<String> listResources(String var1, String var2);
}

