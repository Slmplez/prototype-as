/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

public class AbortFormatting
extends RuntimeException {
    Throwable nestedException;
    private static final long serialVersionUID = -5796507276311428526L;

    public AbortFormatting(String message) {
        super(message);
    }

    public AbortFormatting(Throwable nestedException) {
        super(nestedException.getMessage());
        this.nestedException = nestedException;
    }
}

