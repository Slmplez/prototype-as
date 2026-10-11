/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.connect.Connector$IntegerArgument
 *  com.sun.jdi.connect.Connector$StringArgument
 *  com.sun.jdi.connect.IllegalConnectorArgumentsException
 *  com.sun.jdi.connect.LaunchingConnector
 *  com.sun.jdi.connect.VMStartException
 */
package org.eclipse.jdi.internal.connect;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import com.sun.jdi.connect.LaunchingConnector;
import com.sun.jdi.connect.VMStartException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.VirtualMachineManagerImpl;
import org.eclipse.jdi.internal.connect.ConnectMessages;
import org.eclipse.jdi.internal.connect.ConnectorImpl;
import org.eclipse.jdi.internal.connect.SocketListeningConnectorImpl;
import org.eclipse.jdi.internal.connect.SocketTransportImpl;

public class SocketRawLaunchingConnectorImpl
extends ConnectorImpl
implements LaunchingConnector {
    private static final int ACCEPT_TIMEOUT = 10000;
    private String fCommand;
    private String fAddress;

    public SocketRawLaunchingConnectorImpl(VirtualMachineManagerImpl virtualMachineManager) {
        super(virtualMachineManager);
        SocketTransportImpl transport = new SocketTransportImpl();
        this.setTransport(transport);
    }

    public Map defaultArguments() {
        HashMap<String, ConnectorImpl.StringArgumentImpl> arguments = new HashMap<String, ConnectorImpl.StringArgumentImpl>(3);
        ConnectorImpl.StringArgumentImpl strArg = new ConnectorImpl.StringArgumentImpl("command", ConnectMessages.SocketRawLaunchingConnectorImpl_Raw_command_to_start_the_debugged_application_VM_1, ConnectMessages.SocketRawLaunchingConnectorImpl_Command_2, true);
        arguments.put(strArg.name(), strArg);
        strArg = new ConnectorImpl.StringArgumentImpl("address", ConnectMessages.SocketRawLaunchingConnectorImpl_Address_from_which_to_listen_for_a_connection_after_the_raw_command_is_run_3, ConnectMessages.SocketRawLaunchingConnectorImpl_Address_4, true);
        arguments.put(strArg.name(), strArg);
        strArg = new ConnectorImpl.StringArgumentImpl("quote", ConnectMessages.SocketRawLaunchingConnectorImpl_Character_used_to_combine_space_delimited_text_into_a_single_command_line_argument_5, ConnectMessages.SocketRawLaunchingConnectorImpl_Quote_6, true);
        strArg.setValue("\"");
        arguments.put(strArg.name(), strArg);
        return arguments;
    }

    public String name() {
        return "com.sun.jdi.RawCommandLineLaunch";
    }

    public String description() {
        return ConnectMessages.SocketRawLaunchingConnectorImpl_Launches_target_using_user_specified_command_line_and_attaches_to_it_7;
    }

    private void getConnectionArguments(Map connectionArgs) throws IllegalConnectorArgumentsException {
        String attribute = "";
        try {
            attribute = "command";
            this.fCommand = ((Connector.StringArgument)connectionArgs.get(attribute)).value();
            attribute = "address";
            this.fAddress = ((Connector.StringArgument)connectionArgs.get(attribute)).value();
            attribute = "quote";
            ((Connector.StringArgument)connectionArgs.get(attribute)).value();
        }
        catch (ClassCastException classCastException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketRawLaunchingConnectorImpl_Connection_argument_is_not_of_the_right_type_8, attribute);
        }
        catch (NullPointerException nullPointerException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketRawLaunchingConnectorImpl_Necessary_connection_argument_is_null_9, attribute);
        }
        catch (NumberFormatException numberFormatException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketRawLaunchingConnectorImpl_Connection_argument_is_not_a_number_10, attribute);
        }
    }

    public VirtualMachine launch(Map connectionArgs) throws IOException, IllegalConnectorArgumentsException, VMStartException {
        VirtualMachineImpl virtualMachine;
        this.getConnectionArguments(connectionArgs);
        SocketListeningConnectorImpl listenConnector = new SocketListeningConnectorImpl(this.virtualMachineManager());
        Map args = listenConnector.defaultArguments();
        ((Connector.IntegerArgument)args.get("port")).setValue(this.fAddress);
        ((Connector.IntegerArgument)args.get("timeout")).setValue(10000);
        listenConnector.startListening(args);
        Process proc = Runtime.getRuntime().exec(this.fCommand);
        try {
            virtualMachine = (VirtualMachineImpl)listenConnector.accept(args);
        }
        catch (InterruptedIOException interruptedIOException) {
            proc.destroy();
            String message = MessageFormat.format((String)ConnectMessages.SocketLaunchingConnectorImpl_VM_did_not_connect_within_given_time___0__ms_1, (Object[])new String[]{((Connector.IntegerArgument)args.get("timeout")).value()});
            throw new VMStartException(message, proc);
        }
        virtualMachine.setLaunchedProcess(proc);
        return virtualMachine;
    }
}

