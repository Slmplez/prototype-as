/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.resources.team;

import java.net.URI;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.resources.InternalTeamHook;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.team.ResourceRuleFactory;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public abstract class TeamHook
extends InternalTeamHook {
    protected final IResourceRuleFactory defaultFactory = new ResourceRuleFactory();

    protected TeamHook() {
    }

    public IResourceRuleFactory getRuleFactory(IProject project) {
        return this.defaultFactory;
    }

    protected final void setRuleFactory(IProject project, IResourceRuleFactory factory) {
        super.setRuleFactory(project, factory);
    }

    public IStatus validateCreateLink(IFile file, int updateFlags, IPath location) {
        return Status.OK_STATUS;
    }

    public IStatus validateCreateLink(IFile file, int updateFlags, URI location) {
        if ("file".equals(location.getScheme())) {
            return this.validateCreateLink(file, updateFlags, URIUtil.toPath((URI)location));
        }
        return Status.OK_STATUS;
    }

    public IStatus validateCreateLink(IFolder folder, int updateFlags, IPath location) {
        return Status.OK_STATUS;
    }

    public IStatus validateCreateLink(IFolder folder, int updateFlags, URI location) {
        if ("file".equals(location.getScheme())) {
            return this.validateCreateLink(folder, updateFlags, URIUtil.toPath((URI)location));
        }
        return Status.OK_STATUS;
    }
}

