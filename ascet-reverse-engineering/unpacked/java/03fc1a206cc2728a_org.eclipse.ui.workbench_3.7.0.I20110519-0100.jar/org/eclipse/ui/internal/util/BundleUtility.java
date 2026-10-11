/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal.util;

import java.net.URL;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.osgi.framework.Bundle;

public class BundleUtility {
    public static boolean isActive(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return bundle.getState() == 32;
    }

    public static boolean isActivated(Bundle bundle) {
        if ((bundle.getState() & 8) != 0) {
            return WorkbenchPlugin.getDefault().isStarting(bundle);
        }
        return bundle != null && (bundle.getState() & 0x30) != 0;
    }

    public static boolean isReady(Bundle bundle) {
        return bundle != null && BundleUtility.isReady(bundle.getState());
    }

    public static boolean isReady(int bundleState) {
        return (bundleState & 0x3C) != 0;
    }

    public static boolean isActive(String bundleId) {
        return BundleUtility.isActive(Platform.getBundle((String)bundleId));
    }

    public static boolean isActivated(String bundleId) {
        return BundleUtility.isActivated(Platform.getBundle((String)bundleId));
    }

    public static boolean isReady(String bundleId) {
        return BundleUtility.isReady(Platform.getBundle((String)bundleId));
    }

    public static URL find(Bundle bundle, String path) {
        if (bundle == null) {
            return null;
        }
        return Platform.find((Bundle)bundle, (IPath)new Path(path));
    }

    public static URL find(String bundleId, String path) {
        return BundleUtility.find(Platform.getBundle((String)bundleId), path);
    }

    public static void log(String bundleId, Throwable exception) {
        Bundle bundle = Platform.getBundle((String)bundleId);
        if (bundle == null) {
            return;
        }
        Status status = new Status(4, bundleId, 4, exception.getMessage() == null ? "" : exception.getMessage(), exception);
        Platform.getLog((Bundle)bundle).log((IStatus)status);
    }
}

