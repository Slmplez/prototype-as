/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleException;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BundleFragment
extends AbstractBundle {
    protected BundleHost[] hosts = null;

    public BundleFragment(BundleData bundledata, Framework framework) throws BundleException {
        super(bundledata, framework);
    }

    @Override
    protected void load() {
        SecurityManager sm;
        if (Debug.DEBUG_GENERAL && (this.state & 2) == 0) {
            Debug.println(new StringBuffer("Bundle.load called when state != INSTALLED: ").append(this).toString());
            Debug.printStackTrace(new Exception("Stack trace"));
        }
        if (this.framework.isActive() && (sm = System.getSecurityManager()) != null && this.framework.securityAdmin != null) {
            this.domain = this.framework.securityAdmin.createProtectionDomain(this);
        }
    }

    @Override
    protected boolean reload(AbstractBundle newBundle) {
        if (Debug.DEBUG_GENERAL && (this.state & 6) == 0) {
            Debug.println(new StringBuffer("Bundle.reload called when state != INSTALLED | RESOLVED: ").append(this).toString());
            Debug.printStackTrace(new Exception("Stack trace"));
        }
        boolean exporting = false;
        if (this.framework.isActive()) {
            if (this.hosts != null && this.state == 4) {
                exporting = true;
                this.hosts = null;
                this.state = 2;
            }
        } else {
            try {
                this.bundledata.close();
            }
            catch (IOException iOException) {}
        }
        if (!exporting) {
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
            Debug.println(new StringBuffer("Bundle.refresh called when state != UNINSTALLED | INSTALLED | RESOLVED: ").append(this).toString());
            Debug.printStackTrace(new Exception("Stack trace"));
        }
        if (this.state == 4) {
            this.hosts = null;
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
        if (this.framework.isActive() && this.hosts != null) {
            if (this.state == 4) {
                exporting = true;
                this.hosts = null;
                this.state = 2;
            }
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

    @Override
    protected Class<?> loadClass(String name, boolean checkPermission) throws ClassNotFoundException {
        if (checkPermission) {
            try {
                this.framework.checkAdminPermission(this, "class");
            }
            catch (SecurityException e) {
                throw new ClassNotFoundException(name, e);
            }
            this.checkValid();
        }
        throw new ClassNotFoundException(NLS.bind(Msg.BUNDLE_FRAGMENT_CNFE, name));
    }

    @Override
    public URL getResource(String name) {
        this.checkValid();
        return null;
    }

    @Override
    public Enumeration<URL> getResources(String name) {
        this.checkValid();
        return null;
    }

    @Override
    protected void startWorker(int options) throws BundleException {
        throw new BundleException(NLS.bind(Msg.BUNDLE_FRAGMENT_START, this), 2);
    }

    @Override
    protected void stopWorker(int options) throws BundleException {
        throw new BundleException(NLS.bind(Msg.BUNDLE_FRAGMENT_STOP, this), 2);
    }

    @Override
    public ServiceReference<?>[] getRegisteredServices() {
        this.checkValid();
        return null;
    }

    @Override
    public ServiceReference<?>[] getServicesInUse() {
        this.checkValid();
        return null;
    }

    @Override
    synchronized BundleHost[] getHosts() {
        return this.hosts;
    }

    @Override
    protected boolean isFragment() {
        return true;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    boolean addHost(BundleHost host) {
        if (host == null) {
            return false;
        }
        try {
            host.attachFragment(this);
        }
        catch (BundleException be) {
            this.framework.publishFrameworkEvent(2, host, be);
            return false;
        }
        BundleFragment bundleFragment = this;
        synchronized (bundleFragment) {
            if (this.hosts == null) {
                this.hosts = new BundleHost[]{host};
                return true;
            }
            int i = 0;
            while (true) {
                if (i >= this.hosts.length) {
                    BundleHost[] newHosts = new BundleHost[this.hosts.length + 1];
                    System.arraycopy(this.hosts, 0, newHosts, 0, this.hosts.length);
                    newHosts[newHosts.length - 1] = host;
                    this.hosts = newHosts;
                    return true;
                }
                if (host == this.hosts[i]) {
                    return true;
                }
                ++i;
            }
        }
    }

    @Override
    protected BundleLoader getBundleLoader() {
        return null;
    }

    @Override
    protected BundleContextImpl getContext() {
        return null;
    }
}

