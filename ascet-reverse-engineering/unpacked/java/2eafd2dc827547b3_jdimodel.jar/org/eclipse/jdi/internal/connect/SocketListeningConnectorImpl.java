/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.connect.Connector$IntegerArgument
 *  com.sun.jdi.connect.IllegalConnectorArgumentsException
 *  com.sun.jdi.connect.ListeningConnector
 */
package org.eclipse.jdi.internal.connect;

import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import com.sun.jdi.connect.ListeningConnector;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdi.internal.VirtualMachineManagerImpl;
import org.eclipse.jdi.internal.connect.ConnectMessages;
import org.eclipse.jdi.internal.connect.ConnectorImpl;
import org.eclipse.jdi.internal.connect.SocketConnection;
import org.eclipse.jdi.internal.connect.SocketTransportImpl;

public class SocketListeningConnectorImpl
extends ConnectorImpl
implements ListeningConnector {
    private int fPort;
    private int fTimeout;

    public SocketListeningConnectorImpl(VirtualMachineManagerImpl virtualMachineManager) {
        super(virtualMachineManager);
        SocketTransportImpl transport = new SocketTransportImpl();
        this.setTransport(transport);
    }

    public Map defaultArguments() {
        HashMap<String, ConnectorImpl.IntegerArgumentImpl> arguments = new HashMap<String, ConnectorImpl.IntegerArgumentImpl>(1);
        ConnectorImpl.IntegerArgumentImpl intArg = new ConnectorImpl.IntegerArgumentImpl("port", ConnectMessages.SocketListeningConnectorImpl_Port_number_at_which_to_listen_for_VM_connections_1, ConnectMessages.SocketListeningConnectorImpl_Port_2, true, 0, 65535);
        arguments.put(intArg.name(), intArg);
        intArg = new ConnectorImpl.IntegerArgumentImpl("timeout", ConnectMessages.SocketListeningConnectorImpl_Timeout_before_accept_returns_3, ConnectMessages.SocketListeningConnectorImpl_Timeout_4, false, 0, Integer.MAX_VALUE);
        arguments.put(intArg.name(), intArg);
        return arguments;
    }

    public String name() {
        return "com.sun.jdi.SocketListen";
    }

    public String description() {
        return ConnectMessages.SocketListeningConnectorImpl_Accepts_socket_connections_initiated_by_other_VMs_5;
    }

    private void getConnectionArguments(Map connectionArgs) throws IllegalConnectorArgumentsException {
        String attribute = "port";
        try {
            Connector.IntegerArgument argument = (Connector.IntegerArgument)connectionArgs.get(attribute);
            this.fPort = argument != null && argument.value() != null ? argument.intValue() : 0;
            attribute = "timeout";
            argument = (Connector.IntegerArgument)connectionArgs.get(attribute);
            this.fTimeout = argument != null && argument.value() != null ? argument.intValue() : 0;
        }
        catch (ClassCastException classCastException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketListeningConnectorImpl_Connection_argument_is_not_of_the_right_type_6, attribute);
        }
        catch (NullPointerException nullPointerException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketListeningConnectorImpl_Necessary_connection_argument_is_null_7, attribute);
        }
        catch (NumberFormatException numberFormatException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketListeningConnectorImpl_Connection_argument_is_not_a_number_8, attribute);
        }
    }

    public String startListening(Map connectionArgs) throws IOException, IllegalConnectorArgumentsException {
        this.getConnectionArguments(connectionArgs);
        String result = null;
        try {
            result = ((SocketTransportImpl)this.fTransport).startListening(this.fPort);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketListeningConnectorImpl_ListeningConnector_Socket_Port, "port");
        }
        return result;
    }

    public void stopListening(Map connectionArgs) throws IOException {
        ((SocketTransportImpl)this.fTransport).stopListening();
    }

    public VirtualMachine accept(Map connectionArgs) throws IOException, IllegalConnectorArgumentsException {
        this.getConnectionArguments(connectionArgs);
        SocketConnection connection = (SocketConnection)((SocketTransportImpl)this.fTransport).accept(this.fTimeout, 0L);
        return this.establishedConnection(connection);
    }

    public boolean supportsMultipleConnections() {
        return true;
    }

    public int listeningPort() {
        return this.fPort;
    }
}

