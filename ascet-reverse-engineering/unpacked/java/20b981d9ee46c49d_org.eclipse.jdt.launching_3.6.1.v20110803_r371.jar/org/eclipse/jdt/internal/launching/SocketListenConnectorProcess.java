/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.connect.Connector$Argument
 *  com.sun.jdi.connect.IllegalConnectorArgumentsException
 *  com.sun.jdi.connect.ListeningConnector
 *  com.sun.jdi.connect.TransportTimeoutException
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.JobChangeAdapter
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IProcess
 *  org.eclipse.debug.core.model.IStreamsProxy
 *  org.eclipse.jdi.TimeoutException
 *  org.eclipse.jdt.debug.core.JDIDebugModel
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import com.sun.jdi.connect.ListeningConnector;
import com.sun.jdi.connect.TransportTimeoutException;
import java.io.IOException;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.IStreamsProxy;
import org.eclipse.jdi.TimeoutException;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;

public class SocketListenConnectorProcess
implements IProcess {
    private boolean fTerminated = false;
    private ILaunch fLaunch;
    private String fPort;
    private WaitForConnectionJob fWaitForConnectionJob;

    public SocketListenConnectorProcess(ILaunch launch, String port) {
        this.fLaunch = launch;
        this.fPort = port;
    }

    public void waitForConnection(ListeningConnector connector, Map arguments) throws CoreException {
        if (this.isTerminated()) {
            throw new CoreException(SocketListenConnectorProcess.getStatus(LaunchingMessages.SocketListenConnectorProcess_0, null, 113));
        }
        this.fWaitForConnectionJob = new WaitForConnectionJob(this, connector, arguments);
        this.fWaitForConnectionJob.setPriority(20);
        this.fWaitForConnectionJob.addJobChangeListener((IJobChangeListener)new JobChangeAdapter(){

            public void running(IJobChangeEvent event) {
                SocketListenConnectorProcess.this.fireReadyToAcceptEvent();
            }

            public void done(IJobChangeEvent event) {
                if (event.getResult().equals(Status.CANCEL_STATUS)) {
                    try {
                        SocketListenConnectorProcess.this.terminate();
                    }
                    catch (DebugException debugException) {}
                }
            }
        });
        this.fWaitForConnectionJob.schedule();
    }

    protected static IStatus getStatus(String message, Throwable exception, int code) {
        return new Status(4, LaunchingPlugin.getUniqueIdentifier(), code, message, exception);
    }

    public int getExitValue() throws DebugException {
        return 0;
    }

    public String getLabel() {
        return MessageFormat.format((String)LaunchingMessages.SocketListenConnectorProcess_1, (Object[])new String[]{this.fPort});
    }

    public ILaunch getLaunch() {
        return this.fLaunch;
    }

    public boolean canTerminate() {
        return !this.fTerminated;
    }

    public boolean isTerminated() {
        return this.fTerminated;
    }

    public void terminate() throws DebugException {
        if (!this.fTerminated) {
            this.fTerminated = true;
            if (this.fWaitForConnectionJob != null) {
                this.fWaitForConnectionJob.cancel();
                this.fWaitForConnectionJob.stopListening();
                this.fWaitForConnectionJob = null;
            }
            this.fireTerminateEvent();
        }
    }

    protected void fireTerminateEvent() {
        DebugPlugin manager = DebugPlugin.getDefault();
        if (manager != null) {
            manager.fireDebugEventSet(new DebugEvent[]{new DebugEvent((Object)this, 8)});
        }
    }

    protected void fireReadyToAcceptEvent() {
        DebugPlugin manager = DebugPlugin.getDefault();
        if (manager != null) {
            manager.fireDebugEventSet(new DebugEvent[]{new DebugEvent((Object)this, 32, 1001)});
        }
    }

    public IStreamsProxy getStreamsProxy() {
        return null;
    }

    public String getAttribute(String key) {
        return null;
    }

    public void setAttribute(String key, String value) {
    }

    public Object getAdapter(Class adapter) {
        return null;
    }

    class WaitForConnectionJob
    extends Job {
        private IProcess fWaitProcess;
        private ListeningConnector fConnector;
        private Map fArguments;
        private boolean fListeningStopped = false;

        public WaitForConnectionJob(IProcess waitProcess, ListeningConnector connector, Map arguments) {
            super(SocketListenConnectorProcess.this.getLabel());
            this.fWaitProcess = waitProcess;
            this.fConnector = connector;
            this.fArguments = arguments;
        }

        protected IStatus run(IProgressMonitor monitor) {
            try {
                Connector.Argument timeout = (Connector.Argument)this.fArguments.get("timeout");
                if (timeout != null) {
                    timeout.setValue("3000");
                }
                VirtualMachine vm = null;
                while (vm == null && !monitor.isCanceled()) {
                    try {
                        vm = this.fConnector.accept(this.fArguments);
                    }
                    catch (TransportTimeoutException transportTimeoutException) {}
                }
                if (monitor.isCanceled()) {
                    this.fConnector.stopListening(this.fArguments);
                    IStatus iStatus = Status.CANCEL_STATUS;
                    return iStatus;
                }
                ILaunchConfiguration configuration = SocketListenConnectorProcess.this.fLaunch.getLaunchConfiguration();
                boolean allowTerminate = false;
                if (configuration != null) {
                    try {
                        allowTerminate = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_ALLOW_TERMINATE, false);
                    }
                    catch (CoreException e) {
                        LaunchingPlugin.log(e);
                    }
                }
                Connector.Argument portArg = (Connector.Argument)this.fArguments.get("port");
                String vmLabel = this.constructVMLabel(vm, portArg.value(), SocketListenConnectorProcess.this.fLaunch.getLaunchConfiguration());
                IDebugTarget debugTarget = JDIDebugModel.newDebugTarget((ILaunch)SocketListenConnectorProcess.this.fLaunch, (VirtualMachine)vm, (String)vmLabel, null, (boolean)allowTerminate, (boolean)true);
                SocketListenConnectorProcess.this.fLaunch.addDebugTarget(debugTarget);
                SocketListenConnectorProcess.this.fLaunch.removeProcess(this.fWaitProcess);
                IStatus iStatus = Status.OK_STATUS;
                return iStatus;
            }
            catch (IOException e) {
                if (this.fListeningStopped) {
                    IStatus iStatus = Status.CANCEL_STATUS;
                    return iStatus;
                }
                IStatus iStatus = SocketListenConnectorProcess.getStatus(LaunchingMessages.SocketListenConnectorProcess_4, e, 113);
                return iStatus;
            }
            catch (IllegalConnectorArgumentsException e) {
                IStatus iStatus = SocketListenConnectorProcess.getStatus(LaunchingMessages.SocketListenConnectorProcess_4, e, 113);
                return iStatus;
            }
            finally {
                this.stopListening();
            }
        }

        protected void canceling() {
            this.stopListening();
        }

        protected void stopListening() {
            if (!this.fListeningStopped) {
                try {
                    this.fListeningStopped = true;
                    this.fConnector.stopListening(this.fArguments);
                }
                catch (IOException e) {
                    this.done(SocketListenConnectorProcess.getStatus(LaunchingMessages.SocketListenConnectorProcess_5, e, 113));
                }
                catch (IllegalConnectorArgumentsException e) {
                    this.done(SocketListenConnectorProcess.getStatus(LaunchingMessages.SocketListenConnectorProcess_5, e, 113));
                }
            }
        }

        protected String constructVMLabel(VirtualMachine vm, String port, ILaunchConfiguration configuration) {
            String name = null;
            try {
                name = vm.name();
            }
            catch (TimeoutException timeoutException) {
            }
            catch (VMDisconnectedException vMDisconnectedException) {}
            if (name == null) {
                name = configuration == null ? "" : configuration.getName();
            }
            StringBuffer buffer = new StringBuffer(name);
            buffer.append('[');
            buffer.append(port);
            buffer.append(']');
            return buffer.toString();
        }
    }
}

