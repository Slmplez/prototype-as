/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.socket.ClassName;
import de.etas.cebra.socket.MethodCall;
import de.etas.cebra.toolAPI.ToolAPI;

public final class ClassMethodCall
extends MethodCall {
    public ClassMethodCall(String className, String methodName, ToolAPI a) {
        super(a);
        this.msg.catItem(new ClassName(className));
        this.msg.catItem(methodName);
        this.msg.catItem(0);
    }
}

