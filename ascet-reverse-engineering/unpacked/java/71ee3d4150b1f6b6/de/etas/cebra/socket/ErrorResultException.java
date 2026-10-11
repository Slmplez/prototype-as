/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.socket.ErrorHandle;

public class ErrorResultException
extends Exception {
    private ErrorHandle errHandle;

    public ErrorResultException() {
    }

    public ErrorResultException(ErrorHandle err) {
        this.errHandle = err;
    }

    public ErrorResultException(String s) {
        super(s);
    }

    public final ErrorHandle getErrorMessage() {
        return this.errHandle;
    }

    public String toString() {
        return this.errHandle.toString();
    }
}

