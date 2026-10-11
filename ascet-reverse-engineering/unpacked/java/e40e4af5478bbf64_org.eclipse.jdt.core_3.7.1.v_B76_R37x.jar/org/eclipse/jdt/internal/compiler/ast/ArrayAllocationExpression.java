/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ArrayAllocationExpression
extends Expression {
    public TypeReference type;
    public Expression[] dimensions;
    public ArrayInitializer initializer;

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        int i = 0;
        int max = this.dimensions.length;
        while (i < max) {
            Expression dim = this.dimensions[i];
            if (dim != null) {
                flowInfo = dim.analyseCode(currentScope, flowContext, flowInfo);
                if ((dim.implicitConversion & 0x400) != 0) {
                    dim.checkNPE(currentScope, flowContext, flowInfo);
                }
            }
            ++i;
        }
        if (this.initializer != null) {
            return this.initializer.analyseCode(currentScope, flowContext, flowInfo);
        }
        return flowInfo;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        if (this.initializer != null) {
            this.initializer.generateCode(currentScope, codeStream, valueRequired);
            return;
        }
        int explicitDimCount = 0;
        int i = 0;
        int max = this.dimensions.length;
        while (i < max) {
            Expression dimExpression = this.dimensions[i];
            if (dimExpression == null) break;
            dimExpression.generateCode(currentScope, codeStream, true);
            ++explicitDimCount;
            ++i;
        }
        if (explicitDimCount == 1) {
            codeStream.newArray((ArrayBinding)this.resolvedType);
        } else {
            codeStream.multianewarray(this.resolvedType, explicitDimCount);
        }
        if (valueRequired) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else {
            codeStream.pop();
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("new ");
        this.type.print(0, output);
        int i = 0;
        while (i < this.dimensions.length) {
            if (this.dimensions[i] == null) {
                output.append("[]");
            } else {
                output.append('[');
                this.dimensions[i].printExpression(0, output);
                output.append(']');
            }
            ++i;
        }
        if (this.initializer != null) {
            this.initializer.printExpression(0, output);
        }
        return output;
    }

    public TypeBinding resolveType(BlockScope scope) {
        TypeBinding referenceType = this.type.resolveType(scope, true);
        this.constant = Constant.NotAConstant;
        if (referenceType == TypeBinding.VOID) {
            scope.problemReporter().cannotAllocateVoidArray(this);
            referenceType = null;
        }
        int explicitDimIndex = -1;
        int i = this.dimensions.length;
        while (--i >= 0) {
            if (this.dimensions[i] != null) {
                if (explicitDimIndex >= 0) continue;
                explicitDimIndex = i;
                continue;
            }
            if (explicitDimIndex <= 0) continue;
            scope.problemReporter().incorrectLocationForNonEmptyDimension(this, explicitDimIndex);
            break;
        }
        if (this.initializer == null) {
            if (explicitDimIndex < 0) {
                scope.problemReporter().mustDefineDimensionsOrInitializer(this);
            }
            if (referenceType != null && !referenceType.isReifiable()) {
                scope.problemReporter().illegalGenericArray(referenceType, this);
            }
        } else if (explicitDimIndex >= 0) {
            scope.problemReporter().cannotDefineDimensionsAndInitializer(this);
        }
        i = 0;
        while (i <= explicitDimIndex) {
            TypeBinding dimensionType;
            Expression dimExpression = this.dimensions[i];
            if (dimExpression != null && (dimensionType = dimExpression.resolveTypeExpecting(scope, TypeBinding.INT)) != null) {
                this.dimensions[i].computeConversion(scope, TypeBinding.INT, dimensionType);
            }
            ++i;
        }
        if (referenceType != null) {
            if (this.dimensions.length > 255) {
                scope.problemReporter().tooManyDimensions(this);
            }
            this.resolvedType = scope.createArrayType(referenceType, this.dimensions.length);
            if (this.initializer != null && this.initializer.resolveTypeExpecting(scope, this.resolvedType) != null) {
                this.initializer.binding = (ArrayBinding)this.resolvedType;
            }
            if ((referenceType.tagBits & 0x80L) != 0L) {
                return null;
            }
        }
        return this.resolvedType;
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            int dimensionsLength = this.dimensions.length;
            this.type.traverse(visitor, scope);
            int i = 0;
            while (i < dimensionsLength) {
                if (this.dimensions[i] != null) {
                    this.dimensions[i].traverse(visitor, scope);
                }
                ++i;
            }
            if (this.initializer != null) {
                this.initializer.traverse(visitor, scope);
            }
        }
        visitor.endVisit(this, scope);
    }
}

