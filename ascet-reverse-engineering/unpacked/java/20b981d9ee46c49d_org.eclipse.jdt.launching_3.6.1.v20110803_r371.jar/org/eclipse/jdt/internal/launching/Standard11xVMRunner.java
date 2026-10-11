/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.IProcess
 */
package org.eclipse.jdt.internal.launching;

import java.io.File;
import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.StandardVMRunner;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.VMRunnerConfiguration;

public class Standard11xVMRunner
extends StandardVMRunner {
    public Standard11xVMRunner(IVMInstall vmInstance) {
        super(vmInstance);
    }

    public void run(VMRunnerConfiguration config, ILaunch launch, IProgressMonitor monitor) throws CoreException {
        int i;
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 1);
        subMonitor.beginTask(LaunchingMessages.StandardVMRunner_Launching_VM____1, 2);
        subMonitor.subTask(LaunchingMessages.StandardVMRunner_Constructing_command_line____2);
        String program = this.constructProgramString(config);
        ArrayList<String> arguments = new ArrayList<String>();
        arguments.add(program);
        String[] vmArgs = this.combineVmArgs(config, this.fVMInstance);
        this.addArguments(vmArgs, arguments);
        String[] bootCP = config.getBootClassPath();
        String[] classPath = config.getClassPath();
        String[] combinedPath = null;
        if (bootCP == null) {
            LibraryLocation[] locs = JavaRuntime.getLibraryLocations(this.fVMInstance);
            bootCP = new String[locs.length];
            i = 0;
            while (i < locs.length) {
                bootCP[i] = locs[i].getSystemLibraryPath().toOSString();
                ++i;
            }
        }
        combinedPath = new String[bootCP.length + classPath.length];
        int offset = 0;
        i = 0;
        while (i < bootCP.length) {
            combinedPath[offset] = bootCP[i];
            ++offset;
            ++i;
        }
        i = 0;
        while (i < classPath.length) {
            combinedPath[offset] = classPath[i];
            ++offset;
            ++i;
        }
        if (combinedPath.length > 0) {
            arguments.add("-classpath");
            arguments.add(this.convertClassPath(combinedPath));
        }
        arguments.add(config.getClassToLaunch());
        String[] programArgs = config.getProgramArguments();
        this.addArguments(programArgs, arguments);
        String[] cmdLine = new String[arguments.size()];
        arguments.toArray(cmdLine);
        if (monitor.isCanceled()) {
            return;
        }
        subMonitor.worked(1);
        subMonitor.subTask(LaunchingMessages.StandardVMRunner_Starting_virtual_machine____3);
        Process p = null;
        File workingDir = this.getWorkingDir(config);
        p = this.exec(cmdLine, workingDir);
        if (p == null) {
            return;
        }
        if (monitor.isCanceled()) {
            p.destroy();
            return;
        }
        IProcess process = DebugPlugin.newProcess((ILaunch)launch, (Process)p, (String)Standard11xVMRunner.renderProcessLabel(cmdLine));
        process.setAttribute(IProcess.ATTR_CMDLINE, this.renderCommandLine(cmdLine));
        subMonitor.worked(1);
    }
}

