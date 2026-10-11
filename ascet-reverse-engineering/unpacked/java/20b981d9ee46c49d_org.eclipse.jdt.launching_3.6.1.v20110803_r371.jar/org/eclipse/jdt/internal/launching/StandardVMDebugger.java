/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.connect.Connector$IntegerArgument
 *  com.sun.jdi.connect.IllegalConnectorArgumentsException
 *  com.sun.jdi.connect.ListeningConnector
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IProcess
 *  org.eclipse.debug.core.model.IStreamsProxy
 *  org.eclipse.jdi.Bootstrap
 *  org.eclipse.jdt.debug.core.JDIDebugModel
 */
package org.eclipse.jdt.internal.launching;

import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import com.sun.jdi.connect.ListeningConnector;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.IStreamsProxy;
import org.eclipse.jdi.Bootstrap;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.LibraryInfo;
import org.eclipse.jdt.internal.launching.StandardVM;
import org.eclipse.jdt.internal.launching.StandardVMRunner;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstall2;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.SocketUtil;
import org.eclipse.jdt.launching.VMRunnerConfiguration;

public class StandardVMDebugger
extends StandardVMRunner {
    protected static final String JAVA_JVM_VERSION = "JAVA_JVM_VERSION";
    protected static final String JRE = "jre";
    protected static final String BIN = "bin";

    public StandardVMDebugger(IVMInstall vmInstance) {
        super(vmInstance);
    }

    /*
     * Unable to fully structure code
     */
    public void run(VMRunnerConfiguration config, ILaunch launch, IProgressMonitor monitor) throws CoreException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        subMonitor = new SubProgressMonitor(monitor, 1);
        subMonitor.beginTask(LaunchingMessages.StandardVMDebugger_Launching_VM____1, 4);
        subMonitor.subTask(LaunchingMessages.StandardVMDebugger_Finding_free_socket____2);
        port = SocketUtil.findFreePort();
        if (port == -1) {
            this.abort(LaunchingMessages.StandardVMDebugger_Could_not_find_a_free_socket_for_the_debugger_1, null, 118);
        }
        subMonitor.worked(1);
        if (monitor.isCanceled()) {
            return;
        }
        subMonitor.subTask(LaunchingMessages.StandardVMDebugger_Constructing_command_line____3);
        program = this.constructProgramString(config);
        arguments = new ArrayList<String>(12);
        arguments.add(program);
        if (this.fVMInstance instanceof StandardVM && ((StandardVM)this.fVMInstance).getDebugArgs() != null) {
            debugArgString = ((StandardVM)this.fVMInstance).getDebugArgs().replaceAll("\\Q${port}\\E", Integer.toString(port));
            debugArgs = DebugPlugin.parseArguments((String)debugArgString);
            i = 0;
            while (i < debugArgs.length) {
                arguments.add(debugArgs[i]);
                ++i;
            }
        } else {
            version = this.getJavaVersion();
            if (version < 1.5) {
                arguments.add("-Xdebug");
                arguments.add("-Xnoagent");
            }
            if (version < 1.4) {
                arguments.add("-Djava.compiler=NONE");
            }
            if (version < 1.5) {
                arguments.add("-Xrunjdwp:transport=dt_socket,suspend=y,address=localhost:" + port);
            } else {
                arguments.add("-agentlib:jdwp=transport=dt_socket,suspend=y,address=localhost:" + port);
            }
        }
        allVMArgs = this.combineVmArgs(config, this.fVMInstance);
        this.addArguments(this.ensureEncoding(launch, allVMArgs), arguments);
        this.addBootClassPathArguments(arguments, config);
        cp = config.getClassPath();
        if (cp.length > 0) {
            arguments.add("-classpath");
            arguments.add(this.convertClassPath(cp));
        }
        arguments.add(config.getClassToLaunch());
        this.addArguments(config.getProgramArguments(), arguments);
        cmdLine = new String[arguments.size()];
        arguments.toArray(cmdLine);
        envp = this.prependJREPath(config.getEnvironment(), (IPath)new Path(program));
        if (monitor.isCanceled()) {
            return;
        }
        subMonitor.worked(1);
        subMonitor.subTask(LaunchingMessages.StandardVMDebugger_Starting_virtual_machine____4);
        connector = this.getConnector();
        if (connector == null) {
            this.abort(LaunchingMessages.StandardVMDebugger_Couldn__t_find_an_appropriate_debug_connector_2, null, 119);
        }
        map = connector.defaultArguments();
        this.specifyArguments(map, port);
        p = null;
        try {
            try {
                if (monitor.isCanceled()) {
                    return;
                }
                connector.startListening(map);
                workingDir = this.getWorkingDir(config);
                p = this.exec(cmdLine, workingDir, envp);
                if (p == null) {
                    return;
                }
                if (monitor.isCanceled()) {
                    p.destroy();
                    return;
                }
                process = this.newProcess(launch, p, StandardVMDebugger.renderProcessLabel(cmdLine), this.getDefaultProcessMap());
                process.setAttribute(IProcess.ATTR_CMDLINE, this.renderCommandLine(cmdLine));
                subMonitor.worked(1);
                subMonitor.subTask(LaunchingMessages.StandardVMDebugger_Establishing_debug_connection____5);
                retry = false;
                while (true) {
                    try {
                        runnable = new ConnectRunnable(connector, map);
                        connectThread = new Thread((Runnable)runnable, "Listening Connector");
                        connectThread.setDaemon(true);
                        connectThread.start();
                        while (connectThread.isAlive()) {
                            if (!monitor.isCanceled()) ** break block45
                            try {
                                connector.stopListening(map);
                            }
                            catch (IOException v0) {}
                            p.destroy();
                            return;
                        }
                    }
                    catch (InterruptedIOException e) {
                        this.checkErrorMessage(process);
                        status = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 117, "", (Throwable)e);
                        handler = DebugPlugin.getDefault().getStatusHandler((IStatus)status);
                        retry = false;
                        if (handler == null) {
                            throw new CoreException((IStatus)status);
                        }
                        result = handler.handleStatus((IStatus)status, (Object)this);
                        if (!(result instanceof Boolean)) continue;
                        retry = (Boolean)result;
                        if (retry) continue;
                        break;
                    }
                    {
                        try {
                            p.exitValue();
                            try {
                                connector.stopListening(map);
                            }
                            catch (IOException v1) {}
                            this.checkErrorMessage(process);
                        }
                        catch (IllegalThreadStateException v2) {}
                        try {
                            Thread.sleep(100L);
                        }
                        catch (InterruptedException v3) {}
                        continue;
                    }
                    ex = runnable.getException();
                    if (ex instanceof IllegalConnectorArgumentsException) {
                        throw (IllegalConnectorArgumentsException)ex;
                    }
                    if (ex instanceof InterruptedIOException) {
                        throw (InterruptedIOException)ex;
                    }
                    if (ex instanceof IOException) {
                        throw (IOException)ex;
                    }
                    vm = runnable.getVirtualMachine();
                    if (vm != null) {
                        this.createDebugTarget(config, launch, port, process, vm);
                        subMonitor.worked(1);
                        subMonitor.done();
                    }
                    return;
                }
            }
            finally {
                connector.stopListening(map);
            }
        }
        catch (IOException e) {
            this.abort(LaunchingMessages.StandardVMDebugger_Couldn__t_connect_to_VM_4, e, 120);
        }
        catch (IllegalConnectorArgumentsException e) {
            this.abort(LaunchingMessages.StandardVMDebugger_Couldn__t_connect_to_VM_5, e, 120);
        }
        if (p != null) {
            p.destroy();
        }
    }

    protected String[] prependJREPath(String[] env, IPath jdkpath) {
        block11: {
            if (!"win32".equals(Platform.getOS())) break block11;
            IPath jrepath = jdkpath.removeLastSegments(1);
            if (jrepath.lastSegment().equals(BIN)) {
                int count = jrepath.segmentCount();
                if (count > 1 && !jrepath.segment(count - 2).equalsIgnoreCase(JRE)) {
                    jrepath = jrepath.removeLastSegments(1).append(JRE).append(BIN);
                }
            } else {
                jrepath = jrepath.append(JRE).append(BIN);
            }
            if (jrepath.toFile().exists()) {
                String jrestr = jrepath.toOSString();
                if (env == null) {
                    Map map = DebugPlugin.getDefault().getLaunchManager().getNativeEnvironment();
                    env = new String[map.size()];
                    String var = null;
                    int index = 0;
                    Iterator iter = map.keySet().iterator();
                    while (iter.hasNext()) {
                        var = (String)iter.next();
                        String value = (String)map.get(var);
                        if (value == null) {
                            value = "";
                        }
                        if (var.equalsIgnoreCase("path") && value.indexOf(jrestr) == -1) {
                            value = String.valueOf(jrestr) + ';' + value;
                        }
                        env[index] = String.valueOf(var) + "=" + value;
                        ++index;
                    }
                } else {
                    String var = null;
                    int esign = -1;
                    int i = 0;
                    while (i < env.length) {
                        esign = env[i].indexOf(61);
                        if (esign > -1 && (var = env[i].substring(0, esign)) != null && var.equalsIgnoreCase("path") && env[i].indexOf(jrestr) == -1) {
                            env[i] = String.valueOf(var) + "=" + jrestr + ';' + (esign == env.length ? "" : env[i].substring(esign + 1));
                            break;
                        }
                        ++i;
                    }
                }
            }
        }
        return super.prependJREPath(env);
    }

    protected IDebugTarget createDebugTarget(VMRunnerConfiguration config, ILaunch launch, int port, IProcess process, VirtualMachine vm) {
        return JDIDebugModel.newDebugTarget((ILaunch)launch, (VirtualMachine)vm, (String)this.renderDebugTarget(config.getClassToLaunch(), port), (IProcess)process, (boolean)true, (boolean)false, (boolean)config.isResumeOnStartup());
    }

    private double getJavaVersion() {
        String version = null;
        if (this.fVMInstance instanceof IVMInstall2) {
            version = ((IVMInstall2)((Object)this.fVMInstance)).getJavaVersion();
        } else {
            LibraryInfo libInfo = LaunchingPlugin.getLibraryInfo(this.fVMInstance.getInstallLocation().getAbsolutePath());
            if (libInfo == null) {
                return 0.0;
            }
            version = libInfo.getVersion();
        }
        if (version == null) {
            return 0.0;
        }
        int index = version.indexOf(".");
        int nextIndex = version.indexOf(".", index + 1);
        try {
            if (index > 0 && nextIndex > index) {
                return Double.parseDouble(version.substring(0, nextIndex));
            }
            return Double.parseDouble(version);
        }
        catch (NumberFormatException numberFormatException) {
            return 0.0;
        }
    }

    protected void checkErrorMessage(IProcess process) throws CoreException {
        IStreamsProxy streamsProxy = process.getStreamsProxy();
        if (streamsProxy != null) {
            String errorMessage = streamsProxy.getErrorStreamMonitor().getContents();
            if (errorMessage.length() == 0) {
                errorMessage = streamsProxy.getOutputStreamMonitor().getContents();
            }
            if (errorMessage.length() != 0) {
                this.abort(errorMessage, null, 116);
            }
        }
    }

    protected void specifyArguments(Map map, int portNumber) {
        Connector.IntegerArgument port = (Connector.IntegerArgument)map.get("port");
        port.setValue(portNumber);
        Connector.IntegerArgument timeoutArg = (Connector.IntegerArgument)map.get("timeout");
        if (timeoutArg != null) {
            int timeout = Platform.getPreferencesService().getInt("org.eclipse.jdt.launching", JavaRuntime.PREF_CONNECT_TIMEOUT, 20000, null);
            timeoutArg.setValue(timeout);
        }
    }

    protected ListeningConnector getConnector() {
        List connectors = Bootstrap.virtualMachineManager().listeningConnectors();
        int i = 0;
        while (i < connectors.size()) {
            ListeningConnector c = (ListeningConnector)connectors.get(i);
            if ("com.sun.jdi.SocketListen".equals(c.name())) {
                return c;
            }
            ++i;
        }
        return null;
    }

    class ConnectRunnable
    implements Runnable {
        private VirtualMachine fVirtualMachine = null;
        private ListeningConnector fConnector = null;
        private Map fConnectionMap = null;
        private Exception fException = null;

        public ConnectRunnable(ListeningConnector connector, Map map) {
            this.fConnector = connector;
            this.fConnectionMap = map;
        }

        public void run() {
            try {
                this.fVirtualMachine = this.fConnector.accept(this.fConnectionMap);
            }
            catch (IOException e) {
                this.fException = e;
            }
            catch (IllegalConnectorArgumentsException e) {
                this.fException = e;
            }
        }

        public VirtualMachine getVirtualMachine() {
            return this.fVirtualMachine;
        }

        public Exception getException() {
            return this.fException;
        }
    }
}

