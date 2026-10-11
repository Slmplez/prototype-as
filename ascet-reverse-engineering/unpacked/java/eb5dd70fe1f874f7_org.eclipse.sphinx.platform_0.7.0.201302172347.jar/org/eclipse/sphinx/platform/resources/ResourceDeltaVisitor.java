/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.sphinx.platform.resources;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.sphinx.platform.internal.Activator;
import org.eclipse.sphinx.platform.resources.IResourceChangeHandler;
import org.eclipse.sphinx.platform.resources.ResourceDeltaFlagsAnalyzer;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceDeltaVisitor
implements IResourceDeltaVisitor {
    protected int eventType;
    protected Collection<? extends IResourceChangeHandler> resourceChangeHandlers;

    public ResourceDeltaVisitor(int eventType, IResourceChangeHandler resourceChangeHandler) {
        this(eventType, resourceChangeHandler != null ? Collections.singleton(resourceChangeHandler) : Collections.emptySet());
    }

    public ResourceDeltaVisitor(int eventType, Collection<? extends IResourceChangeHandler> resourceChangeHandlers) {
        Assert.isNotNull(resourceChangeHandlers);
        this.eventType = eventType;
        this.resourceChangeHandlers = resourceChangeHandlers;
    }

    /*
     * WARNING - void declaration
     * Enabled aggressive exception aggregation
     */
    public boolean visit(IResourceDelta delta) throws CoreException {
        try {
            IResource resource = delta.getResource();
            ResourceDeltaFlagsAnalyzer flags = new ResourceDeltaFlagsAnalyzer(delta);
            switch (delta.getKind()) {
                case 1: {
                    if (resource instanceof IProject) {
                        IProject project = (IProject)resource;
                        if (flags.OPEN && project.isOpen() && !flags.MOVED_FROM) {
                            for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                try {
                                    iResourceChangeHandler.handleProjectCreated(this.eventType, project);
                                }
                                catch (Exception exception) {
                                    PlatformLogUtil.logAsWarning(Activator.getDefault(), exception);
                                }
                            }
                        }
                    } else if (resource instanceof IFolder) {
                        if (ExtendedPlatform.isPlatformPrivateResource(resource)) {
                            return false;
                        }
                    } else if (resource instanceof IFile) {
                        IFile file = (IFile)resource;
                        if (!flags.MOVED_FROM && !ExtendedPlatform.isPlatformPrivateResource((IResource)file)) {
                            for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                try {
                                    iResourceChangeHandler.handleFileAdded(this.eventType, file);
                                }
                                catch (Exception exception) {
                                    PlatformLogUtil.logAsWarning(Activator.getDefault(), exception);
                                }
                            }
                        }
                    }
                    break;
                }
                case 4: {
                    if (resource instanceof IProject) {
                        IProject project = (IProject)resource;
                        if (flags.OPEN && project.isOpen()) {
                            for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                try {
                                    iResourceChangeHandler.handleProjectOpened(this.eventType, project);
                                }
                                catch (Exception exception) {
                                    PlatformLogUtil.logAsWarning(Activator.getDefault(), exception);
                                }
                            }
                        } else if (flags.DESCRIPTION && project.isOpen()) {
                            void var6_15;
                            IResourceDelta[] iResourceDeltaArray = delta.getAffectedChildren(4);
                            int n = iResourceDeltaArray.length;
                            boolean bl = false;
                            while (var6_15 < n) {
                                IResourceDelta iResourceDelta = iResourceDeltaArray[var6_15];
                                ResourceDeltaFlagsAnalyzer resourceDeltaFlagsAnalyzer = new ResourceDeltaFlagsAnalyzer(iResourceDelta);
                                if (resourceDeltaFlagsAnalyzer.CONTENT && ExtendedPlatform.isProjectDescriptionFile(iResourceDelta.getResource())) {
                                    for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                        try {
                                            iResourceChangeHandler.handleProjectDescriptionChanged(this.eventType, project);
                                        }
                                        catch (Exception ex) {
                                            PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
                                        }
                                    }
                                }
                                ++var6_15;
                            }
                        } else if (flags.ZERO && project.isOpen()) {
                            IFolder iFolder;
                            IResourceDelta iResourceDelta;
                            IResourceDelta[] iResourceDeltaArray = delta.getAffectedChildren(3);
                            if (iResourceDeltaArray.length == 1 && (iResourceDelta = iResourceDeltaArray[0]).getResource() instanceof IFolder && ExtendedPlatform.isProjectPropertiesFolder((IResource)(iFolder = (IFolder)iResourceDelta.getResource()))) {
                                void var10_72;
                                HashSet<String> preferenceFileNames = new HashSet<String>();
                                IResourceDelta[] iResourceDeltaArray2 = iResourceDelta.getAffectedChildren(3);
                                int n = iResourceDeltaArray2.length;
                                boolean bl = false;
                                while (var10_72 < n) {
                                    IResourceDelta iResourceDelta2 = iResourceDeltaArray2[var10_72];
                                    ResourceDeltaFlagsAnalyzer grandChildFlag = new ResourceDeltaFlagsAnalyzer(iResourceDelta2);
                                    if (grandChildFlag.ZERO) {
                                        preferenceFileNames.add(iResourceDelta2.getResource().getName());
                                    }
                                    ++var10_72;
                                }
                                for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                    try {
                                        iResourceChangeHandler.handleProjectSettingsChanged(this.eventType, iFolder.getProject(), preferenceFileNames);
                                    }
                                    catch (Exception ex) {
                                        PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
                                    }
                                }
                            }
                        } else if (flags.OPEN && !project.isOpen()) {
                            for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                try {
                                    iResourceChangeHandler.handleProjectClosed(this.eventType, project);
                                }
                                catch (Exception exception) {
                                    PlatformLogUtil.logAsWarning(Activator.getDefault(), exception);
                                }
                            }
                        }
                    } else if (resource instanceof IFolder) {
                        IFolder folder = (IFolder)resource;
                        if (ExtendedPlatform.isProjectPropertiesFolder((IResource)folder)) {
                            void var7_49;
                            HashSet<String> hashSet = new HashSet<String>();
                            IResourceDelta[] iResourceDeltaArray = delta.getAffectedChildren(7);
                            int preferenceFileNames = iResourceDeltaArray.length;
                            boolean bl = false;
                            while (var7_49 < preferenceFileNames) {
                                IResourceDelta iResourceDelta = iResourceDeltaArray[var7_49];
                                ResourceDeltaFlagsAnalyzer resourceDeltaFlagsAnalyzer = new ResourceDeltaFlagsAnalyzer(iResourceDelta);
                                if (resourceDeltaFlagsAnalyzer.ZERO || resourceDeltaFlagsAnalyzer.CONTENT) {
                                    hashSet.add(iResourceDelta.getResource().getName());
                                }
                                ++var7_49;
                            }
                            for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                try {
                                    iResourceChangeHandler.handleProjectSettingsChanged(this.eventType, folder.getProject(), hashSet);
                                }
                                catch (Exception ex) {
                                    PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
                                }
                            }
                        } else if (ExtendedPlatform.isTeamPrivateResource(resource)) {
                            return false;
                        }
                    } else if (resource instanceof IFile) {
                        IFile file = (IFile)resource;
                        if (flags.CONTENT && !ExtendedPlatform.isPlatformPrivateResource((IResource)file)) {
                            for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                try {
                                    iResourceChangeHandler.handleFileChanged(this.eventType, file);
                                }
                                catch (Exception exception) {
                                    PlatformLogUtil.logAsWarning(Activator.getDefault(), exception);
                                }
                            }
                        }
                    }
                    break;
                }
                case 2: {
                    if (resource instanceof IProject) {
                        IProject project = (IProject)resource;
                        if (!flags.MOVED_TO) {
                            for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                try {
                                    iResourceChangeHandler.handleProjectRemoved(this.eventType, project);
                                }
                                catch (Exception exception) {
                                    PlatformLogUtil.logAsWarning(Activator.getDefault(), exception);
                                }
                            }
                        } else if (flags.MOVED_TO) {
                            String string = delta.getMovedToPath().lastSegment();
                            IProject iProject = ResourcesPlugin.getWorkspace().getRoot().getProject(string);
                            for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                try {
                                    iResourceChangeHandler.handleProjectRenamed(this.eventType, project, iProject);
                                }
                                catch (Exception exception) {
                                    PlatformLogUtil.logAsWarning(Activator.getDefault(), exception);
                                }
                            }
                        }
                    } else if (resource instanceof IFolder && ExtendedPlatform.isPlatformPrivateResource(resource)) {
                        return false;
                    }
                    if (resource instanceof IFile) {
                        IFile file = (IFile)resource;
                        if (!flags.MOVED_TO) {
                            if (!ExtendedPlatform.isPlatformPrivateResource((IResource)file)) {
                                for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                    try {
                                        iResourceChangeHandler.handleFileRemoved(this.eventType, file);
                                    }
                                    catch (Exception exception) {
                                        PlatformLogUtil.logAsWarning(Activator.getDefault(), exception);
                                    }
                                }
                            }
                        } else if (flags.MOVED_TO && !ExtendedPlatform.isPlatformPrivateResource((IResource)file)) {
                            IFile iFile = ResourcesPlugin.getWorkspace().getRoot().getFile(delta.getMovedToPath());
                            for (IResourceChangeHandler iResourceChangeHandler : this.resourceChangeHandlers) {
                                try {
                                    iResourceChangeHandler.handleFileMoved(this.eventType, file, iFile);
                                }
                                catch (Exception ex) {
                                    PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
                                }
                            }
                        }
                    }
                    break;
                }
            }
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
        }
        return true;
    }
}

