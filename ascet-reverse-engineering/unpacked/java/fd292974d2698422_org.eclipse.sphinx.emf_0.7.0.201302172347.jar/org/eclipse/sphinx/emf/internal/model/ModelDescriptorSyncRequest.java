/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.sphinx.platform.IExtendedPlatformConstants
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.StatusUtil
 */
package org.eclipse.sphinx.emf.internal.model;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
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
import org.eclipse.sphinx.emf.scoping.ResourceScopeProviderRegistry;
import org.eclipse.sphinx.platform.IExtendedPlatformConstants;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.StatusUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModelDescriptorSyncRequest
implements IModelDescriptorSyncRequest {
    private Map<IProject, IProject> projectsToMoveModelDescriptorsFor = new HashMap<IProject, IProject>();
    private Set<IFile> filesToAddModelDescriptorsFor = new HashSet<IFile>();
    private Set<IFile> filesToUpdateModelDescriptorsFor = new HashSet<IFile>();
    private Set<IModelDescriptor> modelDescriptorsToRemove = new HashSet<IModelDescriptor>();

    public void init() {
    }

    @Override
    public void addProjectToMoveModelDescriptorsFor(IProject oldProject, IProject newProject) {
        if (oldProject != null && newProject != null) {
            IProject storedNewProject = this.projectsToMoveModelDescriptorsFor.get(oldProject);
            if (storedNewProject != null) {
                this.projectsToMoveModelDescriptorsFor.put(oldProject, newProject);
            } else if (!newProject.equals((Object)storedNewProject)) {
                this.projectsToMoveModelDescriptorsFor.remove(oldProject);
                this.projectsToMoveModelDescriptorsFor.put(oldProject, newProject);
            }
        }
    }

    @Override
    public void addProjectToRemoveModelDescriptorsFor(IProject project) {
        Collection<IModelDescriptor> modelDescriptorsForProject;
        if (project != null && (modelDescriptorsForProject = ModelDescriptorRegistry.INSTANCE.getModels((IContainer)project)) != null && !modelDescriptorsForProject.isEmpty()) {
            this.modelDescriptorsToRemove.addAll(modelDescriptorsForProject);
        }
    }

    @Override
    public void addFileToAddModelDescriptorFor(IFile file) {
        if (file != null && !ResourceScopeProviderRegistry.INSTANCE.isNotInAnyScope(file)) {
            this.filesToAddModelDescriptorsFor.add(file);
        }
    }

    @Override
    public void addFileToUpdateModelDescriptorFor(IFile file) {
        if (file != null && !ResourceScopeProviderRegistry.INSTANCE.isNotInAnyScope(file)) {
            this.filesToUpdateModelDescriptorsFor.add(file);
        }
    }

    @Override
    public void addFileToRemoveModelDescriptorFor(IFile file) {
        IModelDescriptor modelDescriptor;
        if (file != null && (modelDescriptor = ModelDescriptorRegistry.INSTANCE.getOldModel(file)) != null) {
            Collection<IResource> referencingRoots = modelDescriptor.getReferencingRoots();
            for (IResource referencingRoot : referencingRoots) {
                IModelDescriptor model;
                Collection<Object> referencingModelDescriptors = new HashSet();
                if (referencingRoot instanceof IContainer) {
                    referencingModelDescriptors = ModelDescriptorRegistry.INSTANCE.getModels((IContainer)referencingRoot, modelDescriptor.getMetaModelDescriptor());
                } else if (referencingRoot instanceof IFile && (model = ModelDescriptorRegistry.INSTANCE.getModel((IFile)referencingRoot)).getMetaModelDescriptor().equals(modelDescriptor.getMetaModelDescriptor())) {
                    referencingModelDescriptors.add(model);
                }
                if (referencingModelDescriptors == null) continue;
                this.modelDescriptorsToRemove.addAll(referencingModelDescriptors);
            }
            this.modelDescriptorsToRemove.add(modelDescriptor);
        }
    }

    public boolean canPerform() {
        return this.projectsToMoveModelDescriptorsFor.size() > 0 || this.filesToAddModelDescriptorsFor.size() > 0 || this.filesToUpdateModelDescriptorsFor.size() > 0 || this.modelDescriptorsToRemove.size() > 0;
    }

    public void perform() {
        if (!this.canPerform()) {
            return;
        }
        if (this.projectsToMoveModelDescriptorsFor.size() > 0) {
            this.moveModelDescriptors(new HashMap<IProject, IProject>(this.projectsToMoveModelDescriptorsFor));
            this.projectsToMoveModelDescriptorsFor.clear();
        }
        if (this.filesToAddModelDescriptorsFor.size() > 0) {
            this.addModelDescriptors(new HashSet<IFile>(this.filesToAddModelDescriptorsFor));
            this.filesToAddModelDescriptorsFor.clear();
        }
        if (this.filesToUpdateModelDescriptorsFor.size() > 0) {
            this.updateModelDescriptors(new HashSet<IFile>(this.filesToUpdateModelDescriptorsFor));
            this.filesToUpdateModelDescriptorsFor.clear();
        }
        if (this.modelDescriptorsToRemove.size() > 0) {
            this.removeModelDescriptors(new HashSet<IModelDescriptor>(this.modelDescriptorsToRemove));
            this.modelDescriptorsToRemove.clear();
        }
    }

    public void dispose() {
        this.projectsToMoveModelDescriptorsFor.clear();
        this.filesToAddModelDescriptorsFor.clear();
        this.filesToUpdateModelDescriptorsFor.clear();
        this.modelDescriptorsToRemove.clear();
    }

    private void addModelDescriptors(final Set<IFile> files) {
        Assert.isNotNull(files);
        if (files.size() > 0) {
            Job job = new Job(Messages.job_addingModelDescriptors){

                protected IStatus run(IProgressMonitor monitor) {
                    try {
                        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)files.size());
                        if (progress.isCanceled()) {
                            throw new OperationCanceledException();
                        }
                        for (IFile file : files) {
                            ModelDescriptorRegistry.INSTANCE.addModel(file);
                            progress.worked(1);
                            if (!progress.isCanceled()) continue;
                            throw new OperationCanceledException();
                        }
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
            job.setRule(ExtendedPlatform.createModifySchedulingRule(files));
            job.setSystem(true);
            job.schedule();
        }
    }

    private void moveModelDescriptors(final Map<IProject, IProject> projects) {
        Assert.isNotNull(projects);
        if (projects.size() > 0) {
            Job job = new Job(Messages.job_movingModelDescriptors){

                protected IStatus run(IProgressMonitor monitor) {
                    try {
                        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)projects.size());
                        if (progress.isCanceled()) {
                            throw new OperationCanceledException();
                        }
                        for (IProject oldProject : projects.keySet()) {
                            IProject newProject = (IProject)projects.get(oldProject);
                            ModelDescriptorRegistry.INSTANCE.moveModels(oldProject, newProject);
                            progress.worked(1);
                            if (!progress.isCanceled()) continue;
                            throw new OperationCanceledException();
                        }
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
            job.setRule((ISchedulingRule)ResourcesPlugin.getWorkspace().getRoot());
            job.setSystem(true);
            job.schedule();
        }
    }

    private void updateModelDescriptors(final Set<IFile> files) {
        Assert.isNotNull(files);
        if (files.size() > 0) {
            Job job = new Job(Messages.job_updatingModelDescriptors){

                protected IStatus run(IProgressMonitor monitor) {
                    try {
                        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)files.size());
                        if (progress.isCanceled()) {
                            throw new OperationCanceledException();
                        }
                        for (IFile file : files) {
                            ModelDescriptorRegistry.INSTANCE.removeModel(file);
                            ModelDescriptorRegistry.INSTANCE.addModel(file);
                            progress.worked(1);
                            if (!progress.isCanceled()) continue;
                            throw new OperationCanceledException();
                        }
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
            job.setRule(ExtendedPlatform.createModifySchedulingRule(files));
            job.setSystem(true);
            job.schedule();
        }
    }

    private void removeModelDescriptors(final Set<IModelDescriptor> modelDescriptors) {
        Assert.isNotNull(modelDescriptors);
        if (modelDescriptors.size() > 0) {
            Job job = new Job(Messages.job_removingModelDescriptors){

                protected IStatus run(IProgressMonitor monitor) {
                    try {
                        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)modelDescriptors.size());
                        if (progress.isCanceled()) {
                            throw new OperationCanceledException();
                        }
                        for (IModelDescriptor modelDescriptor : modelDescriptors) {
                            ModelDescriptorRegistry.INSTANCE.removeModel(modelDescriptor);
                            progress.worked(1);
                            if (!progress.isCanceled()) continue;
                            throw new OperationCanceledException();
                        }
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
            job.setRule((ISchedulingRule)ResourcesPlugin.getWorkspace().getRoot());
            job.setSystem(true);
            job.schedule();
        }
    }
}

