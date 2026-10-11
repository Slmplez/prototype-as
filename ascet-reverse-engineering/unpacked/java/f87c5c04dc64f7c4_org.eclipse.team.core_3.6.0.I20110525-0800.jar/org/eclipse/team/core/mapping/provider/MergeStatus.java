/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.team.core.mapping.provider;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.runtime.Status;
import org.eclipse.team.core.mapping.IMergeStatus;

public class MergeStatus
extends Status
implements IMergeStatus {
    private ResourceMapping[] conflictingMappings;
    private IFile[] conflictingFiles;

    public MergeStatus(String pluginId, String message, ResourceMapping[] conflictingMappings) {
        super(4, pluginId, 1, message, null);
        this.conflictingMappings = conflictingMappings;
    }

    public MergeStatus(String pluginId, String message, IFile[] files) {
        super(4, pluginId, 1, message, null);
        this.conflictingFiles = files;
    }

    public ResourceMapping[] getConflictingMappings() {
        return this.conflictingMappings;
    }

    public IFile[] getConflictingFiles() {
        return this.conflictingFiles;
    }
}

