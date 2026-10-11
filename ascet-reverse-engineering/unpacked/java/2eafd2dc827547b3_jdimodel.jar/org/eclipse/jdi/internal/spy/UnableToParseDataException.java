/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.spy;

public class UnableToParseDataException
extends Exception {
    private static final long serialVersionUID = 1L;
    private byte[] fRemainingData;

    public UnableToParseDataException(String message, byte[] remainingData) {
        super(message);
        this.fRemainingData = remainingData;
    }

    public byte[] getRemainingData() {
        return this.fRemainingData;
    }
}

