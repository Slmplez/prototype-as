/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.team.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IStatus;

public interface ITeamStatus
extends IStatus {
    public static final int RESOURCE_SYNC_INFO_ERROR = 1;
    public static final int SYNC_INFO_SET_ERROR = 2;
    public static final int SYNC_INFO_SET_CANCELLATION = 3;
    public static final int READ_ONLY_LOCAL = 279;

    public IResource getResource();
}

