/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.util.ArrayList;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEManager;
import org.eclipse.pde.internal.core.SourceLocationManager;
import org.eclipse.pde.internal.core.TargetWeaver;
import org.eclipse.pde.internal.core.bundle.BundleFragment;
import org.eclipse.pde.internal.core.bundle.BundlePlugin;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.plugin.Fragment;
import org.eclipse.pde.internal.core.plugin.Plugin;
import org.eclipse.pde.internal.core.plugin.PluginBase;

public class ClasspathUtilCore {
    public static void addLibraries(IPluginModelBase model, ArrayList result) {
        if (new File(model.getInstallLocation()).isFile()) {
            ClasspathUtilCore.addJARdPlugin(model, result);
        } else {
            IPluginLibrary[] libraries = model.getPluginBase().getLibraries();
            int i = 0;
            while (i < libraries.length) {
                IClasspathEntry entry;
                if (!"resource".equals(libraries[i].getType()) && (entry = ClasspathUtilCore.createLibraryEntry(libraries[i])) != null && !result.contains(entry)) {
                    result.add(entry);
                }
                ++i;
            }
        }
    }

    private static void addJARdPlugin(IPluginModelBase model, ArrayList result) {
        IClasspathEntry entry;
        IPath sourcePath = ClasspathUtilCore.getSourceAnnotation(model, ".");
        if (sourcePath == null) {
            sourcePath = new Path(model.getInstallLocation());
        }
        if ((entry = JavaCore.newLibraryEntry((IPath)new Path(model.getInstallLocation()), (IPath)sourcePath, null, (boolean)false)) != null && !result.contains(entry)) {
            result.add(entry);
        }
    }

    protected static IClasspathEntry createLibraryEntry(IPluginLibrary library) {
        String name = library.getName();
        String expandedName = ClasspathUtilCore.expandLibraryName(name);
        IPluginModelBase model = library.getPluginModel();
        IPath path = ClasspathUtilCore.getPath(model, expandedName);
        if (path == null) {
            if (model.isFragmentModel() || !ClasspathUtilCore.containsVariables(name)) {
                return null;
            }
            model = ClasspathUtilCore.resolveLibraryInFragments(library, expandedName);
            if (model == null) {
                return null;
            }
            path = ClasspathUtilCore.getPath(model, expandedName);
        }
        return JavaCore.newLibraryEntry((IPath)path, (IPath)ClasspathUtilCore.getSourceAnnotation(model, expandedName), null, (boolean)false);
    }

    public static boolean hasExtensibleAPI(IPluginModelBase model) {
        IPluginBase pluginBase = model.getPluginBase();
        if (pluginBase instanceof IPlugin) {
            return ClasspathUtilCore.hasExtensibleAPI((IPlugin)pluginBase);
        }
        return false;
    }

    public static boolean isPatchFragment(BundleDescription desc) {
        IPluginModelBase model = PluginRegistry.findModel(desc);
        return model instanceof IFragmentModel ? ClasspathUtilCore.isPatchFragment(((IFragmentModel)model).getFragment()) : false;
    }

    public static boolean isPatchFragment(IPluginModelBase model) {
        IPluginBase pluginBase = model.getPluginBase();
        if (pluginBase instanceof IFragment) {
            return ClasspathUtilCore.isPatchFragment((IFragment)pluginBase);
        }
        return false;
    }

    private static boolean hasExtensibleAPI(IPlugin plugin) {
        if (plugin instanceof Plugin) {
            return ((Plugin)plugin).hasExtensibleAPI();
        }
        if (plugin instanceof BundlePlugin) {
            return ((BundlePlugin)plugin).hasExtensibleAPI();
        }
        return false;
    }

    private static boolean isPatchFragment(IFragment fragment) {
        if (fragment instanceof Fragment) {
            return ((Fragment)fragment).isPatch();
        }
        if (fragment instanceof BundleFragment) {
            return ((BundleFragment)fragment).isPatch();
        }
        return false;
    }

    public static boolean hasBundleStructure(IPluginModelBase model) {
        if (model.getUnderlyingResource() != null) {
            return model instanceof IBundlePluginModelBase;
        }
        IPluginBase plugin = model.getPluginBase();
        if (plugin instanceof PluginBase) {
            return ((PluginBase)plugin).hasBundleStructure();
        }
        return false;
    }

    public static boolean containsVariables(String name) {
        return name.indexOf("$os$") != -1 || name.indexOf("$ws$") != -1 || name.indexOf("$nl$") != -1 || name.indexOf("$arch$") != -1;
    }

    public static String expandLibraryName(String source) {
        if (source == null || source.length() == 0) {
            return "";
        }
        if (source.indexOf("$ws$") != -1) {
            source = source.replaceAll("\\$ws\\$", "ws/" + TargetPlatform.getWS());
        }
        if (source.indexOf("$os$") != -1) {
            source = source.replaceAll("\\$os\\$", "os/" + TargetPlatform.getOS());
        }
        if (source.indexOf("$nl$") != -1) {
            source = source.replaceAll("\\$nl\\$", "nl/" + TargetPlatform.getNL());
        }
        if (source.indexOf("$arch$") != -1) {
            source = source.replaceAll("\\$arch\\$", "arch/" + TargetPlatform.getOSArch());
        }
        return source;
    }

    public static IPath getSourceAnnotation(IPluginModelBase model, String libraryName) {
        String newlibraryName = TargetWeaver.getWeavedSourceLibraryName(model, libraryName);
        String zipName = ClasspathUtilCore.getSourceZipName(newlibraryName);
        IPath path = ClasspathUtilCore.getPath(model, zipName);
        if (path == null) {
            SourceLocationManager manager = PDECore.getDefault().getSourceLocationManager();
            path = manager.findSourcePath(model.getPluginBase(), (IPath)new Path(zipName));
        }
        return path;
    }

    public static String getSourceZipName(String libraryName) {
        int dot = libraryName.lastIndexOf(46);
        return dot != -1 ? String.valueOf(libraryName.substring(0, dot)) + "src.zip" : libraryName;
    }

    private static IPluginModelBase resolveLibraryInFragments(IPluginLibrary library, String libraryName) {
        IFragmentModel[] fragments = PDEManager.findFragmentsFor(library.getPluginModel());
        int i = 0;
        while (i < fragments.length) {
            IPath path = ClasspathUtilCore.getPath(fragments[i], libraryName);
            if (path != null) {
                return fragments[i];
            }
            ++i;
        }
        return null;
    }

    public static IPath getPath(IPluginModelBase model, String libraryName) {
        IResource resource = model.getUnderlyingResource();
        if (resource != null) {
            IResource jarFile = resource.getProject().findMember(libraryName);
            if (jarFile != null) {
                return jarFile.getFullPath();
            }
        } else {
            File file = new File(model.getInstallLocation(), libraryName);
            if (file.exists()) {
                return new Path(file.getAbsolutePath());
            }
            file = new File(libraryName);
            if (file.exists() && file.isAbsolute()) {
                return new Path(libraryName);
            }
        }
        return null;
    }

    public static IBuild getBuild(IPluginModelBase model) throws CoreException {
        IBuildModel buildModel = PluginRegistry.createBuildModel(model);
        return buildModel != null ? buildModel.getBuild() : null;
    }

    public static String getFilename(IPluginModelBase model) {
        return new Path(model.getInstallLocation()).lastSegment();
    }
}

