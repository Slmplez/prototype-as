/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.VirtualMachineManager
 *  com.sun.jdi.connect.LaunchingConnector
 *  com.sun.jdi.connect.spi.Connection
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.VirtualMachine;
import com.sun.jdi.VirtualMachineManager;
import com.sun.jdi.connect.LaunchingConnector;
import com.sun.jdi.connect.spi.Connection;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.connect.ConnectorImpl;
import org.eclipse.jdi.internal.connect.SocketAttachingConnectorImpl;
import org.eclipse.jdi.internal.connect.SocketLaunchingConnectorImpl;
import org.eclipse.jdi.internal.connect.SocketListeningConnectorImpl;
import org.eclipse.jdi.internal.connect.SocketRawLaunchingConnectorImpl;
import org.eclipse.jdt.debug.core.JDIDebugModel;

public class VirtualMachineManagerImpl
implements VirtualMachineManager {
    public static int MAJOR_INTERFACE_VERSION = 1;
    public static int MINOR_INTERFACE_VERSION = 5;
    private PrintWriter fVerbosePrintWriter = null;
    List fConnectedVMs = new ArrayList();
    private boolean fVerbose = false;
    private String fVerboseFile = null;

    public VirtualMachineManagerImpl() {
        this.getPreferences();
        if (this.fVerbose) {
            OutputStream out;
            if (this.fVerboseFile != null && this.fVerboseFile.length() > 0) {
                try {
                    out = new FileOutputStream(this.fVerboseFile);
                }
                catch (IOException e) {
                    out = System.out;
                    System.out.println(String.valueOf(JDIMessages.VirtualMachineManagerImpl_Could_not_open_verbose_file___1) + this.fVerboseFile + JDIMessages.VirtualMachineManagerImpl_____2 + e);
                }
            } else {
                out = System.out;
            }
            this.fVerbosePrintWriter = new PrintWriter(out);
        }
    }

    public int majorInterfaceVersion() {
        return MAJOR_INTERFACE_VERSION;
    }

    public int minorInterfaceVersion() {
        return MINOR_INTERFACE_VERSION;
    }

    private void getPreferences() {
        URL url = this.getClass().getResource("/jdi.ini");
        if (url == null) {
            return;
        }
        try {
            InputStream stream = url.openStream();
            PropertyResourceBundle prefs = new PropertyResourceBundle(stream);
            try {
                this.fVerbose = Boolean.valueOf(prefs.getString("User.verbose"));
            }
            catch (MissingResourceException missingResourceException) {}
            try {
                this.fVerboseFile = prefs.getString("Verbose.out");
            }
            catch (MissingResourceException missingResourceException) {}
        }
        catch (IOException iOException) {}
    }

    public int getGlobalRequestTimeout() {
        try {
            if (JDIDebugModel.getPreferences() != null) {
                return JDIDebugModel.getPreferences().getInt(JDIDebugModel.PREF_REQUEST_TIMEOUT);
            }
            return 3000;
        }
        catch (NoClassDefFoundError noClassDefFoundError) {
            return 3000;
        }
    }

    public void addConnectedVM(VirtualMachineImpl vm) {
        this.fConnectedVMs.add(vm);
    }

    public void removeConnectedVM(VirtualMachineImpl vm) {
        this.fConnectedVMs.remove(vm);
    }

    public List connectedVirtualMachines() {
        return this.fConnectedVMs;
    }

    public List allConnectors() {
        ArrayList result = new ArrayList(this.attachingConnectors());
        result.addAll(this.launchingConnectors());
        result.addAll(this.listeningConnectors());
        return result;
    }

    public List attachingConnectors() {
        ArrayList<SocketAttachingConnectorImpl> list = new ArrayList<SocketAttachingConnectorImpl>(1);
        list.add(new SocketAttachingConnectorImpl(this));
        return list;
    }

    public List launchingConnectors() {
        ArrayList<ConnectorImpl> list = new ArrayList<ConnectorImpl>(2);
        list.add(new SocketLaunchingConnectorImpl(this));
        list.add(new SocketRawLaunchingConnectorImpl(this));
        return list;
    }

    public List listeningConnectors() {
        ArrayList<SocketListeningConnectorImpl> list = new ArrayList<SocketListeningConnectorImpl>(1);
        list.add(new SocketListeningConnectorImpl(this));
        return list;
    }

    public LaunchingConnector defaultConnector() {
        return new SocketLaunchingConnectorImpl(this);
    }

    public PrintWriter verbosePrintWriter() {
        return this.fVerbosePrintWriter;
    }

    public VirtualMachine createVirtualMachine(Connection connection) throws IOException {
        VirtualMachineImpl vmImpl = new VirtualMachineImpl(connection);
        return vmImpl;
    }

    public VirtualMachine createVirtualMachine(Connection connection, Process process) throws IOException {
        VirtualMachineImpl vmImpl = new VirtualMachineImpl(connection);
        vmImpl.setLaunchedProcess(process);
        return vmImpl;
    }
}

