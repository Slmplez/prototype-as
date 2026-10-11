/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;

public class CompletionOnMemberValueName
extends MemberValuePair {
    public CompletionOnMemberValueName(char[] token, int sourceStart, int sourceEnd) {
        super(token, sourceStart, sourceEnd, null);
    }

    public StringBuffer print(int indent, StringBuffer output) {
        output.append("<CompleteOnAttributeName:");
        output.append(this.name);
        output.append('>');
        return output;
    }
}

