/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.runnable.ApplicationRunnable
 */
package org.eclipse.equinox.internal.app;

import org.eclipse.equinox.internal.app.EclipseAppContainer;
import org.eclipse.equinox.internal.app.Messages;
import org.eclipse.osgi.service.runnable.ApplicationRunnable;
import org.osgi.service.application.ApplicationException;

public class MainApplicationLauncher
implements ApplicationRunnable {
    private final EclipseAppContainer appContainer;
    private ApplicationRunnable launchMainApp;

    public MainApplicationLauncher(EclipseAppContainer appContainer) {
        this.appContainer = appContainer;
    }

    public Object run(Object context) throws Exception {
        this.appContainer.startDefaultApp(false);
        ApplicationRunnable mainHandle = this.getMainHandle();
        if (mainHandle != null) {
            return mainHandle.run(context);
        }
        throw new ApplicationException(3, Messages.application_noIdFound);
    }

    private synchronized ApplicationRunnable getMainHandle() {
        return this.launchMainApp;
    }

    public void stop() {
        ApplicationRunnable handle = this.getMainHandle();
        if (handle != null) {
            handle.stop();
        }
    }

    synchronized void launch(ApplicationRunnable app) {
        this.launchMainApp = app;
    }
}

