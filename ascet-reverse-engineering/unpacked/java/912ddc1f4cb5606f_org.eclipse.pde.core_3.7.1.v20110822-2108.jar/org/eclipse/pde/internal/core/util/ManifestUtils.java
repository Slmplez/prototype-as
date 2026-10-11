/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 */
package org.eclipse.pde.internal.core.util;

import java.util.LinkedList;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.project.PDEProject;

public class ManifestUtils {
    private ManifestUtils() {
    }

    public static IPackageFragmentRoot[] findPackageFragmentRoots(IManifestHeader header, IProject project) {
        IJavaProject javaProject = JavaCore.create((IProject)project);
        String[] libs = header == null || header.getValue() == null ? new String[]{"."} : header.getValue().split(",");
        IBuild build = ManifestUtils.getBuild(project);
        if (build == null) {
            try {
                return javaProject.getPackageFragmentRoots();
            }
            catch (JavaModelException javaModelException) {
                return new IPackageFragmentRoot[0];
            }
        }
        LinkedList<IPackageFragmentRoot> pkgFragRoots = new LinkedList<IPackageFragmentRoot>();
        int j = 0;
        while (j < libs.length) {
            String lib = libs[j];
            IPackageFragmentRoot root = null;
            if (!lib.equals(".")) {
                try {
                    root = javaProject.getPackageFragmentRoot((IResource)project.getFile(lib));
                }
                catch (IllegalArgumentException illegalArgumentException) {
                    return new IPackageFragmentRoot[0];
                }
            }
            if (root != null && root.exists()) {
                pkgFragRoots.add(root);
            } else {
                IBuildEntry entry = build.getEntry("source." + lib);
                if (entry != null) {
                    String[] tokens = entry.getTokens();
                    int i = 0;
                    while (i < tokens.length) {
                        IResource resource = project.findMember(tokens[i]);
                        if (resource != null && (root = javaProject.getPackageFragmentRoot(resource)) != null && root.exists()) {
                            pkgFragRoots.add(root);
                        }
                        ++i;
                    }
                }
            }
            ++j;
        }
        return pkgFragRoots.toArray(new IPackageFragmentRoot[pkgFragRoots.size()]);
    }

    public static final IBuild getBuild(IProject project) {
        WorkspaceBuildModel model;
        IFile buildProps = PDEProject.getBuildProperties(project);
        if (buildProps.exists() && (model = new WorkspaceBuildModel(buildProps)) != null) {
            return model.getBuild();
        }
        return null;
    }

    public static boolean isImmediateRoot(IPackageFragmentRoot root) throws JavaModelException {
        int kind = root.getKind();
        return kind == 1 || kind == 2 && !root.isExternal();
    }
}

