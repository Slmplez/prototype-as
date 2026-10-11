/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.eclipse.osgi.service.runnable.ApplicationRunnable
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.ServiceReference
 *  org.osgi.util.tracker.ServiceTracker
 *  org.osgi.util.tracker.ServiceTrackerCustomizer
 */
package org.eclipse.equinox.internal.app;

import org.eclipse.equinox.internal.app.Activator;
import org.eclipse.equinox.internal.app.AnyThreadAppLauncher;
import org.eclipse.equinox.internal.app.EclipseAppHandle;
import org.eclipse.equinox.internal.app.Messages;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.service.runnable.ApplicationRunnable;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.ServiceReference;
import org.osgi.service.application.ApplicationHandle;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

public class DefaultApplicationListener
implements ApplicationRunnable,
ServiceTrackerCustomizer {
    private boolean running = true;
    private EclipseAppHandle launchMainApp;
    private final ServiceTracker handleTracker;
    private Object result;

    public DefaultApplicationListener(EclipseAppHandle defaultApp) {
        ServiceReference defaultRef = defaultApp.getServiceReference();
        if (defaultRef == null) {
            this.result = defaultApp.waitForResult(100);
            this.handleTracker = null;
            return;
        }
        ServiceTracker defaultAppTracker = new ServiceTracker(Activator.getContext(), defaultRef, (ServiceTrackerCustomizer)this);
        defaultAppTracker.open();
        EclipseAppHandle trackedApp = (EclipseAppHandle)defaultAppTracker.getService();
        if (trackedApp == null) {
            defaultAppTracker.close();
            this.result = defaultApp.waitForResult(100);
            this.handleTracker = null;
        } else {
            this.handleTracker = defaultAppTracker;
        }
    }

    public Object run(Object context) {
        if (this.handleTracker == null) {
            return this.getResult();
        }
        EclipseAppHandle anyThreadedDefaultApp = (EclipseAppHandle)this.handleTracker.getService();
        if (anyThreadedDefaultApp != null) {
            AnyThreadAppLauncher.launchEclipseApplication(anyThreadedDefaultApp);
        }
        try {
            while (this.waitOnRunning()) {
                EclipseAppHandle mainHandle = this.getMainHandle();
                if (mainHandle == null) continue;
                try {
                    mainHandle.run(null);
                }
                catch (Throwable e) {
                    String message = NLS.bind((String)Messages.application_error_starting, (Object)mainHandle.getInstanceId());
                    Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", 2, 0, message, 0, e, null));
                }
                this.unsetMainHandle(mainHandle);
            }
        }
        finally {
            this.handleTracker.close();
        }
        return this.getResult();
    }

    private synchronized EclipseAppHandle getMainHandle() {
        return this.launchMainApp;
    }

    private synchronized void unsetMainHandle(EclipseAppHandle mainHandle) {
        if (this.launchMainApp == mainHandle) {
            this.launchMainApp = null;
        }
    }

    private synchronized boolean waitOnRunning() {
        if (!this.running) {
            return false;
        }
        try {
            this.wait(100L);
        }
        catch (InterruptedException interruptedException) {}
        return this.running;
    }

    public void stop() {
        if (this.handleTracker == null) {
            return;
        }
        ApplicationHandle handle = (ApplicationHandle)this.handleTracker.getService();
        if (handle != null) {
            try {
                handle.destroy();
            }
            catch (Throwable t) {
                String message = NLS.bind((String)Messages.application_error_stopping, (Object)handle.getInstanceId());
                Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", 2, 0, message, 0, t, null));
            }
        }
    }

    public Object addingService(ServiceReference reference) {
        return Activator.getContext().getService(reference);
    }

    public void modifiedService(ServiceReference reference, Object service) {
    }

    public synchronized void removedService(ServiceReference reference, Object service) {
        this.running = false;
        this.result = ((EclipseAppHandle)service).waitForResult(5000);
        EclipseAppHandle mainHandle = this.getMainHandle();
        if (mainHandle != null) {
            try {
                mainHandle.destroy();
            }
            catch (Throwable t) {
                String message = NLS.bind((String)Messages.application_error_stopping, (Object)mainHandle.getInstanceId());
                Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", 2, 0, message, 0, t, null));
            }
        }
        this.notify();
    }

    synchronized void launch(EclipseAppHandle app) {
        this.launchMainApp = app;
        this.notify();
    }

    private synchronized Object getResult() {
        return this.result;
    }
}

