/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IWorkspace$ProjectOrder
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IBreakpointManager;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.IStatusHandler;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.ILaunchConfigurationDelegate2;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public abstract class LaunchConfigurationDelegate
implements ILaunchConfigurationDelegate2 {
    private static final String DEBUG_CORE = "org.eclipse.debug.core";
    private static final String DEBUG_UI = "org.eclipse.debug.ui";
    protected static final IStatus promptStatus = new Status(1, "org.eclipse.debug.ui", 200, "", null);
    protected static final IStatus switchToDebugPromptStatus = new Status(1, "org.eclipse.debug.core", 201, "", null);
    protected static final IStatus complileErrorPromptStatus = new Status(1, "org.eclipse.debug.core", 202, "", null);
    protected static final IStatus saveScopedDirtyEditors = new Status(1, "org.eclipse.debug.core", 222, "", null);
    protected static final IStatus complileErrorProjectPromptStatus = new Status(1, "org.eclipse.debug.core", 203, "", null);

    public ILaunch getLaunch(ILaunchConfiguration configuration, String mode) throws CoreException {
        return null;
    }

    public boolean buildForLaunch(ILaunchConfiguration configuration, String mode, IProgressMonitor monitor) throws CoreException {
        if (monitor != null) {
            monitor.beginTask("", 1);
        }
        try {
            IProject[] projects = this.getBuildOrder(configuration, mode);
            if (projects == null) {
                return true;
            }
            this.buildProjects(projects, (IProgressMonitor)new SubProgressMonitor(monitor, 1));
            return false;
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    protected IProject[] getBuildOrder(ILaunchConfiguration configuration, String mode) throws CoreException {
        return null;
    }

    protected IProject[] getProjectsForProblemSearch(ILaunchConfiguration configuration, String mode) throws CoreException {
        return null;
    }

    public boolean finalLaunchCheck(ILaunchConfiguration configuration, String mode, IProgressMonitor monitor) throws CoreException {
        monitor.beginTask("", 1);
        try {
            IProject[] projects = this.getProjectsForProblemSearch(configuration, mode);
            if (projects == null) {
                return true;
            }
            boolean continueLaunch = true;
            monitor.subTask(DebugCoreMessages.LaunchConfigurationDelegate_6);
            ArrayList<Object> errors = new ArrayList<Object>();
            int i = 0;
            while (i < projects.length) {
                monitor.subTask(MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationDelegate_7, (Object[])new String[]{projects[i].getName()}));
                if (this.existsProblems(projects[i])) {
                    errors.add(projects[i]);
                }
                ++i;
            }
            if (!errors.isEmpty()) {
                errors.add(0, configuration);
                IStatusHandler prompter = DebugPlugin.getDefault().getStatusHandler(promptStatus);
                if (prompter != null) {
                    continueLaunch = (Boolean)prompter.handleStatus(complileErrorProjectPromptStatus, errors);
                }
            }
            boolean bl = continueLaunch;
            return bl;
        }
        finally {
            monitor.done();
        }
    }

    public boolean preLaunchCheck(ILaunchConfiguration configuration, String mode, IProgressMonitor monitor) throws CoreException {
        if (!this.saveBeforeLaunch(configuration, mode, monitor)) {
            return false;
        }
        if (mode.equals("run") && configuration.supportsMode("debug")) {
            IBreakpoint[] breakpoints = this.getBreakpoints(configuration);
            if (breakpoints == null) {
                return true;
            }
            int i = 0;
            while (i < breakpoints.length) {
                if (breakpoints[i].isEnabled()) {
                    boolean launchInDebugModeInstead;
                    IStatusHandler prompter = DebugPlugin.getDefault().getStatusHandler(promptStatus);
                    return prompter == null || !(launchInDebugModeInstead = ((Boolean)prompter.handleStatus(switchToDebugPromptStatus, configuration)).booleanValue());
                }
                ++i;
            }
        }
        return true;
    }

    protected boolean saveBeforeLaunch(ILaunchConfiguration configuration, String mode, IProgressMonitor monitor) throws CoreException {
        monitor.beginTask("", 1);
        try {
            IStatusHandler prompter = DebugPlugin.getDefault().getStatusHandler(promptStatus);
            if (prompter != null) {
                IProject[] buildOrder = this.getBuildOrder(configuration, mode);
                if (!((Boolean)prompter.handleStatus(saveScopedDirtyEditors, new Object[]{configuration, buildOrder})).booleanValue()) {
                    return false;
                }
            }
            return true;
        }
        finally {
            monitor.done();
        }
    }

    protected IBreakpoint[] getBreakpoints(ILaunchConfiguration configuration) {
        IBreakpointManager breakpointManager = DebugPlugin.getDefault().getBreakpointManager();
        if (!breakpointManager.isEnabled()) {
            return null;
        }
        return breakpointManager.getBreakpoints();
    }

    protected IProject[] computeReferencedBuildOrder(IProject[] baseProjects) throws CoreException {
        HashSet<IProject> unorderedProjects = new HashSet<IProject>();
        int i = 0;
        while (i < baseProjects.length) {
            unorderedProjects.add(baseProjects[i]);
            this.addReferencedProjects(baseProjects[i], unorderedProjects);
            ++i;
        }
        IProject[] projectSet = unorderedProjects.toArray(new IProject[unorderedProjects.size()]);
        return this.computeBuildOrder(projectSet);
    }

    protected void addReferencedProjects(IProject project, Set references) throws CoreException {
        if (project.isOpen()) {
            IProject[] projects = project.getReferencedProjects();
            int i = 0;
            while (i < projects.length) {
                IProject refProject = projects[i];
                if (refProject.exists() && !references.contains(refProject)) {
                    references.add(refProject);
                    this.addReferencedProjects(refProject, references);
                }
                ++i;
            }
        }
    }

    protected IProject[] computeBuildOrder(IProject[] projects) {
        String[] orderedNames = ResourcesPlugin.getWorkspace().getDescription().getBuildOrder();
        if (orderedNames != null) {
            ArrayList<Object> orderedProjects = new ArrayList<Object>(projects.length);
            ArrayList<IProject> unorderedProjects = new ArrayList<IProject>(projects.length);
            int i = 0;
            while (i < projects.length) {
                unorderedProjects.add(projects[i]);
                ++i;
            }
            i = 0;
            while (i < orderedNames.length) {
                String projectName = orderedNames[i];
                Iterator iterator = unorderedProjects.iterator();
                while (iterator.hasNext()) {
                    IProject project = (IProject)iterator.next();
                    if (!project.getName().equals(projectName)) continue;
                    orderedProjects.add(project);
                    iterator.remove();
                    break;
                }
                ++i;
            }
            orderedProjects.addAll(unorderedProjects);
            return orderedProjects.toArray(new IProject[orderedProjects.size()]);
        }
        IWorkspace.ProjectOrder po = ResourcesPlugin.getWorkspace().computeProjectOrder(projects);
        return po.projects;
    }

    protected boolean existsProblems(IProject proj) throws CoreException {
        IMarker[] markers = proj.findMarkers("org.eclipse.core.resources.problemmarker", true, 2);
        if (markers.length > 0) {
            int i = 0;
            while (i < markers.length) {
                if (this.isLaunchProblem(markers[i])) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    protected boolean isLaunchProblem(IMarker problemMarker) throws CoreException {
        Integer severity = (Integer)problemMarker.getAttribute("severity");
        if (severity != null) {
            return severity >= 2;
        }
        return false;
    }

    protected void buildProjects(final IProject[] projects, IProgressMonitor monitor) throws CoreException {
        IWorkspaceRunnable build = new IWorkspaceRunnable(){

            public void run(IProgressMonitor pm) throws CoreException {
                SubMonitor localmonitor = SubMonitor.convert((IProgressMonitor)pm, (String)DebugCoreMessages.LaunchConfigurationDelegate_scoped_incremental_build, (int)projects.length);
                try {
                    int i = 0;
                    while (i < projects.length) {
                        if (localmonitor.isCanceled()) {
                            throw new OperationCanceledException();
                        }
                        projects[i].build(10, (IProgressMonitor)localmonitor.newChild(1));
                        ++i;
                    }
                }
                finally {
                    localmonitor.done();
                }
            }
        };
        ResourcesPlugin.getWorkspace().run(build, monitor);
    }
}

