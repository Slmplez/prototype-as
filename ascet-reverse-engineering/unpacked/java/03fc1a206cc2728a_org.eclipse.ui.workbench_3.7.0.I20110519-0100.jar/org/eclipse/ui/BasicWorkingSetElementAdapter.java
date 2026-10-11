/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IAdapterManager
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.BundleContext
 *  org.osgi.service.packageadmin.ExportedPackage
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.ui;

import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IAdapterManager;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetElementAdapter;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.osgi.framework.BundleContext;
import org.osgi.service.packageadmin.ExportedPackage;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

public final class BasicWorkingSetElementAdapter
implements IWorkingSetElementAdapter,
IExecutableExtension {
    private Type[] preferredTypes = new Type[0];
    private ServiceTracker packageTracker;
    static /* synthetic */ Class class$0;

    public IAdaptable[] adaptElements(IWorkingSet ws, IAdaptable[] elements) {
        ArrayList<IAdaptable> adaptedElements = new ArrayList<IAdaptable>();
        int i = 0;
        while (i < elements.length) {
            IAdaptable adaptable = this.adapt(elements[i]);
            if (adaptable != null) {
                adaptedElements.add(adaptable);
            }
            ++i;
        }
        return adaptedElements.toArray(new IAdaptable[adaptedElements.size()]);
    }

    private IAdaptable adapt(IAdaptable adaptable) {
        int i = 0;
        while (i < this.preferredTypes.length) {
            IAdaptable adaptedAdaptable = this.adapt(this.preferredTypes[i], adaptable);
            if (adaptedAdaptable != null) {
                return adaptedAdaptable;
            }
            ++i;
        }
        return null;
    }

    private IAdaptable adapt(Type type, IAdaptable adaptable) {
        IAdapterManager adapterManager = Platform.getAdapterManager();
        Class[] directClasses = adapterManager.computeClassOrder(adaptable.getClass());
        int i = 0;
        while (i < directClasses.length) {
            Class clazz = directClasses[i];
            if (clazz.getName().equals(type.className)) {
                return adaptable;
            }
            ++i;
        }
        if ((type.flags & 1) != 0) {
            String packageName;
            ExportedPackage[] packages;
            int lastDot;
            Object adapted = adapterManager.getAdapter((Object)adaptable, type.className);
            if (adapted instanceof IAdaptable) {
                return (IAdaptable)adapted;
            }
            PackageAdmin admin = this.getPackageAdmin();
            if (admin != null && (lastDot = type.className.lastIndexOf(46)) > 0 && (packages = admin.getExportedPackages(packageName = type.className.substring(0, lastDot))) != null && packages.length == 1 && packages[0].getExportingBundle().getState() == 32) {
                try {
                    adapted = adaptable.getAdapter(packages[0].getExportingBundle().loadClass(type.className));
                    if (adapted instanceof IAdaptable) {
                        return (IAdaptable)adapted;
                    }
                }
                catch (ClassNotFoundException e) {
                    WorkbenchPlugin.log(e);
                }
            }
        }
        return null;
    }

    public void dispose() {
        if (this.packageTracker != null) {
            this.packageTracker.close();
        }
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        if (data instanceof String) {
            ArrayList<Type> preferredTypes = new ArrayList<Type>(0);
            StringTokenizer toker = new StringTokenizer((String)data, ",");
            while (toker.hasMoreTokens()) {
                String classNameAndOptions = toker.nextToken();
                Type record = new Type();
                this.parseOptions(classNameAndOptions, record);
                preferredTypes.add(record);
            }
            this.preferredTypes = preferredTypes.toArray(new Type[preferredTypes.size()]);
        }
    }

    private void parseOptions(String classNameAndOptions, Type record) {
        StringTokenizer toker = new StringTokenizer(classNameAndOptions, ";");
        while (toker.hasMoreTokens()) {
            String token = toker.nextToken();
            if (record.className == null) {
                record.className = token;
                continue;
            }
            StringTokenizer pair = new StringTokenizer(token, "=");
            while (pair.hasMoreTokens()) {
                if (pair.countTokens() != 2) continue;
                String param = pair.nextToken();
                String value = pair.nextToken();
                if (!"adapt".equals(param)) continue;
                record.flags = record.flags ^ ("true".equals(value) ? 1 : 0);
            }
        }
    }

    private PackageAdmin getPackageAdmin() {
        if (this.packageTracker == null) {
            BundleContext bundleContext = WorkbenchPlugin.getDefault().getBundleContext();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.packageTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            this.packageTracker.open();
        }
        return (PackageAdmin)this.packageTracker.getService();
    }

    private class Type {
        private static final int NONE = 0;
        private static final int ADAPT = 1;
        String className;
        int flags;

        private Type() {
        }
    }
}

