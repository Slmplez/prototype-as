/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.IProcess
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.StandardVM;
import org.eclipse.jdt.internal.launching.StandardVMType;
import org.eclipse.jdt.launching.AbstractVMRunner;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstall2;
import org.eclipse.jdt.launching.VMRunnerConfiguration;

public class StandardVMRunner
extends AbstractVMRunner {
    protected IVMInstall fVMInstance;

    public StandardVMRunner(IVMInstall vmInstance) {
        this.fVMInstance = vmInstance;
    }

    protected String renderDebugTarget(String classToRun, int host) {
        String format = LaunchingMessages.StandardVMRunner__0__at_localhost__1__1;
        return MessageFormat.format((String)format, (Object[])new String[]{classToRun, String.valueOf(host)});
    }

    public static String renderProcessLabel(String[] commandLine) {
        String format = LaunchingMessages.StandardVMRunner__0____1___2;
        String timestamp = DateFormat.getDateTimeInstance((int)2, (int)2).format(new Date(System.currentTimeMillis()));
        return MessageFormat.format((String)format, (Object[])new String[]{commandLine[0], timestamp});
    }

    protected String renderCommandLine(String[] commandLine) {
        if (commandLine.length < 1) {
            return "";
        }
        StringBuffer buf = new StringBuffer();
        int i = 0;
        while (i < commandLine.length) {
            buf.append(' ');
            char[] characters = commandLine[i].toCharArray();
            StringBuffer command = new StringBuffer();
            boolean containsSpace = false;
            int j = 0;
            while (j < characters.length) {
                char character = characters[j];
                if (character == '\"') {
                    command.append('\\');
                } else if (character == ' ') {
                    containsSpace = true;
                }
                command.append(character);
                ++j;
            }
            if (containsSpace) {
                buf.append('\"');
                buf.append(command.toString());
                buf.append('\"');
            } else {
                buf.append(command.toString());
            }
            ++i;
        }
        return buf.toString();
    }

    protected void addArguments(String[] args, List v) {
        if (args == null) {
            return;
        }
        int i = 0;
        while (i < args.length) {
            v.add(args[i]);
            ++i;
        }
    }

    protected File getWorkingDir(VMRunnerConfiguration config) throws CoreException {
        String path = config.getWorkingDirectory();
        if (path == null) {
            return null;
        }
        File dir = new File(path);
        if (!dir.isDirectory()) {
            this.abort(MessageFormat.format((String)LaunchingMessages.StandardVMRunner_Specified_working_directory_does_not_exist_or_is_not_a_directory___0__3, (Object[])new String[]{path}), null, 108);
        }
        return dir;
    }

    protected String getPluginIdentifier() {
        return LaunchingPlugin.getUniqueIdentifier();
    }

    protected String constructProgramString(VMRunnerConfiguration config) throws CoreException {
        String installLocation;
        File exe;
        String command = null;
        Map map = config.getVMSpecificAttributesMap();
        if (map != null) {
            command = (String)map.get(IJavaLaunchConfigurationConstants.ATTR_JAVA_COMMAND);
        }
        if (command == null) {
            File exe2 = null;
            exe2 = this.fVMInstance instanceof StandardVM ? ((StandardVM)this.fVMInstance).getJavaExecutable() : StandardVMType.findJavaExecutable(this.fVMInstance.getInstallLocation());
            if (exe2 == null) {
                this.abort(MessageFormat.format((String)LaunchingMessages.StandardVMRunner_Unable_to_locate_executable_for__0__1, (Object[])new String[]{this.fVMInstance.getName()}), null, 150);
            } else {
                return exe2.getAbsolutePath();
            }
        }
        if (this.fileExists(exe = new File(String.valueOf(installLocation = String.valueOf(this.fVMInstance.getInstallLocation().getAbsolutePath()) + File.separatorChar) + "bin" + File.separatorChar + command))) {
            return exe.getAbsolutePath();
        }
        if (this.fileExists(exe = new File(String.valueOf(exe.getAbsolutePath()) + ".exe"))) {
            return exe.getAbsolutePath();
        }
        exe = new File(String.valueOf(installLocation) + "jre" + File.separatorChar + "bin" + File.separatorChar + command);
        if (this.fileExists(exe)) {
            return exe.getAbsolutePath();
        }
        if (this.fileExists(exe = new File(String.valueOf(exe.getAbsolutePath()) + ".exe"))) {
            return exe.getAbsolutePath();
        }
        this.abort(MessageFormat.format((String)LaunchingMessages.StandardVMRunner_Specified_executable__0__does_not_exist_for__1__4, (Object[])new String[]{command, this.fVMInstance.getName()}), null, 150);
        return null;
    }

    protected boolean fileExists(File file) {
        return file.exists() && file.isFile();
    }

    protected String convertClassPath(String[] cp) {
        int pathCount = 0;
        StringBuffer buf = new StringBuffer();
        if (cp.length == 0) {
            return "";
        }
        int i = 0;
        while (i < cp.length) {
            if (pathCount > 0) {
                buf.append(File.pathSeparator);
            }
            buf.append(cp[i]);
            ++pathCount;
            ++i;
        }
        return buf.toString();
    }

    protected String[] ensureEncoding(ILaunch launch, String[] vmargs) {
        boolean foundencoding = false;
        int i = 0;
        while (i < vmargs.length) {
            if (vmargs[i].startsWith("-Dfile.encoding=")) {
                foundencoding = true;
            }
            ++i;
        }
        if (!foundencoding) {
            String encoding = launch.getAttribute("org.eclipse.debug.ui.ATTR_CONSOLE_ENCODING");
            if (encoding == null) {
                return vmargs;
            }
            String[] newargs = new String[vmargs.length + 1];
            System.arraycopy(vmargs, 0, newargs, 0, vmargs.length);
            newargs[newargs.length - 1] = "-Dfile.encoding=" + encoding;
            return newargs;
        }
        return vmargs;
    }

    public void run(VMRunnerConfiguration config, ILaunch launch, IProgressMonitor monitor) throws CoreException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 1);
        subMonitor.beginTask(LaunchingMessages.StandardVMRunner_Launching_VM____1, 2);
        subMonitor.subTask(LaunchingMessages.StandardVMRunner_Constructing_command_line____2);
        String program = this.constructProgramString(config);
        ArrayList<String> arguments = new ArrayList<String>();
        arguments.add(program);
        String[] allVMArgs = this.combineVmArgs(config, this.fVMInstance);
        this.addArguments(this.ensureEncoding(launch, allVMArgs), arguments);
        this.addBootClassPathArguments(arguments, config);
        String[] cp = config.getClassPath();
        if (cp.length > 0) {
            arguments.add("-classpath");
            arguments.add(this.convertClassPath(cp));
        }
        arguments.add(config.getClassToLaunch());
        String[] programArgs = config.getProgramArguments();
        this.addArguments(programArgs, arguments);
        String[] cmdLine = new String[arguments.size()];
        arguments.toArray(cmdLine);
        String[] envp = this.prependJREPath(config.getEnvironment());
        subMonitor.worked(1);
        if (monitor.isCanceled()) {
            return;
        }
        subMonitor.subTask(LaunchingMessages.StandardVMRunner_Starting_virtual_machine____3);
        Process p = null;
        File workingDir = this.getWorkingDir(config);
        p = this.exec(cmdLine, workingDir, envp);
        if (p == null) {
            return;
        }
        if (monitor.isCanceled()) {
            p.destroy();
            return;
        }
        IProcess process = this.newProcess(launch, p, StandardVMRunner.renderProcessLabel(cmdLine), this.getDefaultProcessMap());
        process.setAttribute(IProcess.ATTR_CMDLINE, this.renderCommandLine(cmdLine));
        subMonitor.worked(1);
        subMonitor.done();
    }

    protected String[] prependJREPath(String[] env) {
        IVMInstall2 vm;
        String javaVersion;
        if ("macosx".equals(Platform.getOS()) && this.fVMInstance instanceof IVMInstall2 && (javaVersion = (vm = (IVMInstall2)((Object)this.fVMInstance)).getJavaVersion()) != null) {
            if (env == null) {
                Map map = DebugPlugin.getDefault().getLaunchManager().getNativeEnvironmentCasePreserved();
                if (map.containsKey("JAVA_JVM_VERSION")) {
                    String[] env2 = new String[map.size()];
                    Iterator iterator = map.entrySet().iterator();
                    int i = 0;
                    while (iterator.hasNext()) {
                        Map.Entry entry = iterator.next();
                        String key = (String)entry.getKey();
                        env2[i] = "JAVA_JVM_VERSION".equals(key) ? String.valueOf(key) + "=" + javaVersion : String.valueOf(key) + "=" + (String)entry.getValue();
                        ++i;
                    }
                    env = env2;
                }
            } else {
                int i = 0;
                while (i < env.length) {
                    String string = env[i];
                    if (string.startsWith("JAVA_JVM_VERSION")) {
                        env[i] = "JAVA_JVM_VERSION=" + javaVersion;
                        break;
                    }
                    ++i;
                }
            }
        }
        return env;
    }

    protected void addBootClassPathArguments(List arguments, VMRunnerConfiguration config) {
        String[] prependBootCP = null;
        String[] bootCP = null;
        String[] appendBootCP = null;
        Map map = config.getVMSpecificAttributesMap();
        if (map != null) {
            prependBootCP = (String[])map.get(IJavaLaunchConfigurationConstants.ATTR_BOOTPATH_PREPEND);
            bootCP = (String[])map.get(IJavaLaunchConfigurationConstants.ATTR_BOOTPATH);
            appendBootCP = (String[])map.get(IJavaLaunchConfigurationConstants.ATTR_BOOTPATH_APPEND);
        }
        if (prependBootCP == null && bootCP == null && appendBootCP == null) {
            bootCP = config.getBootClassPath();
        }
        if (prependBootCP != null) {
            arguments.add("-Xbootclasspath/p:" + this.convertClassPath(prependBootCP));
        }
        if (bootCP != null && bootCP.length > 0) {
            arguments.add("-Xbootclasspath:" + this.convertClassPath(bootCP));
        }
        if (appendBootCP != null) {
            arguments.add("-Xbootclasspath/a:" + this.convertClassPath(appendBootCP));
        }
    }
}

