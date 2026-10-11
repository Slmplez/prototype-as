/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.team.internal.core.mapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IDiffChangeEvent;
import org.eclipse.team.core.diff.IDiffTree;

public class DiffChangeEvent
implements IDiffChangeEvent {
    private final IDiffTree tree;
    private Map changedResources = new HashMap();
    private Set removedResources = new HashSet();
    private Map addedResources = new HashMap();
    private boolean reset = false;
    private List errors = new ArrayList();

    public DiffChangeEvent(IDiffTree tree) {
        this.tree = tree;
    }

    public IDiffTree getTree() {
        return this.tree;
    }

    public IDiff[] getAdditions() {
        return this.addedResources.values().toArray(new IDiff[this.addedResources.size()]);
    }

    public IPath[] getRemovals() {
        return this.removedResources.toArray(new IPath[this.removedResources.size()]);
    }

    public IDiff[] getChanges() {
        return this.changedResources.values().toArray(new IDiff[this.changedResources.size()]);
    }

    public void added(IDiff delta) {
        if (this.removedResources.contains(delta.getPath())) {
            this.removedResources.remove(delta.getPath());
            this.changed(delta);
        } else {
            this.addedResources.put(delta.getPath(), delta);
        }
    }

    public void removed(IPath path, IDiff delta) {
        if (this.changedResources.containsKey(path)) {
            this.changedResources.remove(path);
        } else if (this.addedResources.containsKey(path)) {
            this.addedResources.remove(path);
            return;
        }
        this.removedResources.add(path);
    }

    public void changed(IDiff delta) {
        if (this.addedResources.containsKey(delta.getPath())) {
            this.addedResources.put(delta.getPath(), delta);
            return;
        }
        this.changedResources.put(delta.getPath(), delta);
    }

    public void reset() {
        this.reset = true;
    }

    public boolean isReset() {
        return this.reset;
    }

    public boolean isEmpty() {
        return this.changedResources.isEmpty() && this.removedResources.isEmpty() && this.addedResources.isEmpty();
    }

    public void errorOccurred(IStatus status) {
        this.errors.add(status);
    }

    public IStatus[] getErrors() {
        return this.errors.toArray(new IStatus[this.errors.size()]);
    }
}

