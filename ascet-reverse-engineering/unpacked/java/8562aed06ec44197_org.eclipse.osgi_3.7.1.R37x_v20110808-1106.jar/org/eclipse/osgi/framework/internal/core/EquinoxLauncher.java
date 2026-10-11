/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.framework.internal.core.ConsoleManager;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.osgi.framework.AdminPermission;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.FrameworkListener;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EquinoxLauncher
implements org.osgi.framework.launch.Framework {
    private volatile Framework framework;
    private volatile Bundle systemBundle;
    private final Map<String, String> configuration;
    private volatile ConsoleManager consoleMgr = null;

    public EquinoxLauncher(Map<String, String> configuration) {
        this.configuration = configuration;
    }

    @Override
    public void init() {
        this.checkAdminPermission("execute");
        if (System.getSecurityManager() == null) {
            this.internalInit();
        } else {
            AccessController.doPrivileged(new PrivilegedAction<Object>(){

                @Override
                public Object run() {
                    EquinoxLauncher.this.internalInit();
                    return null;
                }
            });
        }
    }

    synchronized Framework internalInit() {
        if ((this.getState() & 0x38) != 0) {
            return this.framework;
        }
        if (System.getSecurityManager() != null && this.configuration.get("org.osgi.framework.security") != null) {
            throw new SecurityException("Cannot specify the \"org.osgi.framework.security\" configuration property when a security manager is already installed.");
        }
        Framework current = this.framework;
        if (current != null) {
            current.close();
            this.framework = null;
            this.systemBundle = null;
        }
        ClassLoader tccl = Thread.currentThread().getContextClassLoader();
        try {
            FrameworkProperties.setProperties(this.configuration);
            FrameworkProperties.initializeProperties();
            this.setEquinoxProperties(this.configuration);
            current = new Framework(new BaseAdaptor(new String[0]));
            this.consoleMgr = ConsoleManager.startConsole(current);
            current.launch();
            this.framework = current;
            this.systemBundle = current.systemBundle;
        }
        finally {
            ClassLoader currentCCL = Thread.currentThread().getContextClassLoader();
            if (currentCCL != tccl) {
                Thread.currentThread().setContextClassLoader(tccl);
            }
        }
        return current;
    }

    private void setEquinoxProperties(Map<String, String> configuration) {
        String windowSystem;
        String threadBehavior;
        String string = threadBehavior = configuration == null ? null : configuration.get("osgi.framework.activeThreadType");
        if (threadBehavior == null) {
            if (FrameworkProperties.getProperty("osgi.framework.activeThreadType") == null) {
                FrameworkProperties.setProperty("osgi.framework.activeThreadType", "normal");
            }
        } else {
            FrameworkProperties.setProperty("osgi.framework.activeThreadType", threadBehavior);
        }
        if (FrameworkProperties.getProperty(Constants.OSGI_COMPATIBILITY_BOOTDELEGATION) == null) {
            FrameworkProperties.setProperty(Constants.OSGI_COMPATIBILITY_BOOTDELEGATION, "false");
        }
        if (FrameworkProperties.getProperty("osgi.support.multipleHosts") == null) {
            FrameworkProperties.setProperty("osgi.support.multipleHosts", "true");
        }
        String string2 = windowSystem = configuration == null ? null : configuration.get("org.osgi.framework.windowsystem");
        if (windowSystem == null && (windowSystem = FrameworkProperties.getProperty("osgi.ws")) != null) {
            FrameworkProperties.setProperty("org.osgi.framework.windowsystem", windowSystem);
        }
        if (configuration == null) {
            return;
        }
        String clean = configuration.get("org.osgi.framework.storage.clean");
        if ("onFirstInit".equals(clean)) {
            configuration.remove("org.osgi.framework.storage.clean");
            FrameworkProperties.setProperty("osgi.clean", Boolean.TRUE.toString());
        }
    }

    @Override
    public FrameworkEvent waitForStop(long timeout) throws InterruptedException {
        Framework current = this.framework;
        if (current == null) {
            return new FrameworkEvent(64, this, null);
        }
        return current.waitForStop(timeout);
    }

    @Override
    public Enumeration<URL> findEntries(String path, String filePattern, boolean recurse) {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.findEntries(path, filePattern, recurse);
    }

    @Override
    public BundleContext getBundleContext() {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.getBundleContext();
    }

    @Override
    public long getBundleId() {
        return 0L;
    }

    @Override
    public URL getEntry(String path) {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.getEntry(path);
    }

    @Override
    public Enumeration<String> getEntryPaths(String path) {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.getEntryPaths(path);
    }

    @Override
    public Dictionary<String, String> getHeaders() {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.getHeaders();
    }

    @Override
    public Dictionary<String, String> getHeaders(String locale) {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.getHeaders(locale);
    }

    @Override
    public long getLastModified() {
        Bundle current = this.systemBundle;
        if (current == null) {
            return System.currentTimeMillis();
        }
        return current.getLastModified();
    }

    @Override
    public String getLocation() {
        return "System Bundle";
    }

    @Override
    public ServiceReference<?>[] getRegisteredServices() {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.getRegisteredServices();
    }

    @Override
    public URL getResource(String name) {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.getResource(name);
    }

    @Override
    public Enumeration<URL> getResources(String name) throws IOException {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.getResources(name);
    }

    @Override
    public ServiceReference<?>[] getServicesInUse() {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.getServicesInUse();
    }

    @Override
    public int getState() {
        Bundle current = this.systemBundle;
        if (current == null) {
            return 2;
        }
        return current.getState();
    }

    @Override
    public String getSymbolicName() {
        return "org.eclipse.osgi";
    }

    @Override
    public boolean hasPermission(Object permission) {
        Bundle current = this.systemBundle;
        if (current == null) {
            return false;
        }
        return current.hasPermission(permission);
    }

    @Override
    public Class<?> loadClass(String name) throws ClassNotFoundException {
        Bundle current = this.systemBundle;
        if (current == null) {
            return null;
        }
        return current.loadClass(name);
    }

    @Override
    public void start(int options) throws BundleException {
        this.start();
    }

    @Override
    public void start() throws BundleException {
        this.checkAdminPermission("execute");
        if (System.getSecurityManager() == null) {
            this.internalStart();
        } else {
            try {
                AccessController.doPrivileged(new PrivilegedExceptionAction<Object>(){

                    @Override
                    public Object run() {
                        EquinoxLauncher.this.internalStart();
                        return null;
                    }
                });
            }
            catch (PrivilegedActionException e) {
                throw (BundleException)e.getException();
            }
        }
    }

    private void checkAdminPermission(String actions) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new AdminPermission(this, actions));
        }
    }

    void internalStart() {
        if (this.getState() == 32) {
            return;
        }
        Framework current = this.internalInit();
        int level = 1;
        try {
            level = Integer.parseInt(this.configuration.get("org.osgi.framework.startlevel.beginning"));
        }
        catch (Throwable throwable) {}
        current.startLevelManager.doSetStartLevel(level, new FrameworkListener[0]);
    }

    @Override
    public void stop(int options) throws BundleException {
        this.stop();
    }

    @Override
    public void stop() throws BundleException {
        Bundle current = this.systemBundle;
        if (current == null) {
            return;
        }
        ConsoleManager currentConsole = this.consoleMgr;
        if (currentConsole != null) {
            currentConsole.stopConsole();
            this.consoleMgr = null;
        }
        current.stop();
    }

    @Override
    public void uninstall() throws BundleException {
        throw new BundleException(Msg.BUNDLE_SYSTEMBUNDLE_UNINSTALL_EXCEPTION, 2);
    }

    @Override
    public void update() throws BundleException {
        Bundle current = this.systemBundle;
        if (current == null) {
            return;
        }
        current.update();
    }

    @Override
    public void update(InputStream in) throws BundleException {
        try {
            in.close();
        }
        catch (IOException iOException) {}
        this.update();
    }

    @Override
    public Map<X509Certificate, List<X509Certificate>> getSignerCertificates(int signersType) {
        Bundle current = this.systemBundle;
        if (current != null) {
            return current.getSignerCertificates(signersType);
        }
        Map empty = Collections.EMPTY_MAP;
        return empty;
    }

    @Override
    public Version getVersion() {
        Bundle current = this.systemBundle;
        if (current != null) {
            return current.getVersion();
        }
        return Version.emptyVersion;
    }

    @Override
    public <A> A adapt(Class<A> adapterType) {
        Bundle current = this.systemBundle;
        if (current != null) {
            return current.adapt(adapterType);
        }
        return null;
    }

    @Override
    public int compareTo(Bundle o) {
        Bundle current = this.systemBundle;
        if (current != null) {
            return current.compareTo(o);
        }
        throw new IllegalStateException();
    }

    @Override
    public File getDataFile(String filename) {
        Bundle current = this.systemBundle;
        if (current != null) {
            return current.getDataFile(filename);
        }
        return null;
    }
}

