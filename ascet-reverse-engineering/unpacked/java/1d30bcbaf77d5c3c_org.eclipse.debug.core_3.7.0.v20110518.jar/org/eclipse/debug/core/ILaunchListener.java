/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import org.eclipse.debug.core.ILaunch;

public interface ILaunchListener {
    public void launchRemoved(ILaunch var1);

    public void launchAdded(ILaunch var1);

    public void launchChanged(ILaunch var1);
}

