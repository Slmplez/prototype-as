/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.LazyManipulator;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;

public class WhatIsRunning {
    public BundleInfo[] getBundlesBeingRun() {
        return this.getFrameworkManipulator().getConfigData().getBundles();
    }

    private Manipulator getFrameworkManipulator() {
        FrameworkAdmin fwAdmin = LazyManipulator.getFrameworkAdmin();
        if (fwAdmin != null) {
            return fwAdmin.getRunningManipulator();
        }
        return null;
    }
}

