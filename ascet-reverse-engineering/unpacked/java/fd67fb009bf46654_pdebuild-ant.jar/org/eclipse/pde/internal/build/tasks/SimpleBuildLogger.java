/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildEvent
 *  org.apache.tools.ant.BuildLogger
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.build.BundleHelper
 *  org.eclipse.pde.internal.build.IPDEBuildConstants
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.PrintStream;
import org.apache.tools.ant.BuildEvent;
import org.apache.tools.ant.BuildLogger;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.tasks.TaskMessages;

public class SimpleBuildLogger
implements BuildLogger,
IPDEBuildConstants {
    public void buildFinished(BuildEvent event) {
        Throwable exception = event.getException();
        if (exception != null) {
            String message = NLS.bind((String)TaskMessages.error_runningRetrieve, (Object)exception.getMessage());
            BundleHelper.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.pde.build", message));
        }
    }

    public void setEmacsMode(boolean emacsMode) {
    }

    public void setErrorPrintStream(PrintStream err) {
    }

    public void setMessageOutputLevel(int level) {
    }

    public void setOutputPrintStream(PrintStream output) {
    }

    public void buildStarted(BuildEvent event) {
    }

    public void messageLogged(BuildEvent event) {
    }

    public void targetFinished(BuildEvent event) {
    }

    public void targetStarted(BuildEvent event) {
    }

    public void taskFinished(BuildEvent event) {
    }

    public void taskStarted(BuildEvent event) {
    }
}

