/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist;

import java.util.Stack;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;

public class ThrownExceptionFinder
extends ASTVisitor {
    private SimpleSet thrownExceptions;
    private Stack exceptionsStack;
    private SimpleSet caughtExceptions;
    private SimpleSet discouragedExceptions;

    public void processThrownExceptions(TryStatement tryStatement, BlockScope scope) {
        this.thrownExceptions = new SimpleSet();
        this.exceptionsStack = new Stack();
        this.caughtExceptions = new SimpleSet();
        this.discouragedExceptions = new SimpleSet();
        tryStatement.traverse(this, scope);
        this.removeCaughtExceptions(tryStatement, true);
    }

    private void acceptException(ReferenceBinding binding) {
        if (binding != null && binding.isValidBinding()) {
            this.thrownExceptions.add(binding);
        }
    }

    public void endVisit(MessageSend messageSend, BlockScope scope) {
        if (messageSend.binding != null) {
            this.endVisitMethodInvocation(messageSend.binding);
        }
        super.endVisit(messageSend, scope);
    }

    public void endVisit(AllocationExpression allocationExpression, BlockScope scope) {
        if (allocationExpression.binding != null) {
            this.endVisitMethodInvocation(allocationExpression.binding);
        }
        super.endVisit(allocationExpression, scope);
    }

    public void endVisit(ThrowStatement throwStatement, BlockScope scope) {
        this.acceptException((ReferenceBinding)throwStatement.exception.resolvedType);
        super.endVisit(throwStatement, scope);
    }

    private void endVisitMethodInvocation(MethodBinding methodBinding) {
        ReferenceBinding[] thrownExceptionBindings = methodBinding.thrownExceptions;
        int length = thrownExceptionBindings == null ? 0 : thrownExceptionBindings.length;
        int i = 0;
        while (i < length) {
            this.acceptException(thrownExceptionBindings[i]);
            ++i;
        }
    }

    public ReferenceBinding[] getAlreadyCaughtExceptions() {
        Object[] allCaughtExceptions = new ReferenceBinding[this.caughtExceptions.elementSize];
        this.caughtExceptions.asArray(allCaughtExceptions);
        return allCaughtExceptions;
    }

    public ReferenceBinding[] getThrownUncaughtExceptions() {
        Object[] result = new ReferenceBinding[this.thrownExceptions.elementSize];
        this.thrownExceptions.asArray(result);
        return result;
    }

    public ReferenceBinding[] getDiscouragedExceptions() {
        Object[] allDiscouragedExceptions = new ReferenceBinding[this.discouragedExceptions.elementSize];
        this.discouragedExceptions.asArray(allDiscouragedExceptions);
        return allDiscouragedExceptions;
    }

    public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope scope) {
        return this.visitType(typeDeclaration);
    }

    public boolean visit(TypeDeclaration memberTypeDeclaration, ClassScope scope) {
        return this.visitType(memberTypeDeclaration);
    }

    public boolean visit(TypeDeclaration localTypeDeclaration, BlockScope scope) {
        return this.visitType(localTypeDeclaration);
    }

    private boolean visitType(TypeDeclaration typeDeclaration) {
        return false;
    }

    public boolean visit(TryStatement tryStatement, BlockScope scope) {
        SimpleSet exceptionSet;
        this.exceptionsStack.push(this.thrownExceptions);
        this.thrownExceptions = exceptionSet = new SimpleSet();
        tryStatement.tryBlock.traverse(this, scope);
        this.removeCaughtExceptions(tryStatement, false);
        this.thrownExceptions = (SimpleSet)this.exceptionsStack.pop();
        Object[] values = exceptionSet.values;
        int i = 0;
        while (i < values.length) {
            if (values[i] != null) {
                this.thrownExceptions.add(values[i]);
            }
            ++i;
        }
        Block[] catchBlocks = tryStatement.catchBlocks;
        int length = catchBlocks == null ? 0 : catchBlocks.length;
        int i2 = 0;
        while (i2 < length) {
            catchBlocks[i2].traverse(this, scope);
            ++i2;
        }
        return false;
    }

    private void removeCaughtExceptions(TryStatement tryStatement, boolean recordUncheckedCaughtExceptions) {
        Argument[] catchArguments = tryStatement.catchArguments;
        int length = catchArguments == null ? 0 : catchArguments.length;
        int i = 0;
        while (i < length) {
            if (catchArguments[i].type instanceof UnionTypeReference) {
                UnionTypeReference unionTypeReference = (UnionTypeReference)catchArguments[i].type;
                int j = 0;
                while (j < unionTypeReference.typeReferences.length) {
                    TypeBinding caughtException = unionTypeReference.typeReferences[j].resolvedType;
                    if (caughtException instanceof ReferenceBinding && caughtException.isValidBinding()) {
                        if (recordUncheckedCaughtExceptions) {
                            this.removeCaughtException((ReferenceBinding)caughtException);
                            this.caughtExceptions.add(caughtException);
                        } else if (!caughtException.isUncheckedException(true)) {
                            this.discouragedExceptions.add(caughtException);
                        }
                    }
                    ++j;
                }
            } else {
                TypeBinding exception = catchArguments[i].type.resolvedType;
                if (exception instanceof ReferenceBinding && exception.isValidBinding()) {
                    if (recordUncheckedCaughtExceptions) {
                        this.removeCaughtException((ReferenceBinding)exception);
                        this.caughtExceptions.add(exception);
                    } else if (!exception.isUncheckedException(true)) {
                        this.discouragedExceptions.add(exception);
                    }
                }
            }
            ++i;
        }
    }

    private void removeCaughtException(ReferenceBinding caughtException) {
        Object[] exceptions = this.thrownExceptions.values;
        int i = 0;
        while (i < exceptions.length) {
            ReferenceBinding exception = (ReferenceBinding)exceptions[i];
            if (exception != null) {
                if (exception == caughtException) {
                    this.thrownExceptions.remove(exception);
                } else if (caughtException.isSuperclassOf(exception)) {
                    this.thrownExceptions.remove(exception);
                    this.discouragedExceptions.add(exception);
                }
            }
            ++i;
        }
    }
}

