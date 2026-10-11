/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.lang.reflect.Method;
import org.eclipse.core.runtime.adaptor.EclipseStarter;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.Semaphore;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.internal.profile.Profile;
import org.eclipse.osgi.service.runnable.ApplicationLauncher;
import org.eclipse.osgi.service.runnable.ApplicationRunnable;
import org.eclipse.osgi.service.runnable.ParameterizedRunnable;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;

public class EclipseAppLauncher
implements ApplicationLauncher {
    private volatile ParameterizedRunnable runnable = null;
    private Object appContext = null;
    private Semaphore runningLock = new Semaphore(1);
    private Semaphore waitForAppLock = new Semaphore(0);
    private BundleContext context;
    private boolean relaunch = false;
    private boolean failOnNoDefault = false;
    private FrameworkLog log;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public EclipseAppLauncher(BundleContext context, boolean relaunch, boolean failOnNoDefault, FrameworkLog log) {
        this.context = context;
        this.relaunch = relaunch;
        this.failOnNoDefault = failOnNoDefault;
        this.log = log;
        this.findRunnableService();
    }

    private void findRunnableService() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.runnable.ParameterizedRunnable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        String appClass = clazz.getName();
        ServiceReference[] runRefs = null;
        try {
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.osgi.service.runnable.ParameterizedRunnable");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            runRefs = this.context.getServiceReferences(clazz2.getName(), "(&(objectClass=" + appClass + ")(eclipse.application=*))");
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        if (runRefs != null && runRefs.length > 0) {
            this.runnable = (ParameterizedRunnable)this.context.getService(runRefs[0]);
            this.relaunch = false;
            this.waitForAppLock.release();
        }
    }

    public Object start(Object defaultContext) throws Exception {
        boolean doRelaunch;
        if (this.failOnNoDefault && this.runnable == null) {
            throw new IllegalStateException(EclipseAdaptorMsg.ECLIPSE_STARTUP_ERROR_NO_APPLICATION);
        }
        Object result = null;
        do {
            try {
                result = this.runApplication(defaultContext);
            }
            catch (Exception e) {
                if (!this.relaunch || (this.context.getBundle().getState() & 0x20) == 0) {
                    throw e;
                }
                if (this.log == null) continue;
                this.log.log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, EclipseAdaptorMsg.ECLIPSE_STARTUP_APP_ERROR, 1, e, null));
            }
        } while (doRelaunch = this.relaunch && (this.context.getBundle().getState() & 0x20) != 0 || FrameworkProperties.getProperty("osgi.framework.relaunch") != null);
        return result;
    }

    private Object runApplication(Object defaultContext) throws Exception {
        this.waitForAppLock.acquire();
        this.runningLock.acquire();
        if (EclipseStarter.debug) {
            String timeString = FrameworkProperties.getProperty("eclipse.startTime");
            long time = timeString == null ? 0L : Long.parseLong(timeString);
            System.out.println("Starting application: " + (System.currentTimeMillis() - time));
        }
        if (Profile.STARTUP || Profile.BENCHMARK) {
            Profile.logTime("EclipseStarter.run(Object)()", "framework initialized! starting application...");
        }
        try {
            Object object = this.runnable.run(this.appContext != null ? this.appContext : defaultContext);
            return object;
        }
        finally {
            if (Profile.STARTUP) {
                Profile.logExit("EclipseStarter.run(Object)()");
            }
            this.runnable = null;
            this.appContext = null;
            this.runningLock.release();
        }
    }

    public void launch(ParameterizedRunnable app, Object applicationContext) {
        this.waitForAppLock.acquire(-1L);
        if (!this.runningLock.acquire(-1L)) {
            throw new IllegalStateException("An application is aready running.");
        }
        this.runnable = app;
        this.appContext = applicationContext;
        this.waitForAppLock.release();
        this.runningLock.release();
    }

    public void shutdown() {
        if (this.runningLock.acquire(-1L)) {
            return;
        }
        ParameterizedRunnable currentRunnable = this.runnable;
        if (currentRunnable instanceof ApplicationRunnable) {
            ((ApplicationRunnable)currentRunnable).stop();
            this.runningLock.acquire(60000L);
        }
    }

    public Object reStart(Object argument) throws Exception {
        ServiceReference[] ref = null;
        ref = this.context.getServiceReferences("org.osgi.service.application.ApplicationDescriptor", "(eclipse.application.default=true)");
        if (ref != null && ref.length > 0) {
            Object defaultApp = this.context.getService(ref[0]);
            Class<?> clazz = defaultApp.getClass();
            Class[] classArray = new Class[1];
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("java.util.Map");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz2;
            Method launch = clazz.getMethod("launch", classArray);
            launch.invoke(defaultApp, new Object[1]);
            return this.start(argument);
        }
        throw new IllegalStateException(EclipseAdaptorMsg.ECLIPSE_STARTUP_ERROR_NO_APPLICATION);
    }
}

