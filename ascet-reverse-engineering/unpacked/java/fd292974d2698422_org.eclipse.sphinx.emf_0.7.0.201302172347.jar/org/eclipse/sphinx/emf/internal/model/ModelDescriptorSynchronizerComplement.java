/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
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
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.transaction.NotificationFilter
 *  org.eclipse.emf.transaction.ResourceSetChangeEvent
 *  org.eclipse.emf.transaction.ResourceSetListenerImpl
 *  org.eclipse.sphinx.platform.IExtendedPlatformConstants
 *  org.eclipse.sphinx.platform.util.StatusUtil
 */
package org.eclipse.sphinx.emf.internal.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
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
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.internal.metamodel.InternalMetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;
import org.eclipse.sphinx.platform.IExtendedPlatformConstants;
import org.eclipse.sphinx.platform.util.StatusUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModelDescriptorSynchronizerComplement
extends ResourceSetListenerImpl {
    public ModelDescriptorSynchronizerComplement() {
        super(NotificationFilter.createFeatureFilter((EClassifier)EcorePackage.eINSTANCE.getEResource(), (int)4).or(NotificationFilter.createFeatureFilter((EClassifier)EcorePackage.eINSTANCE.getEResourceSet(), (int)0)));
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
        this.handleModelResourceLoaded(loadedResources);
        this.handleModelResourceUnloaded(unloadedResources);
    }

    private void handleModelResourceLoaded(final Collection<Resource> resources) {
        if (!resources.isEmpty()) {
            Job job = new Job(Messages.job_addingModelDescriptors){

                protected IStatus run(IProgressMonitor monitor) {
                    try {
                        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)resources.size());
                        if (progress.isCanceled()) {
                            throw new OperationCanceledException();
                        }
                        for (Resource resource : resources) {
                            IFile file = EcorePlatformUtil.getFile(resource);
                            if (file == null || !file.exists()) {
                                ModelDescriptorRegistry.INSTANCE.addModel(resource);
                            }
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
            job.setRule(this.createLoadSchedulingRule(resources));
            job.setSystem(true);
            job.schedule();
        }
    }

    protected ISchedulingRule createLoadSchedulingRule(Collection<Resource> resources) {
        Assert.isNotNull(resources);
        HashSet<IContainer> rules = new HashSet<IContainer>();
        for (Resource resource : resources) {
            IFile file = EcorePlatformUtil.getFile(resource);
            if (file == null) continue;
            rules.add(file.getParent());
        }
        return MultiRule.combine((ISchedulingRule[])rules.toArray(new ISchedulingRule[rules.size()]));
    }

    private void handleModelResourceUnloaded(final Collection<Resource> resources) {
        if (!resources.isEmpty()) {
            for (Resource resource : resources) {
                IFile file = EcorePlatformUtil.getFile(resource);
                if (EcoreResourceUtil.exists(resource.getURI())) continue;
                InternalMetaModelDescriptorRegistry.INSTANCE.removeCachedDescriptor(file);
            }
            Job job = new Job(Messages.job_removingModelDescriptors){

                protected IStatus run(IProgressMonitor monitor) {
                    try {
                        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)resources.size());
                        if (progress.isCanceled()) {
                            throw new OperationCanceledException();
                        }
                        for (Resource resource : resources) {
                            IFile file = EcorePlatformUtil.getFile(resource);
                            if (file == null || !file.exists()) {
                                ModelDescriptorRegistry.INSTANCE.removeModel(resource);
                            }
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

