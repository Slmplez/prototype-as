/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.core.synchronize;

import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoSet;

public interface ISyncInfoSetChangeEvent {
    public SyncInfo[] getAddedResources();

    public SyncInfo[] getChangedResources();

    public IResource[] getRemovedResources();

    public SyncInfoSet getSet();
}

