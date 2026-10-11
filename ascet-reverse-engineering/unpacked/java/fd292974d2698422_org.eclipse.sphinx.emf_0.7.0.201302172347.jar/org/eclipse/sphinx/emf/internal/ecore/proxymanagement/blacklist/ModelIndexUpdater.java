/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IProjectDescription
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.transaction.NotificationFilter
 *  org.eclipse.emf.transaction.ResourceSetChangeEvent
 *  org.eclipse.emf.transaction.ResourceSetListenerImpl
 *  org.eclipse.sphinx.platform.resources.ResourceDeltaFlagsAnalyzer
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.internal.ecore.proxymanagement.blacklist;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.ProxyHelper;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.ProxyHelperAdapterFactory;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.platform.resources.ResourceDeltaFlagsAnalyzer;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

public class ModelIndexUpdater
extends ResourceSetListenerImpl
implements IResourceChangeListener {
    public ModelIndexUpdater() {
        super(NotificationFilter.ANY);
        ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)this);
    }

    protected void finalize() throws Throwable {
        ResourcesPlugin.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
        super.finalize();
    }

    public void resourceSetChanged(ResourceSetChangeEvent event) {
        ProxyHelper proxyHelper = ProxyHelperAdapterFactory.INSTANCE.adapt((Notifier)event.getEditingDomain().getResourceSet());
        List notifications = event.getNotifications();
        for (Object object : notifications) {
            if (!(object instanceof Notification)) continue;
            Notification notification = (Notification)object;
            Object notifier = notification.getNotifier();
            if (notifier instanceof Resource) {
                Resource resource = (Resource)notifier;
                if (notification.getFeatureID(Resource.class) != 4) continue;
                if (resource.isLoaded()) {
                    proxyHelper.getBlackList().updateIndexOnResourceLoaded(resource);
                    continue;
                }
                proxyHelper.getBlackList().updateIndexOnResourceUnloaded(resource);
                continue;
            }
            if (!(notifier instanceof EObject)) continue;
            if (notification.getNewValue() instanceof EObject && notification.getEventType() == 3) {
                proxyHelper.getBlackList().updateIndexOnResourceLoaded(((EObject)notifier).eResource());
                continue;
            }
            if (!(notification.getNewValue() instanceof String) || notification.getEventType() != 1) continue;
            proxyHelper.getBlackList().updateIndexOnResourceLoaded(((EObject)notifier).eResource());
        }
    }

    private void handleProjectDescriptionChanged(final IProject project) {
        if (project != null) {
            Job job = new Job("Update model index"){

                protected IStatus run(IProgressMonitor monitor) {
                    HashSet<Resource> updatedResources = new HashSet<Resource>();
                    try {
                        IProjectDescription description = project.getDescription();
                        if (description != null) {
                            IProject[] referencedProjects;
                            IProject[] iProjectArray = referencedProjects = description.getReferencedProjects();
                            int n = referencedProjects.length;
                            int n2 = 0;
                            while (n2 < n) {
                                IProject refrencedProject = iProjectArray[n2];
                                Collection<IModelDescriptor> projectModels = ModelDescriptorRegistry.INSTANCE.getModels((IContainer)refrencedProject);
                                for (IModelDescriptor modelDescriptor : projectModels) {
                                    updatedResources.addAll(modelDescriptor.getLoadedResources(true));
                                }
                                ++n2;
                            }
                        }
                        for (Resource resource : updatedResources) {
                            if (!resource.isLoaded()) continue;
                            ProxyHelper proxyHelper = ProxyHelperAdapterFactory.INSTANCE.adapt((Notifier)resource.getResourceSet());
                            proxyHelper.getBlackList().updateIndexOnResourceLoaded(resource);
                        }
                    }
                    catch (CoreException ex) {
                        PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)((Object)ex));
                    }
                    return Status.OK_STATUS;
                }
            };
            job.setRule((ISchedulingRule)project);
            job.setSystem(true);
            job.schedule();
        }
    }

    public void resourceChanged(IResourceChangeEvent event) {
        try {
            IResourceDelta delta = event.getDelta();
            if (delta != null) {
                IResourceDeltaVisitor visitor = new IResourceDeltaVisitor(){

                    public boolean visit(IResourceDelta delta) throws CoreException {
                        try {
                            IResource resource = delta.getResource();
                            ResourceDeltaFlagsAnalyzer flags = new ResourceDeltaFlagsAnalyzer(delta);
                            switch (delta.getKind()) {
                                case 1: {
                                    break;
                                }
                                case 4: {
                                    if (resource instanceof IProject) {
                                        IProject project = (IProject)resource;
                                        if (flags.DESCRIPTION && project.isOpen()) {
                                            IResourceDelta[] iResourceDeltaArray = delta.getAffectedChildren(4);
                                            int n = iResourceDeltaArray.length;
                                            int n2 = 0;
                                            while (n2 < n) {
                                                IResourceDelta childDelta = iResourceDeltaArray[n2];
                                                ResourceDeltaFlagsAnalyzer childFlag = new ResourceDeltaFlagsAnalyzer(childDelta);
                                                if (childFlag.CONTENT && ExtendedPlatform.isProjectDescriptionFile((IResource)childDelta.getResource())) {
                                                    ModelIndexUpdater.this.handleProjectDescriptionChanged(project);
                                                }
                                                ++n2;
                                            }
                                        }
                                    }
                                    break;
                                }
                                case 2: {
                                    break;
                                }
                            }
                        }
                        catch (Exception ex) {
                            PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)ex);
                        }
                        return true;
                    }
                };
                delta.accept(visitor);
            }
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
        }
    }
}

