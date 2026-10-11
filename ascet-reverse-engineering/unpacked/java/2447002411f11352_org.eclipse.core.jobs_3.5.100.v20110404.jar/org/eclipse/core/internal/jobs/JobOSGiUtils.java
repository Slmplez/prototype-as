/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.internal.jobs;

import org.eclipse.core.internal.jobs.JobActivator;
import org.eclipse.core.internal.jobs.JobManager;
import org.eclipse.core.internal.jobs.JobMessages;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

class JobOSGiUtils {
    private ServiceTracker debugTracker = null;
    private ServiceTracker bundleTracker = null;
    private static final JobOSGiUtils singleton = new JobOSGiUtils();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public static JobOSGiUtils getDefault() {
        return singleton;
    }

    private JobOSGiUtils() {
    }

    void openServices() {
        BundleContext context = JobActivator.getContext();
        if (context == null) {
            if (JobManager.DEBUG) {
                JobMessages.message("JobsOSGiUtils called before plugin started");
            }
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.debugTracker = new ServiceTracker(context, clazz.getName(), null);
        this.debugTracker.open();
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.bundleTracker = new ServiceTracker(context, clazz2.getName(), null);
        this.bundleTracker.open();
    }

    void closeServices() {
        if (this.debugTracker != null) {
            this.debugTracker.close();
            this.debugTracker = null;
        }
        if (this.bundleTracker != null) {
            this.bundleTracker.close();
            this.bundleTracker = null;
        }
    }

    public boolean getBooleanDebugOption(String option, boolean defaultValue) {
        String value;
        if (this.debugTracker == null) {
            if (JobManager.DEBUG) {
                JobMessages.message("Debug tracker is not set");
            }
            return defaultValue;
        }
        DebugOptions options = (DebugOptions)this.debugTracker.getService();
        if (options != null && (value = options.getOption(option)) != null) {
            return value.equalsIgnoreCase("true");
        }
        return defaultValue;
    }

    public String getBundleId(Object object) {
        if (this.bundleTracker == null) {
            if (JobManager.DEBUG) {
                JobMessages.message("Bundle tracker is not set");
            }
            return null;
        }
        PackageAdmin packageAdmin = (PackageAdmin)this.bundleTracker.getService();
        if (object == null) {
            return null;
        }
        if (packageAdmin == null) {
            return null;
        }
        Bundle source = packageAdmin.getBundle(object.getClass());
        if (source != null && source.getSymbolicName() != null) {
            return source.getSymbolicName();
        }
        return null;
    }

    boolean useDaemonThreads() {
        BundleContext context = JobActivator.getContext();
        if (context == null) {
            String value = System.getProperty("eclipse.jobs.daemon");
            if (value == null) {
                return true;
            }
            return "true".equalsIgnoreCase(value);
        }
        String value = context.getProperty("eclipse.jobs.daemon");
        if (value == null) {
            return false;
        }
        return "true".equalsIgnoreCase(value);
    }
}

