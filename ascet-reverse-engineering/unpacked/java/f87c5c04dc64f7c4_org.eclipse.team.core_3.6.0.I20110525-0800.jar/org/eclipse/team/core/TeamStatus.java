/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.team.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.team.core.ITeamStatus;

public class TeamStatus
extends Status
implements ITeamStatus {
    private IResource resource;

    public TeamStatus(int severity, String pluginId, int code, String message, Throwable exception, IResource resource) {
        super(severity, pluginId, code, message, exception);
        this.resource = resource == null ? ResourcesPlugin.getWorkspace().getRoot() : resource;
    }

    public IResource getResource() {
        return this.resource;
    }
}

