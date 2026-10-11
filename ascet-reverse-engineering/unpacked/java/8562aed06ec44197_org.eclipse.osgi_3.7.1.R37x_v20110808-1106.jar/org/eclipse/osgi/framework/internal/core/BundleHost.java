/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleWatcher;
import org.eclipse.osgi.framework.adaptor.StatusException;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.BundleFragment;
import org.eclipse.osgi.framework.internal.core.BundleRepository;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ResolverHookException;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BundleHost
extends AbstractBundle {
    public static final int LAZY_TRIGGER = 0x40000000;
    private BundleLoaderProxy proxy;
    protected BundleContextImpl context = null;
    protected BundleFragment[] fragments = null;

    public BundleHost(BundleData bundledata, Framework framework) {
        super(bundledata, framework);
    }

    @Override
    protected void load() {
        SecurityManager sm;
        if (Debug.DEBUG_GENERAL) {
            if ((this.state & 2) == 0) {
                Debug.println(new StringBuffer("Bundle.load called when state != INSTALLED: ").append(this).toString());
                Debug.printStackTrace(new Exception("Stack trace"));
            }
            if (this.proxy != null) {
                Debug.println(new StringBuffer("Bundle.load called when proxy != null: ").append(this).toString());
                Debug.printStackTrace(new Exception("Stack trace"));
            }
        }
        if (this.framework.isActive() && (sm = System.getSecurityManager()) != null && this.framework.securityAdmin != null) {
            this.domain = this.framework.securityAdmin.createProtectionDomain(this);
        }
        this.proxy = null;
    }

    @Override
    protected boolean reload(AbstractBundle newBundle) {
        if (Debug.DEBUG_GENERAL && (this.state & 6) == 0) {
            Debug.println(new StringBuffer("Bundle.reload called when state != INSTALLED | RESOLVED: ").append(this).toString());
            Debug.printStackTrace(new Exception("Stack trace"));
        }
        boolean exporting = false;
        if (this.framework.isActive()) {
            if (this.state == 4) {
                BundleLoaderProxy curProxy = this.getLoaderProxy();
                exporting = curProxy.inUse();
                if (exporting) {
                    curProxy.getBundleLoader().createClassLoader();
                } else {
                    BundleLoader.closeBundleLoader(this.proxy);
                }
                this.state = 2;
                this.proxy = null;
                this.fragments = null;
            }
        } else {
            try {
                this.bundledata.close();
            }
            catch (IOException iOException) {}
        }
        this.bundledata = newBundle.bundledata;
        this.bundledata.setBundle(this);
        if (this.framework.isActive() && System.getSecurityManager() != null && this.framework.securityAdmin != null) {
            this.domain = this.framework.securityAdmin.createProtectionDomain(this);
        }
        return exporting;
    }

    @Override
    protected void refresh() {
        if (Debug.DEBUG_GENERAL && (this.state & 7) == 0) {
            Debug.println(new StringBuffer("Bundle.reload called when state != UNINSTALLED | INSTALLED | RESOLVED: ").append(this).toString());
            Debug.printStackTrace(new Exception("Stack trace"));
        }
        if (this.state == 4) {
            BundleLoader.closeBundleLoader(this.proxy);
            this.proxy = null;
            this.fragments = null;
            this.state = 2;
        }
        this.manifestLocalization = null;
    }

    @Override
    protected boolean unload() {
        if (Debug.DEBUG_GENERAL && (this.state & 7) == 0) {
            Debug.println(new StringBuffer("Bundle.unload called when state != UNINSTALLED | INSTALLED | RESOLVED: ").append(this).toString());
            Debug.printStackTrace(new Exception("Stack trace"));
        }
        boolean exporting = false;
        if (this.framework.isActive() && this.state == 4) {
            BundleLoaderProxy curProxy = this.getLoaderProxy();
            exporting = curProxy.inUse();
            if (exporting) {
                curProxy.getBundleLoader().createClassLoader();
            } else {
                BundleLoader.closeBundleLoader(this.proxy);
            }
            this.state = 2;
            this.proxy = null;
            this.fragments = null;
            this.domain = null;
        }
        if (!exporting) {
            try {
                this.bundledata.close();
            }
            catch (IOException iOException) {}
        }
        return exporting;
    }

    private BundleLoader checkLoader() {
        BundleLoader loader;
        this.checkValid();
        if (!this.isResolved() && !this.framework.packageAdmin.resolveBundles(new Bundle[]{this})) {
            return null;
        }
        if (Debug.DEBUG_GENERAL && (this.state & 0x3C) == 0) {
            Debug.println(new StringBuffer("Bundle.checkLoader() called when state != STARTING | ACTIVE | STOPPING | RESOLVED: ").append(this).toString());
            Debug.printStackTrace(new Exception("Stack trace"));
        }
        if ((loader = this.getBundleLoader()) == null) {
            if (Debug.DEBUG_GENERAL) {
                Debug.println(new StringBuffer("Bundle.checkLoader() called when loader == null: ").append(this).toString());
                Debug.printStackTrace(new Exception("Stack trace"));
            }
            return null;
        }
        return loader;
    }

    @Override
    protected Class<?> loadClass(String name, boolean checkPermission) throws ClassNotFoundException {
        BundleLoader loader;
        if (checkPermission) {
            try {
                this.framework.checkAdminPermission(this, "class");
            }
            catch (SecurityException e) {
                throw new ClassNotFoundException(name, e);
            }
        }
        if ((loader = this.checkLoader()) == null) {
            throw new ClassNotFoundException(NLS.bind(Msg.BUNDLE_CNFE_NOT_RESOLVED, name, this.getBundleData().getLocation()));
        }
        try {
            return loader.loadClass(name);
        }
        catch (ClassNotFoundException e) {
            if (!(e instanceof StatusException) && (this.bundledata.getStatus() & 2) != 0 && !this.testStateChanging(Thread.currentThread())) {
                try {
                    loader.setLazyTrigger();
                }
                catch (BundleException be) {
                    this.framework.adaptor.getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 2, 0, be.getMessage(), 0, be, null));
                }
            }
            throw e;
        }
    }

    @Override
    public URL getResource(String name) {
        BundleLoader loader = null;
        try {
            this.framework.checkAdminPermission(this, "resource");
        }
        catch (SecurityException securityException) {
            return null;
        }
        loader = this.checkLoader();
        if (loader == null) {
            Enumeration<URL> result = this.bundledata.findLocalResources(name);
            if (result != null && result.hasMoreElements()) {
                return result.nextElement();
            }
            return null;
        }
        return loader.findResource(name);
    }

    @Override
    public Enumeration<URL> getResources(String name) throws IOException {
        BundleLoader loader = null;
        try {
            this.framework.checkAdminPermission(this, "resource");
        }
        catch (SecurityException securityException) {
            return null;
        }
        loader = this.checkLoader();
        Enumeration<URL> result = loader == null ? this.bundledata.findLocalResources(name) : loader.getResources(name);
        if (result != null && result.hasMoreElements()) {
            return result;
        }
        return null;
    }

    @Override
    protected void startWorker(int options) throws BundleException {
        if ((options & 1) == 0) {
            this.setStatus(1, true);
            this.setStatus(4, (options & 2) != 0);
            if (Debug.MONITOR_ACTIVATION) {
                new Exception(new StringBuffer("A persistent start has been called on bundle: ").append(this.getBundleData()).toString()).printStackTrace();
            }
        }
        if (!this.framework.active || (this.state & 0x20) != 0) {
            return;
        }
        if (this.getInternalStartLevel() > this.framework.startLevelManager.getStartLevel()) {
            if ((options & 0x40000000) == 0 && (options & 1) != 0) {
                String msg = NLS.bind(Msg.BUNDLE_TRANSIENT_START_ERROR, this);
                throw new BundleException(msg, 2, new AbstractBundle.BundleStatusException(msg, 4, this));
            }
            return;
        }
        if (this.state == 2) {
            try {
                if (!this.framework.packageAdmin.resolveBundles(new Bundle[]{this}, true)) {
                    throw this.getResolutionFailureException();
                }
            }
            catch (IllegalStateException e) {
                throw new BundleException("Unexpected resolution exception.", 4, e);
            }
            catch (ResolverHookException e) {
                throw new BundleException("Unexpected resolution exception.", 12, e.getCause());
            }
        }
        if ((options & 2) != 0 && (this.bundledata.getStatus() & 2) != 0) {
            if ((this.state & 4) != 0) {
                this.state = 8;
                this.completeStateChange();
                this.framework.publishBundleEvent(512, this);
            }
            return;
        }
        if (Debug.DEBUG_GENERAL) {
            Debug.println(new StringBuffer("Bundle: Active sl = ").append(this.framework.startLevelManager.getStartLevel()).append("; Bundle ").append(this.getBundleId()).append(" sl = ").append(this.getInternalStartLevel()).toString());
        }
        if ((options & 0x40000000) != 0 && (this.state & 4) != 0) {
            this.state = 8;
            this.completeStateChange();
            this.framework.publishBundleEvent(512, this);
            this.beginStateChange();
            if (this.state != 8) {
                return;
            }
        }
        this.state = 8;
        this.framework.publishBundleEvent(128, this);
        this.context = this.getContext();
        long start = 0L;
        BundleWatcher bundleStats = this.framework.adaptor.getBundleWatcher();
        if (bundleStats != null) {
            bundleStats.watchBundle(this, 4);
        }
        if (Debug.DEBUG_BUNDLE_TIME) {
            start = System.currentTimeMillis();
            System.out.println(new StringBuffer("Starting ").append(this.getSymbolicName()).toString());
        }
        try {
            try {
                this.context.start();
                this.startHook();
                if (this.framework.active) {
                    this.state = 32;
                    if (Debug.DEBUG_GENERAL) {
                        Debug.println(new StringBuffer("->started ").append(this).toString());
                    }
                    this.completeStateChange();
                    this.framework.publishBundleEvent(2, this);
                }
            }
            catch (BundleException e) {
                this.state = 16;
                this.framework.publishBundleEvent(256, this);
                this.stopHook();
                this.context.close();
                this.context = null;
                this.state = 4;
                this.framework.publishBundleEvent(4, this);
                throw e;
            }
        }
        finally {
            if (bundleStats != null) {
                bundleStats.watchBundle(this, 8);
            }
            if (Debug.DEBUG_BUNDLE_TIME) {
                System.out.println(new StringBuffer("End starting ").append(this.getSymbolicName()).append(" ").append(System.currentTimeMillis() - start).toString());
            }
        }
        if (this.state == 1) {
            this.context.close();
            this.context = null;
            throw new BundleException(NLS.bind(Msg.BUNDLE_UNINSTALLED_EXCEPTION, this.getBundleData().getLocation()), 7);
        }
    }

    protected void startHook() throws BundleException {
    }

    @Override
    protected boolean readyToResume() {
        if (this.getInternalStartLevel() > this.framework.startLevelManager.getStartLevel()) {
            return false;
        }
        int status = this.bundledata.getStatus();
        if ((status & 1) == 0) {
            return false;
        }
        if ((status & 4) == 0 || (status & 2) == 0 || this.isLazyTriggerSet()) {
            return true;
        }
        if (!(this.isResolved() || !this.framework.getAdaptor().getState().isResolved() && this.framework.packageAdmin.resolveBundles(new Bundle[]{this}))) {
            return false;
        }
        this.state = 8;
        this.completeStateChange();
        this.framework.publishBundleEvent(512, this);
        return false;
    }

    private synchronized boolean isLazyTriggerSet() {
        if (this.proxy == null) {
            return false;
        }
        BundleLoader loader = this.proxy.getBasicBundleLoader();
        return loader != null ? loader.isLazyTriggerSet() : false;
    }

    protected BundleContextImpl createContext() {
        return new BundleContextImpl(this);
    }

    @Override
    protected synchronized BundleContextImpl getContext() {
        if (this.context == null && (this.state & 0x38) != 0) {
            this.context = this.createContext();
        }
        return this.context;
    }

    @Override
    protected void stopWorker(int options) throws BundleException {
        if ((options & 1) == 0) {
            this.setStatus(1, false);
            this.setStatus(4, false);
            if (Debug.MONITOR_ACTIVATION) {
                new Exception(new StringBuffer("A persistent start has been called on bundle: ").append(this.getBundleData()).toString()).printStackTrace();
            }
        }
        if (this.framework.active) {
            if ((this.state & 0x16) != 0) {
                return;
            }
            BundleWatcher bundleStats = this.framework.adaptor.getBundleWatcher();
            if (bundleStats != null) {
                bundleStats.watchBundle(this, 16);
            }
            this.state = 16;
            this.framework.publishBundleEvent(256, this);
            try {
                if (this.context != null) {
                    this.context.stop();
                }
            }
            finally {
                this.stopHook();
                if (this.context != null) {
                    this.context.close();
                    this.context = null;
                }
                this.checkValid();
                this.state = 4;
                if (Debug.DEBUG_GENERAL) {
                    Debug.println(new StringBuffer("->stopped ").append(this).toString());
                }
                this.framework.publishBundleEvent(4, this);
                if (bundleStats != null) {
                    bundleStats.watchBundle(this, 32);
                }
            }
        }
    }

    protected void stopHook() throws BundleException {
    }

    @Override
    public ServiceReference<?>[] getRegisteredServices() {
        this.checkValid();
        if (this.context == null) {
            return null;
        }
        return this.context.getFramework().getServiceRegistry().getRegisteredServices(this.context);
    }

    @Override
    public ServiceReference<?>[] getServicesInUse() {
        this.checkValid();
        if (this.context == null) {
            return null;
        }
        return this.context.getFramework().getServiceRegistry().getServicesInUse(this.context);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleFragment[] getFragments() {
        BundleRepository bundleRepository = this.framework.bundles;
        synchronized (bundleRepository) {
            block4: {
                if (this.fragments != null) break block4;
                return null;
            }
            BundleFragment[] result = new BundleFragment[this.fragments.length];
            System.arraycopy(this.fragments, 0, result, 0, result.length);
            return result;
        }
    }

    protected void attachFragment(BundleFragment fragment) throws BundleException {
        BundleLoader loader = this.getLoaderProxy().getBasicBundleLoader();
        if (loader != null) {
            loader.attachFragment(fragment);
        }
        if (this.fragments == null) {
            this.fragments = new BundleFragment[]{fragment};
        } else {
            boolean inserted = false;
            BundleFragment[] newFragments = new BundleFragment[this.fragments.length + 1];
            int i = 0;
            while (i < this.fragments.length) {
                if (fragment == this.fragments[i]) {
                    return;
                }
                this.fragments[i].manifestLocalization = null;
                if (!inserted && fragment.getBundleId() < this.fragments[i].getBundleId()) {
                    if (loader != null) {
                        throw new BundleException(NLS.bind(Msg.BUNDLE_LOADER_ATTACHMENT_ERROR, this.fragments[i].getSymbolicName(), this.getSymbolicName()), 2);
                    }
                    newFragments[i] = fragment;
                    inserted = true;
                }
                newFragments[inserted ? i + 1 : i] = this.fragments[i];
                ++i;
            }
            if (!inserted) {
                newFragments[newFragments.length - 1] = fragment;
            }
            this.fragments = newFragments;
        }
        this.manifestLocalization = null;
    }

    @Override
    protected BundleLoader getBundleLoader() {
        BundleLoaderProxy curProxy = this.getLoaderProxy();
        return curProxy == null ? null : curProxy.getBundleLoader();
    }

    public synchronized BundleLoaderProxy getLoaderProxy() {
        if (this.proxy != null) {
            return this.proxy;
        }
        BundleDescription bundleDescription = this.getBundleDescription();
        if (bundleDescription == null) {
            return null;
        }
        this.proxy = new BundleLoaderProxy(this, bundleDescription);
        bundleDescription.setUserObject(this.proxy);
        return this.proxy;
    }

    public ClassLoader getClassLoader() {
        BundleLoaderProxy curProxy;
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new RuntimePermission("getClassLoader"));
        }
        BundleLoader loader = (curProxy = this.getLoaderProxy()) == null ? null : curProxy.getBundleLoader();
        BundleClassLoader bcl = loader == null ? null : loader.createClassLoader();
        return bcl instanceof ClassLoader ? (ClassLoader)((Object)bcl) : null;
    }
}

