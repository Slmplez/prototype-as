/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.flow;

import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.LabeledStatement;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SubRoutineStatement;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.flow.InsideSubRoutineFlowContext;
import org.eclipse.jdt.internal.compiler.flow.LoopingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.NullInfoRegistry;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CatchParameterBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class FlowContext
implements TypeConstants {
    public static final FlowContext NotContinuableContext = new FlowContext(null, null);
    public ASTNode associatedNode;
    public FlowContext parent;
    public NullInfoRegistry initsOnFinally;
    public int tagBits;
    public static final int DEFER_NULL_DIAGNOSTIC = 1;
    public static final int PREEMPT_NULL_DIAGNOSTIC = 2;
    public static final int HIDE_NULL_COMPARISON_WARNING = 4;
    public static final int CAN_ONLY_NULL_NON_NULL = 0;
    public static final int CAN_ONLY_NULL = 1;
    public static final int CAN_ONLY_NON_NULL = 2;
    public static final int MAY_NULL = 3;
    public static final int CHECK_MASK = 255;
    public static final int IN_COMPARISON_NULL = 256;
    public static final int IN_COMPARISON_NON_NULL = 512;
    public static final int IN_ASSIGNMENT = 768;
    public static final int IN_INSTANCEOF = 1024;
    public static final int CONTEXT_MASK = -256;

    public FlowContext(FlowContext parent, ASTNode associatedNode) {
        this.parent = parent;
        this.associatedNode = associatedNode;
        if (parent != null) {
            if ((parent.tagBits & 3) != 0) {
                this.tagBits |= 1;
            }
            this.initsOnFinally = parent.initsOnFinally;
        }
    }

    public BranchLabel breakLabel() {
        return null;
    }

    public void checkExceptionHandlers(TypeBinding raisedException, ASTNode location, FlowInfo flowInfo, BlockScope scope) {
        this.checkExceptionHandlers(raisedException, location, flowInfo, scope, false);
    }

    /*
     * Unable to fully structure code
     */
    public void checkExceptionHandlers(TypeBinding raisedException, ASTNode location, FlowInfo flowInfo, BlockScope scope, boolean isExceptionOnAutoClose) {
        traversedContext = this;
        abruptlyExitedLoops = null;
        if (scope.compilerOptions().sourceLevel < 0x330000L || !(location instanceof ThrowStatement)) ** GOTO lbl60
        throwExpression = ((ThrowStatement)location).exception;
        throwArgBinding = throwExpression.localVariableBinding();
        if (!(throwExpression instanceof SingleNameReference) || !(throwArgBinding instanceof CatchParameterBinding) || !throwArgBinding.isEffectivelyFinal()) ** GOTO lbl60
        parameter = (CatchParameterBinding)throwArgBinding;
        this.checkExceptionHandlers(parameter.getPreciseTypes(), location, flowInfo, scope);
        return;
lbl-1000:
        // 1 sources

        {
            sub = traversedContext.subroutine();
            if (sub != null && sub.isSubRoutineEscaping()) {
                return;
            }
            if (traversedContext instanceof ExceptionHandlingFlowContext) {
                exceptionContext = (ExceptionHandlingFlowContext)traversedContext;
                caughtExceptions = exceptionContext.handledExceptions;
                if (exceptionContext.handledExceptions != Binding.NO_EXCEPTIONS) {
                    definitelyCaught = false;
                    caughtIndex = 0;
                    caughtCount = caughtExceptions.length;
                    while (caughtIndex < caughtCount) {
                        caughtException = caughtExceptions[caughtIndex];
                        v0 = state = caughtException == null ? -1 : Scope.compareTypes(raisedException, caughtException);
                        if (abruptlyExitedLoops != null && caughtException != null && state != 0) {
                            i = 0;
                            abruptlyExitedLoopsCount = abruptlyExitedLoops.size();
                            while (i < abruptlyExitedLoopsCount) {
                                loop = (LoopingFlowContext)abruptlyExitedLoops.get(i);
                                loop.recordCatchContextOfEscapingException(exceptionContext, caughtException);
                                ++i;
                            }
                        }
                        switch (state) {
                            case -1: {
                                exceptionContext.recordHandlingException(caughtException, flowInfo.unconditionalInits(), raisedException, raisedException, location, definitelyCaught);
                                definitelyCaught = true;
                                break;
                            }
                            case 1: {
                                exceptionContext.recordHandlingException(caughtException, flowInfo.unconditionalInits(), raisedException, caughtException, location, false);
                            }
                        }
                        ++caughtIndex;
                    }
                    if (definitelyCaught) {
                        return;
                    }
                }
                if (exceptionContext.isMethodContext) {
                    if (raisedException.isUncheckedException(false)) {
                        return;
                    }
                    if (!(exceptionContext.associatedNode instanceof AbstractMethodDeclaration) || !(method = (AbstractMethodDeclaration)exceptionContext.associatedNode).isConstructor() || !method.binding.declaringClass.isAnonymousType()) break;
                    exceptionContext.mergeUnhandledException(raisedException);
                    return;
                }
            } else if (traversedContext instanceof LoopingFlowContext) {
                if (abruptlyExitedLoops == null) {
                    abruptlyExitedLoops = new ArrayList<FlowContext>(5);
                }
                abruptlyExitedLoops.add(traversedContext);
            }
            traversedContext.recordReturnFrom(flowInfo.unconditionalInits());
            if (traversedContext instanceof InsideSubRoutineFlowContext && (node = traversedContext.associatedNode) instanceof TryStatement) {
                tryStatement = (TryStatement)node;
                flowInfo.addInitializationsFrom(tryStatement.subRoutineInits);
            }
            traversedContext = traversedContext.parent;
lbl60:
            // 3 sources

            ** while (traversedContext != null)
        }
lbl61:
        // 2 sources

        if (isExceptionOnAutoClose) {
            scope.problemReporter().unhandledExceptionFromAutoClose(raisedException, location);
        } else {
            scope.problemReporter().unhandledException(raisedException, location);
        }
    }

    public void checkExceptionHandlers(TypeBinding[] raisedExceptions, ASTNode location, FlowInfo flowInfo, BlockScope scope) {
        int raisedCount;
        if (raisedExceptions == null || (raisedCount = raisedExceptions.length) == 0) {
            return;
        }
        int remainingCount = raisedCount;
        TypeBinding[] typeBindingArray = raisedExceptions;
        raisedExceptions = new TypeBinding[raisedCount];
        System.arraycopy(typeBindingArray, 0, raisedExceptions, 0, raisedCount);
        FlowContext traversedContext = this;
        ArrayList<FlowContext> abruptlyExitedLoops = null;
        while (traversedContext != null) {
            ASTNode node;
            SubRoutineStatement sub = traversedContext.subroutine();
            if (sub != null && sub.isSubRoutineEscaping()) {
                return;
            }
            if (traversedContext instanceof ExceptionHandlingFlowContext) {
                ExceptionHandlingFlowContext exceptionContext = (ExceptionHandlingFlowContext)traversedContext;
                ReferenceBinding[] caughtExceptions = exceptionContext.handledExceptions;
                if (exceptionContext.handledExceptions != Binding.NO_EXCEPTIONS) {
                    int caughtCount = caughtExceptions.length;
                    boolean[] locallyCaught = new boolean[raisedCount];
                    int caughtIndex = 0;
                    while (caughtIndex < caughtCount) {
                        ReferenceBinding caughtException = caughtExceptions[caughtIndex];
                        int raisedIndex = 0;
                        while (raisedIndex < raisedCount) {
                            TypeBinding raisedException = raisedExceptions[raisedIndex];
                            if (raisedException != null) {
                                int state;
                                int n = state = caughtException == null ? -1 : Scope.compareTypes(raisedException, caughtException);
                                if (abruptlyExitedLoops != null && caughtException != null && state != 0) {
                                    int i = 0;
                                    int abruptlyExitedLoopsCount = abruptlyExitedLoops.size();
                                    while (i < abruptlyExitedLoopsCount) {
                                        LoopingFlowContext loop = (LoopingFlowContext)abruptlyExitedLoops.get(i);
                                        loop.recordCatchContextOfEscapingException(exceptionContext, caughtException);
                                        ++i;
                                    }
                                }
                                switch (state) {
                                    case -1: {
                                        exceptionContext.recordHandlingException(caughtException, flowInfo.unconditionalInits(), raisedException, raisedException, location, locallyCaught[raisedIndex]);
                                        if (locallyCaught[raisedIndex]) break;
                                        locallyCaught[raisedIndex] = true;
                                        --remainingCount;
                                        break;
                                    }
                                    case 1: {
                                        exceptionContext.recordHandlingException(caughtException, flowInfo.unconditionalInits(), raisedException, caughtException, location, false);
                                    }
                                }
                            }
                            ++raisedIndex;
                        }
                        ++caughtIndex;
                    }
                    int i = 0;
                    while (i < raisedCount) {
                        if (locallyCaught[i]) {
                            raisedExceptions[i] = null;
                        }
                        ++i;
                    }
                }
                if (exceptionContext.isMethodContext) {
                    AbstractMethodDeclaration method;
                    int i = 0;
                    while (i < raisedCount) {
                        TypeBinding raisedException = raisedExceptions[i];
                        if (raisedException != null && raisedException.isUncheckedException(false)) {
                            --remainingCount;
                            raisedExceptions[i] = null;
                        }
                        ++i;
                    }
                    if (!(exceptionContext.associatedNode instanceof AbstractMethodDeclaration) || !(method = (AbstractMethodDeclaration)exceptionContext.associatedNode).isConstructor() || !method.binding.declaringClass.isAnonymousType()) break;
                    int i2 = 0;
                    while (i2 < raisedCount) {
                        TypeBinding raisedException = raisedExceptions[i2];
                        if (raisedException != null) {
                            exceptionContext.mergeUnhandledException(raisedException);
                        }
                        ++i2;
                    }
                    return;
                }
            } else if (traversedContext instanceof LoopingFlowContext) {
                if (abruptlyExitedLoops == null) {
                    abruptlyExitedLoops = new ArrayList<FlowContext>(5);
                }
                abruptlyExitedLoops.add(traversedContext);
            }
            if (remainingCount == 0) {
                return;
            }
            traversedContext.recordReturnFrom(flowInfo.unconditionalInits());
            if (traversedContext instanceof InsideSubRoutineFlowContext && (node = traversedContext.associatedNode) instanceof TryStatement) {
                TryStatement tryStatement = (TryStatement)node;
                flowInfo.addInitializationsFrom(tryStatement.subRoutineInits);
            }
            traversedContext = traversedContext.parent;
        }
        int i = 0;
        while (i < raisedCount) {
            block30: {
                TypeBinding exception = raisedExceptions[i];
                if (exception != null) {
                    int j = 0;
                    while (j < i) {
                        if (raisedExceptions[j] != exception) {
                            ++j;
                            continue;
                        }
                        break block30;
                    }
                    scope.problemReporter().unhandledException(exception, location);
                }
            }
            ++i;
        }
    }

    public BranchLabel continueLabel() {
        return null;
    }

    public FlowInfo getInitsForFinalBlankInitializationCheck(TypeBinding declaringType, FlowInfo flowInfo) {
        FlowContext current = this;
        FlowInfo inits = flowInfo;
        do {
            if (current instanceof InitializationFlowContext) {
                InitializationFlowContext initializationContext = (InitializationFlowContext)current;
                if (((TypeDeclaration)initializationContext.associatedNode).binding == declaringType) {
                    return inits;
                }
                inits = initializationContext.initsBeforeContext;
                current = initializationContext.initializationParent;
                continue;
            }
            if (current instanceof ExceptionHandlingFlowContext) {
                ExceptionHandlingFlowContext exceptionContext = (ExceptionHandlingFlowContext)current;
                current = exceptionContext.initializationParent == null ? exceptionContext.parent : exceptionContext.initializationParent;
                continue;
            }
            current = current.parent;
        } while (current != null);
        return null;
    }

    public FlowContext getTargetContextForBreakLabel(char[] labelName) {
        FlowContext current = this;
        FlowContext lastNonReturningSubRoutine = null;
        while (current != null) {
            char[] currentLabelName;
            if (current.isNonReturningContext()) {
                lastNonReturningSubRoutine = current;
            }
            if ((currentLabelName = current.labelName()) != null && CharOperation.equals(currentLabelName, labelName)) {
                ((LabeledStatement)current.associatedNode).bits |= 0x40;
                if (lastNonReturningSubRoutine == null) {
                    return current;
                }
                return lastNonReturningSubRoutine;
            }
            current = current.parent;
        }
        return null;
    }

    public FlowContext getTargetContextForContinueLabel(char[] labelName) {
        FlowContext current = this;
        FlowContext lastContinuable = null;
        FlowContext lastNonReturningSubRoutine = null;
        while (current != null) {
            if (current.isNonReturningContext()) {
                lastNonReturningSubRoutine = current;
            } else if (current.isContinuable()) {
                lastContinuable = current;
            }
            char[] currentLabelName = current.labelName();
            if (currentLabelName != null && CharOperation.equals(currentLabelName, labelName)) {
                ((LabeledStatement)current.associatedNode).bits |= 0x40;
                if (lastContinuable != null && current.associatedNode.concreteStatement() == lastContinuable.associatedNode) {
                    if (lastNonReturningSubRoutine == null) {
                        return lastContinuable;
                    }
                    return lastNonReturningSubRoutine;
                }
                return NotContinuableContext;
            }
            current = current.parent;
        }
        return null;
    }

    public FlowContext getTargetContextForDefaultBreak() {
        FlowContext current = this;
        FlowContext lastNonReturningSubRoutine = null;
        while (current != null) {
            if (current.isNonReturningContext()) {
                lastNonReturningSubRoutine = current;
            }
            if (current.isBreakable() && current.labelName() == null) {
                if (lastNonReturningSubRoutine == null) {
                    return current;
                }
                return lastNonReturningSubRoutine;
            }
            current = current.parent;
        }
        return null;
    }

    public FlowContext getTargetContextForDefaultContinue() {
        FlowContext current = this;
        FlowContext lastNonReturningSubRoutine = null;
        while (current != null) {
            if (current.isNonReturningContext()) {
                lastNonReturningSubRoutine = current;
            }
            if (current.isContinuable()) {
                if (lastNonReturningSubRoutine == null) {
                    return current;
                }
                return lastNonReturningSubRoutine;
            }
            current = current.parent;
        }
        return null;
    }

    public String individualToString() {
        return "Flow context";
    }

    public FlowInfo initsOnBreak() {
        return FlowInfo.DEAD_END;
    }

    public UnconditionalFlowInfo initsOnReturn() {
        return FlowInfo.DEAD_END;
    }

    public boolean isBreakable() {
        return false;
    }

    public boolean isContinuable() {
        return false;
    }

    public boolean isNonReturningContext() {
        return false;
    }

    public boolean isSubRoutine() {
        return false;
    }

    public char[] labelName() {
        return null;
    }

    public void recordBreakFrom(FlowInfo flowInfo) {
    }

    public void recordBreakTo(FlowContext targetContext) {
    }

    public void recordContinueFrom(FlowContext innerFlowContext, FlowInfo flowInfo) {
    }

    protected boolean recordFinalAssignment(VariableBinding variable, Reference finalReference) {
        return true;
    }

    protected void recordNullReference(LocalVariableBinding local, Expression expression, int status) {
    }

    public void recordReturnFrom(UnconditionalFlowInfo flowInfo) {
    }

    public void recordSettingFinal(VariableBinding variable, Reference finalReference, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) == 0) {
            FlowContext context = this;
            while (context != null) {
                if (!context.recordFinalAssignment(variable, finalReference)) break;
                context = context.parent;
            }
        }
    }

    public void recordUsingNullReference(Scope scope, LocalVariableBinding local, Expression reference, int checkType, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 3) != 0 || flowInfo.isDefinitelyUnknown(local)) {
            return;
        }
        block0 : switch (checkType) {
            case 256: 
            case 512: {
                if (flowInfo.isDefinitelyNonNull(local)) {
                    if (checkType == 512) {
                        if ((this.tagBits & 4) == 0) {
                            scope.problemReporter().localVariableRedundantCheckOnNonNull(local, reference);
                        }
                        if (!flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) {
                            flowInfo.initsWhenFalse().setReachMode(2);
                        }
                    } else {
                        if ((this.tagBits & 4) == 0) {
                            scope.problemReporter().localVariableNonNullComparedToNull(local, reference);
                        }
                        if (!flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) {
                            flowInfo.initsWhenTrue().setReachMode(2);
                        }
                    }
                    return;
                }
                if (flowInfo.cannotBeDefinitelyNullOrNonNull(local)) {
                    return;
                }
            }
            case 257: 
            case 513: 
            case 769: 
            case 1025: {
                if (flowInfo.isDefinitelyNull(local)) {
                    switch (checkType & 0xFFFFFF00) {
                        case 256: {
                            if ((checkType & 0xFF) == 1 && (reference.implicitConversion & 0x400) != 0) {
                                scope.problemReporter().localVariableNullReference(local, reference);
                                return;
                            }
                            if ((this.tagBits & 4) == 0) {
                                scope.problemReporter().localVariableRedundantCheckOnNull(local, reference);
                            }
                            if (!flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) {
                                flowInfo.initsWhenFalse().setReachMode(2);
                            }
                            return;
                        }
                        case 512: {
                            if ((checkType & 0xFF) == 1 && (reference.implicitConversion & 0x400) != 0) {
                                scope.problemReporter().localVariableNullReference(local, reference);
                                return;
                            }
                            if ((this.tagBits & 4) == 0) {
                                scope.problemReporter().localVariableNullComparedToNonNull(local, reference);
                            }
                            if (!flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) {
                                flowInfo.initsWhenTrue().setReachMode(2);
                            }
                            return;
                        }
                        case 768: {
                            scope.problemReporter().localVariableRedundantNullAssignment(local, reference);
                            return;
                        }
                        case 1024: {
                            scope.problemReporter().localVariableNullInstanceof(local, reference);
                            return;
                        }
                    }
                    break;
                }
                if (flowInfo.isPotentiallyNull(local)) {
                    switch (checkType & 0xFFFFFF00) {
                        case 256: {
                            if ((checkType & 0xFF) != 1 || (reference.implicitConversion & 0x400) == 0) break block0;
                            scope.problemReporter().localVariablePotentialNullReference(local, reference);
                            return;
                        }
                        case 512: {
                            if ((checkType & 0xFF) != 1 || (reference.implicitConversion & 0x400) == 0) break block0;
                            scope.problemReporter().localVariablePotentialNullReference(local, reference);
                            return;
                        }
                    }
                    break;
                }
                if (!flowInfo.cannotBeDefinitelyNullOrNonNull(local)) break;
                return;
            }
            case 3: {
                if (flowInfo.isDefinitelyNull(local)) {
                    scope.problemReporter().localVariableNullReference(local, reference);
                    return;
                }
                if (!flowInfo.isPotentiallyNull(local)) break;
                scope.problemReporter().localVariablePotentialNullReference(local, reference);
                return;
            }
        }
        if (this.parent != null) {
            this.parent.recordUsingNullReference(scope, local, reference, checkType, flowInfo);
        }
    }

    void removeFinalAssignmentIfAny(Reference reference) {
    }

    public SubRoutineStatement subroutine() {
        return null;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        FlowContext current = this;
        int parentsCount = 0;
        while ((current = current.parent) != null) {
            ++parentsCount;
        }
        FlowContext[] parents = new FlowContext[parentsCount + 1];
        current = this;
        int index = parentsCount;
        while (index >= 0) {
            parents[index--] = current;
            current = current.parent;
        }
        int i = 0;
        while (i < parentsCount) {
            int j = 0;
            while (j < i) {
                buffer.append('\t');
                ++j;
            }
            buffer.append(parents[i].individualToString()).append('\n');
            ++i;
        }
        buffer.append('*');
        int j = 0;
        while (j < parentsCount + 1) {
            buffer.append('\t');
            ++j;
        }
        buffer.append(this.individualToString()).append('\n');
        return buffer.toString();
    }
}

