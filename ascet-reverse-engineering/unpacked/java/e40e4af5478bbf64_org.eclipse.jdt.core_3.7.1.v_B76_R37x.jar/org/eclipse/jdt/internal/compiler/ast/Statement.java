/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public abstract class Statement
extends ASTNode {
    public static final int NOT_COMPLAINED = 0;
    public static final int COMPLAINED_FAKE_REACHABLE = 1;
    public static final int COMPLAINED_UNREACHABLE = 2;

    protected static boolean isKnowDeadCodePattern(Expression expression) {
        if (expression instanceof UnaryExpression) {
            expression = ((UnaryExpression)expression).expression;
        }
        return expression instanceof Reference;
    }

    public abstract FlowInfo analyseCode(BlockScope var1, FlowContext var2, FlowInfo var3);

    protected int checkAgainstNullAnnotation(BlockScope currentScope, LocalVariableBinding local, int nullStatus) {
        return nullStatus;
    }

    public void branchChainTo(BranchLabel label) {
    }

    public int complainIfUnreachable(FlowInfo flowInfo, BlockScope scope, int previousComplaintLevel) {
        if ((flowInfo.reachMode() & 3) != 0) {
            if ((flowInfo.reachMode() & 1) != 0) {
                this.bits &= Integer.MAX_VALUE;
            }
            if (flowInfo == FlowInfo.DEAD_END) {
                if (previousComplaintLevel < 2) {
                    scope.problemReporter().unreachableCode(this);
                }
                return 2;
            }
            if (previousComplaintLevel < 1) {
                scope.problemReporter().fakeReachable(this);
            }
            return 1;
        }
        return previousComplaintLevel;
    }

    public void generateArguments(MethodBinding binding, Expression[] arguments, BlockScope currentScope, CodeStream codeStream) {
        block10: {
            block9: {
                int argLength;
                if (!binding.isVarargs()) break block9;
                TypeBinding[] params = binding.parameters;
                int paramLength = params.length;
                int varArgIndex = paramLength - 1;
                int i = 0;
                while (i < varArgIndex) {
                    arguments[i].generateCode(currentScope, codeStream, true);
                    ++i;
                }
                ArrayBinding varArgsType = (ArrayBinding)params[varArgIndex];
                ArrayBinding codeGenVarArgsType = (ArrayBinding)binding.parameters[varArgIndex].erasure();
                int elementsTypeID = varArgsType.elementsType().id;
                int n = argLength = arguments == null ? 0 : arguments.length;
                if (argLength > paramLength) {
                    codeStream.generateInlinedValue(argLength - varArgIndex);
                    codeStream.newArray(codeGenVarArgsType);
                    int i2 = varArgIndex;
                    while (i2 < argLength) {
                        codeStream.dup();
                        codeStream.generateInlinedValue(i2 - varArgIndex);
                        arguments[i2].generateCode(currentScope, codeStream, true);
                        codeStream.arrayAtPut(elementsTypeID, false);
                        ++i2;
                    }
                } else if (argLength == paramLength) {
                    TypeBinding lastType = arguments[varArgIndex].resolvedType;
                    if (lastType == TypeBinding.NULL || varArgsType.dimensions() == lastType.dimensions() && lastType.isCompatibleWith(varArgsType)) {
                        arguments[varArgIndex].generateCode(currentScope, codeStream, true);
                    } else {
                        codeStream.generateInlinedValue(1);
                        codeStream.newArray(codeGenVarArgsType);
                        codeStream.dup();
                        codeStream.generateInlinedValue(0);
                        arguments[varArgIndex].generateCode(currentScope, codeStream, true);
                        codeStream.arrayAtPut(elementsTypeID, false);
                    }
                } else {
                    codeStream.generateInlinedValue(0);
                    codeStream.newArray(codeGenVarArgsType);
                }
                break block10;
            }
            if (arguments == null) break block10;
            int i = 0;
            int max = arguments.length;
            while (i < max) {
                arguments[i].generateCode(currentScope, codeStream, true);
                ++i;
            }
        }
    }

    public abstract void generateCode(BlockScope var1, CodeStream var2);

    protected boolean isBoxingCompatible(TypeBinding expressionType, TypeBinding targetType, Expression expression, Scope scope) {
        if (scope.isBoxingCompatibleWith(expressionType, targetType)) {
            return true;
        }
        return expressionType.isBaseType() && !targetType.isBaseType() && !targetType.isTypeVariable() && scope.compilerOptions().sourceLevel >= 0x310000L && expression.isConstantValueOfTypeAssignableToType(expressionType, scope.environment().computeBoxingType(targetType));
    }

    public boolean isEmptyBlock() {
        return false;
    }

    public boolean isValidJavaStatement() {
        return true;
    }

    public StringBuffer print(int indent, StringBuffer output) {
        return this.printStatement(indent, output);
    }

    public abstract StringBuffer printStatement(int var1, StringBuffer var2);

    public abstract void resolve(BlockScope var1);

    public Constant resolveCase(BlockScope scope, TypeBinding testType, SwitchStatement switchStatement) {
        this.resolve(scope);
        return Constant.NotAConstant;
    }

    public TypeBinding expectedType() {
        return null;
    }
}

