/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceDescription
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.jdt.core.ClasspathVariableInitializer
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceDescription;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jdt.core.ClasspathVariableInitializer;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.LibraryLocation;

public class JavaClasspathVariablesInitializer
extends ClasspathVariableInitializer {
    private IProgressMonitor fMonitor;

    public void initialize(String variable) {
        IVMInstall vmInstall = JavaRuntime.getDefaultVMInstall();
        if (vmInstall != null) {
            IPath newPath = null;
            LibraryLocation[] locations = JavaRuntime.getLibraryLocations(vmInstall);
            LibraryLocation rtjar = null;
            LibraryLocation classeszip = null;
            int i = 0;
            while (i < locations.length) {
                LibraryLocation location = locations[i];
                String name = location.getSystemLibraryPath().lastSegment();
                if (name.equalsIgnoreCase("rt.jar")) {
                    rtjar = location;
                } else if (name.equalsIgnoreCase("classes.zip")) {
                    classeszip = location;
                }
                ++i;
            }
            LibraryLocation systemLib = rtjar;
            if (systemLib == null) {
                systemLib = classeszip;
            }
            if (systemLib == null && locations.length > 0) {
                systemLib = locations[0];
            }
            if (systemLib != null) {
                if (variable.equals("JRE_LIB")) {
                    newPath = systemLib.getSystemLibraryPath();
                } else if (variable.equals("JRE_SRC")) {
                    newPath = systemLib.getSystemLibrarySourcePath();
                } else if (variable.equals("JRE_SRCROOT")) {
                    newPath = systemLib.getPackageRootPath();
                }
                if (newPath == null) {
                    return;
                }
                IWorkspace workspace = ResourcesPlugin.getWorkspace();
                IWorkspaceDescription wsDescription = workspace.getDescription();
                boolean wasAutobuild = wsDescription.isAutoBuilding();
                try {
                    try {
                        this.setAutobuild(workspace, false);
                        this.setJREVariable(newPath, variable);
                    }
                    catch (CoreException ce) {
                        LaunchingPlugin.log(ce);
                        try {
                            this.setAutobuild(workspace, wasAutobuild);
                        }
                        catch (CoreException ce2) {
                            LaunchingPlugin.log(ce2);
                        }
                        return;
                    }
                }
                finally {
                    try {
                        this.setAutobuild(workspace, wasAutobuild);
                    }
                    catch (CoreException ce) {
                        LaunchingPlugin.log(ce);
                    }
                }
            }
        }
    }

    private void setJREVariable(IPath newPath, String var) throws CoreException {
        JavaCore.setClasspathVariable((String)var, (IPath)newPath, (IProgressMonitor)this.getMonitor());
    }

    private boolean setAutobuild(IWorkspace ws, boolean newState) throws CoreException {
        IWorkspaceDescription wsDescription = ws.getDescription();
        boolean oldState = wsDescription.isAutoBuilding();
        if (oldState != newState) {
            wsDescription.setAutoBuilding(newState);
            ws.setDescription(wsDescription);
        }
        return oldState;
    }

    protected IProgressMonitor getMonitor() {
        if (this.fMonitor == null) {
            return new NullProgressMonitor();
        }
        return this.fMonitor;
    }
}

