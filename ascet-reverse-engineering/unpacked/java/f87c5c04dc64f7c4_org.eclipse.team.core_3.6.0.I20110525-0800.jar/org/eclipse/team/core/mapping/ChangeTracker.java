/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.team.core.mapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.team.core.RepositoryProvider;
import org.eclipse.team.core.RepositoryProviderType;
import org.eclipse.team.core.mapping.IChangeGroupingRequestor;
import org.eclipse.team.internal.core.IRepositoryProviderListener;
import org.eclipse.team.internal.core.RepositoryProviderManager;
import org.eclipse.team.internal.core.TeamPlugin;

public abstract class ChangeTracker {
    private Map trackedProjects = new HashMap();
    private boolean disposed;
    private ChangeListener changeListener = new ChangeListener();
    static /* synthetic */ Class class$0;

    public void start() {
        ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)this.changeListener, 1);
        RepositoryProviderManager.getInstance().addListener(this.changeListener);
        IProject[] allProjects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
        int i = 0;
        while (i < allProjects.length) {
            IProject project = allProjects[i];
            if (this.isProjectOfInterest(project)) {
                this.trackProject(project);
            }
            ++i;
        }
    }

    public void dispose() {
        this.disposed = true;
        ResourcesPlugin.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this.changeListener);
        RepositoryProviderManager.getInstance().removeListener(this.changeListener);
    }

    private IResource[] getProjectChanges(IProject project, IResourceDelta projectDelta) {
        final ArrayList result = new ArrayList();
        try {
            projectDelta.accept(new IResourceDeltaVisitor(){

                public boolean visit(IResourceDelta delta) throws CoreException {
                    if (ChangeTracker.this.isResourceOfInterest(delta.getResource()) & ChangeTracker.this.isChangeOfInterest(delta)) {
                        result.add(delta.getResource());
                    }
                    return true;
                }
            });
        }
        catch (CoreException e) {
            TeamPlugin.log(e);
        }
        return result.toArray(new IResource[result.size()]);
    }

    protected boolean isChangeOfInterest(IResourceDelta delta) {
        return (delta.getKind() & 7) > 0;
    }

    protected void stopTrackingProject(IProject project) {
        this.trackedProjects.remove(project);
    }

    protected final boolean isProjectTracked(IProject project) {
        return this.trackedProjects.containsKey(project);
    }

    protected boolean isProjectOfInterest(IProject project) {
        return project.isAccessible();
    }

    protected abstract boolean isResourceOfInterest(IResource var1);

    protected abstract void handleChanges(IProject var1, IResource[] var2);

    protected abstract void handleProjectChange(IProject var1);

    protected final boolean trackProject(IProject project) {
        if (RepositoryProvider.isShared(project)) {
            try {
                IChangeGroupingRequestor collector;
                RepositoryProviderType type;
                String currentId = project.getPersistentProperty(TeamPlugin.PROVIDER_PROP_KEY);
                if (currentId != null && (type = RepositoryProviderType.getProviderType(currentId)) != null && (collector = this.getCollector(type)) != null) {
                    this.trackedProjects.put(project, collector);
                    this.projectTracked(project);
                    return true;
                }
            }
            catch (CoreException e) {
                TeamPlugin.log(e);
            }
        }
        return false;
    }

    private IChangeGroupingRequestor getCollector(RepositoryProviderType type) {
        if (type instanceof IAdaptable) {
            Object o;
            RepositoryProviderType adaptable = type;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.team.core.mapping.IChangeGroupingRequestor");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((o = adaptable.getAdapter(clazz)) instanceof IChangeGroupingRequestor) {
                return (IChangeGroupingRequestor)o;
            }
        }
        return null;
    }

    protected void projectTracked(IProject project) {
        this.handleProjectChange(project);
    }

    protected void ensureGrouped(IProject project, String name, IFile[] files) throws CoreException {
        IChangeGroupingRequestor collector = this.getCollector(project);
        if (collector != null) {
            collector.ensureChangesGrouped(project, files, name);
        }
    }

    private IChangeGroupingRequestor getCollector(IProject project) {
        return (IChangeGroupingRequestor)this.trackedProjects.get(project);
    }

    protected boolean isModified(IFile file) throws CoreException {
        IChangeGroupingRequestor collector = this.getCollector(file.getProject());
        if (collector != null) {
            return collector.isModified(file);
        }
        return false;
    }

    private class ChangeListener
    implements IResourceChangeListener,
    IRepositoryProviderListener {
        private ChangeListener() {
        }

        public void resourceChanged(IResourceChangeEvent event) {
            if (ChangeTracker.this.disposed) {
                return;
            }
            IResourceDelta delta = event.getDelta();
            IResourceDelta[] projectDeltas = delta.getAffectedChildren(7);
            int i = 0;
            while (i < projectDeltas.length) {
                IResourceDelta projectDelta = projectDeltas[i];
                IResource resource = projectDelta.getResource();
                if (resource.getType() == 4) {
                    IProject project = (IProject)resource;
                    if (ChangeTracker.this.isProjectOfInterest(project)) {
                        if (ChangeTracker.this.isProjectTracked(project)) {
                            IResource[] resources = ChangeTracker.this.getProjectChanges(project, projectDelta);
                            if (resources.length > 0) {
                                ChangeTracker.this.handleChanges(project, resources);
                            }
                        } else {
                            ChangeTracker.this.trackProject(project);
                        }
                    } else {
                        ChangeTracker.this.stopTrackingProject(project);
                    }
                }
                ++i;
            }
        }

        public void providerMapped(RepositoryProvider provider) {
            if (ChangeTracker.this.disposed) {
                return;
            }
            if (ChangeTracker.this.isProjectOfInterest(provider.getProject())) {
                ChangeTracker.this.trackProject(provider.getProject());
            }
        }

        public void providerUnmapped(IProject project) {
            if (ChangeTracker.this.disposed) {
                return;
            }
            ChangeTracker.this.stopTrackingProject(project);
        }
    }
}

