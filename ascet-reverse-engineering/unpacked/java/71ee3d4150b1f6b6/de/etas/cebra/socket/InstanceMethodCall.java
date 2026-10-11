/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.socket.MethodCall;
import de.etas.cebra.toolAPI.ToolAPI;
import de.etas.types.Identifiable;

public final class InstanceMethodCall
extends MethodCall {
    public InstanceMethodCall(Identifiable o, String methodName, ToolAPI a) {
        super(a);
        this.msg.catItem(o);
        this.msg.catItem(methodName);
        this.msg.catItem(0);
    }
}

