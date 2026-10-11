/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.testing;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.testing.TestableObject;

public class WorkbenchTestable
extends TestableObject {
    private Display display;
    private IWorkbench workbench;
    private boolean oldAutomatedMode;
    private boolean oldIgnoreErrors;

    public void init(Display display, IWorkbench workbench) {
        Assert.isNotNull((Object)display);
        Assert.isNotNull((Object)workbench);
        this.display = display;
        this.workbench = workbench;
        if (this.getTestHarness() != null) {
            Runnable runnable = new Runnable(){

                public void run() {
                    if (!"false".equalsIgnoreCase(System.getProperty("org.eclipse.ui.testsWaitForEarlyStartup"))) {
                        WorkbenchTestable.this.waitForEarlyStartup();
                    }
                    WorkbenchTestable.this.getTestHarness().runTests();
                }
            };
            new Thread(runnable, "WorkbenchTestable").start();
        }
    }

    private void waitForEarlyStartup() {
        try {
            Job.getJobManager().join((Object)"earlyStartup", null);
        }
        catch (OperationCanceledException operationCanceledException) {
        }
        catch (InterruptedException interruptedException) {}
    }

    public void testingStarting() {
        Assert.isNotNull((Object)this.workbench);
        this.oldAutomatedMode = ErrorDialog.AUTOMATED_MODE;
        ErrorDialog.AUTOMATED_MODE = true;
        this.oldIgnoreErrors = SafeRunnable.getIgnoreErrors();
        SafeRunnable.setIgnoreErrors((boolean)true);
    }

    public void runTest(Runnable testRunnable) {
        Assert.isNotNull((Object)this.workbench);
        this.display.syncExec(testRunnable);
    }

    public void testingFinished() {
        this.display.syncExec(new Runnable(){

            public void run() {
                Assert.isTrue((boolean)WorkbenchTestable.this.workbench.close());
            }
        });
        ErrorDialog.AUTOMATED_MODE = this.oldAutomatedMode;
        SafeRunnable.setIgnoreErrors((boolean)this.oldIgnoreErrors);
    }
}

