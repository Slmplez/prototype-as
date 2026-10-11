/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.resources.team;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFileModificationValidator;
import org.eclipse.core.resources.team.FileModificationValidationContext;
import org.eclipse.core.runtime.IStatus;

public abstract class FileModificationValidator
implements IFileModificationValidator {
    public final IStatus validateEdit(IFile[] files, Object context) {
        FileModificationValidationContext validationContext = context == null ? null : (context instanceof FileModificationValidationContext ? (FileModificationValidationContext)context : new FileModificationValidationContext(context));
        return this.validateEdit(files, validationContext);
    }

    public IStatus validateSave(IFile file) {
        return this.validateEdit(new IFile[]{file}, null);
    }

    public abstract IStatus validateEdit(IFile[] var1, FileModificationValidationContext var2);
}

