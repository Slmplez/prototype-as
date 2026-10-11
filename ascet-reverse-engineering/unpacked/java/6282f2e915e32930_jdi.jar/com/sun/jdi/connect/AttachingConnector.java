/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.connect;

import com.sun.jdi.VirtualMachine;
import com.sun.jdi.connect.Connector;
import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import java.io.IOException;
import java.util.Map;

public interface AttachingConnector
extends Connector {
    public VirtualMachine attach(Map var1) throws IOException, IllegalConnectorArgumentsException;
}

