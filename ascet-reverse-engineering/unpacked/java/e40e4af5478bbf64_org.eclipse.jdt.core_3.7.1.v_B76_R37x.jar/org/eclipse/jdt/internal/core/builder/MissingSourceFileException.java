/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.builder;

public class MissingSourceFileException
extends RuntimeException {
    protected String missingSourceFile;
    private static final long serialVersionUID = -1416609004971115719L;

    public MissingSourceFileException(String missingSourceFile) {
        this.missingSourceFile = missingSourceFile;
    }
}

