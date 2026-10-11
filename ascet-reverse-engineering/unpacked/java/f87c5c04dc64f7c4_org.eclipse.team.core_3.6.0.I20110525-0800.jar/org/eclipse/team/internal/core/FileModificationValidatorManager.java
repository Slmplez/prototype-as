/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.team.FileModificationValidationContext
 *  org.eclipse.core.resources.team.FileModificationValidator
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 */
package org.eclipse.team.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.team.FileModificationValidationContext;
import org.eclipse.core.resources.team.FileModificationValidator;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.team.core.RepositoryProvider;
import org.eclipse.team.internal.core.DefaultFileModificationValidator;
import org.eclipse.team.internal.core.Messages;

public class FileModificationValidatorManager
extends FileModificationValidator {
    private FileModificationValidator defaultValidator;

    public IStatus validateEdit(IFile[] files, FileModificationValidationContext context) {
        RepositoryProvider provider;
        ArrayList<IStatus> returnStati = new ArrayList<IStatus>();
        HashMap providersToFiles = new HashMap(files.length);
        int i = 0;
        while (i < files.length) {
            IFile file = files[i];
            provider = RepositoryProvider.getProvider(file.getProject());
            if (!providersToFiles.containsKey(provider)) {
                providersToFiles.put(provider, new ArrayList());
            }
            ((ArrayList)providersToFiles.get(provider)).add(file);
            ++i;
        }
        Iterator providersIterator = providersToFiles.keySet().iterator();
        boolean allOK = true;
        while (providersIterator.hasNext()) {
            IStatus status;
            FileModificationValidator v;
            provider = (RepositoryProvider)providersIterator.next();
            ArrayList filesList = (ArrayList)providersToFiles.get(provider);
            IFile[] filesArray = filesList.toArray(new IFile[filesList.size()]);
            FileModificationValidator validator = this.getDefaultValidator();
            if (provider != null && (v = provider.getFileModificationValidator2()) != null) {
                validator = v;
            }
            if (!(status = validator.validateEdit(filesArray, context)).isOK()) {
                allOK = false;
            }
            returnStati.add(status);
        }
        if (returnStati.size() == 1) {
            return (IStatus)returnStati.get(0);
        }
        return new MultiStatus("org.eclipse.team.core", 0, returnStati.toArray(new IStatus[returnStati.size()]), allOK ? Messages.ok : Messages.FileModificationValidator_editFailed, null);
    }

    public IStatus validateSave(IFile file) {
        FileModificationValidator v;
        RepositoryProvider provider = RepositoryProvider.getProvider(file.getProject());
        FileModificationValidator validator = this.getDefaultValidator();
        if (provider != null && (v = provider.getFileModificationValidator2()) != null) {
            validator = v;
        }
        return validator.validateSave(file);
    }

    private synchronized FileModificationValidator getDefaultValidator() {
        if (this.defaultValidator == null) {
            this.defaultValidator = new DefaultFileModificationValidator();
        }
        return this.defaultValidator;
    }
}

