/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.connect.Connector$BooleanArgument
 *  com.sun.jdi.connect.Connector$IntegerArgument
 *  com.sun.jdi.connect.Connector$StringArgument
 *  com.sun.jdi.connect.IllegalConnectorArgumentsException
 *  com.sun.jdi.connect.LaunchingConnector
 *  com.sun.jdi.connect.VMStartException
 *  org.eclipse.debug.core.DebugPlugin
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
import java.net.ServerSocket;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.VirtualMachineManagerImpl;
import org.eclipse.jdi.internal.connect.ConnectMessages;
import org.eclipse.jdi.internal.connect.ConnectorImpl;
import org.eclipse.jdi.internal.connect.SocketListeningConnectorImpl;
import org.eclipse.jdi.internal.connect.SocketTransportImpl;

public class SocketLaunchingConnectorImpl
extends ConnectorImpl
implements LaunchingConnector {
    private static final int ACCEPT_TIMEOUT = 10000;
    private String fHome;
    private String fOptions;
    private String fMain;
    private boolean fSuspend;
    private String fLauncher;

    public SocketLaunchingConnectorImpl(VirtualMachineManagerImpl virtualMachineManager) {
        super(virtualMachineManager);
        SocketTransportImpl transport = new SocketTransportImpl();
        this.setTransport(transport);
    }

    public Map defaultArguments() {
        HashMap<String, ConnectorImpl.ArgumentImpl> arguments = new HashMap<String, ConnectorImpl.ArgumentImpl>(6);
        ConnectorImpl.StringArgumentImpl strArg = new ConnectorImpl.StringArgumentImpl("home", ConnectMessages.SocketLaunchingConnectorImpl_Home_directory_of_the_SDK_or_runtime_environment_used_to_launch_the_application_1, ConnectMessages.SocketLaunchingConnectorImpl_Home_2, false);
        strArg.setValue(System.getProperty("java.home"));
        arguments.put(strArg.name(), strArg);
        strArg = new ConnectorImpl.StringArgumentImpl("options", ConnectMessages.SocketLaunchingConnectorImpl_Launched_VM_options_3, ConnectMessages.SocketLaunchingConnectorImpl_Options_4, false);
        arguments.put(strArg.name(), strArg);
        strArg = new ConnectorImpl.StringArgumentImpl("main", ConnectMessages.SocketLaunchingConnectorImpl_Main_class_and_arguments__or_if__jar_is_an_option__the_main_jar_file_and_arguments_5, ConnectMessages.SocketLaunchingConnectorImpl_Main_6, true);
        arguments.put(strArg.name(), strArg);
        ConnectorImpl.BooleanArgumentImpl boolArg = new ConnectorImpl.BooleanArgumentImpl("suspend", ConnectMessages.SocketLaunchingConnectorImpl_All_threads_will_be_suspended_before_execution_of_main_7, ConnectMessages.SocketLaunchingConnectorImpl_Suspend_8, false);
        boolArg.setValue(true);
        arguments.put(boolArg.name(), boolArg);
        strArg = new ConnectorImpl.StringArgumentImpl("quote", ConnectMessages.SocketLaunchingConnectorImpl_Character_used_to_combine_space_delimited_text_into_a_single_command_line_argument_9, ConnectMessages.SocketLaunchingConnectorImpl_Quote_10, true);
        strArg.setValue("\"");
        arguments.put(strArg.name(), strArg);
        strArg = new ConnectorImpl.StringArgumentImpl("vmexec", ConnectMessages.SocketLaunchingConnectorImpl_Name_of_the_Java_VM_launcher_11, ConnectMessages.SocketLaunchingConnectorImpl_Launcher_12, true);
        strArg.setValue("java");
        arguments.put(strArg.name(), strArg);
        return arguments;
    }

    public String name() {
        return "com.sun.jdi.CommandLineLaunch";
    }

    public String description() {
        return ConnectMessages.SocketLaunchingConnectorImpl_Launches_target_using_Sun_Java_VM_command_line_and_attaches_to_it_13;
    }

    private void getConnectionArguments(Map connectionArgs) throws IllegalConnectorArgumentsException {
        String attribute = "";
        try {
            attribute = "home";
            this.fHome = ((Connector.StringArgument)connectionArgs.get(attribute)).value();
            attribute = "options";
            this.fOptions = ((Connector.StringArgument)connectionArgs.get(attribute)).value();
            attribute = "main";
            this.fMain = ((Connector.StringArgument)connectionArgs.get(attribute)).value();
            attribute = "suspend";
            this.fSuspend = ((Connector.BooleanArgument)connectionArgs.get(attribute)).booleanValue();
            attribute = "quote";
            ((Connector.StringArgument)connectionArgs.get(attribute)).value();
            attribute = "vmexec";
            this.fLauncher = ((Connector.StringArgument)connectionArgs.get(attribute)).value();
        }
        catch (ClassCastException classCastException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketLaunchingConnectorImpl_Connection_argument_is_not_of_the_right_type_14, attribute);
        }
        catch (NullPointerException nullPointerException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketLaunchingConnectorImpl_Necessary_connection_argument_is_null_15, attribute);
        }
        catch (NumberFormatException numberFormatException) {
            throw new IllegalConnectorArgumentsException(ConnectMessages.SocketLaunchingConnectorImpl_Connection_argument_is_not_a_number_16, attribute);
        }
    }

    public VirtualMachine launch(Map connectionArgs) throws IOException, IllegalConnectorArgumentsException, VMStartException {
        VirtualMachineImpl virtualMachine;
        this.getConnectionArguments(connectionArgs);
        SocketListeningConnectorImpl listenConnector = new SocketListeningConnectorImpl(this.virtualMachineManager());
        Map args = listenConnector.defaultArguments();
        ((Connector.IntegerArgument)args.get("timeout")).setValue(10000);
        String address = listenConnector.startListening(args);
        String slash = System.getProperty("file.separator");
        String execString = String.valueOf(this.fHome) + slash + "bin" + slash + this.fLauncher;
        execString = String.valueOf(execString) + " -Xdebug -Xnoagent -Djava.compiler=NONE";
        execString = String.valueOf(execString) + " -Xrunjdwp:transport=dt_socket,address=" + address + ",server=n,suspend=" + (this.fSuspend ? "y" : "n");
        if (this.fOptions != null) {
            execString = String.valueOf(execString) + " " + this.fOptions;
        }
        execString = String.valueOf(execString) + " " + this.fMain;
        String[] cmdLine = DebugPlugin.parseArguments((String)execString);
        Process proc = Runtime.getRuntime().exec(cmdLine);
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

    /*
     * Loose catch block
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int findFreePort() {
        ServerSocket socket = null;
        socket = new ServerSocket(0);
        int n = socket.getLocalPort();
        if (socket == null) return n;
        try {
            socket.close();
            return n;
        }
        catch (IOException iOException) {}
        return n;
        catch (IOException iOException) {
            try {
                if (socket == null) return -1;
            }
            catch (Throwable throwable) {
                if (socket == null) throw throwable;
                try {
                    socket.close();
                    throw throwable;
                }
                catch (IOException iOException2) {}
                throw throwable;
            }
            try {
                socket.close();
                return -1;
            }
            catch (IOException iOException3) {}
            return -1;
        }
    }
}

