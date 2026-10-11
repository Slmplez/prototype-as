/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

public class ClassFormatException
extends Exception {
    public static final int ERROR_MALFORMED_UTF8 = 1;
    public static final int ERROR_TRUNCATED_INPUT = 2;
    public static final int INVALID_CONSTANT_POOL_ENTRY = 3;
    public static final int TOO_MANY_BYTES = 4;
    public static final int INVALID_ARGUMENTS_FOR_INVOKEINTERFACE = 5;
    public static final int INVALID_BYTECODE = 6;
    public static final int INVALID_TAG_CONSTANT = 7;
    public static final int INVALID_MAGIC_NUMBER = 8;
    private static final long serialVersionUID = 6582900558320612988L;

    public ClassFormatException(int errorID) {
    }

    public ClassFormatException(String message) {
        super(message);
    }

    public ClassFormatException(String message, Throwable cause) {
        super(message, cause);
    }
}

