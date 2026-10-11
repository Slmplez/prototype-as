/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.resolver.PlatformAdmin
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.plugin.AbstractUIPlugin
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.pde.internal.runtime;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

public class PDERuntimePlugin
extends AbstractUIPlugin {
    public static final String ID = "org.eclipse.pde.runtime";
    private static PDERuntimePlugin inst;
    private BundleContext fContext;
    private ServiceTracker packageAdminTracker;
    private ServiceTracker platformAdminTracker;
    public static final boolean HAS_IDE_BUNDLES;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        boolean result = false;
        try {
            result = PDERuntimePlugin.isBundleAvailable("org.eclipse.core.resources") && PDERuntimePlugin.isBundleAvailable("org.eclipse.pde.core") && PDERuntimePlugin.isBundleAvailable("org.eclipse.jdt.core") && PDERuntimePlugin.isBundleAvailable("org.eclipse.help") && PDERuntimePlugin.isBundleAvailable("org.eclipse.pde.ui") && PDERuntimePlugin.isBundleAvailable("org.eclipse.jdt.ui");
        }
        catch (Throwable throwable) {}
        HAS_IDE_BUNDLES = result;
    }

    public PDERuntimePlugin() {
        inst = this;
    }

    private static boolean isBundleAvailable(String bundleID) {
        Bundle bundle = Platform.getBundle((String)bundleID);
        return bundle != null && (bundle.getState() & 0x2C) != 0;
    }

    public static IWorkbenchPage getActivePage() {
        return PDERuntimePlugin.getDefault().internalGetActivePage();
    }

    public static Shell getActiveWorkbenchShell() {
        return PDERuntimePlugin.getActiveWorkbenchWindow().getShell();
    }

    public static IWorkbenchWindow getActiveWorkbenchWindow() {
        return PDERuntimePlugin.getDefault().getWorkbench().getActiveWorkbenchWindow();
    }

    public PackageAdmin getPackageAdmin() {
        if (this.packageAdminTracker == null) {
            return null;
        }
        return (PackageAdmin)this.packageAdminTracker.getService();
    }

    public PlatformAdmin getPlatformAdmin() {
        if (this.platformAdminTracker == null) {
            return null;
        }
        return (PlatformAdmin)this.platformAdminTracker.getService();
    }

    public static PDERuntimePlugin getDefault() {
        return inst;
    }

    public static String getPluginId() {
        return PDERuntimePlugin.getDefault().getBundle().getSymbolicName();
    }

    private IWorkbenchPage internalGetActivePage() {
        return this.getWorkbench().getActiveWorkbenchWindow().getActivePage();
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        this.fContext = context;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.packageAdminTracker = new ServiceTracker(context, clazz.getName(), null);
        this.packageAdminTracker.open();
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.osgi.service.resolver.PlatformAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.platformAdminTracker = new ServiceTracker(context, clazz2.getName(), null);
        this.platformAdminTracker.open();
    }

    public BundleContext getBundleContext() {
        return this.fContext;
    }

    public State getState() {
        return this.getPlatformAdmin().getState(false);
    }

    public static void log(Throwable e) {
        if (e instanceof InvocationTargetException) {
            e = ((InvocationTargetException)e).getTargetException();
        }
        IStatus status = null;
        if (e instanceof CoreException) {
            status = ((CoreException)e).getStatus();
        } else if (e.getMessage() != null) {
            status = new Status(4, ID, 0, e.getMessage(), e);
        }
        if (status != null) {
            PDERuntimePlugin.getDefault().getLog().log(status);
        }
    }

    public void stop(BundleContext context) throws Exception {
        super.stop(context);
        if (this.packageAdminTracker != null) {
            this.packageAdminTracker.close();
            this.packageAdminTracker = null;
        }
        if (this.platformAdminTracker != null) {
            this.platformAdminTracker.close();
            this.platformAdminTracker = null;
        }
    }
}

