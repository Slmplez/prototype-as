/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader;

import java.net.URL;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.internal.loader.SingleSourcePackage;
import org.eclipse.osgi.util.ManifestElement;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FilteredSourcePackage
extends SingleSourcePackage {
    private static final char ALL = '*';
    String[] includes;
    String[] excludes;
    String[] friends;

    public FilteredSourcePackage(String name, BundleLoaderProxy supplier, String includes, String excludes, String[] friends) {
        super(name, supplier);
        if (includes != null) {
            this.includes = ManifestElement.getArrayFromList(includes);
        }
        if (excludes != null) {
            this.excludes = ManifestElement.getArrayFromList(excludes);
        }
        this.friends = friends;
    }

    @Override
    public boolean isFriend(String symbolicName) {
        if (this.friends == null) {
            return true;
        }
        int i = 0;
        while (i < this.friends.length) {
            if (this.friends[i].equals(symbolicName)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    @Override
    public URL getResource(String name) {
        if (this.isFiltered(name, this.getId())) {
            return null;
        }
        return super.getResource(name);
    }

    @Override
    public Enumeration<URL> getResources(String name) {
        if (this.isFiltered(name, this.getId())) {
            return null;
        }
        return super.getResources(name);
    }

    @Override
    public Class<?> loadClass(String name) throws ClassNotFoundException {
        if (this.isFiltered(name, this.getId())) {
            return null;
        }
        return super.loadClass(name);
    }

    private boolean isFiltered(String name, String pkgName) {
        String lastName = this.getName(name, pkgName);
        return !this.isIncluded(lastName) || this.isExcluded(lastName);
    }

    private String getName(String name, String pkgName) {
        if (!".".equals(pkgName) && pkgName.length() + 1 <= name.length()) {
            return name.substring(pkgName.length() + 1);
        }
        return name;
    }

    private boolean isIncluded(String name) {
        if (this.includes == null) {
            return true;
        }
        return this.isInList(name, this.includes);
    }

    private boolean isExcluded(String name) {
        if (this.excludes == null) {
            return false;
        }
        return this.isInList(name, this.excludes);
    }

    private boolean isInList(String name, String[] list) {
        int i = 0;
        while (i < list.length) {
            int len = list[i].length();
            if (len != 0) {
                if (list[i].charAt(0) == '*' && len == 1) {
                    return true;
                }
                if (list[i].charAt(len - 1) == '*' && name.startsWith(list[i].substring(0, len - 1))) {
                    return true;
                }
                if (name.equals(list[i])) {
                    return true;
                }
            }
            ++i;
        }
        return false;
    }

    @Override
    public Collection<String> listResources(String path, String filePattern) {
        Collection<String> result = super.listResources(path, filePattern);
        Iterator<String> resources = result.iterator();
        while (resources.hasNext()) {
            String fileName;
            String resource = resources.next();
            int lastSlash = resource.lastIndexOf(47);
            String string = fileName = lastSlash >= 0 ? resource.substring(lastSlash + 1) : resource;
            if (this.isIncluded(fileName) && !this.isExcluded(fileName)) continue;
            resources.remove();
        }
        return result;
    }
}

