/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.connect.Connector$Argument
 *  com.sun.jdi.connect.Connector$IntegerArgument
 *  com.sun.jdi.connect.IllegalConnectorArgumentsException
 *  com.sun.jdi.connect.ListeningConnector
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.IProcess
 *  org.eclipse.jdi.Bootstrap
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import com.sun.jdi.connect.ListeningConnector;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.jdi.Bootstrap;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.SocketListenConnectorProcess;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;
import org.eclipse.jdt.launching.IVMConnector;

public class SocketListenConnector
implements IVMConnector {
    protected static ListeningConnector getListeningConnector() throws CoreException {
        ListeningConnector connector = null;
        Iterator iter = Bootstrap.virtualMachineManager().listeningConnectors().iterator();
        while (iter.hasNext()) {
            ListeningConnector lc = (ListeningConnector)iter.next();
            if (!lc.name().equals("com.sun.jdi.SocketListen")) continue;
            connector = lc;
            break;
        }
        if (connector == null) {
            SocketListenConnector.abort(LaunchingMessages.SocketListenConnector_0, null, 114);
        }
        return connector;
    }

    public String getIdentifier() {
        return IJavaLaunchConfigurationConstants.ID_SOCKET_LISTEN_VM_CONNECTOR;
    }

    public String getName() {
        return LaunchingMessages.SocketListenConnector_1;
    }

    public void connect(Map arguments, IProgressMonitor monitor, ILaunch launch) throws CoreException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        monitor.subTask(LaunchingMessages.SocketListenConnector_2);
        ListeningConnector connector = SocketListenConnector.getListeningConnector();
        String portNumberString = (String)arguments.get("port");
        if (portNumberString == null) {
            SocketListenConnector.abort(LaunchingMessages.SocketAttachConnector_Port_unspecified_for_remote_connection__2, null, 111);
        }
        Map acceptArguments = connector.defaultArguments();
        Connector.Argument param = (Connector.Argument)acceptArguments.get("port");
        param.setValue(portNumberString);
        try {
            monitor.subTask(MessageFormat.format((String)LaunchingMessages.SocketListenConnector_3, (Object[])new String[]{portNumberString}));
            connector.startListening(acceptArguments);
            SocketListenConnectorProcess process = new SocketListenConnectorProcess(launch, portNumberString);
            launch.addProcess((IProcess)process);
            process.waitForConnection(connector, acceptArguments);
        }
        catch (IOException e) {
            SocketListenConnector.abort(LaunchingMessages.SocketListenConnector_4, e, 113);
        }
        catch (IllegalConnectorArgumentsException e) {
            SocketListenConnector.abort(LaunchingMessages.SocketListenConnector_4, e, 113);
        }
    }

    public Map getDefaultArguments() throws CoreException {
        Map def = SocketListenConnector.getListeningConnector().defaultArguments();
        Connector.IntegerArgument arg = (Connector.IntegerArgument)def.get("port");
        arg.setValue(8000);
        return def;
    }

    public List getArgumentOrder() {
        ArrayList<String> list = new ArrayList<String>(1);
        list.add("port");
        return list;
    }

    protected static void abort(String message, Throwable exception, int code) throws CoreException {
        throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), code, message, exception));
    }
}

