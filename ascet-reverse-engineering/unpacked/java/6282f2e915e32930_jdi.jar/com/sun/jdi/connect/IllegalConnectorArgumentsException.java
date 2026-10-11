/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.connect;

import java.util.ArrayList;
import java.util.List;

public class IllegalConnectorArgumentsException
extends Exception {
    private static final long serialVersionUID = 1L;
    List fNames;

    public IllegalConnectorArgumentsException(String message, List argNames) {
        super(message);
        this.fNames = argNames;
    }

    public IllegalConnectorArgumentsException(String message, String argName) {
        super(message);
        this.fNames = new ArrayList(1);
        this.fNames.add(argName);
    }

    public List argumentNames() {
        return this.fNames;
    }
}

