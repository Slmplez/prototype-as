/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragment
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.IType
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.core.search.IJavaSearchScope
 *  org.eclipse.jdt.core.search.SearchEngine
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.service.resolver.StateHelper
 */
package org.eclipse.pde.internal.core.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.ListIterator;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEPreferencesManager;

public class PDEJavaHelper {
    public static boolean isDiscouraged(String fullyQualifiedName, IJavaProject project, BundleDescription desc) {
        int dot;
        try {
            HashMap map;
            IType type = project.findType(fullyQualifiedName.replace('$', '.'));
            if (type != null && type.exists() && (map = PDEJavaHelper.getPackageFragmentsHash(project, Collections.EMPTY_LIST, false)).containsValue(type.getPackageFragment())) {
                return false;
            }
        }
        catch (JavaModelException javaModelException) {}
        fullyQualifiedName = (dot = fullyQualifiedName.lastIndexOf(46)) != -1 ? fullyQualifiedName.substring(0, dot) : ".";
        State state = desc.getContainingState();
        StateHelper helper = state.getStateHelper();
        ExportPackageDescription[] exports = helper.getVisiblePackages(desc);
        int i = 0;
        while (i < exports.length) {
            BundleDescription exporter = exports[i].getExporter();
            if (exporter != null && fullyQualifiedName.equals(exports[i].getName()) && helper.getAccessCode(desc, exports[i]) == 2) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static boolean isOnClasspath(String fullyQualifiedName, IJavaProject project) {
        if (fullyQualifiedName.indexOf(36) != -1) {
            fullyQualifiedName = fullyQualifiedName.replace('$', '.');
        }
        try {
            IType type = project.findType(fullyQualifiedName);
            return type != null && type.exists();
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
    }

    public static IJavaSearchScope getSearchScope(IJavaProject project) {
        return SearchEngine.createJavaSearchScope((IJavaElement[])PDEJavaHelper.getNonJRERoots(project));
    }

    public static IJavaSearchScope getSearchScope(IProject project) {
        return PDEJavaHelper.getSearchScope(JavaCore.create((IProject)project));
    }

    public static IPackageFragmentRoot[] getNonJRERoots(IJavaProject project) {
        ArrayList<IPackageFragmentRoot> result = new ArrayList<IPackageFragmentRoot>();
        try {
            IPackageFragmentRoot[] roots = project.getAllPackageFragmentRoots();
            int i = 0;
            while (i < roots.length) {
                if (!PDEJavaHelper.isJRELibrary(roots[i])) {
                    result.add(roots[i]);
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        return result.toArray(new IPackageFragmentRoot[result.size()]);
    }

    public static boolean isJRELibrary(IPackageFragmentRoot root) {
        try {
            IPath path = root.getRawClasspathEntry().getPath();
            if (path.equals((Object)new Path(JavaRuntime.JRE_CONTAINER)) || path.equals((Object)new Path("JRE_LIB"))) {
                return true;
            }
        }
        catch (JavaModelException javaModelException) {}
        return false;
    }

    public static IPackageFragment getPackageFragment(String packageName, String pluginID, IProject project) {
        if (project == null) {
            return PDEJavaHelper.getExternalPackageFragment(packageName, pluginID);
        }
        IJavaProject jp = JavaCore.create((IProject)project);
        if (jp != null) {
            try {
                IPackageFragmentRoot[] roots = jp.getAllPackageFragmentRoots();
                int i = 0;
                while (i < roots.length) {
                    IPackageFragment frag = roots[i].getPackageFragment(packageName);
                    if (frag.exists()) {
                        return frag;
                    }
                    ++i;
                }
            }
            catch (JavaModelException javaModelException) {}
        }
        return null;
    }

    private static IPackageFragment getExternalPackageFragment(String packageName, String pluginID) {
        IModel base;
        block19: {
            IPluginModelBase plugin;
            block18: {
                if (pluginID == null) {
                    return null;
                }
                base = null;
                plugin = PluginRegistry.findModel(pluginID);
                if (plugin != null) break block18;
                return null;
            }
            ImportPackageSpecification[] packages = plugin.getBundleDescription().getImportPackages();
            int i = 0;
            while (i < packages.length) {
                if (packages[i].getName().equals(packageName)) {
                    ExportPackageDescription desc = (ExportPackageDescription)packages[i].getSupplier();
                    if (desc == null) break;
                    base = PluginRegistry.findModel(desc.getExporter().getSymbolicName());
                    break;
                }
                ++i;
            }
            if (base != null) break block19;
            return null;
        }
        try {
            IProject proj;
            IJavaProject jp;
            IResource res = base.getUnderlyingResource();
            if (res != null && (jp = JavaCore.create((IProject)res.getProject())) != null) {
                try {
                    IPackageFragmentRoot[] roots = jp.getAllPackageFragmentRoots();
                    int i = 0;
                    while (i < roots.length) {
                        IPackageFragment frag = roots[i].getPackageFragment(packageName);
                        if (frag.exists()) {
                            return frag;
                        }
                        ++i;
                    }
                }
                catch (JavaModelException javaModelException) {}
            }
            if ((proj = PDECore.getWorkspace().getRoot().getProject("External Plug-in Libraries")) == null) {
                return PDEJavaHelper.searchWorkspaceForPackage(packageName, (IPluginModelBase)base);
            }
            IJavaProject jp2 = JavaCore.create((IProject)proj);
            Path path = new Path(base.getInstallLocation());
            if (!path.toFile().isDirectory()) {
                IPackageFragment frag;
                IPackageFragmentRoot root = jp2.findPackageFragmentRoot((IPath)path);
                if (root != null && (frag = root.getPackageFragment(packageName)).exists()) {
                    return frag;
                }
            } else {
                IPluginLibrary[] libs = base.getPluginBase().getLibraries();
                int i = 0;
                while (i < libs.length) {
                    IPackageFragment frag;
                    String libName;
                    IPackageFragmentRoot root;
                    if (!"resource".equals(libs[i].getType()) && (root = jp2.findPackageFragmentRoot(path.append(libName = ClasspathUtilCore.expandLibraryName(libs[i].getName())))) != null && (frag = root.getPackageFragment(packageName)).exists()) {
                        return frag;
                    }
                    ++i;
                }
            }
        }
        catch (JavaModelException javaModelException) {}
        return PDEJavaHelper.searchWorkspaceForPackage(packageName, base);
    }

    private static IPackageFragment searchWorkspaceForPackage(String packageName, IPluginModelBase base) {
        IPluginLibrary[] libs = base.getPluginBase().getLibraries();
        ArrayList<Object> libPaths = new ArrayList<Object>();
        Path path = new Path(base.getInstallLocation());
        if (libs.length == 0) {
            libPaths.add(path);
        }
        int i = 0;
        while (i < libs.length) {
            if (!"resource".equals(libs[i].getType())) {
                String libName = ClasspathUtilCore.expandLibraryName(libs[i].getName());
                libPaths.add(path.append(libName));
            }
            ++i;
        }
        IProject[] projects = PDECore.getWorkspace().getRoot().getProjects();
        int i2 = 0;
        while (i2 < projects.length) {
            try {
                if (projects[i2].hasNature("org.eclipse.jdt.core.javanature") && projects[i2].isOpen()) {
                    IJavaProject jp = JavaCore.create((IProject)projects[i2]);
                    ListIterator li = libPaths.listIterator();
                    while (li.hasNext()) {
                        IPackageFragment frag;
                        IPackageFragmentRoot root = jp.findPackageFragmentRoot((IPath)li.next());
                        if (root == null || !(frag = root.getPackageFragment(packageName)).exists()) continue;
                        return frag;
                    }
                }
            }
            catch (CoreException coreException) {}
            ++i2;
        }
        return null;
    }

    public static IPackageFragment[] getPackageFragments(IJavaProject jProject, Collection existingPackages, boolean allowJava) {
        HashMap map = PDEJavaHelper.getPackageFragmentsHash(jProject, existingPackages, allowJava);
        return map.values().toArray(new IPackageFragment[map.size()]);
    }

    public static HashMap getPackageFragmentsHash(IJavaProject jProject, Collection existingPackages, boolean allowJava) {
        HashMap<String, IPackageFragment> map = new HashMap<String, IPackageFragment>();
        try {
            IPackageFragmentRoot[] roots = PDEJavaHelper.getRoots(jProject);
            int i = 0;
            while (i < roots.length) {
                IJavaElement[] children = roots[i].getChildren();
                int j = 0;
                while (j < children.length) {
                    IPackageFragment fragment = (IPackageFragment)children[j];
                    String name = fragment.getElementName();
                    if (name.length() == 0) {
                        name = ".";
                    }
                    if (!(!fragment.hasChildren() && fragment.getNonJavaResources().length <= 0 || existingPackages.contains(name) || name.equals("java") && name.startsWith("java.") && !allowJava)) {
                        map.put(fragment.getElementName(), fragment);
                    }
                    ++j;
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        return map;
    }

    private static IPackageFragmentRoot[] getRoots(IJavaProject jProject) {
        ArrayList<IPackageFragmentRoot> result = new ArrayList<IPackageFragmentRoot>();
        try {
            IPackageFragmentRoot[] roots = jProject.getPackageFragmentRoots();
            int i = 0;
            while (i < roots.length) {
                if (roots[i].getKind() == 1 || jProject.getProject().equals((Object)roots[i].getCorrespondingResource()) || roots[i].isArchive() && !roots[i].isExternal()) {
                    result.add(roots[i]);
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        return result.toArray(new IPackageFragmentRoot[result.size()]);
    }

    public static String getJavaSourceLevel(IProject project) {
        return PDEJavaHelper.getJavaLevel(project, "org.eclipse.jdt.core.compiler.source");
    }

    public static String getJavaComplianceLevel(IProject project) {
        return PDEJavaHelper.getJavaLevel(project, "org.eclipse.jdt.core.compiler.compliance");
    }

    public static String getJavaLevel(IProject project, String optionName) {
        IJavaProject javaProject = JavaCore.create((IProject)project);
        String value = null;
        if (javaProject != null && javaProject.exists() && (value = javaProject.getOption(optionName, true)) != null) {
            return value;
        }
        value = new PDEPreferencesManager("org.eclipse.jdt.core").getString(optionName);
        if (value != null) {
            return value;
        }
        value = JavaCore.getOption((String)optionName);
        if (value != null) {
            return value;
        }
        return "1.3";
    }
}

