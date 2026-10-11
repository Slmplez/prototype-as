/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 */
package org.eclipse.equinox.internal.app;

import org.eclipse.equinox.internal.app.Activator;
import org.eclipse.equinox.internal.app.EclipseAppHandle;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;

public class AnyThreadAppLauncher
implements Runnable {
    private EclipseAppHandle appHandle;

    private AnyThreadAppLauncher(EclipseAppHandle appHandle) {
        this.appHandle = appHandle;
    }

    public void run() {
        try {
            this.appHandle.run(null);
        }
        catch (Throwable e) {
            Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", 4, 0, e.getMessage(), 0, e, null));
        }
    }

    static void launchEclipseApplication(EclipseAppHandle appHandle) {
        AnyThreadAppLauncher launchable = new AnyThreadAppLauncher(appHandle);
        new Thread((Runnable)launchable, "app thread - " + appHandle.getInstanceId()).start();
    }
}

