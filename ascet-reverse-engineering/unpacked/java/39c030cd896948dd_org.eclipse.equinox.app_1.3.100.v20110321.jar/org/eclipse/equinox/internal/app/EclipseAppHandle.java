/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.osgi.service.runnable.ApplicationRunnable
 *  org.eclipse.osgi.service.runnable.StartupMonitor
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 */
package org.eclipse.equinox.internal.app;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.equinox.internal.app.Activator;
import org.eclipse.equinox.internal.app.CommandLineArgs;
import org.eclipse.equinox.internal.app.EclipseAppContainer;
import org.eclipse.equinox.internal.app.EclipseAppDescriptor;
import org.eclipse.equinox.internal.app.IBranding;
import org.eclipse.equinox.internal.app.Messages;
import org.eclipse.osgi.service.runnable.ApplicationRunnable;
import org.eclipse.osgi.service.runnable.StartupMonitor;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.application.ApplicationException;
import org.osgi.service.application.ApplicationHandle;

public class EclipseAppHandle
extends ApplicationHandle
implements ApplicationRunnable,
IApplicationContext {
    private static final int FLAG_STARTING = 1;
    private static final int FLAG_ACTIVE = 2;
    private static final int FLAG_STOPPING = 4;
    private static final int FLAG_STOPPED = 8;
    private static final String STARTING = "org.eclipse.equinox.app.starting";
    private static final String STOPPED = "org.eclipse.equinox.app.stopped";
    private static final String PROP_ECLIPSE_EXITCODE = "eclipse.exitcode";
    private static final Object NULL_RESULT = new Object();
    private volatile ServiceRegistration handleRegistration;
    private int status = 1;
    private final Map arguments;
    private Object application;
    private final Boolean defaultAppInstance;
    private Object result;
    private boolean setResult = false;
    private boolean setAsyncResult = false;
    private final boolean[] registrationLock = new boolean[]{true};
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    EclipseAppHandle(String instanceId, Map arguments, EclipseAppDescriptor descriptor) {
        super(instanceId, descriptor);
        this.defaultAppInstance = arguments == null || arguments.get("eclipse.application.default") == null ? Boolean.FALSE : (Boolean)arguments.remove("eclipse.application.default");
        this.arguments = arguments == null ? new HashMap(2) : new HashMap(arguments);
    }

    public synchronized String getState() {
        switch (this.status) {
            case 1: {
                return STARTING;
            }
            case 2: {
                return "RUNNING";
            }
            case 4: {
                return "STOPPING";
            }
        }
        if (this.getServiceRegistration() == null) {
            throw new IllegalStateException(NLS.bind((String)Messages.application_error_state_stopped, (Object)this.getInstanceId()));
        }
        return STOPPED;
    }

    protected void destroySpecific() {
        this.setAppStatus(4);
        IApplication app = this.getApplication();
        if (app != null) {
            app.stop();
        }
        this.setAppStatus(8);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setServiceRegistration(ServiceRegistration sr) {
        boolean[] blArray = this.registrationLock;
        synchronized (this.registrationLock) {
            this.handleRegistration = sr;
            this.registrationLock[0] = sr != null;
            this.registrationLock.notifyAll();
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private ServiceRegistration getServiceRegistration() {
        boolean[] blArray = this.registrationLock;
        synchronized (this.registrationLock) {
            if (this.handleRegistration == null && this.registrationLock[0]) {
                try {
                    this.registrationLock.wait(1000L);
                }
                catch (InterruptedException interruptedException) {}
            }
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return this.handleRegistration;
        }
    }

    ServiceReference getServiceReference() {
        ServiceRegistration reg = this.getServiceRegistration();
        if (reg == null) {
            return null;
        }
        try {
            return reg.getReference();
        }
        catch (IllegalStateException illegalStateException) {
            return null;
        }
    }

    Dictionary getServiceProperties() {
        Hashtable<String, Object> props = new Hashtable<String, Object>(6);
        ((Dictionary)props).put("service.pid", this.getInstanceId());
        ((Dictionary)props).put("application.state", this.getState());
        ((Dictionary)props).put("application.descriptor", this.getApplicationDescriptor().getApplicationId());
        ((Dictionary)props).put("eclipse.application.type", ((EclipseAppDescriptor)this.getApplicationDescriptor()).getThreadTypeString());
        ((Dictionary)props).put("application.supports.exitvalue", Boolean.TRUE);
        if (this.defaultAppInstance.booleanValue()) {
            ((Dictionary)props).put("eclipse.application.default", this.defaultAppInstance);
        }
        return props;
    }

    private synchronized void setAppStatus(int status) {
        if (this.status == status) {
            return;
        }
        if ((status & 1) != 0) {
            throw new IllegalArgumentException("Cannot set app status to starting");
        }
        if ((status & 4) != 0 && (this.status & 0xC) != 0) {
            return;
        }
        this.status = status;
        ServiceRegistration handleReg = this.getServiceRegistration();
        if (handleReg == null) {
            return;
        }
        handleReg.setProperties(this.getServiceProperties());
        if ((this.status & 8) != 0) {
            ((EclipseAppDescriptor)this.getApplicationDescriptor()).getContainerManager().unlock(this);
            handleReg.unregister();
            this.setServiceRegistration(null);
        }
    }

    public Map getArguments() {
        return this.arguments;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object run(Object context) throws Exception {
        if (context != null) {
            this.arguments.put("application.args", context);
        } else {
            context = this.arguments.get("application.args");
            if (context == null) {
                context = CommandLineArgs.getApplicationArgs();
                this.arguments.put("application.args", context);
            }
        }
        Object tempResult = null;
        try {
            Object app;
            EclipseAppHandle eclipseAppHandle = this;
            synchronized (eclipseAppHandle) {
                if ((this.status & 5) == 0) {
                    throw new ApplicationException(3, NLS.bind((String)Messages.application_instance_stopped, (Object)this.getInstanceId()));
                }
                app = this.application = this.getConfiguration().createExecutableExtension("run");
                this.notifyAll();
            }
            if (app instanceof IApplication) {
                tempResult = ((IApplication)app).start(this);
            } else {
                Class[] classArray = new Class[1];
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("java.lang.Object");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz;
                tempResult = EclipseAppContainer.callMethodWithException(app, "run", classArray, new Object[]{context});
            }
            if (tempResult == null) {
                tempResult = NULL_RESULT;
            }
        }
        catch (Throwable throwable) {
            tempResult = this.setInternalResult(tempResult, false, null);
            throw throwable;
        }
        tempResult = this.setInternalResult(tempResult, false, null);
        if (Activator.DEBUG) {
            System.out.println(NLS.bind((String)Messages.application_returned, (Object[])new String[]{this.getApplicationDescriptor().getApplicationId(), tempResult == null ? "null" : tempResult.toString()}));
        }
        return tempResult;
    }

    private synchronized Object setInternalResult(Object result, boolean isAsync, IApplication tokenApp) {
        if (this.setResult) {
            throw new IllegalStateException("The result of the application is already set.");
        }
        if (isAsync) {
            if (!this.setAsyncResult) {
                throw new IllegalStateException("The application must return IApplicationContext.EXIT_ASYNC_RESULT to set asynchronous results.");
            }
            if (this.application != tokenApp) {
                throw new IllegalArgumentException("The application is not the correct instance for this application context.");
            }
        } else if (result == IApplicationContext.EXIT_ASYNC_RESULT) {
            this.setAsyncResult = true;
            return NULL_RESULT;
        }
        this.result = result;
        this.setResult = true;
        this.application = null;
        this.notifyAll();
        this.setAppStatus(4);
        this.setAppStatus(8);
        if (this.isDefault() && result != null) {
            int exitCode = result instanceof Integer ? (Integer)result : 0;
            Activator.setProperty(PROP_ECLIPSE_EXITCODE, Integer.toString(exitCode));
        }
        return result;
    }

    public void stop() {
        try {
            this.destroy();
        }
        catch (IllegalStateException illegalStateException) {}
    }

    public void applicationRunning() {
        this.setAppStatus(2);
        final ServiceReference[] monitors = this.getStartupMonitors();
        if (monitors == null) {
            return;
        }
        SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

            public void handleException(Throwable e) {
            }

            public void run() throws Exception {
                int i = 0;
                while (i < monitors.length) {
                    StartupMonitor monitor = (StartupMonitor)Activator.getContext().getService(monitors[i]);
                    if (monitor != null) {
                        monitor.applicationRunning();
                        Activator.getContext().ungetService(monitors[i]);
                    }
                    ++i;
                }
            }
        });
    }

    private ServiceReference[] getStartupMonitors() {
        ServiceReference[] refs = null;
        try {
            BundleContext bundleContext = Activator.getContext();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.service.runnable.StartupMonitor");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            refs = bundleContext.getServiceReferences(clazz.getName(), null);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        if (refs == null || refs.length == 0) {
            return null;
        }
        Arrays.sort(refs, new Comparator(){

            public int compare(Object o1, Object o2) {
                int rank2;
                ServiceReference ref1 = (ServiceReference)o1;
                ServiceReference ref2 = (ServiceReference)o2;
                Object property = ref1.getProperty("service.ranking");
                int rank1 = property instanceof Integer ? (Integer)property : 0;
                property = ref2.getProperty("service.ranking");
                int n = rank2 = property instanceof Integer ? (Integer)property : 0;
                if (rank1 != rank2) {
                    return rank1 > rank2 ? -1 : 1;
                }
                long id1 = (Long)ref1.getProperty("service.id");
                long id2 = (Long)ref2.getProperty("service.id");
                return id2 > id1 ? -1 : 1;
            }
        });
        return refs;
    }

    private synchronized IApplication getApplication() {
        if (this.handleRegistration != null && this.application == null) {
            try {
                this.wait(5000L);
            }
            catch (InterruptedException interruptedException) {}
        }
        return (IApplication)(this.application instanceof IApplication ? this.application : null);
    }

    private IConfigurationElement getConfiguration() {
        IExtension applicationExtension = ((EclipseAppDescriptor)this.getApplicationDescriptor()).getContainerManager().getAppExtension(this.getApplicationDescriptor().getApplicationId());
        if (applicationExtension == null) {
            throw new RuntimeException(NLS.bind((String)Messages.application_notFound, (Object)this.getApplicationDescriptor().getApplicationId(), (Object)((EclipseAppDescriptor)this.getApplicationDescriptor()).getContainerManager().getAvailableAppsMsg()));
        }
        IConfigurationElement[] configs = applicationExtension.getConfigurationElements();
        if (configs.length == 0) {
            throw new RuntimeException(NLS.bind((String)Messages.application_invalidExtension, (Object)this.getApplicationDescriptor().getApplicationId()));
        }
        return configs[0];
    }

    public String getBrandingApplication() {
        IBranding branding = ((EclipseAppDescriptor)this.getApplicationDescriptor()).getContainerManager().getBranding();
        return branding == null ? null : branding.getApplication();
    }

    public Bundle getBrandingBundle() {
        IBranding branding = ((EclipseAppDescriptor)this.getApplicationDescriptor()).getContainerManager().getBranding();
        return branding == null ? null : branding.getDefiningBundle();
    }

    public String getBrandingDescription() {
        IBranding branding = ((EclipseAppDescriptor)this.getApplicationDescriptor()).getContainerManager().getBranding();
        return branding == null ? null : branding.getDescription();
    }

    public String getBrandingId() {
        IBranding branding = ((EclipseAppDescriptor)this.getApplicationDescriptor()).getContainerManager().getBranding();
        return branding == null ? null : branding.getId();
    }

    public String getBrandingName() {
        IBranding branding = ((EclipseAppDescriptor)this.getApplicationDescriptor()).getContainerManager().getBranding();
        return branding == null ? null : branding.getName();
    }

    public String getBrandingProperty(String key) {
        IBranding branding = ((EclipseAppDescriptor)this.getApplicationDescriptor()).getContainerManager().getBranding();
        return branding == null ? null : branding.getProperty(key);
    }

    boolean isDefault() {
        return this.defaultAppInstance;
    }

    public synchronized Object waitForResult(int timeout) {
        try {
            return this.getExitValue(timeout);
        }
        catch (ApplicationException applicationException) {
        }
        catch (InterruptedException interruptedException) {}
        return null;
    }

    public synchronized Object getExitValue(long timeout) throws ApplicationException, InterruptedException {
        if (this.handleRegistration == null && this.application == null) {
            return this.result;
        }
        long startTime = System.currentTimeMillis();
        long delay = timeout;
        while (!(this.setResult || delay <= 0L && timeout != 0L)) {
            this.wait(delay);
            if (timeout <= 0L) continue;
            delay -= System.currentTimeMillis() - startTime;
        }
        if (this.result == null) {
            throw new ApplicationException(6);
        }
        if (this.result == NULL_RESULT) {
            return null;
        }
        return this.result;
    }

    public void setResult(Object result, IApplication application) {
        this.setInternalResult(result == null ? NULL_RESULT : result, true, application);
    }
}

