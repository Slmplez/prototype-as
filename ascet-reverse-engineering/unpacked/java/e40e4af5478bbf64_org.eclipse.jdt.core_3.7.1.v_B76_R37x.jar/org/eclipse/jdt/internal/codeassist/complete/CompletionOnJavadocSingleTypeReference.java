/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;

public class CompletionOnJavadocSingleTypeReference
extends JavadocSingleTypeReference
implements CompletionOnJavadoc {
    public int completionFlags = 1;

    public CompletionOnJavadocSingleTypeReference(char[] source, long pos, int tagStart, int tagEnd) {
        super(source, pos, tagStart, tagEnd);
    }

    public CompletionOnJavadocSingleTypeReference(JavadocSingleTypeReference typeRef) {
        super(typeRef.token, ((long)typeRef.sourceStart << 32) + (long)typeRef.sourceEnd, typeRef.tagSourceStart, typeRef.tagSourceStart);
    }

    public void addCompletionFlags(int flags) {
        this.completionFlags |= flags;
    }

    public boolean completeAnException() {
        return (this.completionFlags & 2) != 0;
    }

    public boolean completeInText() {
        return (this.completionFlags & 4) != 0;
    }

    public boolean completeBaseTypes() {
        return (this.completionFlags & 8) != 0;
    }

    public boolean completeFormalReference() {
        return (this.completionFlags & 0x40) != 0;
    }

    public int getCompletionFlags() {
        return this.completionFlags;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        int i;
        output.append("<CompletionOnJavadocSingleTypeReference:");
        super.printExpression(indent, output);
        ++indent;
        if (this.completionFlags > 0) {
            output.append('\n');
            i = 0;
            while (i < indent) {
                output.append('\t');
                ++i;
            }
            output.append("infos:");
            int separator = 0;
            if (this.completeAnException()) {
                output.append("exception");
                separator = 44;
            }
            if (this.completeInText()) {
                if (separator != 0) {
                    output.append((char)separator);
                }
                output.append("text");
                separator = 44;
            }
            if (this.completeBaseTypes()) {
                if (separator != 0) {
                    output.append((char)separator);
                }
                output.append("base types");
                separator = 44;
            }
            if (this.completeFormalReference()) {
                if (separator != 0) {
                    output.append((char)separator);
                }
                output.append("formal reference");
                separator = 44;
            }
            output.append('\n');
        }
        --indent;
        i = 0;
        while (i < indent) {
            output.append('\t');
            ++i;
        }
        return output.append('>');
    }
}

