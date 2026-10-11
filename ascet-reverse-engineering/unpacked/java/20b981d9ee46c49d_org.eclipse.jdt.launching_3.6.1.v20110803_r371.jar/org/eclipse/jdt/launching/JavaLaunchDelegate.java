/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.ILaunchConfiguration
 */
package org.eclipse.jdt.launching;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.launching.AbstractJavaLaunchConfigurationDelegate;
import org.eclipse.jdt.launching.ExecutionArguments;
import org.eclipse.jdt.launching.IVMRunner;
import org.eclipse.jdt.launching.VMRunnerConfiguration;

public class JavaLaunchDelegate
extends AbstractJavaLaunchConfigurationDelegate {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void launch(ILaunchConfiguration configuration, String mode, ILaunch launch, IProgressMonitor monitor) throws CoreException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        monitor.beginTask(MessageFormat.format((String)"{0}...", (Object[])new String[]{configuration.getName()}), 3);
        if (monitor.isCanceled()) {
            return;
        }
        try {
            monitor.subTask(LaunchingMessages.JavaLocalApplicationLaunchConfigurationDelegate_Verifying_launch_attributes____1);
            String mainTypeName = this.verifyMainTypeName(configuration);
            IVMRunner runner = this.getVMRunner(configuration, mode);
            File workingDir = this.verifyWorkingDirectory(configuration);
            String workingDirName = null;
            if (workingDir != null) {
                workingDirName = workingDir.getAbsolutePath();
            }
            String[] envp = this.getEnvironment(configuration);
            String pgmArgs = this.getProgramArguments(configuration);
            String vmArgs = this.getVMArguments(configuration);
            ExecutionArguments execArgs = new ExecutionArguments(vmArgs, pgmArgs);
            Map vmAttributesMap = this.getVMSpecificAttributesMap(configuration);
            String[] classpath = this.getClasspath(configuration);
            VMRunnerConfiguration runConfig = new VMRunnerConfiguration(mainTypeName, classpath);
            runConfig.setProgramArguments(execArgs.getProgramArgumentsArray());
            runConfig.setEnvironment(envp);
            runConfig.setVMArguments(execArgs.getVMArgumentsArray());
            runConfig.setWorkingDirectory(workingDirName);
            runConfig.setVMSpecificAttributesMap(vmAttributesMap);
            runConfig.setBootClassPath(this.getBootpath(configuration));
            if (monitor.isCanceled()) {
                return;
            }
            this.prepareStopInMain(configuration);
            monitor.worked(1);
            monitor.subTask(LaunchingMessages.JavaLocalApplicationLaunchConfigurationDelegate_Creating_source_locator____2);
            this.setDefaultSourceLocator(launch, configuration);
            monitor.worked(1);
            runner.run(runConfig, launch, monitor);
            if (!monitor.isCanceled()) return;
            return;
        }
        finally {
            monitor.done();
        }
    }
}

