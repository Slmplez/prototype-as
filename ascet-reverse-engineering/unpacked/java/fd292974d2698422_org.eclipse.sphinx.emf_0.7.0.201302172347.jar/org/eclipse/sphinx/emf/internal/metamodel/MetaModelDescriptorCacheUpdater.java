/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
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
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.transaction.NotificationFilter
 *  org.eclipse.emf.transaction.ResourceSetChangeEvent
 *  org.eclipse.emf.transaction.ResourceSetListenerImpl
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.sphinx.platform.IExtendedPlatformConstants
 *  org.eclipse.sphinx.platform.resources.DefaultResourceChangeHandler
 *  org.eclipse.sphinx.platform.resources.IResourceChangeHandler
 *  org.eclipse.sphinx.platform.resources.ResourceDeltaVisitor
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 *  org.eclipse.sphinx.platform.util.StatusUtil
 */
package org.eclipse.sphinx.emf.internal.metamodel;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
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
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.internal.metamodel.InternalMetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;
import org.eclipse.sphinx.platform.IExtendedPlatformConstants;
import org.eclipse.sphinx.platform.resources.DefaultResourceChangeHandler;
import org.eclipse.sphinx.platform.resources.IResourceChangeHandler;
import org.eclipse.sphinx.platform.resources.ResourceDeltaVisitor;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.sphinx.platform.util.StatusUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MetaModelDescriptorCacheUpdater
extends ResourceSetListenerImpl
implements IResourceChangeListener {
    public MetaModelDescriptorCacheUpdater() {
        super(NotificationFilter.createFeatureFilter((EClassifier)EcorePackage.eINSTANCE.getEResource(), (int)4).or(NotificationFilter.createFeatureFilter((EClassifier)EcorePackage.eINSTANCE.getEResourceSet(), (int)0)));
    }

    public void setTarget(TransactionalEditingDomain domain) {
        super.setTarget(domain);
        ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)this);
    }

    public void unsetTarget(TransactionalEditingDomain domain) {
        ResourcesPlugin.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
        super.unsetTarget(domain);
    }

    public void resourceSetChanged(ResourceSetChangeEvent event) {
        HashSet<Resource> loadedResources = new HashSet<Resource>();
        HashSet<Resource> unloadedResources = new HashSet<Resource>();
        HashSet<Resource> addedResources = new HashSet<Resource>();
        HashSet<Resource> removedResources = new HashSet<Resource>();
        for (Notification notification : event.getNotifications()) {
            Object newValue;
            Object notifier = notification.getNotifier();
            if (notifier instanceof Resource) {
                Resource resource = (Resource)notifier;
                newValue = (Boolean)notification.getNewValue();
                if (((Boolean)newValue).booleanValue()) {
                    if (unloadedResources.contains(resource)) {
                        unloadedResources.remove(resource);
                        continue;
                    }
                    loadedResources.add(resource);
                    continue;
                }
                if (loadedResources.contains(resource)) {
                    loadedResources.remove(resource);
                    continue;
                }
                unloadedResources.add(resource);
                continue;
            }
            if (!(notifier instanceof ResourceSet)) continue;
            if (notification.getEventType() == 3 || notification.getEventType() == 5) {
                ArrayList<Resource> newResources = new ArrayList<Resource>();
                newValue = notification.getNewValue();
                if (newValue instanceof List) {
                    List newResourcesValue = (List)newValue;
                    newResources.addAll(newResourcesValue);
                } else if (newValue instanceof Resource) {
                    newResources.add((Resource)newValue);
                }
                for (Resource newResource : newResources) {
                    if (removedResources.contains(newResource)) {
                        removedResources.remove(newResource);
                        continue;
                    }
                    addedResources.add(newResource);
                }
                continue;
            }
            if (notification.getEventType() != 4 && notification.getEventType() != 6) continue;
            ArrayList<Resource> oldResources = new ArrayList<Resource>();
            Object oldValue = notification.getOldValue();
            if (oldValue instanceof List) {
                List oldResourcesValue = (List)oldValue;
                oldResources.addAll(oldResourcesValue);
            } else if (oldValue instanceof Resource) {
                oldResources.add((Resource)oldValue);
            }
            for (Resource oldResource : oldResources) {
                if (addedResources.contains(oldResource)) {
                    addedResources.remove(oldResource);
                    continue;
                }
                removedResources.add(oldResource);
            }
        }
        loadedResources.addAll(addedResources);
        unloadedResources.addAll(removedResources);
        this.handleLoadedResources(loadedResources);
        this.handleUnloadedResources(unloadedResources);
    }

    private void handleLoadedResources(Set<Resource> resources) {
        Assert.isNotNull(resources);
        for (Resource resource : resources) {
            IFile file = EcorePlatformUtil.getFile(resource);
            IMetaModelDescriptor mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(resource);
            InternalMetaModelDescriptorRegistry.INSTANCE.addCachedDescriptor(file, mmDescriptor);
        }
    }

    private void handleUnloadedResources(Set<Resource> resources) {
        Assert.isNotNull(resources);
        for (Resource resource : resources) {
            IFile file = EcorePlatformUtil.getFile(resource);
            if (EcoreResourceUtil.exists(resource.getURI())) continue;
            InternalMetaModelDescriptorRegistry.INSTANCE.removeCachedDescriptor(file);
        }
        this.clearCachedOldDescriptors();
    }

    public boolean isPostcommitOnly() {
        return true;
    }

    public void resourceChanged(IResourceChangeEvent event) {
        try {
            IResourceDelta delta = event.getDelta();
            if (delta != null) {
                ResourceDeltaVisitor visitor = new ResourceDeltaVisitor(event.getType(), (IResourceChangeHandler)new DefaultResourceChangeHandler(){

                    public void handleFileChanged(int eventType, IFile file) {
                        InternalMetaModelDescriptorRegistry.INSTANCE.removeCachedDescriptor(file);
                        MetaModelDescriptorCacheUpdater.this.clearCachedOldDescriptors();
                    }

                    public void handleFileMoved(int eventType, IFile oldFile, IFile newFile) {
                        InternalMetaModelDescriptorRegistry.INSTANCE.moveCachedDescriptor(oldFile, newFile);
                        MetaModelDescriptorCacheUpdater.this.clearCachedOldDescriptors();
                    }

                    public void handleFileRemoved(int eventType, IFile file) {
                        InternalMetaModelDescriptorRegistry.INSTANCE.removeCachedDescriptor(file);
                        MetaModelDescriptorCacheUpdater.this.clearCachedOldDescriptors();
                    }
                });
                delta.accept((IResourceDeltaVisitor)visitor);
            }
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
        }
    }

    private void clearCachedOldDescriptors() {
        Job job = new Job(Messages.job_clearingOldMetaModelDescriptors){

            protected IStatus run(IProgressMonitor monitor) {
                try {
                    SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)1);
                    InternalMetaModelDescriptorRegistry.INSTANCE.clearCachedOldDescriptors();
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

            public boolean shouldSchedule() {
                Job[] jobs;
                Job[] jobArray = jobs = Job.getJobManager().find(IExtendedPlatformConstants.FAMILY_MODEL_LOADING);
                int n = jobs.length;
                int n2 = 0;
                while (n2 < n) {
                    Job modelLoadingJob = jobArray[n2];
                    if (modelLoadingJob.getName().equals(Messages.job_clearingOldMetaModelDescriptors)) {
                        return false;
                    }
                    ++n2;
                }
                return true;
            }
        };
        job.setPriority(50);
        job.setRule((ISchedulingRule)ResourcesPlugin.getWorkspace().getRoot());
        job.setSystem(true);
        job.schedule();
    }
}

