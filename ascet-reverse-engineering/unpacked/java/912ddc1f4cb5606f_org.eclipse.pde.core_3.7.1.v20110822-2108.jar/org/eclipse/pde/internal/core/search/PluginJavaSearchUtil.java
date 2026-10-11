/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragment
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.core.search.IJavaSearchScope
 *  org.eclipse.jdt.core.search.SearchEngine
 */
package org.eclipse.pde.internal.core.search;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.PDEManager;

public class PluginJavaSearchUtil {
    public static IPluginModelBase[] getPluginImports(IPluginImport dep) {
        return PluginJavaSearchUtil.getPluginImports(dep.getId());
    }

    public static IPluginModelBase[] getPluginImports(String pluginImportID) {
        HashSet set = new HashSet();
        PluginJavaSearchUtil.collectAllPrerequisites(PluginRegistry.findModel(pluginImportID), set);
        return set.toArray(new IPluginModelBase[set.size()]);
    }

    public static void collectAllPrerequisites(IPluginModelBase model, HashSet set) {
        if (model == null || !set.add(model)) {
            return;
        }
        IPluginImport[] imports = model.getPluginBase().getImports();
        int i = 0;
        while (i < imports.length) {
            IPluginModelBase child;
            if (imports[i].isReexported() && (child = PluginRegistry.findModel(imports[i].getId())) != null) {
                PluginJavaSearchUtil.collectAllPrerequisites(child, set);
            }
            ++i;
        }
    }

    public static IPackageFragment[] collectPackageFragments(IPluginModelBase[] models, IJavaProject parentProject, boolean filterEmptyPackages) throws JavaModelException {
        ArrayList result = new ArrayList();
        IPackageFragmentRoot[] roots = parentProject.getAllPackageFragmentRoots();
        int i = 0;
        while (i < models.length) {
            int j;
            IPluginModelBase model = models[i];
            IResource resource = model.getUnderlyingResource();
            if (resource == null) {
                ArrayList libraryPaths = new ArrayList();
                PluginJavaSearchUtil.addLibraryPaths(model, libraryPaths);
                j = 0;
                while (j < roots.length) {
                    if (libraryPaths.contains(roots[j].getPath())) {
                        PluginJavaSearchUtil.extractPackageFragments(roots[j], result, filterEmptyPackages);
                    }
                    ++j;
                }
            } else {
                IProject project = resource.getProject();
                j = 0;
                while (j < roots.length) {
                    IJavaProject jProject = (IJavaProject)roots[j].getParent();
                    if (jProject.getProject().equals((Object)project)) {
                        PluginJavaSearchUtil.extractPackageFragments(roots[j], result, filterEmptyPackages);
                    }
                    ++j;
                }
            }
            ++i;
        }
        return result.toArray(new IPackageFragment[result.size()]);
    }

    private static void extractPackageFragments(IPackageFragmentRoot root, ArrayList result, boolean filterEmpty) {
        try {
            IJavaElement[] children = root.getChildren();
            int i = 0;
            while (i < children.length) {
                IPackageFragment fragment = (IPackageFragment)children[i];
                if (!filterEmpty || fragment.hasChildren()) {
                    result.add(fragment);
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
    }

    private static void addLibraryPaths(IPluginModelBase model, ArrayList libraryPaths) {
        File file;
        IPluginBase plugin = model.getPluginBase();
        IFragmentModel[] fragments = new IFragmentModel[]{};
        if (plugin instanceof IPlugin) {
            fragments = PDEManager.findFragmentsFor(model);
        }
        if ((file = new File(model.getInstallLocation())).isFile()) {
            libraryPaths.add(new Path(file.getAbsolutePath()));
        } else {
            IPluginLibrary[] libraries = plugin.getLibraries();
            int i = 0;
            while (i < libraries.length) {
                String libraryName = ClasspathUtilCore.expandLibraryName(libraries[i].getName());
                String path = String.valueOf(plugin.getModel().getInstallLocation()) + '/' + libraryName;
                if (new File(path).exists()) {
                    libraryPaths.add(new Path(path));
                } else {
                    PluginJavaSearchUtil.findLibraryInFragments(fragments, libraryName, libraryPaths);
                }
                ++i;
            }
        }
        if (ClasspathUtilCore.hasExtensibleAPI(model)) {
            int i = 0;
            while (i < fragments.length) {
                PluginJavaSearchUtil.addLibraryPaths(fragments[i], libraryPaths);
                ++i;
            }
        }
    }

    private static void findLibraryInFragments(IFragmentModel[] fragments, String libraryName, ArrayList libraryPaths) {
        int i = 0;
        while (i < fragments.length) {
            String path = String.valueOf(fragments[i].getInstallLocation()) + '/' + libraryName;
            if (new File(path).exists()) {
                libraryPaths.add(new Path(path));
                break;
            }
            ++i;
        }
    }

    public static IJavaSearchScope createSeachScope(IJavaProject jProject) throws JavaModelException {
        IPackageFragmentRoot[] roots = jProject.getPackageFragmentRoots();
        ArrayList<IPackageFragmentRoot> filteredRoots = new ArrayList<IPackageFragmentRoot>();
        int i = 0;
        while (i < roots.length) {
            if (roots[i].getResource() != null && roots[i].getResource().getProject().equals((Object)jProject.getProject())) {
                filteredRoots.add(roots[i]);
            }
            ++i;
        }
        return SearchEngine.createJavaSearchScope((IJavaElement[])filteredRoots.toArray(new IJavaElement[filteredRoots.size()]));
    }
}

