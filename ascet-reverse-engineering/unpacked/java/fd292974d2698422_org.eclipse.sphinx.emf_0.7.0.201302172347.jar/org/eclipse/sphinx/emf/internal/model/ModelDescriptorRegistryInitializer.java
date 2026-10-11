/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.IExtendedPlatformConstants
 *  org.eclipse.sphinx.platform.resources.MarkerJob
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.StatusUtil
 */
package org.eclipse.sphinx.emf.internal.model;

import java.util.Collection;
import java.util.HashSet;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.internal.scoping.ResourceScopeValidationService;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.platform.IExtendedPlatformConstants;
import org.eclipse.sphinx.platform.resources.MarkerJob;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.StatusUtil;

public class ModelDescriptorRegistryInitializer
extends Job {
    public ModelDescriptorRegistryInitializer() {
        super(Messages.job_initializingModelDescriptorRegistry);
        this.setPriority(40);
    }

    protected IStatus run(IProgressMonitor monitor) {
        try {
            SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)100);
            if (progress.isCanceled()) {
                throw new OperationCanceledException();
            }
            HashSet<IFile> analyzedFiles = new HashSet<IFile>();
            Collection rootProjects = ExtendedPlatform.getRootProjects();
            SubMonitor progress1 = progress.newChild(90);
            progress1.beginTask(Messages.task_analyzingProjects, rootProjects.size());
            for (IProject project : rootProjects) {
                Collection files = ExtendedPlatform.getAllFiles((IProject)project, (boolean)true);
                SubMonitor progress2 = progress1.newChild(1).setWorkRemaining(files.size());
                for (IFile file : files) {
                    progress2.subTask(NLS.bind((String)Messages.subtask_analyzingFile, (Object)file.getFullPath().toString()));
                    if (analyzedFiles.add(file) && file.isAccessible()) {
                        ModelDescriptorRegistry.INSTANCE.addModel(file);
                    }
                    progress2.worked(1);
                    if (!progress2.isCanceled()) continue;
                    throw new OperationCanceledException();
                }
            }
            MarkerJob.INSTANCE.schedule();
            ResourceScopeValidationService.INSTANCE.validateFiles(analyzedFiles, (IProgressMonitor)progress.newChild(10));
            ExtendedPlatform.persistContentTypeIdProperties(analyzedFiles, (boolean)true, null);
            return Status.OK_STATUS;
        }
        catch (OperationCanceledException operationCanceledException) {
            return Status.CANCEL_STATUS;
        }
        catch (Exception ex) {
            return StatusUtil.createErrorStatus((Plugin)Activator.getPlugin(), (Object)ex);
        }
    }

    public boolean belongsTo(Object family) {
        return IExtendedPlatformConstants.FAMILY_LONG_RUNNING.equals(family);
    }
}

