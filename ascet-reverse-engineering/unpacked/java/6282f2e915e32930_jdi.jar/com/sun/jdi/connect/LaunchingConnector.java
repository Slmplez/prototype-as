/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.connect;

import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import com.sun.jdi.connect.VMStartException;
import java.io.IOException;
import java.util.Map;

public interface LaunchingConnector
extends Connector {
    public VirtualMachine launch(Map var1) throws IOException, IllegalConnectorArgumentsException, VMStartException;
}

