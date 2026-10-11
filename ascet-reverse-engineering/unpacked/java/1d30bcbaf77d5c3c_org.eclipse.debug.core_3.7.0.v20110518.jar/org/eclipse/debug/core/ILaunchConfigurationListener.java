/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import org.eclipse.debug.core.ILaunchConfiguration;

public interface ILaunchConfigurationListener {
    public void launchConfigurationAdded(ILaunchConfiguration var1);

    public void launchConfigurationChanged(ILaunchConfiguration var1);

    public void launchConfigurationRemoved(ILaunchConfiguration var1);
}

