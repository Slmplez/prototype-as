/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import org.eclipse.debug.core.ILaunch;

public interface ILaunchesListener {
    public void launchesRemoved(ILaunch[] var1);

    public void launchesAdded(ILaunch[] var1);

    public void launchesChanged(ILaunch[] var1);
}

