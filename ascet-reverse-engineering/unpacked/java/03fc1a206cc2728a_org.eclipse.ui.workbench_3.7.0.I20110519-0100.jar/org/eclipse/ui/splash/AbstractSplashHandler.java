/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.splash;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.swt.widgets.Shell;

public abstract class AbstractSplashHandler {
    private Shell shell;

    public void init(Shell splash) {
        this.shell = splash;
    }

    public void dispose() {
        this.shell.close();
        this.shell = null;
    }

    public IProgressMonitor getBundleProgressMonitor() {
        return new NullProgressMonitor();
    }

    public Shell getSplash() {
        return this.shell;
    }
}

