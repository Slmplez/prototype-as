/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.LaunchingConnector;
import com.sun.jdi.connect.spi.Connection;
import java.io.IOException;
import java.util.List;

public interface VirtualMachineManager {
    public List allConnectors();

    public List attachingConnectors();

    public List connectedVirtualMachines();

    public VirtualMachine createVirtualMachine(Connection var1) throws IOException;

    public VirtualMachine createVirtualMachine(Connection var1, Process var2) throws IOException;

    public LaunchingConnector defaultConnector();

    public List launchingConnectors();

    public List listeningConnectors();

    public int majorInterfaceVersion();

    public int minorInterfaceVersion();
}

