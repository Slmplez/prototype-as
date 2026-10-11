/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

public class InvalidCursorLocation
extends RuntimeException {
    public String irritant;
    public static final String NO_COMPLETION_INSIDE_UNICODE = "No Completion Inside Unicode";
    public static final String NO_COMPLETION_INSIDE_COMMENT = "No Completion Inside Comment";
    public static final String NO_COMPLETION_INSIDE_STRING = "No Completion Inside String";
    public static final String NO_COMPLETION_INSIDE_NUMBER = "No Completion Inside Number";
    private static final long serialVersionUID = -3443160725735779590L;

    public InvalidCursorLocation(String irritant) {
        this.irritant = irritant;
    }
}

