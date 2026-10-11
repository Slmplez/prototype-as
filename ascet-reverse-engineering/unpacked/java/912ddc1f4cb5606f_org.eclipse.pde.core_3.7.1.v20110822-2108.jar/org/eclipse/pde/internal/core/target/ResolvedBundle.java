/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 */
package org.eclipse.pde.internal.core.target;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;

public class ResolvedBundle
implements IResolvedBundle {
    private BundleInfo fInfo;
    private IBundleContainer fContainer;
    private BundleInfo fSourceTarget;
    private IStatus fStatus;
    private boolean fIsOptional = false;
    private boolean fIsFragment = false;
    private String fSourcePath = null;

    ResolvedBundle(BundleInfo info, IBundleContainer parentContainer, IStatus status, BundleInfo sourceTarget, boolean optional, boolean fragment) {
        this.fInfo = info;
        this.fContainer = parentContainer;
        this.fStatus = status == null ? Status.OK_STATUS : status;
        this.fSourceTarget = sourceTarget;
        this.fIsOptional = optional;
        this.fIsFragment = fragment;
    }

    public BundleInfo getBundleInfo() {
        return this.fInfo;
    }

    public IBundleContainer getParentContainer() {
        return this.fContainer;
    }

    public void setParentContainer(IBundleContainer newParent) {
        this.fContainer = newParent;
    }

    public IStatus getStatus() {
        return this.fStatus;
    }

    public boolean isOptional() {
        return this.fIsOptional;
    }

    public boolean isSourceBundle() {
        return this.fSourceTarget != null;
    }

    public BundleInfo getSourceTarget() {
        return this.fSourceTarget;
    }

    void setOptional(boolean optional) {
        this.fIsOptional = optional;
    }

    public boolean isFragment() {
        return this.fIsFragment;
    }

    void setSourcePath(String path) {
        this.fSourcePath = path;
    }

    public String getSourcePath() {
        return this.fSourcePath;
    }

    public String toString() {
        StringBuffer result = new StringBuffer().append(this.fInfo.toString());
        if (this.fStatus != null && !this.fStatus.isOK()) {
            result = result.append(' ').append(this.fStatus.toString());
        }
        return result.toString();
    }
}

