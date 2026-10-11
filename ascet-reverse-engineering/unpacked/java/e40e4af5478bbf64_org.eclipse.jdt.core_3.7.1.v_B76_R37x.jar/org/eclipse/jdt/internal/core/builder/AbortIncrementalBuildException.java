/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.builder;

public class AbortIncrementalBuildException
extends RuntimeException {
    protected String qualifiedTypeName;
    private static final long serialVersionUID = -8874662133883858502L;

    public AbortIncrementalBuildException(String qualifiedTypeName) {
        this.qualifiedTypeName = qualifiedTypeName;
    }
}

