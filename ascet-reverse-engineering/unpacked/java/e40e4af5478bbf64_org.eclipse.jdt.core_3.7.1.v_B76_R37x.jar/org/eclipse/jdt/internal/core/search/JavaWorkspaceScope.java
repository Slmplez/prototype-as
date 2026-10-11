/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.search;

import java.util.HashMap;
import java.util.HashSet;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.search.AbstractJavaSearchScope;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaWorkspaceScope
extends AbstractJavaSearchScope {
    private IPath[] enclosingPaths = null;
    static /* synthetic */ Class class$0;

    public boolean encloses(IJavaElement element) {
        return true;
    }

    public boolean encloses(String resourcePathString) {
        return true;
    }

    public IPath[] enclosingProjectsAndJars() {
        IPath[] iPathArray;
        block10: {
            IPath[] result = this.enclosingPaths;
            if (result != null) {
                return result;
            }
            long start = BasicSearchEngine.VERBOSE ? System.currentTimeMillis() : -1L;
            try {
                IJavaProject[] projects = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects();
                HashSet<IPath> paths = new HashSet<IPath>(projects.length * 2);
                int i = 0;
                int length = projects.length;
                while (i < length) {
                    JavaProject javaProject = (JavaProject)projects[i];
                    IPath projectPath = javaProject.getProject().getFullPath();
                    paths.add(projectPath);
                    IClasspathEntry[] entries = javaProject.getResolvedClasspath();
                    int j = 0;
                    int eLength = entries.length;
                    while (j < eLength) {
                        IClasspathEntry entry = entries[j];
                        if (entry.getEntryKind() == 1) {
                            IPath path = entry.getPath();
                            Object target = JavaModel.getTarget(path, false);
                            if (target instanceof IFolder) {
                                path = ((IFolder)target).getFullPath();
                            }
                            paths.add(entry.getPath());
                        }
                        ++j;
                    }
                    ++i;
                }
                result = new IPath[paths.size()];
                paths.toArray(result);
                this.enclosingPaths = result;
                iPathArray = result;
                if (!BasicSearchEngine.VERBOSE) break block10;
            }
            catch (JavaModelException e) {
                IPath[] iPathArray2;
                block11: {
                    try {
                        Util.log((Throwable)((Object)e), "Exception while computing workspace scope's enclosing projects and jars");
                        iPathArray2 = new IPath[]{};
                        if (!BasicSearchEngine.VERBOSE) break block11;
                    }
                    catch (Throwable throwable) {
                        if (BasicSearchEngine.VERBOSE) {
                            long time = System.currentTimeMillis() - start;
                            int length = result == null ? 0 : result.length;
                            Util.verbose("JavaWorkspaceScope.enclosingProjectsAndJars: " + length + " paths computed in " + time + "ms.");
                        }
                        throw throwable;
                    }
                    long time = System.currentTimeMillis() - start;
                    int length = result == null ? 0 : result.length;
                    Util.verbose("JavaWorkspaceScope.enclosingProjectsAndJars: " + length + " paths computed in " + time + "ms.");
                }
                return iPathArray2;
            }
            long time = System.currentTimeMillis() - start;
            int length = result == null ? 0 : result.length;
            Util.verbose("JavaWorkspaceScope.enclosingProjectsAndJars: " + length + " paths computed in " + time + "ms.");
        }
        return iPathArray;
    }

    public boolean equals(Object o) {
        return o == this;
    }

    public AccessRuleSet getAccessRuleSet(String relativePath, String containerPath) {
        return null;
    }

    public int hashCode() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.internal.core.search.JavaWorkspaceScope");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz.hashCode();
    }

    public IPackageFragmentRoot packageFragmentRoot(String resourcePathString, int jarSeparatorIndex, String jarPath) {
        HashMap rootInfos = JavaModelManager.getDeltaState().roots;
        DeltaProcessor.RootInfo rootInfo = null;
        if (jarPath != null) {
            Path path = new Path(jarPath);
            rootInfo = (DeltaProcessor.RootInfo)rootInfos.get(path);
        } else {
            Path path = new Path(resourcePathString);
            if (ExternalFoldersManager.isInternalPathForExternalFolder((IPath)path)) {
                IResource resource = JavaModel.getWorkspaceTarget(path.uptoSegment(2));
                if (resource != null) {
                    rootInfo = (DeltaProcessor.RootInfo)rootInfos.get(resource.getLocation());
                }
            } else {
                rootInfo = (DeltaProcessor.RootInfo)rootInfos.get(path);
                while (rootInfo == null && path.segmentCount() > 0) {
                    path = path.removeLastSegments(1);
                    rootInfo = (DeltaProcessor.RootInfo)rootInfos.get(path);
                }
            }
        }
        if (rootInfo == null) {
            return null;
        }
        return rootInfo.getPackageFragmentRoot(null);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void processDelta(IJavaElementDelta delta, int eventType) {
        if (this.enclosingPaths == null) {
            return;
        }
        IJavaElement element = delta.getElement();
        block0 : switch (element.getElementType()) {
            case 1: {
                IJavaElementDelta[] children = delta.getAffectedChildren();
                int i = 0;
                int length = children.length;
                while (i < length) {
                    IJavaElementDelta child = children[i];
                    this.processDelta(child, eventType);
                    ++i;
                }
                return;
            }
            case 2: {
                int kind = delta.getKind();
                switch (kind) {
                    case 1: 
                    case 2: {
                        this.enclosingPaths = null;
                        return;
                    }
                    case 4: {
                        int flags = delta.getFlags();
                        if ((flags & 0x400) != 0 || (flags & 0x200) != 0) {
                            this.enclosingPaths = null;
                            return;
                        }
                        IJavaElementDelta[] children = delta.getAffectedChildren();
                        int i = 0;
                        int length = children.length;
                        while (i < length) {
                            IJavaElementDelta child = children[i];
                            this.processDelta(child, eventType);
                            ++i;
                        }
                        return;
                    }
                }
                return;
            }
            case 3: {
                int kind = delta.getKind();
                switch (kind) {
                    case 1: 
                    case 2: {
                        this.enclosingPaths = null;
                        break block0;
                    }
                    case 4: {
                        int flags = delta.getFlags();
                        if ((flags & 0x40) <= 0 && (flags & 0x80) <= 0) return;
                        this.enclosingPaths = null;
                    }
                }
            }
        }
    }

    public String toString() {
        int length;
        StringBuffer result = new StringBuffer("JavaWorkspaceScope on ");
        IPath[] paths = this.enclosingProjectsAndJars();
        int n = length = paths == null ? 0 : paths.length;
        if (length == 0) {
            result.append("[empty scope]");
        } else {
            result.append("[");
            int i = 0;
            while (i < length) {
                result.append("\n\t");
                result.append(paths[i]);
                ++i;
            }
            result.append("\n]");
        }
        return result.toString();
    }
}

