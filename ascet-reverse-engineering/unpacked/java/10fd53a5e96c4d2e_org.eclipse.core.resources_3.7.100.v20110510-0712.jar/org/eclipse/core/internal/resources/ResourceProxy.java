/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.QualifiedName;

public class ResourceProxy
implements IResourceProxy,
ICoreConstants {
    protected final Workspace workspace = (Workspace)ResourcesPlugin.getWorkspace();
    protected IPathRequestor requestor;
    protected ResourceInfo info;
    protected IPath fullPath;
    protected IResource resource;

    public long getModificationStamp() {
        return this.info.getModificationStamp();
    }

    public String getName() {
        return this.requestor.requestName();
    }

    public Object getSessionProperty(QualifiedName key) {
        return this.info.getSessionProperty(key);
    }

    public int getType() {
        return this.info.getType();
    }

    public boolean isAccessible() {
        int flags = this.info.getFlags();
        if (this.info.getType() == 4) {
            return flags != -1 && ResourceInfo.isSet(flags, 1);
        }
        return flags != -1;
    }

    public boolean isDerived() {
        int flags = this.info.getFlags();
        return flags != -1 && ResourceInfo.isSet(flags, 16384);
    }

    public boolean isLinked() {
        int flags = this.info.getFlags();
        return flags != -1 && ResourceInfo.isSet(flags, 65536);
    }

    public boolean isPhantom() {
        int flags = this.info.getFlags();
        return flags != -1 && ResourceInfo.isSet(flags, 8);
    }

    public boolean isTeamPrivateMember() {
        int flags = this.info.getFlags();
        return flags != -1 && ResourceInfo.isSet(flags, 32768);
    }

    public boolean isHidden() {
        int flags = this.info.getFlags();
        return flags != -1 && ResourceInfo.isSet(flags, 0x200000);
    }

    public IPath requestFullPath() {
        if (this.fullPath == null) {
            this.fullPath = this.requestor.requestPath();
        }
        return this.fullPath;
    }

    public IResource requestResource() {
        if (this.resource == null) {
            this.resource = this.workspace.newResource(this.requestFullPath(), this.info.getType());
        }
        return this.resource;
    }

    protected void reset() {
        this.fullPath = null;
        this.resource = null;
    }
}

