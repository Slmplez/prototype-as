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
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.edit.domain.EditingDomain
 *  org.eclipse.emf.transaction.NotificationFilter
 *  org.eclipse.emf.transaction.ResourceSetChangeEvent
 *  org.eclipse.emf.transaction.ResourceSetListenerImpl
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.sphinx.platform.resources.DefaultResourceChangeHandler
 *  org.eclipse.sphinx.platform.resources.IResourceChangeHandler
 *  org.eclipse.sphinx.platform.resources.ResourceDeltaVisitor
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.internal.resource;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.resource.ResourceProblemMarkerService;
import org.eclipse.sphinx.emf.saving.SaveIndicatorUtil;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.sphinx.platform.resources.DefaultResourceChangeHandler;
import org.eclipse.sphinx.platform.resources.IResourceChangeHandler;
import org.eclipse.sphinx.platform.resources.ResourceDeltaVisitor;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceProblemHandler
extends ResourceSetListenerImpl
implements IResourceChangeListener {
    public ResourceProblemHandler() {
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
        for (Notification notification : event.getNotifications()) {
            Object notifier = notification.getNotifier();
            if (notifier instanceof Resource) {
                Resource resource = (Resource)notifier;
                Boolean newValue = (Boolean)notification.getNewValue();
                if (!newValue.booleanValue()) continue;
                loadedResources.add(resource);
                continue;
            }
            if (!(notifier instanceof ResourceSet)) continue;
            Object newValue = notification.getNewValue();
            if (notification.getEventType() != 3 && notification.getEventType() != 5) continue;
            ArrayList<Resource> newResources = new ArrayList<Resource>();
            if (newValue instanceof List) {
                List newResourcesValue = (List)newValue;
                newResources.addAll(newResourcesValue);
            } else if (newValue instanceof Resource) {
                newResources.add((Resource)newValue);
            }
            loadedResources.addAll(newResources);
        }
        this.handleLoadedResources(loadedResources);
    }

    public boolean isPostcommitOnly() {
        return true;
    }

    protected void handleLoadedResources(Collection<Resource> resources) {
        ResourceProblemMarkerService.INSTANCE.updateProblemMarkers(resources, null);
    }

    public void resourceChanged(IResourceChangeEvent event) {
        try {
            IResourceDelta delta = event.getDelta();
            if (delta != null) {
                final HashSet<IFile> savedFiles = new HashSet<IFile>();
                ResourceDeltaVisitor visitor = new ResourceDeltaVisitor(event.getType(), (IResourceChangeHandler)new DefaultResourceChangeHandler(){

                    public void handleFileChanged(int eventType, IFile file) {
                        URI uri;
                        TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getMappedEditingDomain(file);
                        if (SaveIndicatorUtil.isSaved((EditingDomain)editingDomain, uri = EcorePlatformUtil.createURI(file.getFullPath()))) {
                            savedFiles.add(file);
                        }
                    }
                });
                delta.accept((IResourceDeltaVisitor)visitor);
                this.handleSavedFiles(savedFiles);
            }
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
        }
    }

    protected void handleSavedFiles(Collection<IFile> files) {
        Assert.isNotNull(files);
        HashSet<Resource> resources = new HashSet<Resource>();
        for (IFile file : files) {
            Resource resource = EcorePlatformUtil.getResource(file);
            if (resource == null) continue;
            resources.add(resource);
        }
        this.handleSavedResources(resources);
    }

    protected void handleSavedResources(Collection<Resource> resources) {
        ResourceProblemMarkerService.INSTANCE.updateProblemMarkers(resources, null);
    }
}

