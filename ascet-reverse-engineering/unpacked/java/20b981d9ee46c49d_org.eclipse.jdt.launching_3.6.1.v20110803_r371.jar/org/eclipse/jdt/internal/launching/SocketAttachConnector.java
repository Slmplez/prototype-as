/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.connect.AttachingConnector
 *  com.sun.jdi.connect.Connector$Argument
 *  com.sun.jdi.connect.Connector$IntegerArgument
 *  com.sun.jdi.connect.IllegalConnectorArgumentsException
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.jdi.Bootstrap
 *  org.eclipse.jdi.TimeoutException
 *  org.eclipse.jdt.debug.core.JDIDebugModel
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.AttachingConnector;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import java.io.IOException;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.jdi.Bootstrap;
import org.eclipse.jdi.TimeoutException;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;
import org.eclipse.jdt.launching.IVMConnector;

public class SocketAttachConnector
implements IVMConnector {
    protected static AttachingConnector getAttachingConnector() throws CoreException {
        AttachingConnector connector = null;
        Iterator iter = Bootstrap.virtualMachineManager().attachingConnectors().iterator();
        while (iter.hasNext()) {
            AttachingConnector lc = (AttachingConnector)iter.next();
            if (!lc.name().equals("com.sun.jdi.SocketAttach")) continue;
            connector = lc;
            break;
        }
        if (connector == null) {
            SocketAttachConnector.abort(LaunchingMessages.SocketAttachConnector_Socket_attaching_connector_not_available_3, null, 114);
        }
        return connector;
    }

    public String getIdentifier() {
        return IJavaLaunchConfigurationConstants.ID_SOCKET_ATTACH_VM_CONNECTOR;
    }

    public String getName() {
        return LaunchingMessages.SocketAttachConnector_Standard__Socket_Attach__4;
    }

    protected static void abort(String message, Throwable exception, int code) throws CoreException {
        throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), code, message, exception));
    }

    public void connect(Map arguments, IProgressMonitor monitor, ILaunch launch) throws CoreException {
        String host;
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 1);
        subMonitor.beginTask(LaunchingMessages.SocketAttachConnector_Connecting____1, 2);
        subMonitor.subTask(LaunchingMessages.SocketAttachConnector_Configuring_connection____1);
        AttachingConnector connector = SocketAttachConnector.getAttachingConnector();
        String portNumberString = (String)arguments.get("port");
        if (portNumberString == null) {
            SocketAttachConnector.abort(LaunchingMessages.SocketAttachConnector_Port_unspecified_for_remote_connection__2, null, 111);
        }
        if ((host = (String)arguments.get("hostname")) == null) {
            SocketAttachConnector.abort(LaunchingMessages.SocketAttachConnector_Hostname_unspecified_for_remote_connection__4, null, 109);
        }
        Map map = connector.defaultArguments();
        Connector.Argument param = (Connector.Argument)map.get("hostname");
        param.setValue(host);
        param = (Connector.Argument)map.get("port");
        param.setValue(portNumberString);
        String timeoutString = (String)arguments.get("timeout");
        if (timeoutString != null) {
            param = (Connector.Argument)map.get("timeout");
            param.setValue(timeoutString);
        }
        ILaunchConfiguration configuration = launch.getLaunchConfiguration();
        boolean allowTerminate = false;
        if (configuration != null) {
            allowTerminate = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_ALLOW_TERMINATE, false);
        }
        subMonitor.worked(1);
        subMonitor.subTask(LaunchingMessages.SocketAttachConnector_Establishing_connection____2);
        try {
            VirtualMachine vm = connector.attach(map);
            String vmLabel = this.constructVMLabel(vm, host, portNumberString, configuration);
            IDebugTarget debugTarget = JDIDebugModel.newDebugTarget((ILaunch)launch, (VirtualMachine)vm, (String)vmLabel, null, (boolean)allowTerminate, (boolean)true);
            launch.addDebugTarget(debugTarget);
            subMonitor.worked(1);
            subMonitor.done();
        }
        catch (TimeoutException e) {
            SocketAttachConnector.abort(LaunchingMessages.SocketAttachConnector_0, e, 113);
        }
        catch (UnknownHostException e) {
            SocketAttachConnector.abort(MessageFormat.format((String)LaunchingMessages.SocketAttachConnector_Failed_to_connect_to_remote_VM_because_of_unknown_host____0___1, (Object[])new String[]{host}), e, 113);
        }
        catch (ConnectException e) {
            SocketAttachConnector.abort(LaunchingMessages.SocketAttachConnector_Failed_to_connect_to_remote_VM_as_connection_was_refused_2, e, 113);
        }
        catch (IOException e) {
            SocketAttachConnector.abort(LaunchingMessages.SocketAttachConnector_Failed_to_connect_to_remote_VM_1, e, 113);
        }
        catch (IllegalConnectorArgumentsException e) {
            SocketAttachConnector.abort(LaunchingMessages.SocketAttachConnector_Failed_to_connect_to_remote_VM_1, e, 113);
        }
    }

    protected String constructVMLabel(VirtualMachine vm, String host, String port, ILaunchConfiguration configuration) {
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
        buffer.append(host);
        buffer.append(':');
        buffer.append(port);
        buffer.append(']');
        return buffer.toString();
    }

    public Map getDefaultArguments() throws CoreException {
        Map def = SocketAttachConnector.getAttachingConnector().defaultArguments();
        Connector.IntegerArgument arg = (Connector.IntegerArgument)def.get("port");
        arg.setValue(8000);
        return def;
    }

    public List getArgumentOrder() {
        ArrayList<String> list = new ArrayList<String>(2);
        list.add("hostname");
        list.add("port");
        return list;
    }
}

