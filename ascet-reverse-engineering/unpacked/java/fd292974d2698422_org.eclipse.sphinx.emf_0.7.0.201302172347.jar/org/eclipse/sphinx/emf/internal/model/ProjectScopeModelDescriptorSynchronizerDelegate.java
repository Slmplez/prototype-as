/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.sphinx.platform.IExtendedPlatformConstants
 *  org.eclipse.sphinx.platform.resources.syncing.AbstractResourceSynchronizerDelegate
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.StatusUtil
 */
package org.eclipse.sphinx.emf.internal.model;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.internal.model.IModelDescriptorSyncRequest;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.platform.IExtendedPlatformConstants;
import org.eclipse.sphinx.platform.resources.syncing.AbstractResourceSynchronizerDelegate;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.StatusUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProjectScopeModelDescriptorSynchronizerDelegate
extends AbstractResourceSynchronizerDelegate<IModelDescriptorSyncRequest> {
    public void handleProjectDescriptionChanged(int eventType, IProject project) {
        if (eventType == 1) {
            this.updateReferencedModels(project);
        }
    }

    protected void updateReferencedModels(final IProject project) {
        Job job = new Job(Messages.job_updatingReferencedModelDescriptors){

            protected IStatus run(IProgressMonitor monitor) {
                try {
                    SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)2);
                    ModelDescriptorRegistry.INSTANCE.removeModels((IContainer)project);
                    ModelDescriptorRegistry.INSTANCE.addModels(project);
                    IProject[] iProjectArray = ExtendedPlatform.getReferencedProjectsSafely((IProject)project);
                    int n = iProjectArray.length;
                    int n2 = 0;
                    while (n2 < n) {
                        IProject referencedProject = iProjectArray[n2];
                        for (IModelDescriptor referencedModelDescriptor : ModelDescriptorRegistry.INSTANCE.getModels((IContainer)referencedProject)) {
                            ModelDescriptorRegistry.INSTANCE.addModel(referencedModelDescriptor.getMetaModelDescriptor(), referencedModelDescriptor.getEditingDomain(), (IResource)project);
                        }
                        ++n2;
                    }
                    progress.worked(1);
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
                return IExtendedPlatformConstants.FAMILY_MODEL_LOADING.equals(family);
            }
        };
        job.setPriority(20);
        job.setRule((ISchedulingRule)project);
        job.setSystem(true);
        job.schedule();
    }
}

