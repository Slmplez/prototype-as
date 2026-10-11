/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.composite;

import java.io.IOException;
import java.net.URL;
import java.security.ProtectionDomain;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompositeClassLoader
extends ClassLoader
implements BaseClassLoader {
    private final ClassLoaderDelegate delegate;
    private final ClasspathManager manager;
    private final ClassLoaderDelegate companionDelegate;
    private final ThreadLocal beingLoaded = new ThreadLocal();

    public CompositeClassLoader(ClassLoader parent, ClassLoaderDelegate delegate, ClassLoaderDelegate companionDelegate, BaseData data) {
        super(parent);
        this.delegate = delegate;
        this.manager = new ClasspathManager(data, new String[0], this);
        this.companionDelegate = companionDelegate;
    }

    @Override
    public ClasspathEntry createClassPathEntry(BundleFile bundlefile, ProtectionDomain cpDomain) {
        return null;
    }

    public Class defineClass(String name, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry) {
        return null;
    }

    @Override
    public ClasspathManager getClasspathManager() {
        return this.manager;
    }

    @Override
    public ProtectionDomain getDomain() {
        return null;
    }

    @Override
    public Object publicDefinePackage(String name, String specTitle, String specVersion, String specVendor, String implTitle, String implVersion, String implVendor, URL sealBase) {
        return this.definePackage(name, specTitle, specVersion, specVendor, implTitle, implVersion, implVendor, sealBase);
    }

    public Class publicFindLoaded(String classname) {
        return this.findLoadedClass(classname);
    }

    @Override
    public Object publicGetPackage(String pkgname) {
        return this.getPackage(pkgname);
    }

    @Override
    public void attachFragment(BundleData bundledata, ProtectionDomain domain, String[] classpath) {
    }

    @Override
    public void close() {
    }

    public Class findLocalClass(String classname) throws ClassNotFoundException {
        if (!this.startLoading(classname)) {
            throw new ClassNotFoundException(classname);
        }
        try {
            Class<?> clazz = this.companionDelegate.findClass(classname);
            return clazz;
        }
        finally {
            this.stopLoading(classname);
        }
    }

    @Override
    public URL findLocalResource(String resource) {
        if (!this.startLoading(resource)) {
            return null;
        }
        try {
            URL uRL = this.companionDelegate.findResource(resource);
            return uRL;
        }
        finally {
            this.stopLoading(resource);
        }
    }

    public Enumeration findLocalResources(String resource) {
        if (!this.startLoading(resource)) {
            return null;
        }
        try {
            Enumeration<URL> enumeration = this.companionDelegate.findResources(resource);
            return enumeration;
        }
        catch (IOException iOException) {
            return null;
        }
        finally {
            this.stopLoading(resource);
        }
    }

    @Override
    public ClassLoaderDelegate getDelegate() {
        return this.delegate;
    }

    @Override
    public URL getResource(String name) {
        return this.delegate.findResource(name);
    }

    @Override
    public void initialize() {
        this.manager.initialize();
    }

    public Class loadClass(String name) throws ClassNotFoundException {
        return this.delegate.findClass(name);
    }

    private boolean startLoading(String name) {
        HashSet<String> classesAndResources = (HashSet<String>)this.beingLoaded.get();
        if (classesAndResources != null && classesAndResources.contains(name)) {
            return false;
        }
        if (classesAndResources == null) {
            classesAndResources = new HashSet<String>(3);
            this.beingLoaded.set(classesAndResources);
        }
        classesAndResources.add(name);
        return true;
    }

    private void stopLoading(String name) {
        ((Set)this.beingLoaded.get()).remove(name);
    }

    @Override
    public Bundle getBundle() {
        return this.manager.getBaseData().getBundle();
    }

    @Override
    public List<URL> findEntries(String path, String filePattern, int options) {
        return Collections.EMPTY_LIST;
    }

    @Override
    public Collection<String> listResources(String path, String filePattern, int options) {
        return Collections.EMPTY_LIST;
    }

    @Override
    public Collection<String> listLocalResources(String path, String filePattern, int options) {
        return Collections.EMPTY_LIST;
    }
}

