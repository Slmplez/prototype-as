/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.localstore;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.internal.localstore.RefreshLocalVisitor;
import org.eclipse.core.internal.localstore.UnifiedTreeNode;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CollectSyncStatusVisitor
extends RefreshLocalVisitor {
    protected List<Resource> affectedResources;
    private boolean ignoreLocalDeletions = false;
    protected MultiStatus status;

    public CollectSyncStatusVisitor(String multiStatusTitle, IProgressMonitor monitor) {
        super(monitor);
        this.status = new MultiStatus("org.eclipse.core.resources", 1, multiStatusTitle, null);
    }

    protected void changed(Resource target) {
        String message = NLS.bind((String)Messages.localstore_resourceIsOutOfSync, (Object)target.getFullPath());
        this.status.add((IStatus)new ResourceStatus(274, target.getFullPath(), message));
        if (this.affectedResources == null) {
            this.affectedResources = new ArrayList<Resource>(20);
        }
        this.affectedResources.add(target);
        this.resourceChanged = true;
    }

    @Override
    protected void createResource(UnifiedTreeNode node, Resource target) {
        this.changed(target);
    }

    @Override
    protected void deleteResource(UnifiedTreeNode node, Resource target) {
        if (!this.ignoreLocalDeletions) {
            this.changed(target);
        }
    }

    @Override
    protected void fileToFolder(UnifiedTreeNode node, Resource target) {
        this.changed(target);
    }

    @Override
    protected void folderToFile(UnifiedTreeNode node, Resource target) {
        this.changed(target);
    }

    public List<Resource> getAffectedResources() {
        return this.affectedResources;
    }

    public MultiStatus getSyncStatus() {
        return this.status;
    }

    @Override
    protected void makeLocal(UnifiedTreeNode node, Resource target) {
        this.changed(target);
    }

    @Override
    protected void refresh(Container parent) {
        this.changed(parent);
    }

    @Override
    protected void resourceChanged(UnifiedTreeNode node, Resource target) {
        this.changed(target);
    }

    public void setIgnoreLocalDeletions(boolean value) {
        this.ignoreLocalDeletions = value;
    }
}

