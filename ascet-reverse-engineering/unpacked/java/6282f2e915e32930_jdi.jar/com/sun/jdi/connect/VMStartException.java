/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.connect;

public class VMStartException
extends Exception {
    private static final long serialVersionUID = 1L;
    Process fProcess;

    public VMStartException(Process proc) {
        this.fProcess = proc;
    }

    public VMStartException(String str, Process proc) {
        super(str);
        this.fProcess = proc;
    }

    public Process process() {
        return this.fProcess;
    }
}

