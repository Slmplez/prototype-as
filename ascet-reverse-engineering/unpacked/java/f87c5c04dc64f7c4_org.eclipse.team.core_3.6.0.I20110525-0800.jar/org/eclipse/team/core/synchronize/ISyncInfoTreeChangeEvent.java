/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.core.synchronize;

import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.synchronize.ISyncInfoSetChangeEvent;

public interface ISyncInfoTreeChangeEvent
extends ISyncInfoSetChangeEvent {
    public IResource[] getAddedSubtreeRoots();

    public IResource[] getRemovedSubtreeRoots();
}

