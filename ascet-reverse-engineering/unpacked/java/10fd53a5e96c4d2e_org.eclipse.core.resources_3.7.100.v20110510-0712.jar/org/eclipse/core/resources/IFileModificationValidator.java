/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IStatus;

public interface IFileModificationValidator {
    public IStatus validateEdit(IFile[] var1, Object var2);

    public IStatus validateSave(IFile var1);
}

