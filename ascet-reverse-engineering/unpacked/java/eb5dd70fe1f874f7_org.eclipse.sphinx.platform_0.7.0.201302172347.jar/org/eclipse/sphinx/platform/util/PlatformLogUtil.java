/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Plugin
 */
package org.eclipse.sphinx.platform.util;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.sphinx.platform.util.StatusUtil;

public final class PlatformLogUtil {
    public static void logAsError(Plugin plugin, Object object) {
        IStatus status = StatusUtil.createErrorStatus(plugin, object);
        if (plugin != null) {
            plugin.getLog().log(status);
        } else {
            PlatformLogUtil.printStatus(status);
        }
    }

    public static void logAsWarning(Plugin plugin, Object object) {
        IStatus status = StatusUtil.createWarningStatus(plugin, object);
        if (plugin != null) {
            plugin.getLog().log(status);
        } else {
            PlatformLogUtil.printStatus(status);
        }
    }

    public static void logAsInfo(Plugin plugin, Object object) {
        IStatus status = StatusUtil.createInfoStatus(plugin, object);
        if (plugin != null) {
            plugin.getLog().log(status);
        } else {
            PlatformLogUtil.printStatus(status);
        }
    }

    private static void printStatus(IStatus status) {
        Assert.isNotNull((Object)status);
        System.out.println(status.getMessage());
        Throwable exception = status.getException();
        if (exception != null) {
            exception.printStackTrace();
        }
    }
}

