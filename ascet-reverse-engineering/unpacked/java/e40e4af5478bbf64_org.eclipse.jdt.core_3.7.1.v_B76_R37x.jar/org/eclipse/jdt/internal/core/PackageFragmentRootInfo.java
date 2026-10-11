/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.NonJavaResource;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.util.Util;

class PackageFragmentRootInfo
extends OpenableElementInfo {
    protected SourceMapper sourceMapper = null;
    protected int rootKind = 1;
    protected Object[] nonJavaResources = null;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    static Object[] computeFolderNonJavaResources(IPackageFragmentRoot root, IContainer folder, char[][] inclusionPatterns, char[][] exclusionPatterns) throws JavaModelException {
        Object[] nonJavaResources = new IResource[5];
        int nonJavaResourcesCounter = 0;
        JavaProject project = (JavaProject)root.getJavaProject();
        try {
            block11: {
                IClasspathEntry[] classpath = project.getResolvedClasspath();
                IResource[] members = folder.members();
                int length = members.length;
                if (length <= 0) break block11;
                String sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
                String complianceLevel = project.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                int i = 0;
                while (i < length) {
                    block12: {
                        IResource member = members[i];
                        switch (member.getType()) {
                            case 1: {
                                String fileName = member.getName();
                                if ((!Util.isValidCompilationUnitName(fileName, sourceLevel, complianceLevel) || Util.isExcluded(member, inclusionPatterns, exclusionPatterns)) && !Util.isValidClassFileName(fileName, sourceLevel, complianceLevel) && !PackageFragmentRootInfo.isClasspathEntry(member.getFullPath(), classpath)) break;
                                break block12;
                            }
                            case 2: {
                                if (Util.isValidFolderNameForPackage(member.getName(), sourceLevel, complianceLevel) && (!Util.isExcluded(member, inclusionPatterns, exclusionPatterns) || PackageFragmentRootInfo.isClasspathEntry(member.getFullPath(), classpath))) break block12;
                            }
                        }
                        if (nonJavaResources.length == nonJavaResourcesCounter) {
                            Object[] objectArray = nonJavaResources;
                            nonJavaResources = new IResource[nonJavaResourcesCounter * 2];
                            System.arraycopy(objectArray, 0, nonJavaResources, 0, nonJavaResourcesCounter);
                        }
                        nonJavaResources[nonJavaResourcesCounter++] = member;
                    }
                    ++i;
                }
            }
            if (!ExternalFoldersManager.isInternalPathForExternalFolder(folder.getFullPath())) {
                if (nonJavaResources.length == nonJavaResourcesCounter) return nonJavaResources;
                Object[] objectArray = nonJavaResources;
                nonJavaResources = new IResource[nonJavaResourcesCounter];
                System.arraycopy(objectArray, 0, nonJavaResources, 0, nonJavaResourcesCounter);
                return nonJavaResources;
            }
            Object[] jarEntryResources = new IJarEntryResource[nonJavaResourcesCounter];
            int i = 0;
            while (true) {
                if (i >= nonJavaResourcesCounter) {
                    return jarEntryResources;
                }
                jarEntryResources[i] = new NonJavaResource(root, (IResource)nonJavaResources[i]);
                ++i;
            }
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    private Object[] computeNonJavaResources(IResource underlyingResource, PackageFragmentRoot handle) {
        Object[] resources = NO_NON_JAVA_RESOURCES;
        try {
            if (underlyingResource.getType() == 2 || underlyingResource.getType() == 4) {
                resources = PackageFragmentRootInfo.computeFolderNonJavaResources(handle, (IContainer)underlyingResource, handle.fullInclusionPatternChars(), handle.fullExclusionPatternChars());
            }
        }
        catch (JavaModelException javaModelException) {}
        return resources;
    }

    synchronized Object[] getNonJavaResources(IJavaProject project, IResource underlyingResource, PackageFragmentRoot handle) {
        Object[] resources = this.nonJavaResources;
        if (resources == null) {
            resources = this.computeNonJavaResources(underlyingResource, handle);
            this.nonJavaResources = resources;
        }
        return resources;
    }

    public int getRootKind() {
        return this.rootKind;
    }

    protected SourceMapper getSourceMapper() {
        return this.sourceMapper;
    }

    private static boolean isClasspathEntry(IPath path, IClasspathEntry[] resolvedClasspath) {
        int i = 0;
        int length = resolvedClasspath.length;
        while (i < length) {
            IClasspathEntry entry = resolvedClasspath[i];
            if (entry.getPath().equals((Object)path)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    void setNonJavaResources(Object[] resources) {
        this.nonJavaResources = resources;
    }

    protected void setRootKind(int newRootKind) {
        this.rootKind = newRootKind;
    }

    protected void setSourceMapper(SourceMapper mapper) {
        this.sourceMapper = mapper;
    }
}

