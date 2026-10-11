/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.synchronize;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.ITeamStatus;
import org.eclipse.team.core.synchronize.ISyncInfoSetChangeEvent;
import org.eclipse.team.core.synchronize.SyncInfoSet;

public interface ISyncInfoSetChangeListener {
    public void syncInfoSetReset(SyncInfoSet var1, IProgressMonitor var2);

    public void syncInfoChanged(ISyncInfoSetChangeEvent var1, IProgressMonitor var2);

    public void syncInfoSetErrors(SyncInfoSet var1, ITeamStatus[] var2, IProgressMonitor var3);
}

