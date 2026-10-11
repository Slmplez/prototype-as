/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.runtime;

import org.eclipse.core.internal.runtime.Activator;
import org.eclipse.core.internal.runtime.CommonMessages;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

public final class SafeRunner {
    public static void run(ISafeRunnable code) {
        Assert.isNotNull(code);
        try {
            code.run();
        }
        catch (Exception e) {
            SafeRunner.handleException(code, e);
        }
        catch (LinkageError e) {
            SafeRunner.handleException(code, e);
        }
        catch (AssertionError e) {
            SafeRunner.handleException(code, (Throwable)((Object)e));
        }
    }

    private static void handleException(ISafeRunnable code, Throwable e) {
        if (!(e instanceof OperationCanceledException)) {
            Status status;
            Activator activator = Activator.getDefault();
            String pluginId = null;
            if (activator != null) {
                pluginId = activator.getBundleId(code);
            }
            if (pluginId == null) {
                pluginId = "org.eclipse.equinox.common";
            }
            String message = NLS.bind((String)CommonMessages.meta_pluginProblems, (Object)pluginId);
            if (e instanceof CoreException) {
                status = new MultiStatus(pluginId, 2, message, e);
                status.merge(((CoreException)e).getStatus());
            } else {
                status = new Status(4, pluginId, 2, message, e);
            }
            if (!RuntimeLog.isEmpty()) {
                RuntimeLog.log(status);
            } else {
                e.printStackTrace();
            }
        }
        code.handleException(e);
    }
}

