/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.runtime.IPath;
import org.eclipse.team.internal.core.subscribers.ChangeSet;

public interface IChangeSetChangeListener {
    public void setAdded(ChangeSet var1);

    public void defaultSetChanged(ChangeSet var1, ChangeSet var2);

    public void setRemoved(ChangeSet var1);

    public void nameChanged(ChangeSet var1);

    public void resourcesChanged(ChangeSet var1, IPath[] var2);
}

