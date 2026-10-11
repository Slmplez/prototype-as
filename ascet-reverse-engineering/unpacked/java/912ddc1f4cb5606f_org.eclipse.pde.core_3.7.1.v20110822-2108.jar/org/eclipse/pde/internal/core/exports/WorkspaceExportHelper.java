/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.model.LaunchConfigurationDelegate
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 */
package org.eclipse.pde.internal.core.exports;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.model.LaunchConfigurationDelegate;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.ifeature.IFeaturePlugin;
import org.eclipse.pde.internal.core.project.PDEProject;

public class WorkspaceExportHelper
extends LaunchConfigurationDelegate {
    private IProject[] fWorkspaceProjects;

    public void launch(ILaunchConfiguration configuration, String mode, ILaunch launch, IProgressMonitor monitor) throws CoreException {
    }

    public void buildBeforeExport(Object[] exportedItems, IProgressMonitor monitor) throws CoreException {
        IProject[] projects = this.getExportedWorkspaceProjects(exportedItems);
        int i = 0;
        while (i < projects.length) {
            projects[i].build(10, monitor);
            ++i;
        }
    }

    public Set checkForErrors(Object[] exportedItems) throws CoreException {
        IProject[] projects = this.getExportedWorkspaceProjects(exportedItems);
        HashSet<IProject> projectsWithErrors = new HashSet<IProject>(projects.length);
        int i = 0;
        while (i < projects.length) {
            IMarker[] markers = projects[i].findMarkers("org.eclipse.core.resources.problemmarker", true, 2);
            if (markers.length > 0) {
                int j = 0;
                while (j < markers.length) {
                    Integer severity = (Integer)markers[j].getAttribute("severity");
                    if (severity != null && severity >= 2 && (markers[j].getType().equals("org.eclipse.jdt.core.problem") || markers[j].getType().equals("org.eclipse.pde.core.problem"))) {
                        projectsWithErrors.add(projects[i]);
                        break;
                    }
                    ++j;
                }
            }
            ++i;
        }
        return projectsWithErrors;
    }

    public Map getWorkspaceOutputFolders(Object[] exportedItems) throws CoreException {
        IProject[] projects = this.getExportedWorkspaceProjects(exportedItems);
        HashMap<String, Map> result = new HashMap<String, Map>(projects.length);
        int i = 0;
        while (i < projects.length) {
            IFile buildFile = PDEProject.getBuildProperties(projects[i]);
            if (buildFile.exists()) {
                IPluginModelBase model;
                Map modelOutput;
                WorkspaceBuildModel buildModel = new WorkspaceBuildModel(buildFile);
                buildModel.load();
                IJavaProject javaProject = JavaCore.create((IProject)projects[i]);
                if (javaProject.exists() && !(modelOutput = this.getPluginOutputFolders(buildModel, javaProject)).isEmpty() && (model = PDECore.getDefault().getModelManager().findModel(projects[i])) != null) {
                    result.put(model.getBundleDescription().getSymbolicName(), modelOutput);
                }
            }
            ++i;
        }
        return result;
    }

    private Map getPluginOutputFolders(IBuildModel buildModel, IJavaProject javaProject) throws JavaModelException {
        HashMap outputEntries = new HashMap();
        IBuildEntry[] buildEntries = buildModel.getBuild().getBuildEntries();
        int i = 0;
        while (i < buildEntries.length) {
            String name = buildEntries[i].getName();
            if (name.startsWith("source.")) {
                HashSet<IPath> outputPaths = new HashSet<IPath>();
                String[] sourceFolders = buildEntries[i].getTokens();
                int j = 0;
                while (j < sourceFolders.length) {
                    IClasspathEntry[] classpathEntries = javaProject.getRawClasspath();
                    int k = 0;
                    while (k < classpathEntries.length) {
                        IPath sourcePath;
                        if (classpathEntries[k].getEntryKind() == 3 && (sourcePath = classpathEntries[k].getPath().removeFirstSegments(1)).equals((Object)new Path(sourceFolders[j]))) {
                            IPath outputPath = classpathEntries[k].getOutputLocation();
                            if (outputPath == null) {
                                outputPath = javaProject.getOutputLocation();
                            }
                            outputPaths.add(outputPath.removeFirstSegments(1));
                        }
                        ++k;
                    }
                    ++j;
                }
                if (!outputPaths.isEmpty()) {
                    outputEntries.put(name.substring("source.".length()), outputPaths);
                }
            }
            ++i;
        }
        return outputEntries;
    }

    private IProject[] getExportedWorkspaceProjects(Object[] exportedItems) throws CoreException {
        if (this.fWorkspaceProjects == null) {
            HashSet<IProject> projects = new HashSet<IProject>();
            int i = 0;
            while (i < exportedItems.length) {
                if (exportedItems[i] instanceof IPluginModelBase) {
                    Path installLocation = new Path(((IPluginModelBase)exportedItems[i]).getInstallLocation());
                    IProject project = PDECore.getWorkspace().getRoot().getProject(installLocation.lastSegment());
                    if (project.exists()) {
                        projects.add(project);
                    }
                } else if (exportedItems[i] instanceof IFeatureModel) {
                    IFeatureModel feature = (IFeatureModel)exportedItems[i];
                    IFeaturePlugin[] plugins = feature.getFeature().getPlugins();
                    int j = 0;
                    while (j < plugins.length) {
                        IPluginModelBase plugin = PDECore.getDefault().getModelManager().findModel(plugins[j].getId());
                        if (plugin != null) {
                            Path installLocation = new Path(plugin.getInstallLocation());
                            IProject project = PDECore.getWorkspace().getRoot().getProject(installLocation.lastSegment());
                            if (project.exists()) {
                                projects.add(project);
                            }
                        }
                        ++j;
                    }
                }
                ++i;
            }
            this.fWorkspaceProjects = this.computeReferencedBuildOrder(projects.toArray(new IProject[projects.size()]));
        }
        return this.fWorkspaceProjects;
    }
}

