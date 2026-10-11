/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnJavadocTypeParamReference
extends JavadocSingleTypeReference
implements CompletionOnJavadoc {
    public int completionFlags = 1;
    public char[][] missingParams;

    public CompletionOnJavadocTypeParamReference(char[] name, long pos, int start, int end) {
        super(name, pos, start, end);
    }

    public CompletionOnJavadocTypeParamReference(JavadocSingleTypeReference typeRef) {
        super(typeRef.token, ((long)typeRef.sourceStart << 32) + (long)typeRef.sourceEnd, typeRef.tagSourceStart, typeRef.tagSourceStart);
    }

    public void addCompletionFlags(int flags) {
        this.completionFlags |= flags;
    }

    public int getCompletionFlags() {
        return this.completionFlags;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<CompletionOnJavadocTypeParamReference:");
        if (this.token != null) {
            super.printExpression(indent, output);
        }
        return output.append('>');
    }

    public TypeBinding reportError(BlockScope scope) {
        return null;
    }
}

