/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;

public class ImportReference
extends ASTNode {
    public char[][] tokens;
    public long[] sourcePositions;
    public int declarationEnd;
    public int declarationSourceStart;
    public int declarationSourceEnd;
    public int modifiers;
    public Annotation[] annotations;
    public int trailingStarPosition;

    public ImportReference(char[][] tokens, long[] sourcePositions, boolean onDemand, int modifiers) {
        this.tokens = tokens;
        this.sourcePositions = sourcePositions;
        if (onDemand) {
            this.bits |= 0x20000;
        }
        this.sourceEnd = (int)(sourcePositions[sourcePositions.length - 1] & 0xFFFFFFFFFFFFFFFFL);
        this.sourceStart = (int)(sourcePositions[0] >>> 32);
        this.modifiers = modifiers;
    }

    public boolean isStatic() {
        return (this.modifiers & 8) != 0;
    }

    public char[][] getImportName() {
        return this.tokens;
    }

    public StringBuffer print(int indent, StringBuffer output) {
        return this.print(indent, output, true);
    }

    public StringBuffer print(int tab, StringBuffer output, boolean withOnDemand) {
        int i = 0;
        while (i < this.tokens.length) {
            if (i > 0) {
                output.append('.');
            }
            output.append(this.tokens[i]);
            ++i;
        }
        if (withOnDemand && (this.bits & 0x20000) != 0) {
            output.append(".*");
        }
        return output;
    }

    public void traverse(ASTVisitor visitor, CompilationUnitScope scope) {
        visitor.visit(this, scope);
        visitor.endVisit(this, scope);
    }
}

