/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ProjectScope
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.pde.internal.core.project;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.ICoreConstants;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEManager;
import org.osgi.service.prefs.BackingStoreException;

public class PDEProject {
    public static final String BUNDLE_ROOT_PATH = "BUNDLE_ROOT_PATH";

    public static IContainer getBundleRoot(IProject project) {
        String string;
        ProjectScope scope = new ProjectScope(project);
        IEclipsePreferences node = scope.getNode("org.eclipse.pde.core");
        if (node != null && (string = node.get(BUNDLE_ROOT_PATH, null)) != null) {
            IPath path = Path.fromPortableString((String)string);
            return project.getFolder(path);
        }
        return project;
    }

    public static String[] getLaunchShortcuts(IProject project) {
        String list;
        ProjectScope scope = new ProjectScope(project);
        IEclipsePreferences node = scope.getNode("org.eclipse.pde.core");
        if (node != null && (list = node.get("manifest.launchShortcuts", null)) != null) {
            return list.split(",");
        }
        return null;
    }

    public static String getExportWizard(IProject project) {
        ProjectScope scope = new ProjectScope(project);
        IEclipsePreferences node = scope.getNode("org.eclipse.pde.core");
        if (node != null) {
            return node.get("manifest.exportWizard", null);
        }
        return null;
    }

    public static void setBundleRoot(IProject project, IContainer root) throws CoreException {
        if (root != null && !root.getProject().equals((Object)project)) {
            throw new IllegalArgumentException("root must be contained in the given project");
        }
        ProjectScope scope = new ProjectScope(project);
        IEclipsePreferences node = scope.getNode("org.eclipse.pde.core");
        if (node != null) {
            IPath path = null;
            if (root != null) {
                path = root.getProjectRelativePath();
            }
            if (path != null && path.isEmpty()) {
                path = null;
            }
            String value = null;
            if (path != null) {
                value = path.toPortableString();
            }
            if (value == null) {
                node.remove(BUNDLE_ROOT_PATH);
            } else {
                node.put(BUNDLE_ROOT_PATH, value);
            }
            try {
                node.flush();
                PDECore.getDefault().getModelManager().bundleRootChanged(project);
            }
            catch (BackingStoreException e) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", e.getMessage(), (Throwable)e));
            }
        } else {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", "Failed to retrieve project scope preference settings"));
        }
    }

    public static IFile getManifest(IProject project) {
        return PDEProject.getBundleRelativeFile(project, ICoreConstants.MANIFEST_PATH);
    }

    public static IFile getBuildProperties(IProject project) {
        return PDEProject.getBundleRelativeFile(project, ICoreConstants.BUILD_PROPERTIES_PATH);
    }

    public static IFile getPluginXml(IProject project) {
        return PDEProject.getBundleRelativeFile(project, ICoreConstants.PLUGIN_PATH);
    }

    public static IFile getFragmentXml(IProject project) {
        return PDEProject.getBundleRelativeFile(project, ICoreConstants.FRAGMENT_PATH);
    }

    public static IFile getFeatureXml(IProject project) {
        return PDEProject.getBundleRelativeFile(project, ICoreConstants.FEATURE_PATH);
    }

    public static IFile getOptionsFile(IProject project) {
        return PDEProject.getBundleRelativeFile(project, (IPath)new Path(".options"));
    }

    public static IFolder getOSGiInf(IProject project) {
        return PDEProject.getBundleRelativeFolder(project, ICoreConstants.OSGI_INF_PATH);
    }

    public static IFolder getMetaInf(IProject project) {
        return PDEProject.getBundleRelativeFolder(project, (IPath)new Path("META-INF/"));
    }

    public static IFile getBundleRelativeFile(IProject project, IPath path) {
        return PDEProject.getBundleRoot(project).getFile(path);
    }

    public static IFolder getBundleRelativeFolder(IProject project, IPath path) {
        return PDEProject.getBundleRoot(project).getFolder(path);
    }

    public static IFile getLocalizationFile(IProject project) {
        IPluginModelBase model = PluginRegistry.findModel(project);
        String localization = PDEManager.getBundleLocalization(model);
        return PDEProject.getBundleRelativeFile(project, (IPath)new Path(String.valueOf(localization) + ".properties"));
    }
}

