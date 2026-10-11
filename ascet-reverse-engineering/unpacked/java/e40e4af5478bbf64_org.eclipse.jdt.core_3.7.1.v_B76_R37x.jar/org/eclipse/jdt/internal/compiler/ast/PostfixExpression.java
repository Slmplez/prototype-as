/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class PostfixExpression
extends CompoundAssignment {
    public PostfixExpression(Expression lhs, Expression expression, int operator, int pos) {
        super(lhs, expression, operator, pos);
        this.sourceStart = lhs.sourceStart;
        this.sourceEnd = pos;
    }

    public boolean checkCastCompatibility() {
        return false;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        ((Reference)this.lhs).generatePostIncrement(currentScope, codeStream, this, valueRequired);
        if (valueRequired) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public String operatorToString() {
        switch (this.operator) {
            case 14: {
                return "++";
            }
            case 13: {
                return "--";
            }
        }
        return "unknown operator";
    }

    public StringBuffer printExpressionNoParenthesis(int indent, StringBuffer output) {
        return this.lhs.printExpression(indent, output).append(' ').append(this.operatorToString());
    }

    public boolean restrainUsageToNumericTypes() {
        return true;
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            this.lhs.traverse(visitor, scope);
        }
        visitor.endVisit(this, scope);
    }
}

