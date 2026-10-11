/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadoc;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnJavadocFieldReference
extends JavadocFieldReference
implements CompletionOnJavadoc {
    public int completionFlags = 1;
    public int separatorPosition;

    public CompletionOnJavadocFieldReference(Expression receiver, int tag, int position, int separatorPos, char[] name) {
        super(null, ((long)position << 32) + (long)position - 1L);
        this.receiver = receiver;
        this.tagSourceStart = position;
        this.tagSourceEnd = position;
        this.tagValue = tag;
        this.separatorPosition = separatorPos;
    }

    public CompletionOnJavadocFieldReference(JavadocFieldReference fieldRef, int position, char[] name) {
        super(fieldRef.token, fieldRef.nameSourcePosition);
        this.receiver = fieldRef.receiver;
        this.separatorPosition = position;
        this.tagSourceStart = fieldRef.tagSourceStart;
        this.tagSourceEnd = fieldRef.tagSourceEnd;
        this.tagValue = fieldRef.tagValue;
    }

    public CompletionOnJavadocFieldReference(JavadocMessageSend msgSend, int position) {
        super(msgSend.selector, (msgSend.nameSourcePosition >> 32 << 32) + (long)msgSend.sourceEnd);
        this.receiver = msgSend.receiver;
        this.separatorPosition = position;
        this.tagSourceStart = msgSend.tagSourceStart;
        this.tagSourceEnd = msgSend.tagSourceEnd;
        this.tagValue = msgSend.tagValue;
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

    protected TypeBinding internalResolveType(Scope scope) {
        if (this.token != null) {
            return super.internalResolveType(scope);
        }
        this.actualReceiverType = this.receiver == null ? scope.enclosingSourceType() : (scope.kind == 3 ? this.receiver.resolveType((ClassScope)scope) : this.receiver.resolveType((BlockScope)scope));
        return null;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        int i;
        output.append("<CompleteOnJavadocFieldReference:");
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

