/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.connect;

import java.io.IOException;

public class TransportTimeoutException
extends IOException {
    private static final long serialVersionUID = 1L;

    public TransportTimeoutException() {
    }

    public TransportTimeoutException(String arg1) {
        super(arg1);
    }
}

