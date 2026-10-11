/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public class ProblemBinding
extends Binding {
    public char[] name;
    public ReferenceBinding searchType;
    private int problemId;

    public ProblemBinding(char[][] compoundName, int problemId) {
        this(CharOperation.concatWith(compoundName, '.'), problemId);
    }

    public ProblemBinding(char[][] compoundName, ReferenceBinding searchType, int problemId) {
        this(CharOperation.concatWith(compoundName, '.'), searchType, problemId);
    }

    ProblemBinding(char[] name, int problemId) {
        this.name = name;
        this.problemId = problemId;
    }

    ProblemBinding(char[] name, ReferenceBinding searchType, int problemId) {
        this(name, problemId);
        this.searchType = searchType;
    }

    public final int kind() {
        return 7;
    }

    public final int problemId() {
        return this.problemId;
    }

    public char[] readableName() {
        return this.name;
    }
}

