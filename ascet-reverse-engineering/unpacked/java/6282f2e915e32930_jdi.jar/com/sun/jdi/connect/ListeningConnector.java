/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.connect;

import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import java.io.IOException;
import java.util.Map;

public interface ListeningConnector
extends Connector {
    public VirtualMachine accept(Map var1) throws IOException, IllegalConnectorArgumentsException;

    public String startListening(Map var1) throws IOException, IllegalConnectorArgumentsException;

    public void stopListening(Map var1) throws IOException, IllegalConnectorArgumentsException;

    public boolean supportsMultipleConnections() throws IOException, IllegalConnectorArgumentsException;
}

