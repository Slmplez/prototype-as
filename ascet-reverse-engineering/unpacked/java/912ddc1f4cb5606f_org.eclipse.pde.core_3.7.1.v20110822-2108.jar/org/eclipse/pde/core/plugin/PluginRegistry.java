/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.core.plugin;

import java.util.ArrayList;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.util.VersionUtil;
import org.osgi.framework.Version;

public class PluginRegistry {
    public static ModelEntry findEntry(String id) {
        return PDECore.getDefault().getModelManager().findEntry(id);
    }

    public static IPluginModelBase findModel(String id) {
        return PDECore.getDefault().getModelManager().findModel(id);
    }

    public static IPluginModelBase findModel(IProject project) {
        return PDECore.getDefault().getModelManager().findModel(project);
    }

    public static IPluginModelBase findModel(BundleDescription desc) {
        return PDECore.getDefault().getModelManager().findModel(desc);
    }

    public static IPluginModelBase[] getActiveModels() {
        return PluginRegistry.getActiveModels(true);
    }

    public static IPluginModelBase[] getActiveModels(boolean includeFragments) {
        return PDECore.getDefault().getModelManager().getActiveModels(includeFragments);
    }

    public static IPluginModelBase[] getAllModels() {
        return PluginRegistry.getAllModels(true);
    }

    public static IPluginModelBase[] getAllModels(boolean includeFragments) {
        return PDECore.getDefault().getModelManager().getAllModels(includeFragments);
    }

    public static IPluginModelBase[] getWorkspaceModels() {
        return PDECore.getDefault().getModelManager().getWorkspaceModels();
    }

    public static IPluginModelBase[] getExternalModels() {
        return PDECore.getDefault().getModelManager().getExternalModels();
    }

    private static boolean isMatch(IPluginBase base, String id, String version, int match) {
        if (base == null) {
            return false;
        }
        if (base.getId() == null) {
            return false;
        }
        if (version == null) {
            return base.getId().equals(id);
        }
        return VersionUtil.compare(base.getId(), base.getVersion(), id, version, match);
    }

    public static IPluginModelBase findModel(String id, String version, int match, PluginFilter filter) {
        return PluginRegistry.getMax(PluginRegistry.findModels(id, version, match, filter));
    }

    public static IPluginModelBase[] findModels(String id, String version, int match, PluginFilter filter) {
        IPluginModelBase[] models = PluginRegistry.getAllModels();
        ArrayList<IPluginModelBase> results = new ArrayList<IPluginModelBase>();
        int i = 0;
        while (i < models.length) {
            IPluginModelBase model = models[i];
            if ((filter == null || filter.accept(model)) && PluginRegistry.isMatch(model.getPluginBase(), id, version, match)) {
                results.add(model);
            }
            ++i;
        }
        return results.toArray(new IPluginModelBase[results.size()]);
    }

    public static IPluginModelBase findModel(String id, VersionRange range, PluginFilter filter) {
        return PluginRegistry.getMax(PluginRegistry.findModels(id, range, filter));
    }

    private static IPluginModelBase getMax(IPluginModelBase[] models) {
        if (models.length == 0) {
            return null;
        }
        if (models.length == 1) {
            return models[0];
        }
        IPluginModelBase max = null;
        Version maxV = null;
        int i = 0;
        while (i < models.length) {
            Version version;
            IPluginModelBase model = models[i];
            String versionStr = model.getPluginBase().getVersion();
            Version version2 = version = VersionUtil.validateVersion(versionStr).isOK() ? new Version(versionStr) : Version.emptyVersion;
            if (max == null) {
                max = model;
                maxV = version;
            } else if (VersionUtil.isGreaterOrEqualTo(version, maxV)) {
                max = model;
                maxV = version;
            }
            ++i;
        }
        return max;
    }

    public static IPluginModelBase[] findModels(String id, VersionRange range, PluginFilter filter) {
        IPluginModelBase[] models = PluginRegistry.getAllModels();
        ArrayList<IPluginModelBase> results = new ArrayList<IPluginModelBase>();
        int i = 0;
        while (i < models.length) {
            IPluginModelBase model = models[i];
            if ((filter == null || filter.accept(model)) && id.equals(model.getPluginBase().getId())) {
                Version version;
                String versionStr = model.getPluginBase().getVersion();
                Version version2 = version = VersionUtil.validateVersion(versionStr).isOK() ? new Version(versionStr) : Version.emptyVersion;
                if (range == null || range.isIncluded(version)) {
                    results.add(model);
                }
            }
            ++i;
        }
        return results.toArray(new IPluginModelBase[results.size()]);
    }

    public static IBuildModel createBuildModel(IPluginModelBase model) throws CoreException {
        IFile buildFile;
        IProject project = model.getUnderlyingResource().getProject();
        if (project != null && (buildFile = PDEProject.getBuildProperties(project)).exists()) {
            WorkspaceBuildModel buildModel = new WorkspaceBuildModel(buildFile);
            buildModel.load();
            return buildModel;
        }
        return null;
    }

    public static class PluginFilter {
        public boolean accept(IPluginModelBase model) {
            return true;
        }
    }
}

