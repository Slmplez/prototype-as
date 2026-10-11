/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader;

import java.io.IOException;
import java.net.URL;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleFragment;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemBundleLoader
extends BundleLoader {
    public static final String EQUINOX_EE = "x-equinox-ee";
    final ClassLoader classLoader;
    private final Set<String> eePackages;
    private final Set<String> extPackages;
    private final ClassLoader extClassLoader;

    /*
     * Unable to fully structure code
     */
    protected SystemBundleLoader(BundleHost bundle, BundleLoaderProxy proxy) throws BundleException {
        block9: {
            super(bundle, proxy);
            exports = proxy.getBundleDescription().getSelectedExports();
            if (exports == null || exports.length == 0) {
                this.eePackages = null;
            } else {
                this.eePackages = new HashSet<String>(exports.length);
                i = 0;
                while (i < exports.length) {
                    if ((Integer)exports[i].getDirective("x-equinox-ee") >= 0) {
                        this.eePackages.add(exports[i].getName());
                    }
                    ++i;
                }
            }
            this.classLoader = this.getClass().getClassLoader();
            this.extPackages = new HashSet<String>(0);
            fragments = bundle.getFragments();
            if (fragments != null) {
                i = 0;
                while (i < fragments.length) {
                    this.addExtPackages(fragments[i]);
                    ++i;
                }
            }
            if ((extCL = ClassLoader.getSystemClassLoader()) != null) ** GOTO lbl27
            this.extClassLoader = null;
            break block9;
lbl-1000:
            // 1 sources

            {
                extCL = extCL.getParent();
lbl27:
                // 2 sources

                ** while (extCL.getParent() != null)
            }
lbl28:
            // 1 sources

            found = false;
            systemExtCL = this.classLoader;
            while (systemExtCL.getParent() != null && !found) {
                if (systemExtCL.getParent() == extCL) {
                    found = true;
                    continue;
                }
                systemExtCL = systemExtCL.getParent();
            }
            this.extClassLoader = found != false ? null : extCL;
        }
    }

    private void addExtPackages(BundleFragment fragment) {
        if ((fragment.getBundleData().getType() & 0x10) == 0) {
            return;
        }
        ExportPackageDescription[] extExports = fragment.getBundleDescription().getExportPackages();
        int j = 0;
        while (j < extExports.length) {
            this.extPackages.add(extExports[j].getName());
            ++j;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public synchronized void attachFragment(BundleFragment fragment) throws BundleException {
        super.attachFragment(fragment);
        Set<String> set = this.extPackages;
        synchronized (set) {
            this.addExtPackages(fragment);
        }
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        Class<?> result = this.findLocalClass(name);
        if (result == null) {
            throw new ClassNotFoundException(name);
        }
        return result;
    }

    @Override
    public String findLibrary(String name) {
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    Class<?> findLocalClass(String name) {
        try {
            return this.classLoader.loadClass(name);
        }
        catch (ClassNotFoundException classNotFoundException) {
            if (this.extClassLoader != null) {
                Set<String> set = this.extPackages;
                synchronized (set) {
                    block9: {
                        if (this.extPackages.size() <= 0 || !this.extPackages.contains(BundleLoader.getPackageName(name))) break block9;
                        try {
                            return this.extClassLoader.loadClass(name);
                        }
                        catch (ClassNotFoundException classNotFoundException2) {
                            return null;
                        }
                    }
                }
            }
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    URL findLocalResource(String name) {
        URL result = this.classLoader.getResource(name);
        if (result == null && this.extClassLoader != null) {
            Set<String> set = this.extPackages;
            synchronized (set) {
                if (this.extPackages.size() > 0 && this.extPackages.contains(BundleLoader.getResourcePackageName(name))) {
                    result = this.extClassLoader.getResource(name);
                }
            }
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    Enumeration<URL> findLocalResources(String name) {
        Enumeration<URL> result = null;
        try {
            result = this.classLoader.getResources(name);
        }
        catch (IOException iOException) {}
        if (!(result != null && result.hasMoreElements() || this.extClassLoader == null)) {
            Set<String> set = this.extPackages;
            synchronized (set) {
                if (this.extPackages.size() > 0 && this.extPackages.contains(BundleLoader.getResourcePackageName(name))) {
                    try {
                        result = this.extClassLoader.getResources(name);
                    }
                    catch (IOException iOException) {}
                }
            }
        }
        return result;
    }

    @Override
    public URL findResource(String name) {
        return this.findLocalResource(name);
    }

    @Override
    public Enumeration<URL> findResources(String name) throws IOException {
        return this.findLocalResources(name);
    }

    @Override
    protected void close() {
    }

    public boolean isEEPackage(String pkgName) {
        return this.eePackages.contains(pkgName);
    }

    @Override
    BundleClassLoader createBCL(BundleProtectionDomain pd, String[] cp) {
        return new BundleClassLoader(){

            @Override
            public Bundle getBundle() {
                return SystemBundleLoader.this.getBundle();
            }

            @Override
            public Class<?> loadClass(String name) throws ClassNotFoundException {
                return SystemBundleLoader.this.loadClass(name);
            }

            @Override
            public void initialize() {
            }

            @Override
            public Enumeration<URL> getResources(String name) throws IOException {
                return this.findLocalResources(name);
            }

            @Override
            public URL getResource(String name) {
                return SystemBundleLoader.this.findLocalResource(name);
            }

            @Override
            public ClassLoader getParent() {
                return SystemBundleLoader.this.classLoader.getParent();
            }

            @Override
            public ClassLoaderDelegate getDelegate() {
                return SystemBundleLoader.this;
            }

            @Override
            public Enumeration<URL> findLocalResources(String resource) {
                return SystemBundleLoader.this.findLocalResources(resource);
            }

            @Override
            public URL findLocalResource(String resource) {
                return this.getResource(resource);
            }

            @Override
            public Class<?> findLocalClass(String classname) throws ClassNotFoundException {
                return SystemBundleLoader.this.findLocalClass(classname);
            }

            @Override
            public void close() {
            }

            @Override
            public void attachFragment(BundleData bundledata, ProtectionDomain domain, String[] classpath) {
            }

            @Override
            public List<URL> findEntries(String path, String filePattern, int options) {
                AbstractBundle systemBundle = SystemBundleLoader.this.getBundle();
                boolean recurse = (options & 1) != 0;
                ArrayList<URL> result = Collections.EMPTY_LIST;
                Enumeration<URL> entries = systemBundle.findEntries(path, filePattern, recurse);
                if (entries != null) {
                    result = new ArrayList<URL>();
                    while (entries.hasMoreElements()) {
                        result.add(entries.nextElement());
                    }
                }
                return Collections.unmodifiableList(result);
            }

            @Override
            public Collection<String> listResources(String path, String filePattern, int options) {
                return Collections.EMPTY_LIST;
            }

            @Override
            public Collection<String> listLocalResources(String path, String filePattern, int options) {
                return Collections.EMPTY_LIST;
            }
        };
    }
}

