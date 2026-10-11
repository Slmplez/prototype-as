/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.launch;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.security.AccessController;
import java.security.AllPermission;
import java.security.PrivilegedAction;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.util.Headers;
import org.eclipse.osgi.internal.baseadaptor.DevClassPathHelper;
import org.eclipse.osgi.launch.EquinoxFWClassLoader;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.Version;
import org.osgi.framework.launch.Framework;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Equinox
implements Framework {
    private static final String implName = "org.eclipse.osgi.framework.internal.core.EquinoxLauncher";
    private Framework impl;
    private final boolean useSeparateCL;
    private final Map<String, Object> configuration;
    static /* synthetic */ Class class$0;

    public Equinox(Map<String, ?> configuration) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new AllPermission());
        }
        this.useSeparateCL = FrameworkProperties.inUse();
        Map<Object, Object> empty = Collections.EMPTY_MAP;
        this.configuration = configuration == null ? empty : new HashMap(configuration);
    }

    private Framework createImpl() {
        if (System.getSecurityManager() == null) {
            return this.createImpl0();
        }
        return AccessController.doPrivileged(new PrivilegedAction<Framework>(){

            @Override
            public Framework run() {
                return Equinox.this.createImpl0();
            }
        });
    }

    Framework createImpl0() {
        try {
            Class<?> implClazz = this.getImplClass();
            Class[] classArray = new Class[1];
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.util.Map");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz;
            Constructor<?> constructor = implClazz.getConstructor(classArray);
            return (Framework)constructor.newInstance(this.configuration);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(implName);
        }
        catch (IllegalAccessException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
        catch (NoSuchMethodException e) {
            throw new NoSuchMethodError(e.getMessage());
        }
        catch (InstantiationException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
        catch (InvocationTargetException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    private Class<?> getImplClass() throws ClassNotFoundException {
        ClassLoader thisCL = this.getClass().getClassLoader();
        if (!this.useSeparateCL || !(thisCL instanceof URLClassLoader)) {
            return Class.forName(implName);
        }
        URL[] cp = this.getFrameworkURLs((URLClassLoader)thisCL);
        EquinoxFWClassLoader fwCL = new EquinoxFWClassLoader(cp, thisCL);
        return fwCL.loadClass(implName);
    }

    /*
     * Unable to fully structure code
     */
    private URL[] getFrameworkURLs(URLClassLoader frameworkLoader) {
        cp = frameworkLoader.getURLs();
        result = new ArrayList<URL>(cp.length);
        i = 0;
        while (i < cp.length) {
            block28: {
                block26: {
                    block27: {
                        block25: {
                            manifest = null;
                            manifest = cp[i].getFile().endsWith("/") != false ? new URL(cp[i], "META-INF/MANIFEST.MF").openStream() : new URL(new StringBuffer("jar:").append(cp[i].toExternalForm()).append("!/").append("META-INF/MANIFEST.MF").toString()).openStream();
                            headers = ManifestElement.parseBundleManifest(manifest, new Headers<String, String>(10));
                            bsnSpec = this.getValue(headers, "Bundle-SymbolicName");
                            if (bsnSpec != null) break block25;
                            if (manifest == null) ** GOTO lbl67
                            try {
                                manifest.close();
                            }
                            catch (IOException v0) {}
                            break block28;
                        }
                        internalBSN = Constants.getInternalSymbolicName();
                        if (internalBSN.equals(bsnSpec)) {
                            this.addDevClassPaths(cp[i], bsnSpec, result);
                            result.add(cp[i]);
                            break block26;
                        }
                        if (this.isFrameworkFragment(headers, internalBSN)) break block27;
                        ** if (manifest == null) goto lbl-1000
lbl-1000:
                        // 1 sources

                        {
                            try {
                                manifest.close();
                            }
                            catch (IOException v1) {}
                        }
lbl-1000:
                        // 2 sources

                        {
                            break block28;
                        }
                    }
                    try {
                        this.addDevClassPaths(cp[i], bsnSpec, result);
                        result.add(cp[i]);
                    }
                    catch (IOException v2) {
                        if (manifest == null) ** GOTO lbl67
                        try {
                            manifest.close();
                        }
                        catch (IOException v3) {}
                    }
                    catch (BundleException v4) {
                        try {
                            if (manifest == null) ** GOTO lbl67
                        }
                        catch (Throwable var9_9) {
                            if (manifest != null) {
                                try {
                                    manifest.close();
                                }
                                catch (IOException v5) {}
                            }
                            throw var9_9;
                        }
                        try {
                            manifest.close();
                        }
                        catch (IOException v6) {}
                    }
                }
                if (manifest != null) {
                    try {
                        manifest.close();
                    }
                    catch (IOException v7) {}
                }
            }
            ++i;
        }
        return result.toArray(new URL[result.size()]);
    }

    private void addDevClassPaths(URL cp, String bsn, List<URL> result) {
        if (!cp.getPath().endsWith("/")) {
            return;
        }
        String[] devPaths = DevClassPathHelper.getDevClassPath(bsn);
        if (devPaths == null) {
            return;
        }
        int i = 0;
        while (i < devPaths.length) {
            try {
                char lastChar = devPaths[i].charAt(devPaths[i].length() - 1);
                URL url = devPaths[i].endsWith(".jar") || lastChar == '/' || lastChar == '\\' ? new URL(cp, devPaths[i]) : new URL(cp, new StringBuffer(String.valueOf(devPaths[i])).append("/").toString());
                result.add(url);
            }
            catch (MalformedURLException malformedURLException) {}
            ++i;
        }
    }

    private boolean isFrameworkFragment(Map<String, String> headers, String internalBSN) {
        String hostBSN = this.getValue(headers, "Fragment-Host");
        return internalBSN.equals(hostBSN) || "system.bundle".equals(hostBSN);
    }

    private String getValue(Map<String, String> headers, String key) {
        ManifestElement[] elements;
        String headerSpec = headers.get(key);
        if (headerSpec == null) {
            return null;
        }
        try {
            elements = ManifestElement.parseHeader(key, headerSpec);
        }
        catch (BundleException bundleException) {
            return null;
        }
        if (elements == null) {
            return null;
        }
        return elements[0].getValue();
    }

    private synchronized Framework getImpl() {
        if (this.impl == null) {
            this.impl = this.createImpl();
        }
        return this.impl;
    }

    @Override
    public void init() throws BundleException {
        this.getImpl().init();
    }

    @Override
    public FrameworkEvent waitForStop(long timeout) throws InterruptedException {
        return this.getImpl().waitForStop(timeout);
    }

    @Override
    public Enumeration<URL> findEntries(String path, String filePattern, boolean recurse) {
        return this.getImpl().findEntries(path, filePattern, recurse);
    }

    @Override
    public BundleContext getBundleContext() {
        return this.getImpl().getBundleContext();
    }

    @Override
    public long getBundleId() {
        return this.getImpl().getBundleId();
    }

    @Override
    public URL getEntry(String path) {
        return this.getImpl().getEntry(path);
    }

    @Override
    public Enumeration<String> getEntryPaths(String path) {
        return this.getImpl().getEntryPaths(path);
    }

    @Override
    public Dictionary<String, String> getHeaders() {
        return this.getImpl().getHeaders();
    }

    @Override
    public Dictionary<String, String> getHeaders(String locale) {
        return this.getImpl().getHeaders(locale);
    }

    @Override
    public long getLastModified() {
        return this.getImpl().getLastModified();
    }

    @Override
    public String getLocation() {
        return this.getImpl().getLocation();
    }

    @Override
    public ServiceReference<?>[] getRegisteredServices() {
        return this.getImpl().getRegisteredServices();
    }

    @Override
    public URL getResource(String name) {
        return this.getImpl().getResource(name);
    }

    @Override
    public Enumeration<URL> getResources(String name) throws IOException {
        return this.getImpl().getResources(name);
    }

    @Override
    public ServiceReference<?>[] getServicesInUse() {
        return this.getImpl().getServicesInUse();
    }

    @Override
    public int getState() {
        return this.getImpl().getState();
    }

    @Override
    public String getSymbolicName() {
        return this.getImpl().getSymbolicName();
    }

    @Override
    public boolean hasPermission(Object permission) {
        return this.getImpl().hasPermission(permission);
    }

    @Override
    public Class<?> loadClass(String name) throws ClassNotFoundException {
        return this.getImpl().loadClass(name);
    }

    @Override
    public void start(int options) throws BundleException {
        this.getImpl().start(options);
    }

    @Override
    public void start() throws BundleException {
        this.getImpl().start();
    }

    @Override
    public void stop(int options) throws BundleException {
        this.getImpl().stop(options);
    }

    @Override
    public void stop() throws BundleException {
        this.getImpl().stop();
    }

    @Override
    public void uninstall() throws BundleException {
        this.getImpl().uninstall();
    }

    @Override
    public void update() throws BundleException {
        this.getImpl().update();
    }

    @Override
    public void update(InputStream in) throws BundleException {
        this.getImpl().update(in);
    }

    @Override
    public Map<X509Certificate, List<X509Certificate>> getSignerCertificates(int signersType) {
        return this.getImpl().getSignerCertificates(signersType);
    }

    @Override
    public Version getVersion() {
        return this.getImpl().getVersion();
    }

    @Override
    public <A> A adapt(Class<A> adapterType) {
        return this.getImpl().adapt(adapterType);
    }

    @Override
    public int compareTo(Bundle o) {
        return this.getImpl().compareTo(o);
    }

    @Override
    public File getDataFile(String filename) {
        return this.getImpl().getDataFile(filename);
    }
}

