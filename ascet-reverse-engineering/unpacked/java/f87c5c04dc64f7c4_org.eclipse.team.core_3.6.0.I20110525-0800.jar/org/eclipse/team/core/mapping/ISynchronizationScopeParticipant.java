/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.mapping.ResourceMapping
 */
package org.eclipse.team.core.mapping;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.team.core.mapping.ISynchronizationScope;

public interface ISynchronizationScopeParticipant {
    public ResourceMapping[] handleContextChange(ISynchronizationScope var1, IResource[] var2, IProject[] var3);

    public void dispose();
}

