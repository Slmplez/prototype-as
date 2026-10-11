/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.socket.ControlSequence;
import de.etas.cebra.socket.MethodCall;
import de.etas.cebra.toolAPI.ToolAPI;

public final class ControlMessageCall
extends MethodCall {
    public ControlMessageCall(String method, ToolAPI a) {
        this(method, false, a);
    }

    public ControlMessageCall(String method, boolean serialize, ToolAPI a) {
        super(a);
        if (serialize) {
            this.msg.catItem(new ControlSequence('Z'));
        } else {
            this.msg.catItem(new ControlSequence('C'));
        }
        this.msg.catItem(method);
        this.msg.catItem(0);
    }
}

