/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.lookup.Binding;

public class SelectionNodeFound
extends RuntimeException {
    public Binding binding;
    public boolean isDeclaration;
    private static final long serialVersionUID = -7335444736618092295L;

    public SelectionNodeFound() {
        this(null, false);
    }

    public SelectionNodeFound(Binding binding) {
        this(binding, false);
    }

    public SelectionNodeFound(Binding binding, boolean isDeclaration) {
        this.binding = binding;
        this.isDeclaration = isDeclaration;
    }
}

