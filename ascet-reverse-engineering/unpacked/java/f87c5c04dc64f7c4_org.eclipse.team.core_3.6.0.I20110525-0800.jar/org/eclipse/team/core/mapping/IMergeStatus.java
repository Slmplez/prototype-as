/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.team.core.mapping;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.runtime.IStatus;

public interface IMergeStatus
extends IStatus {
    public static final int CONFLICTS = 1;
    public static final int INTERNAL_ERROR = 2;

    public ResourceMapping[] getConflictingMappings();

    public IFile[] getConflictingFiles();
}

