/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ProblemMethodBinding
extends MethodBinding {
    private int problemReason;
    public MethodBinding closestMatch;

    public ProblemMethodBinding(char[] selector, TypeBinding[] args, int problemReason) {
        this.selector = selector;
        this.parameters = args == null || args.length == 0 ? Binding.NO_PARAMETERS : args;
        this.problemReason = problemReason;
        this.thrownExceptions = Binding.NO_EXCEPTIONS;
    }

    public ProblemMethodBinding(char[] selector, TypeBinding[] args, ReferenceBinding declaringClass, int problemReason) {
        this.selector = selector;
        this.parameters = args == null || args.length == 0 ? Binding.NO_PARAMETERS : args;
        this.declaringClass = declaringClass;
        this.problemReason = problemReason;
        this.thrownExceptions = Binding.NO_EXCEPTIONS;
    }

    public ProblemMethodBinding(MethodBinding closestMatch, char[] selector, TypeBinding[] args, int problemReason) {
        this(selector, args, problemReason);
        this.closestMatch = closestMatch;
        if (closestMatch != null && problemReason != 3) {
            this.declaringClass = closestMatch.declaringClass;
        }
    }

    public final int problemId() {
        return this.problemReason;
    }
}

