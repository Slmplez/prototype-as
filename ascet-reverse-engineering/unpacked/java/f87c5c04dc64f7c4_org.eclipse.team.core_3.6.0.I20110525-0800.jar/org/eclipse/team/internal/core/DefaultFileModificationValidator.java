/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.team.FileModificationValidationContext
 *  org.eclipse.core.resources.team.FileModificationValidator
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.internal.core;

import java.util.ArrayList;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.team.FileModificationValidationContext;
import org.eclipse.core.resources.team.FileModificationValidator;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamStatus;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.TeamPlugin;

public class DefaultFileModificationValidator
extends FileModificationValidator {
    private FileModificationValidator uiValidator;

    protected IStatus getDefaultStatus(IFile file) {
        return file.isReadOnly() ? new TeamStatus(4, "org.eclipse.team.core", 279, NLS.bind((String)Messages.FileModificationValidator_fileIsReadOnly, (Object[])new String[]{file.getFullPath().toString()}), null, (IResource)file) : Status.OK_STATUS;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IStatus validateEdit(IFile[] files, FileModificationValidationContext context) {
        IFile[] readOnlyFiles = this.getReadOnly(files);
        if (readOnlyFiles.length == 0) {
            return Status.OK_STATUS;
        }
        DefaultFileModificationValidator defaultFileModificationValidator = this;
        synchronized (defaultFileModificationValidator) {
            if (this.uiValidator == null) {
                this.uiValidator = this.loadUIValidator();
            }
        }
        if (this.uiValidator != null) {
            return this.uiValidator.validateEdit(files, context);
        }
        return this.getStatus(files);
    }

    protected IStatus getStatus(IFile[] files) {
        if (files.length == 1) {
            return this.getDefaultStatus(files[0]);
        }
        Status[] stati = new Status[files.length];
        boolean allOK = true;
        int i = 0;
        while (i < files.length) {
            stati[i] = this.getDefaultStatus(files[i]);
            if (!stati[i].isOK()) {
                allOK = false;
            }
            ++i;
        }
        return new MultiStatus("org.eclipse.team.core", 0, (IStatus[])stati, allOK ? Messages.ok : Messages.FileModificationValidator_someReadOnly, null);
    }

    private IFile[] getReadOnly(IFile[] files) {
        ArrayList<IFile> result = new ArrayList<IFile>(files.length);
        int i = 0;
        while (i < files.length) {
            IFile file = files[i];
            if (file.isReadOnly()) {
                result.add(file);
            }
            ++i;
        }
        return result.toArray(new IFile[result.size()]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IStatus validateSave(IFile file) {
        if (!file.isReadOnly()) {
            return Status.OK_STATUS;
        }
        DefaultFileModificationValidator defaultFileModificationValidator = this;
        synchronized (defaultFileModificationValidator) {
            if (this.uiValidator == null) {
                this.uiValidator = this.loadUIValidator();
            }
        }
        if (this.uiValidator != null) {
            return this.uiValidator.validateSave(file);
        }
        return this.getDefaultStatus(file);
    }

    private FileModificationValidator loadUIValidator() {
        IConfigurationElement[] configElements;
        IExtension[] extensions;
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.team.core", "defaultFileModificationValidator");
        if (extension != null && (extensions = extension.getExtensions()).length > 0 && (configElements = extensions[0].getConfigurationElements()).length > 0) {
            try {
                Object o = configElements[0].createExecutableExtension("class");
                if (o instanceof FileModificationValidator) {
                    return (FileModificationValidator)o;
                }
            }
            catch (CoreException e) {
                TeamPlugin.log(e);
            }
        }
        return null;
    }
}

