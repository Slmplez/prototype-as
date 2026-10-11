/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnAnnotationMemberValuePair
extends NormalAnnotation {
    public MemberValuePair completedMemberValuePair;

    public CompletionOnAnnotationMemberValuePair(TypeReference type, int sourceStart, MemberValuePair[] memberValuePairs, MemberValuePair completedMemberValuePair) {
        super(type, sourceStart);
        this.memberValuePairs = memberValuePairs;
        this.completedMemberValuePair = completedMemberValuePair;
    }

    public TypeBinding resolveType(BlockScope scope) {
        super.resolveType(scope);
        if (this.resolvedType == null || !this.resolvedType.isValidBinding()) {
            throw new CompletionNodeFound();
        }
        throw new CompletionNodeFound(this.completedMemberValuePair, scope);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append('@');
        this.type.printExpression(0, output);
        output.append('(');
        if (this.memberValuePairs != null) {
            int i = 0;
            int max = this.memberValuePairs.length;
            while (i < max) {
                if (i > 0) {
                    output.append(',');
                }
                this.memberValuePairs[i].print(indent, output);
                ++i;
            }
            output.append(',');
        }
        this.completedMemberValuePair.print(indent, output);
        output.append(')');
        return output;
    }
}

