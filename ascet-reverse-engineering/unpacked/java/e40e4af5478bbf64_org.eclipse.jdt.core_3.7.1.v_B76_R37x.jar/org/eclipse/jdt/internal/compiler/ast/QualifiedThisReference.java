/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class QualifiedThisReference
extends ThisReference {
    public TypeReference qualification;
    ReferenceBinding currentCompatibleType;

    public QualifiedThisReference(TypeReference name, int sourceStart, int sourceEnd) {
        super(sourceStart, sourceEnd);
        this.qualification = name;
        name.bits |= 0x40000000;
        this.sourceStart = name.sourceStart;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo, boolean valueRequired) {
        return flowInfo;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        if (valueRequired) {
            if ((this.bits & 0x1FE0) != 0) {
                Object[] emulationPath = currentScope.getEmulationPath(this.currentCompatibleType, true, false);
                codeStream.generateOuterAccess(emulationPath, this, this.currentCompatibleType, currentScope);
            } else {
                codeStream.aload_0();
            }
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public TypeBinding resolveType(BlockScope scope) {
        this.constant = Constant.NotAConstant;
        TypeBinding type = this.qualification.resolveType(scope, true);
        if (type == null || !type.isValidBinding()) {
            return null;
        }
        this.resolvedType = (type = type.erasure()) instanceof ReferenceBinding ? scope.environment().convertToParameterizedType((ReferenceBinding)type) : type;
        int depth = 0;
        this.currentCompatibleType = scope.referenceType().binding;
        while (this.currentCompatibleType != null && this.currentCompatibleType != type) {
            ++depth;
            ReferenceBinding referenceBinding = this.currentCompatibleType = this.currentCompatibleType.isStatic() ? null : this.currentCompatibleType.enclosingType();
        }
        this.bits &= 0xFFFFE01F;
        this.bits |= (depth & 0xFF) << 5;
        if (this.currentCompatibleType == null) {
            scope.problemReporter().noSuchEnclosingInstance(type, this, false);
            return this.resolvedType;
        }
        if (depth == 0) {
            this.checkAccess(scope.methodScope());
        }
        return this.resolvedType;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        return this.qualification.print(0, output).append(".this");
    }

    public void traverse(ASTVisitor visitor, BlockScope blockScope) {
        if (visitor.visit(this, blockScope)) {
            this.qualification.traverse(visitor, blockScope);
        }
        visitor.endVisit(this, blockScope);
    }

    public void traverse(ASTVisitor visitor, ClassScope blockScope) {
        if (visitor.visit(this, blockScope)) {
            this.qualification.traverse(visitor, blockScope);
        }
        visitor.endVisit(this, blockScope);
    }
}

