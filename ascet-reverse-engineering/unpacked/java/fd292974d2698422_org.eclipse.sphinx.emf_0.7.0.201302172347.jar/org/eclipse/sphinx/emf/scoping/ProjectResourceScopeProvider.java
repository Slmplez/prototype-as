/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.sphinx.platform.resources.DefaultResourceChangeHandler
 *  org.eclipse.sphinx.platform.resources.IResourceChangeHandler
 *  org.eclipse.sphinx.platform.resources.ResourceDeltaVisitor
 *  org.eclipse.sphinx.platform.resources.syncing.IResourceSynchronizerDelegate
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.scoping;

import java.util.Collection;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.model.ModelDescriptorSynchronizer;
import org.eclipse.sphinx.emf.internal.model.ProjectScopeModelDescriptorSynchronizerDelegate;
import org.eclipse.sphinx.emf.scoping.AbstractResourceScopeProvider;
import org.eclipse.sphinx.emf.scoping.ProjectResourceScope;
import org.eclipse.sphinx.platform.resources.DefaultResourceChangeHandler;
import org.eclipse.sphinx.platform.resources.IResourceChangeHandler;
import org.eclipse.sphinx.platform.resources.ResourceDeltaVisitor;
import org.eclipse.sphinx.platform.resources.syncing.IResourceSynchronizerDelegate;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

public class ProjectResourceScopeProvider
extends AbstractResourceScopeProvider {
    protected ReferencedProjectsCache referencedProjectsCache = new ReferencedProjectsCache();

    public ProjectResourceScopeProvider() {
        ModelDescriptorSynchronizer.INSTANCE.addDelegate((IResourceSynchronizerDelegate)new ProjectScopeModelDescriptorSynchronizerDelegate());
    }

    protected ProjectResourceScope createScope(IResource resource) {
        ProjectResourceScope scope = new ProjectResourceScope(resource);
        this.configureScope(scope);
        return scope;
    }

    protected void configureScope(ProjectResourceScope scope) {
        scope.setReferencedProjectsProvider(this.referencedProjectsCache);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static interface IReferencedProjectsProvider {
        public Collection<IProject> get(IProject var1);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class ReferencedProjectsCache
    implements IReferencedProjectsProvider {
        IReferencedProjectsProvider provider = new ReferencedProjectsProvider();
        Map<IProject, Collection<IProject>> cache = new WeakHashMap<IProject, Collection<IProject>>();

        ReferencedProjectsCache() {
            ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)new InvalidationListener());
        }

        @Override
        public synchronized Collection<IProject> get(IProject p) {
            Collection<IProject> referencedProjects = this.cache.get(p);
            if (referencedProjects == null) {
                referencedProjects = this.provider.get(p);
                this.cache.put(p, referencedProjects);
            }
            return referencedProjects;
        }

        synchronized void invalidate() {
            this.cache.clear();
        }

        class InvalidationListener
        implements IResourceChangeListener {
            InvalidationListener() {
            }

            public void resourceChanged(IResourceChangeEvent event) {
                try {
                    IResourceDelta delta = event.getDelta();
                    if (delta != null) {
                        ResourceDeltaVisitor visitor = new ResourceDeltaVisitor(event.getType(), (IResourceChangeHandler)new DefaultResourceChangeHandler(){

                            public void handleProjectCreated(int eventType, IProject project) {
                                ReferencedProjectsCache.this.invalidate();
                            }

                            public void handleProjectOpened(int eventType, IProject project) {
                                ReferencedProjectsCache.this.invalidate();
                            }

                            public void handleProjectRenamed(int eventType, IProject oldProject, IProject newProject) {
                                ReferencedProjectsCache.this.invalidate();
                            }

                            public void handleProjectDescriptionChanged(int eventType, IProject project) {
                                ReferencedProjectsCache.this.invalidate();
                            }

                            public void handleProjectClosed(int eventType, IProject project) {
                                ReferencedProjectsCache.this.invalidate();
                            }

                            public void handleProjectRemoved(int eventType, IProject project) {
                                ReferencedProjectsCache.this.invalidate();
                            }
                        });
                        delta.accept((IResourceDeltaVisitor)visitor);
                    }
                }
                catch (CoreException ex) {
                    PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)((Object)ex));
                }
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class ReferencedProjectsProvider
    implements IReferencedProjectsProvider {
        ReferencedProjectsProvider() {
        }

        @Override
        public Collection<IProject> get(IProject p) {
            return ExtendedPlatform.getAllReferencedProjects((IProject)p);
        }
    }
}

