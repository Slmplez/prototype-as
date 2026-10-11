/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.connect.spi;

import java.io.IOException;

public class ClosedConnectionException
extends IOException {
    private static final long serialVersionUID = 1L;

    public ClosedConnectionException() {
    }

    public ClosedConnectionException(String arg1) {
        super(arg1);
    }
}

