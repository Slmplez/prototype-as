/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.IStringVariableManager
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.IProcess
 */
package org.eclipse.jdt.launching;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMRunner;
import org.eclipse.jdt.launching.VMRunnerConfiguration;

public abstract class AbstractVMRunner
implements IVMRunner {
    protected void abort(String message, Throwable exception, int code) throws CoreException {
        throw new CoreException((IStatus)new Status(4, this.getPluginIdentifier(), code, message, exception));
    }

    protected abstract String getPluginIdentifier();

    protected Process exec(String[] cmdLine, File workingDirectory) throws CoreException {
        return DebugPlugin.exec((String[])cmdLine, (File)workingDirectory);
    }

    protected Process exec(String[] cmdLine, File workingDirectory, String[] envp) throws CoreException {
        return DebugPlugin.exec((String[])cmdLine, (File)workingDirectory, (String[])envp);
    }

    protected String getCmdLineAsString(String[] cmdLine) {
        StringBuffer buff = new StringBuffer();
        int i = 0;
        int numStrings = cmdLine.length;
        while (i < numStrings) {
            buff.append(cmdLine[i]);
            buff.append(' ');
            ++i;
        }
        return buff.toString().trim();
    }

    protected Map getDefaultProcessMap() {
        HashMap<String, String> map = new HashMap<String, String>();
        map.put(IProcess.ATTR_PROCESS_TYPE, "java");
        return map;
    }

    protected IProcess newProcess(ILaunch launch, Process p, String label, Map attributes) throws CoreException {
        IProcess process = DebugPlugin.newProcess((ILaunch)launch, (Process)p, (String)label, (Map)attributes);
        if (process == null) {
            p.destroy();
            this.abort(LaunchingMessages.AbstractVMRunner_0, null, 150);
        }
        return process;
    }

    protected String[] combineVmArgs(VMRunnerConfiguration configuration, IVMInstall vmInstall) {
        String[] launchVMArgs = configuration.getVMArguments();
        String[] vmVMArgs = vmInstall.getVMArguments();
        if (vmVMArgs == null || vmVMArgs.length == 0) {
            return launchVMArgs;
        }
        IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
        int i = 0;
        while (i < vmVMArgs.length) {
            try {
                vmVMArgs[i] = manager.performStringSubstitution(vmVMArgs[i], false);
            }
            catch (CoreException e) {
                LaunchingPlugin.log(e.getStatus());
            }
            ++i;
        }
        String[] allVMArgs = new String[launchVMArgs.length + vmVMArgs.length];
        System.arraycopy(launchVMArgs, 0, allVMArgs, 0, launchVMArgs.length);
        System.arraycopy(vmVMArgs, 0, allVMArgs, launchVMArgs.length, vmVMArgs.length);
        return allVMArgs;
    }
}

