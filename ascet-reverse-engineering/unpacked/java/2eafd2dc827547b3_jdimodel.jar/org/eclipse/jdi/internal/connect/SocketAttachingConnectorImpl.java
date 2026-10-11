/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.connect.AttachingConnector
 *  com.sun.jdi.connect.Connector$IntegerArgument
 *  com.sun.jdi.connect.Connector$StringArgument
 *  com.sun.jdi.connect.IllegalConnectorArgumentsException
 *  com.sun.jdi.connect.spi.Connection
 */
package org.eclipse.jdi.internal.connect;

import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.AttachingConnector;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import com.sun.jdi.connect.spi.Connection;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdi.internal.VirtualMachineManagerImpl;
import org.eclipse.jdi.internal.connect.ConnectMessages;
import org.eclipse.jdi.internal.connect.ConnectorImpl;
import org.eclipse.jdi.internal.connect.SocketTransportImpl;

public class SocketAttachingConnectorImpl
extends ConnectorImpl
implements AttachingConnector {
    private String fHostname;
    private int fPort;
    private int fTimeout;

    public SocketAttachingConnectorImpl(VirtualMachineManagerImpl virtualMachineManager) {
        super(virtualMachineManager);
        SocketTransportImpl transport = new SocketTransportImpl();
        this.setTransport(transport);
    }

    public Map defaultArguments() {
        HashMap<String, ConnectorImpl.ArgumentImpl> arguments = new HashMap<String, ConnectorImpl.ArgumentImpl>(2);
        ConnectorImpl.StringArgumentImpl strArg = new ConnectorImpl.StringArgumentImpl("hostname", ConnectMessages.SocketAttachingConnectorImpl_Machine_name_to_which_to_attach_for_VM_connections_1, ConnectMessages.SocketAttachingConnectorImpl_Host_2, false);
        strArg.setValue("localhost");
        arguments.put(strArg.name(), strArg);
        ConnectorImpl.IntegerArgumentImpl intArg = new ConnectorImpl.IntegerArgumentImpl("port", ConnectMessages.SocketAttachingConnectorImpl_Port_number_to_which_to_attach_for_VM_connections_3, ConnectMessages.SocketAttachingConnectorImpl_Port_4, true, 0, 65535);
        arguments.put(intArg.name(), intArg);
        ConnectorImpl.IntegerArgumentImpl timeoutArg = new ConnectorImpl.IntegerArgumentImpl("timeout", ConnectMessages.SocketAttachingConnectorImpl_1, ConnectMessages.SocketAttachingConnectorImpl_2, false, 0, Integer.MAX_VALUE);
        timeoutArg.setValue(0);
        arguments.put(timeoutArg.name(), timeoutArg);
        return arguments;
    }

    public String name() {
        return "com.sun.jdi.SocketAttach";
    }

    public String description() {
        return ConnectMessages.SocketAttachingConnectorImpl_Attaches_by_socket_to_other_VMs_5;
    }

    private void getConnectionArguments(Map connectionArgs) throws IllegalConnectorArgumentsException {
        String attribute = "";
        try {
            Connector.IntegerArgument timeoutArg;
            attribute = "hostname";
            this.fHostname = ((Connector.StringArgument)connectionArgs.get(attribute)).value();
            attribute = "port";
            this.fPort = ((Connector.IntegerArgument)connectionArgs.get(attribute)).intValue();
            attribute = "timeout";
            Object object = connectionArgs.get(attribute);
            if (object != null && (timeoutArg = (Connector.IntegerArgument)object).value() != null) {
                this.fTimeout = timeoutArg.intValue();
            }
        }
        catch (ClassCastException classCastException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketAttachingConnectorImpl_Connection_argument_is_not_of_the_right_type_6, attribute);
        }
        catch (NullPointerException nullPointerException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketAttachingConnectorImpl_Necessary_connection_argument_is_null_7, attribute);
        }
        catch (NumberFormatException numberFormatException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketAttachingConnectorImpl_Connection_argument_is_not_a_number_8, attribute);
        }
    }

    public VirtualMachine attach(Map connectionArgs) throws IOException, IllegalConnectorArgumentsException {
        this.getConnectionArguments(connectionArgs);
        Connection connection = null;
        try {
            connection = ((SocketTransportImpl)this.fTransport).attach(this.fHostname, this.fPort, this.fTimeout, 0L);
        }
        catch (IllegalArgumentException e) {
            ArrayList<String> args = new ArrayList<String>();
            args.add("hostname");
            args.add("port");
            throw new IllegalConnectorArgumentsException(e.getMessage(), args);
        }
        return this.establishedConnection(connection);
    }
}

