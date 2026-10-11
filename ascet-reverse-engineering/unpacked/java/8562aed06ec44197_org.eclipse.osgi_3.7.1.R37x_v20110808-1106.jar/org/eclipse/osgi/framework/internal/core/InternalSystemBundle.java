/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.Permission;
import java.security.ProtectionDomain;
import java.util.Dictionary;
import java.util.Enumeration;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.FrameworkListener;
import org.osgi.framework.startlevel.FrameworkStartLevel;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InternalSystemBundle
extends BundleHost
implements org.osgi.framework.launch.Framework {
    private final FrameworkStartLevel fsl;
    ProtectionDomain systemDomain;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    protected InternalSystemBundle(Framework framework) throws BundleException {
        super(framework.adaptor.createSystemBundleData(), framework);
        Constants.setInternalSymbolicName(this.bundledata.getSymbolicName());
        this.state = 4;
        this.context = this.createContext();
        this.fsl = new EquinoxStartLevel();
    }

    @Override
    protected void load() {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            this.systemDomain = this.getClass().getProtectionDomain();
        }
    }

    @Override
    protected boolean reload(AbstractBundle newBundle) {
        return false;
    }

    @Override
    protected void refresh() {
    }

    @Override
    protected boolean unload() {
        return false;
    }

    @Override
    protected void close() {
        this.context.close();
        this.context = null;
    }

    @Override
    protected Class<?> loadClass(String name, boolean checkPermission) throws ClassNotFoundException {
        if (checkPermission) {
            this.framework.checkAdminPermission(this, "class");
            this.checkValid();
        }
        return Class.forName(name);
    }

    @Override
    public URL getResource(String name) {
        return null;
    }

    protected boolean isUnresolved() {
        return false;
    }

    @Override
    public void start() {
        this.framework.checkAdminPermission(this, "execute");
    }

    @Override
    public void start(int options) {
        this.framework.checkAdminPermission(this, "execute");
    }

    @Override
    protected void resume() {
        this.framework.startLevelManager.initialize();
        this.loadInstalledBundles(this.framework.startLevelManager.getInstalledBundles(this.framework.bundles, false));
        try {
            this.framework.systemBundle.state = 8;
            this.framework.systemBundle.context.start();
            this.framework.publishBundleEvent(128, this.framework.systemBundle);
        }
        catch (BundleException be) {
            if (Debug.DEBUG_STARTLEVEL) {
                Debug.println(new StringBuffer("SLL: Bundle resume exception: ").append(be.getMessage()).toString());
                Debug.printStackTrace(be.getNestedException() == null ? be : be.getNestedException());
            }
            this.framework.publishFrameworkEvent(2, this.framework.systemBundle, be);
            throw new RuntimeException(be.getMessage(), be);
        }
    }

    private void loadInstalledBundles(AbstractBundle[] installedBundles) {
        int i = 0;
        while (i < installedBundles.length) {
            AbstractBundle bundle = installedBundles[i];
            if (Debug.DEBUG_STARTLEVEL) {
                Debug.println(new StringBuffer("SLL: Trying to load bundle ").append(bundle).toString());
            }
            bundle.load();
            ++i;
        }
    }

    @Override
    public void stop() {
        this.framework.checkAdminPermission(this, "execute");
        if ((this.state & 0x28) != 0) {
            Thread shutdown = this.framework.secureAction.createThread(new Runnable(){

                public void run() {
                    try {
                        InternalSystemBundle.this.framework.close();
                    }
                    catch (Throwable t) {
                        InternalSystemBundle.this.framework.adaptor.handleRuntimeError(t);
                    }
                }
            }, "System Bundle Shutdown", this.framework.getContextFinder());
            shutdown.start();
        }
    }

    @Override
    public void stop(int options) {
        this.stop();
    }

    protected void suspend() {
        this.framework.startLevelManager.shutdown();
        this.framework.startLevelManager.cleanup();
        this.framework.packageAdmin.cleanup();
        if (Debug.DEBUG_GENERAL) {
            Debug.println("->Framework shutdown");
        }
        this.framework.publishBundleEvent(4, this);
    }

    @Override
    protected void suspend(boolean lock) {
    }

    @Override
    public void update() {
        this.framework.checkAdminPermission(this, "lifecycle");
        if ((this.state & 0x28) != 0) {
            Thread restart = this.framework.secureAction.createThread(new Runnable(){

                public void run() {
                    int sl = InternalSystemBundle.this.framework.startLevelManager.getStartLevel();
                    FrameworkProperties.setProperty("osgi.framework.relaunch", "");
                    InternalSystemBundle.this.framework.shutdown(128);
                    InternalSystemBundle.this.framework.launch();
                    if (sl > 0) {
                        InternalSystemBundle.this.framework.startLevelManager.doSetStartLevel(sl, new FrameworkListener[0]);
                    }
                    FrameworkProperties.clearProperty("osgi.framework.relaunch");
                }
            }, "System Bundle Update", this.framework.getContextFinder());
            restart.start();
        }
    }

    @Override
    public void update(InputStream in) {
        this.update();
        try {
            in.close();
        }
        catch (IOException iOException) {}
    }

    @Override
    public void uninstall() throws BundleException {
        this.framework.checkAdminPermission(this, "lifecycle");
        throw new BundleException(Msg.BUNDLE_SYSTEMBUNDLE_UNINSTALL_EXCEPTION, 2);
    }

    @Override
    public boolean hasPermission(Object permission) {
        if (this.systemDomain != null) {
            if (permission instanceof Permission) {
                return this.systemDomain.implies((Permission)permission);
            }
            return false;
        }
        return true;
    }

    protected void unresolvePermissions(AbstractBundle[] refreshedBundles) {
    }

    @Override
    public Dictionary<String, String> getHeaders(String localeString) {
        return new SystemBundleHeaders(super.getHeaders(localeString));
    }

    @Override
    public void init() {
    }

    @Override
    public FrameworkEvent waitForStop(long timeout) throws InterruptedException {
        return this.framework.waitForStop(timeout);
    }

    @Override
    public ClassLoader getClassLoader() {
        return this.getClass().getClassLoader();
    }

    @Override
    protected <A> A adapt0(Class<A> adapterType) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.framework.startlevel.FrameworkStartLevel");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(adapterType)) {
            return (A)this.fsl;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.osgi.framework.wiring.FrameworkWiring");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz2.equals(adapterType)) {
            return (A)this.framework.getPackageAdmin();
        }
        return super.adapt0(adapterType);
    }

    class EquinoxStartLevel
    implements FrameworkStartLevel {
        EquinoxStartLevel() {
        }

        public void setStartLevel(int startlevel, FrameworkListener[] listeners) {
            InternalSystemBundle.this.framework.startLevelManager.setStartLevel(startlevel, InternalSystemBundle.this, listeners);
        }

        public int getInitialBundleStartLevel() {
            return InternalSystemBundle.this.framework.startLevelManager.getInitialBundleStartLevel();
        }

        public void setInitialBundleStartLevel(int startlevel) {
            InternalSystemBundle.this.framework.startLevelManager.setInitialBundleStartLevel(startlevel);
        }

        public Bundle getBundle() {
            return InternalSystemBundle.this;
        }

        public int getStartLevel() {
            return InternalSystemBundle.this.framework.startLevelManager.getStartLevel();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class SystemBundleHeaders
    extends Dictionary<String, String> {
        private final Dictionary<String, String> headers;

        public SystemBundleHeaders(Dictionary<String, String> headers) {
            this.headers = headers;
        }

        @Override
        public Enumeration<String> elements() {
            return this.headers.elements();
        }

        @Override
        public String get(Object key) {
            if (!(key instanceof String)) {
                return null;
            }
            if ("Export-Package".equalsIgnoreCase((String)key)) {
                return this.getExtra("Export-Package", "org.osgi.framework.system.packages", "org.osgi.framework.system.packages.extra");
            }
            if ("Provide-Capability".equalsIgnoreCase((String)key)) {
                return this.getExtra("Provide-Capability", "org.osgi.framework.system.capabilities", "org.osgi.framework.system.capabilities.extra");
            }
            return this.headers.get(key);
        }

        private String getExtra(String header, String systemProp, String systemExtraProp) {
            String systemValue = FrameworkProperties.getProperty(systemProp);
            String systemExtraValue = FrameworkProperties.getProperty(systemExtraProp);
            if (systemValue == null) {
                systemValue = systemExtraValue;
            } else if (systemExtraValue != null) {
                systemValue = new StringBuffer(String.valueOf(systemValue)).append(", ").append(systemExtraValue).toString();
            }
            String result = this.headers.get(header);
            if (systemValue != null) {
                result = result != null ? new StringBuffer(String.valueOf(result)).append(", ").append(systemValue).toString() : systemValue;
            }
            return result;
        }

        @Override
        public boolean isEmpty() {
            return this.headers.isEmpty();
        }

        @Override
        public Enumeration<String> keys() {
            return this.headers.keys();
        }

        @Override
        public String put(String key, String value) {
            return this.headers.put(key, value);
        }

        @Override
        public String remove(Object key) {
            return this.headers.remove(key);
        }

        @Override
        public int size() {
            return this.headers.size();
        }
    }
}

