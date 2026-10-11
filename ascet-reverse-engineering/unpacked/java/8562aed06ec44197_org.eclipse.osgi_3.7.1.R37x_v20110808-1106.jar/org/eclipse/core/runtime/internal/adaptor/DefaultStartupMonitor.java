/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.lang.reflect.Method;
import org.eclipse.core.runtime.adaptor.EclipseStarter;
import org.eclipse.core.runtime.internal.stats.StatsManager;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.service.runnable.StartupMonitor;

public class DefaultStartupMonitor
implements StartupMonitor {
    private Method updateMethod = null;
    private Runnable splashHandler = null;

    public DefaultStartupMonitor(Runnable splashHandler) throws IllegalStateException {
        this.splashHandler = splashHandler;
        try {
            this.updateMethod = splashHandler.getClass().getMethod("updateSplash", null);
        }
        catch (SecurityException e) {
            throw (IllegalStateException)new IllegalStateException(e.getMessage()).initCause(e);
        }
        catch (NoSuchMethodException e) {
            throw (IllegalStateException)new IllegalStateException(e.getMessage()).initCause(e);
        }
    }

    public void update() {
        if (this.updateMethod != null) {
            try {
                this.updateMethod.invoke(this.splashHandler, null);
            }
            catch (Throwable throwable) {}
        }
    }

    public void applicationRunning() {
        if (EclipseStarter.debug) {
            String timeString = FrameworkProperties.getProperty("eclipse.startTime");
            long time = timeString == null ? 0L : Long.parseLong(timeString);
            System.out.println("Application Started: " + (System.currentTimeMillis() - time));
        }
        StatsManager.doneBooting();
        this.splashHandler.run();
    }
}

