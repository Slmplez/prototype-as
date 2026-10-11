/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.eval.EvaluationConstants;

public class CodeSnippetSuperReference
extends SuperReference
implements EvaluationConstants,
InvocationSite {
    public CodeSnippetSuperReference(int pos, int sourceEnd) {
        super(pos, sourceEnd);
    }

    public TypeBinding[] genericTypeArguments() {
        return null;
    }

    public TypeBinding resolveType(BlockScope scope) {
        scope.problemReporter().cannotUseSuperInCodeSnippet(this.sourceStart, this.sourceEnd);
        return null;
    }

    public boolean isSuperAccess() {
        return false;
    }

    public boolean isTypeAccess() {
        return false;
    }

    public void setActualReceiverType(ReferenceBinding receiverType) {
    }

    public void setDepth(int depth) {
    }

    public void setFieldIndex(int index) {
    }
}

