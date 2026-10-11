/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.PropertyTester
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.core.runtime.Platform;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.internal.core.LaunchManager;

public class LaunchablePropertyTester
extends PropertyTester {
    public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
        if ("launchable".equals(property) && ((LaunchManager)DebugPlugin.getDefault().getLaunchManager()).launchModeAvailable((String)expectedValue)) {
            return Platform.getAdapterManager().hasAdapter(receiver, "org.eclipse.debug.ui.actions.ILaunchable");
        }
        return false;
    }
}

