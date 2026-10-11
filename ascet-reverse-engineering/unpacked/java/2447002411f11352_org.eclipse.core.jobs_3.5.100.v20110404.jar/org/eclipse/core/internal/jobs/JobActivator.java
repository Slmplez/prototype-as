/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceRegistration
 */
package org.eclipse.core.internal.jobs;

import java.util.Hashtable;
import org.eclipse.core.internal.jobs.JobManager;
import org.eclipse.core.internal.jobs.JobOSGiUtils;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceRegistration;

public class JobActivator
implements BundleActivator {
    private static final String PROP_REGISTER_JOB_SERVICE = "eclipse.service.jobs";
    private static BundleContext bundleContext;
    private ServiceRegistration jobManagerService = null;
    static /* synthetic */ Class class$0;

    public void start(BundleContext context) throws Exception {
        boolean shouldRegister;
        bundleContext = context;
        JobOSGiUtils.getDefault().openServices();
        boolean bl = shouldRegister = !"false".equalsIgnoreCase(context.getProperty(PROP_REGISTER_JOB_SERVICE));
        if (shouldRegister) {
            this.registerServices();
        }
    }

    public void stop(BundleContext context) throws Exception {
        this.unregisterServices();
        JobManager.shutdown();
        JobOSGiUtils.getDefault().closeServices();
        bundleContext = null;
    }

    static BundleContext getContext() {
        return bundleContext;
    }

    private void registerServices() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.jobs.IJobManager");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.jobManagerService = bundleContext.registerService(clazz.getName(), (Object)JobManager.getInstance(), new Hashtable());
    }

    private void unregisterServices() {
        if (this.jobManagerService != null) {
            this.jobManagerService.unregister();
            this.jobManagerService = null;
        }
    }
}

