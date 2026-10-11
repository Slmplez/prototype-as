/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.IBreakpointManager
 *  org.eclipse.debug.core.IDebugEventSetListener
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.ILaunchManager
 *  org.eclipse.debug.core.model.IBreakpoint
 *  org.eclipse.debug.core.model.ISourceLocator
 *  org.eclipse.debug.core.model.LaunchConfigurationDelegate
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.debug.core.IJavaDebugTarget
 *  org.eclipse.jdt.debug.core.IJavaMethodBreakpoint
 *  org.eclipse.jdt.debug.core.JDIDebugModel
 */
package org.eclipse.jdt.launching;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IBreakpointManager;
import org.eclipse.debug.core.IDebugEventSetListener;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchManager;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.ISourceLocator;
import org.eclipse.debug.core.model.LaunchConfigurationDelegate;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaMethodBreakpoint;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.launching.JRERuntimeClasspathEntryResolver;
import org.eclipse.jdt.internal.launching.JavaSourceLookupDirector;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.IVMRunner;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.LibraryLocation;

public abstract class AbstractJavaLaunchConfigurationDelegate
extends LaunchConfigurationDelegate
implements IDebugEventSetListener {
    private IProject[] fOrderedProjects;

    protected ILaunchManager getLaunchManager() {
        return DebugPlugin.getDefault().getLaunchManager();
    }

    protected void abort(String message, Throwable exception, int code) throws CoreException {
        throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), code, message, exception));
    }

    public IVMInstall getVMInstall(ILaunchConfiguration configuration) throws CoreException {
        return JavaRuntime.computeVMInstall(configuration);
    }

    public String getVMInstallName(ILaunchConfiguration configuration) throws CoreException {
        return configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_VM_INSTALL_NAME, null);
    }

    public IVMInstallType getVMInstallType(ILaunchConfiguration configuration) throws CoreException {
        IVMInstallType type;
        String id = this.getVMInstallTypeId(configuration);
        if (id != null && (type = JavaRuntime.getVMInstallType(id)) != null) {
            return type;
        }
        return null;
    }

    public String getVMInstallTypeId(ILaunchConfiguration configuration) throws CoreException {
        return configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_VM_INSTALL_TYPE, null);
    }

    public IVMInstall verifyVMInstall(ILaunchConfiguration configuration) throws CoreException {
        File location;
        IVMInstall vm = this.getVMInstall(configuration);
        if (vm == null) {
            this.abort(LaunchingMessages.AbstractJavaLaunchConfigurationDelegate_The_specified_JRE_installation_does_not_exist_4, null, 105);
        }
        if ((location = vm.getInstallLocation()) == null) {
            this.abort(MessageFormat.format((String)LaunchingMessages.AbstractJavaLaunchConfigurationDelegate_JRE_home_directory_not_specified_for__0__5, (Object[])new String[]{vm.getName()}), null, 105);
        }
        if (!location.exists()) {
            this.abort(MessageFormat.format((String)LaunchingMessages.AbstractJavaLaunchConfigurationDelegate_JRE_home_directory_for__0__does_not_exist___1__6, (Object[])new String[]{vm.getName(), location.getAbsolutePath()}), null, 105);
        }
        return vm;
    }

    public String getVMConnectorId(ILaunchConfiguration configuration) throws CoreException {
        return configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_VM_CONNECTOR, null);
    }

    public String[] getBootpath(ILaunchConfiguration configuration) throws CoreException {
        String[][] paths = this.getBootpathExt(configuration);
        String[] pre = paths[0];
        String[] main = paths[1];
        String[] app = paths[2];
        if (pre == null && main == null && app == null) {
            return null;
        }
        IRuntimeClasspathEntry[] entries = JavaRuntime.computeUnresolvedRuntimeClasspath(configuration);
        entries = JavaRuntime.resolveRuntimeClasspath(entries, configuration);
        ArrayList<String> bootEntries = new ArrayList<String>(entries.length);
        boolean empty = true;
        boolean allStandard = true;
        int i = 0;
        while (i < entries.length) {
            String location;
            if (entries[i].getClasspathProperty() != 3 && (location = entries[i].getLocation()) != null) {
                empty = false;
                bootEntries.add(location);
                allStandard = allStandard && entries[i].getClasspathProperty() == 1;
            }
            ++i;
        }
        if (empty) {
            return new String[0];
        }
        if (allStandard) {
            return null;
        }
        return bootEntries.toArray(new String[bootEntries.size()]);
    }

    public String[][] getBootpathExt(ILaunchConfiguration configuration) throws CoreException {
        String[][] bootpathInfo = new String[3][];
        IRuntimeClasspathEntry[] entries = JavaRuntime.computeUnresolvedRuntimeClasspath(configuration);
        ArrayList<IRuntimeClasspathEntry> bootEntriesPrepend = new ArrayList<IRuntimeClasspathEntry>();
        int index = 0;
        IRuntimeClasspathEntry jreEntry = null;
        while (jreEntry == null && index < entries.length) {
            IRuntimeClasspathEntry entry;
            if ((entry = entries[index++]).getClasspathProperty() != 2 && entry.getClasspathProperty() != 1) continue;
            if (JavaRuntime.isVMInstallReference(entry)) {
                jreEntry = entry;
                continue;
            }
            bootEntriesPrepend.add(entry);
        }
        IRuntimeClasspathEntry[] bootEntriesPrep = JavaRuntime.resolveRuntimeClasspath(bootEntriesPrepend.toArray(new IRuntimeClasspathEntry[bootEntriesPrepend.size()]), configuration);
        String[] entriesPrep = null;
        if (bootEntriesPrep.length > 0) {
            entriesPrep = new String[bootEntriesPrep.length];
            int i = 0;
            while (i < bootEntriesPrep.length) {
                entriesPrep[i] = bootEntriesPrep[i].getLocation();
                ++i;
            }
        }
        if (jreEntry != null) {
            IVMInstall install;
            LibraryLocation[] libraryLocations;
            ArrayList<IRuntimeClasspathEntry> bootEntriesAppend = new ArrayList<IRuntimeClasspathEntry>();
            while (index < entries.length) {
                IRuntimeClasspathEntry entry = entries[index];
                if (entry.getClasspathProperty() == 2) {
                    bootEntriesAppend.add(entry);
                }
                ++index;
            }
            bootpathInfo[0] = entriesPrep;
            IRuntimeClasspathEntry[] bootEntriesApp = JavaRuntime.resolveRuntimeClasspath(bootEntriesAppend.toArray(new IRuntimeClasspathEntry[bootEntriesAppend.size()]), configuration);
            if (bootEntriesApp.length > 0) {
                bootpathInfo[2] = new String[bootEntriesApp.length];
                int i = 0;
                while (i < bootEntriesApp.length) {
                    bootpathInfo[2][i] = bootEntriesApp[i].getLocation();
                    ++i;
                }
            }
            if ((libraryLocations = (install = this.getVMInstall(configuration)).getLibraryLocations()) != null && !JRERuntimeClasspathEntryResolver.isSameArchives(libraryLocations, install.getVMInstallType().getDefaultLibraryLocations(install.getInstallLocation()))) {
                IRuntimeClasspathEntry[] bootEntries = null;
                if (jreEntry.getType() == 4) {
                    IRuntimeClasspathEntry bootEntry = JavaRuntime.newRuntimeContainerClasspathEntry(jreEntry.getPath(), 2, this.getJavaProject(configuration));
                    bootEntries = JavaRuntime.resolveRuntimeClasspathEntry(bootEntry, configuration);
                } else {
                    bootEntries = JavaRuntime.resolveRuntimeClasspathEntry(jreEntry, configuration);
                }
                String[] bootpath = new String[bootEntriesPrep.length + bootEntries.length + bootEntriesApp.length];
                if (bootEntriesPrep.length > 0) {
                    System.arraycopy(bootpathInfo[0], 0, bootpath, 0, bootEntriesPrep.length);
                }
                int dest = bootEntriesPrep.length;
                int i = 0;
                while (i < bootEntries.length) {
                    bootpath[dest] = bootEntries[i].getLocation();
                    ++dest;
                    ++i;
                }
                if (bootEntriesApp.length > 0) {
                    System.arraycopy(bootpathInfo[2], 0, bootpath, dest, bootEntriesApp.length);
                }
                bootpathInfo[0] = null;
                bootpathInfo[1] = bootpath;
                bootpathInfo[2] = null;
            }
        } else {
            bootpathInfo[1] = entriesPrep == null ? new String[0] : entriesPrep;
        }
        return bootpathInfo;
    }

    public String[] getClasspath(ILaunchConfiguration configuration) throws CoreException {
        IRuntimeClasspathEntry[] entries = JavaRuntime.computeUnresolvedRuntimeClasspath(configuration);
        entries = JavaRuntime.resolveRuntimeClasspath(entries, configuration);
        ArrayList<String> userEntries = new ArrayList<String>(entries.length);
        HashSet<String> set = new HashSet<String>(entries.length);
        int i = 0;
        while (i < entries.length) {
            String location;
            if (entries[i].getClasspathProperty() == 3 && (location = entries[i].getLocation()) != null && !set.contains(location)) {
                userEntries.add(location);
                set.add(location);
            }
            ++i;
        }
        return userEntries.toArray(new String[userEntries.size()]);
    }

    public IJavaProject getJavaProject(ILaunchConfiguration configuration) throws CoreException {
        IProject project;
        IJavaProject javaProject;
        String projectName = this.getJavaProjectName(configuration);
        if (projectName != null && (projectName = projectName.trim()).length() > 0 && (javaProject = JavaCore.create((IProject)(project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName)))) != null && javaProject.exists()) {
            return javaProject;
        }
        return null;
    }

    public String getJavaProjectName(ILaunchConfiguration configuration) throws CoreException {
        return configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_PROJECT_NAME, null);
    }

    public String getMainTypeName(ILaunchConfiguration configuration) throws CoreException {
        String mainType = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_MAIN_TYPE_NAME, null);
        if (mainType == null) {
            return null;
        }
        return VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(mainType);
    }

    public String getProgramArguments(ILaunchConfiguration configuration) throws CoreException {
        String arguments = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_PROGRAM_ARGUMENTS, "");
        return VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(arguments);
    }

    public String getVMArguments(ILaunchConfiguration configuration) throws CoreException {
        String[] javaLibraryPath;
        String arguments = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_VM_ARGUMENTS, "");
        String args = VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(arguments);
        int libraryPath = args.indexOf("-Djava.library.path");
        if (libraryPath < 0 && (javaLibraryPath = this.getJavaLibraryPath(configuration)) != null && javaLibraryPath.length > 0) {
            StringBuffer path = new StringBuffer(args);
            path.append(" -Djava.library.path=");
            path.append("\"");
            int i = 0;
            while (i < javaLibraryPath.length) {
                if (i > 0) {
                    path.append(File.pathSeparatorChar);
                }
                path.append(javaLibraryPath[i]);
                ++i;
            }
            path.append("\"");
            args = path.toString();
        }
        return args;
    }

    public Map getVMSpecificAttributesMap(ILaunchConfiguration configuration) throws CoreException {
        HashMap<String, String[]> map = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_VM_INSTALL_TYPE_SPECIFIC_ATTRS_MAP, null);
        String[][] paths = this.getBootpathExt(configuration);
        String[] pre = paths[0];
        String[] boot = paths[1];
        String[] app = paths[2];
        if (pre != null || app != null || boot != null) {
            if (map == null) {
                map = new HashMap<String, String[]>(3);
            }
            if (pre != null) {
                map.put(IJavaLaunchConfigurationConstants.ATTR_BOOTPATH_PREPEND, pre);
            }
            if (app != null) {
                map.put(IJavaLaunchConfigurationConstants.ATTR_BOOTPATH_APPEND, app);
            }
            if (boot != null) {
                map.put(IJavaLaunchConfigurationConstants.ATTR_BOOTPATH, boot);
            }
        }
        return map;
    }

    public File getWorkingDirectory(ILaunchConfiguration configuration) throws CoreException {
        return this.verifyWorkingDirectory(configuration);
    }

    public IPath getWorkingDirectoryPath(ILaunchConfiguration configuration) throws CoreException {
        String path = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_WORKING_DIRECTORY, null);
        if (path != null) {
            path = VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(path);
            return new Path(path);
        }
        return null;
    }

    public IJavaProject verifyJavaProject(ILaunchConfiguration configuration) throws CoreException {
        IJavaProject project;
        String name = this.getJavaProjectName(configuration);
        if (name == null) {
            this.abort(LaunchingMessages.AbstractJavaLaunchConfigurationDelegate_Java_project_not_specified_9, null, 100);
        }
        if ((project = this.getJavaProject(configuration)) == null) {
            this.abort(LaunchingMessages.AbstractJavaLaunchConfigurationDelegate_Project_does_not_exist_or_is_not_a_Java_project_10, null, 107);
        }
        return project;
    }

    public String verifyMainTypeName(ILaunchConfiguration configuration) throws CoreException {
        String name = this.getMainTypeName(configuration);
        if (name == null) {
            this.abort(LaunchingMessages.AbstractJavaLaunchConfigurationDelegate_Main_type_not_specified_11, null, 101);
        }
        return name;
    }

    public File verifyWorkingDirectory(ILaunchConfiguration configuration) throws CoreException {
        IPath path = this.getWorkingDirectoryPath(configuration);
        if (path == null) {
            File dir = this.getDefaultWorkingDirectory(configuration);
            if (dir != null) {
                if (!dir.isDirectory()) {
                    this.abort(MessageFormat.format((String)LaunchingMessages.AbstractJavaLaunchConfigurationDelegate_Working_directory_does_not_exist___0__12, (Object[])new String[]{dir.toString()}), null, 108);
                }
                return dir;
            }
        } else if (path.isAbsolute()) {
            File dir = new File(path.toOSString());
            if (dir.isDirectory()) {
                return dir;
            }
            IResource res = ResourcesPlugin.getWorkspace().getRoot().findMember(path);
            if (res instanceof IContainer && res.exists()) {
                return res.getLocation().toFile();
            }
            this.abort(MessageFormat.format((String)LaunchingMessages.AbstractJavaLaunchConfigurationDelegate_Working_directory_does_not_exist___0__12, (Object[])new String[]{path.toString()}), null, 108);
        } else {
            IResource res = ResourcesPlugin.getWorkspace().getRoot().findMember(path);
            if (res instanceof IContainer && res.exists()) {
                return res.getLocation().toFile();
            }
            this.abort(MessageFormat.format((String)LaunchingMessages.AbstractJavaLaunchConfigurationDelegate_Working_directory_does_not_exist___0__12, (Object[])new String[]{path.toString()}), null, 108);
        }
        return null;
    }

    public boolean isAllowTerminate(ILaunchConfiguration configuration) throws CoreException {
        return configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_ALLOW_TERMINATE, false);
    }

    public boolean isStopInMain(ILaunchConfiguration configuration) throws CoreException {
        return configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_STOP_IN_MAIN, false);
    }

    protected void setDefaultSourceLocator(ILaunch launch, ILaunchConfiguration configuration) throws CoreException {
        if (launch.getSourceLocator() == null) {
            JavaSourceLookupDirector sourceLocator = new JavaSourceLookupDirector();
            sourceLocator.setSourcePathComputer(this.getLaunchManager().getSourcePathComputer("org.eclipse.jdt.launching.sourceLookup.javaSourcePathComputer"));
            sourceLocator.initializeDefaults(configuration);
            launch.setSourceLocator((ISourceLocator)sourceLocator);
        }
    }

    protected void prepareStopInMain(ILaunchConfiguration configuration) throws CoreException {
        if (this.isStopInMain(configuration)) {
            DebugPlugin.getDefault().addDebugEventListener((IDebugEventSetListener)this);
        }
    }

    public void handleDebugEvents(DebugEvent[] events) {
        int i = 0;
        while (i < events.length) {
            ILaunchConfiguration configuration;
            IJavaDebugTarget target;
            ILaunch launch;
            DebugEvent event = events[i];
            if (event.getKind() == 4 && event.getSource() instanceof IJavaDebugTarget && (launch = (target = (IJavaDebugTarget)event.getSource()).getLaunch()) != null && (configuration = launch.getLaunchConfiguration()) != null) {
                try {
                    String mainType;
                    if (this.isStopInMain(configuration) && (mainType = this.getMainTypeName(configuration)) != null) {
                        HashMap<String, String> map = new HashMap<String, String>();
                        map.put(IJavaLaunchConfigurationConstants.ATTR_STOP_IN_MAIN, IJavaLaunchConfigurationConstants.ATTR_STOP_IN_MAIN);
                        IJavaMethodBreakpoint bp = JDIDebugModel.createMethodBreakpoint((IResource)ResourcesPlugin.getWorkspace().getRoot(), (String)mainType, (String)"main", (String)"([Ljava/lang/String;)V", (boolean)true, (boolean)false, (boolean)false, (int)-1, (int)-1, (int)-1, (int)1, (boolean)false, map);
                        bp.setPersisted(false);
                        target.breakpointAdded((IBreakpoint)bp);
                        DebugPlugin.getDefault().removeDebugEventListener((IDebugEventSetListener)this);
                    }
                }
                catch (CoreException e) {
                    LaunchingPlugin.log(e);
                }
            }
            ++i;
        }
    }

    protected IProject[] getBuildOrder(ILaunchConfiguration configuration, String mode) throws CoreException {
        return this.fOrderedProjects;
    }

    protected IProject[] getProjectsForProblemSearch(ILaunchConfiguration configuration, String mode) throws CoreException {
        return this.fOrderedProjects;
    }

    protected boolean isLaunchProblem(IMarker problemMarker) throws CoreException {
        return super.isLaunchProblem(problemMarker) && problemMarker.getType().equals("org.eclipse.jdt.core.problem");
    }

    public boolean preLaunchCheck(ILaunchConfiguration configuration, String mode, IProgressMonitor monitor) throws CoreException {
        if (monitor != null) {
            monitor.subTask(LaunchingMessages.AbstractJavaLaunchConfigurationDelegate_20);
        }
        this.fOrderedProjects = null;
        IJavaProject javaProject = JavaRuntime.getJavaProject(configuration);
        if (javaProject != null) {
            this.fOrderedProjects = this.computeReferencedBuildOrder(new IProject[]{javaProject.getProject()});
        }
        return super.preLaunchCheck(configuration, mode, monitor);
    }

    protected IBreakpoint[] getBreakpoints(ILaunchConfiguration configuration) {
        IBreakpointManager breakpointManager = DebugPlugin.getDefault().getBreakpointManager();
        if (!breakpointManager.isEnabled()) {
            return null;
        }
        return breakpointManager.getBreakpoints(JDIDebugModel.getPluginIdentifier());
    }

    public IVMRunner getVMRunner(ILaunchConfiguration configuration, String mode) throws CoreException {
        IVMInstall vm = this.verifyVMInstall(configuration);
        IVMRunner runner = vm.getVMRunner(mode);
        if (runner == null) {
            this.abort(MessageFormat.format((String)LaunchingMessages.JavaLocalApplicationLaunchConfigurationDelegate_0, (Object[])new String[]{vm.getName(), mode}), null, 106);
        }
        return runner;
    }

    public String[] getEnvironment(ILaunchConfiguration configuration) throws CoreException {
        return DebugPlugin.getDefault().getLaunchManager().getEnvironment(configuration);
    }

    public String[] getJavaLibraryPath(ILaunchConfiguration configuration) throws CoreException {
        String[] paths;
        IJavaProject project = this.getJavaProject(configuration);
        if (project != null && (paths = JavaRuntime.computeJavaLibraryPath(project, true)).length > 0) {
            return paths;
        }
        return null;
    }

    protected File getDefaultWorkingDirectory(ILaunchConfiguration configuration) throws CoreException {
        IJavaProject jp = this.getJavaProject(configuration);
        if (jp != null) {
            IProject p = jp.getProject();
            return p.getLocation().toFile();
        }
        return null;
    }
}

