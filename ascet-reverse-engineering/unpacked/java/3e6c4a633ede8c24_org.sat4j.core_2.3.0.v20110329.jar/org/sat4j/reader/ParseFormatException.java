/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.reader;

public class ParseFormatException
extends Exception {
    private static final long serialVersionUID = 1L;

    public ParseFormatException() {
        super("DIMACS Format Error");
    }

    public ParseFormatException(String string) {
        super("DIMACS Format error: " + string);
    }

    public ParseFormatException(String string, Throwable throwable) {
        super("DIMACS Format error: " + string, throwable);
    }

    public ParseFormatException(Throwable throwable) {
        super(throwable);
    }
}

