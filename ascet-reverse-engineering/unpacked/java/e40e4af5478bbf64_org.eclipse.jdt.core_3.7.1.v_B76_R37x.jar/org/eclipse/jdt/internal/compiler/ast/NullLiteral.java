/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.MagicLiteral;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class NullLiteral
extends MagicLiteral {
    static final char[] source = new char[]{'n', 'u', 'l', 'l'};

    public NullLiteral(int s, int e) {
        super(s, e);
    }

    public void computeConstant() {
        this.constant = Constant.NotAConstant;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        if (valueRequired) {
            codeStream.aconst_null();
            codeStream.generateImplicitConversion(this.implicitConversion);
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public TypeBinding literalType(BlockScope scope) {
        return TypeBinding.NULL;
    }

    public int nullStatus(FlowInfo flowInfo) {
        return 2;
    }

    public Object reusableJSRTarget() {
        return TypeBinding.NULL;
    }

    public char[] source() {
        return source;
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        visitor.visit(this, scope);
        visitor.endVisit(this, scope);
    }
}

