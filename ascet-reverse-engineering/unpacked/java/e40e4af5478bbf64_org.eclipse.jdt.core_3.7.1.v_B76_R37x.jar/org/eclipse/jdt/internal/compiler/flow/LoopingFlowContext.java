/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.flow;

import java.util.ArrayList;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.LabelFlowContext;
import org.eclipse.jdt.internal.compiler.flow.SwitchFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class LoopingFlowContext
extends SwitchFlowContext {
    public BranchLabel continueLabel;
    public UnconditionalFlowInfo initsOnContinue = FlowInfo.DEAD_END;
    private UnconditionalFlowInfo upstreamNullFlowInfo;
    private LoopingFlowContext[] innerFlowContexts = null;
    private UnconditionalFlowInfo[] innerFlowInfos = null;
    private int innerFlowContextsCount = 0;
    private LabelFlowContext[] breakTargetContexts = null;
    private int breakTargetsCount = 0;
    Reference[] finalAssignments;
    VariableBinding[] finalVariables;
    int assignCount = 0;
    LocalVariableBinding[] nullLocals;
    Expression[] nullReferences;
    int[] nullCheckTypes;
    int nullCount;
    private ArrayList escapingExceptionCatchSites = null;
    Scope associatedScope;

    public LoopingFlowContext(FlowContext parent, FlowInfo upstreamNullFlowInfo, ASTNode associatedNode, BranchLabel breakLabel, BranchLabel continueLabel, Scope associatedScope) {
        super(parent, associatedNode, breakLabel);
        this.tagBits |= 2;
        this.continueLabel = continueLabel;
        this.associatedScope = associatedScope;
        this.upstreamNullFlowInfo = upstreamNullFlowInfo.unconditionalCopy();
    }

    public void complainOnDeferredFinalChecks(BlockScope scope, FlowInfo flowInfo) {
        int i = 0;
        while (i < this.assignCount) {
            VariableBinding variable = this.finalVariables[i];
            if (variable != null) {
                boolean complained = false;
                if (variable instanceof FieldBinding) {
                    if (flowInfo.isPotentiallyAssigned((FieldBinding)variable)) {
                        complained = true;
                        scope.problemReporter().duplicateInitializationOfBlankFinalField((FieldBinding)variable, this.finalAssignments[i]);
                    }
                } else if (flowInfo.isPotentiallyAssigned((LocalVariableBinding)variable)) {
                    complained = true;
                    scope.problemReporter().duplicateInitializationOfFinalLocal((LocalVariableBinding)variable, this.finalAssignments[i]);
                }
                if (complained) {
                    FlowContext context = this.parent;
                    while (context != null) {
                        context.removeFinalAssignmentIfAny(this.finalAssignments[i]);
                        context = context.parent;
                    }
                }
            }
            ++i;
        }
    }

    /*
     * Unable to fully structure code
     */
    public void complainOnDeferredNullChecks(BlockScope scope, FlowInfo callerFlowInfo) {
        block53: {
            block52: {
                i = 0;
                while (i < this.innerFlowContextsCount) {
                    this.upstreamNullFlowInfo.addPotentialNullInfoFrom(this.innerFlowContexts[i].upstreamNullFlowInfo).addPotentialNullInfoFrom(this.innerFlowInfos[i]);
                    ++i;
                }
                this.innerFlowContextsCount = 0;
                flowInfo = this.upstreamNullFlowInfo.addPotentialNullInfoFrom(callerFlowInfo.unconditionalInitsWithoutSideEffect());
                if ((this.tagBits & 1) == 0) break block52;
                i = 0;
                while (i < this.nullCount) {
                    local = this.nullLocals[i];
                    expression = this.nullReferences[i];
                    block0 : switch (this.nullCheckTypes[i]) {
                        case 258: 
                        case 514: {
                            if (flowInfo.isDefinitelyNonNull(local)) {
                                this.nullReferences[i] = null;
                                if (this.nullCheckTypes[i] == 514) {
                                    if ((this.tagBits & 4) != 0) break;
                                    scope.problemReporter().localVariableRedundantCheckOnNonNull(local, expression);
                                    break;
                                }
                                if ((this.tagBits & 4) != 0) break;
                                scope.problemReporter().localVariableNonNullComparedToNull(local, expression);
                                break;
                            }
                            ** GOTO lbl91
                        }
                        case 256: 
                        case 512: {
                            if (flowInfo.isDefinitelyNonNull(local)) {
                                this.nullReferences[i] = null;
                                if (this.nullCheckTypes[i] == 512) {
                                    if ((this.tagBits & 4) != 0) break;
                                    scope.problemReporter().localVariableRedundantCheckOnNonNull(local, expression);
                                    break;
                                }
                                if ((this.tagBits & 4) != 0) break;
                                scope.problemReporter().localVariableNonNullComparedToNull(local, expression);
                                break;
                            }
                            if (flowInfo.isDefinitelyNull(local)) {
                                this.nullReferences[i] = null;
                                if (this.nullCheckTypes[i] == 256) {
                                    if ((this.tagBits & 4) != 0) break;
                                    scope.problemReporter().localVariableRedundantCheckOnNull(local, expression);
                                    break;
                                }
                                if ((this.tagBits & 4) != 0) break;
                                scope.problemReporter().localVariableNullComparedToNonNull(local, expression);
                                break;
                            }
                            ** GOTO lbl91
                        }
                        case 257: 
                        case 513: 
                        case 769: 
                        case 1025: {
                            if (!flowInfo.isDefinitelyNull(local)) ** GOTO lbl71
                            this.nullReferences[i] = null;
                            switch (this.nullCheckTypes[i] & -256) {
                                case 256: {
                                    if ((this.nullCheckTypes[i] & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                        scope.problemReporter().localVariableNullReference(local, expression);
                                        break block0;
                                    }
                                    if ((this.tagBits & 4) != 0) break block0;
                                    scope.problemReporter().localVariableRedundantCheckOnNull(local, expression);
                                    break block0;
                                }
                                case 512: {
                                    if ((this.nullCheckTypes[i] & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                        scope.problemReporter().localVariableNullReference(local, expression);
                                        break block0;
                                    }
                                    if ((this.tagBits & 4) != 0) break block0;
                                    scope.problemReporter().localVariableNullComparedToNonNull(local, expression);
                                    break block0;
                                }
                                case 768: {
                                    scope.problemReporter().localVariableRedundantNullAssignment(local, expression);
                                    break block0;
                                }
                                case 1024: {
                                    scope.problemReporter().localVariableNullInstanceof(local, expression);
                                    break block0;
                                }
                            }
                            ** GOTO lbl91
lbl71:
                            // 1 sources

                            if (!flowInfo.isPotentiallyNull(local)) ** GOTO lbl91
                            switch (this.nullCheckTypes[i] & -256) {
                                case 256: {
                                    this.nullReferences[i] = null;
                                    if ((this.nullCheckTypes[i] & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                        scope.problemReporter().localVariablePotentialNullReference(local, expression);
                                        break block0;
                                    }
                                    ** GOTO lbl91
                                }
                                case 512: {
                                    this.nullReferences[i] = null;
                                    if ((this.nullCheckTypes[i] & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                        scope.problemReporter().localVariablePotentialNullReference(local, expression);
                                        break block0;
                                    }
                                    ** GOTO lbl91
                                }
                            }
                            ** GOTO lbl91
                        }
                        case 3: {
                            if (flowInfo.isDefinitelyNull(local)) {
                                this.nullReferences[i] = null;
                                scope.problemReporter().localVariableNullReference(local, expression);
                                break;
                            }
                        }
lbl91:
                        // 10 sources

                        default: {
                            this.parent.recordUsingNullReference(scope, local, expression, this.nullCheckTypes[i], flowInfo);
                        }
                    }
                    ++i;
                }
                break block53;
            }
            i = 0;
            while (i < this.nullCount) {
                expression = this.nullReferences[i];
                local = this.nullLocals[i];
                block16 : switch (this.nullCheckTypes[i]) {
                    case 256: 
                    case 512: {
                        if (flowInfo.isDefinitelyNonNull(local)) {
                            this.nullReferences[i] = null;
                            if (this.nullCheckTypes[i] == 512) {
                                if ((this.tagBits & 4) != 0) break;
                                scope.problemReporter().localVariableRedundantCheckOnNonNull(local, expression);
                                break;
                            }
                            if ((this.tagBits & 4) != 0) break;
                            scope.problemReporter().localVariableNonNullComparedToNull(local, expression);
                            break;
                        }
                    }
                    case 257: 
                    case 513: 
                    case 769: 
                    case 1025: {
                        if (flowInfo.isDefinitelyNull(local)) {
                            this.nullReferences[i] = null;
                            switch (this.nullCheckTypes[i] & -256) {
                                case 256: {
                                    if ((this.nullCheckTypes[i] & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                        scope.problemReporter().localVariableNullReference(local, expression);
                                        break block16;
                                    }
                                    if ((this.tagBits & 4) != 0) break block16;
                                    scope.problemReporter().localVariableRedundantCheckOnNull(local, expression);
                                    break block16;
                                }
                                case 512: {
                                    if ((this.nullCheckTypes[i] & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                        scope.problemReporter().localVariableNullReference(local, expression);
                                        break block16;
                                    }
                                    if ((this.tagBits & 4) != 0) break block16;
                                    scope.problemReporter().localVariableNullComparedToNonNull(local, expression);
                                    break block16;
                                }
                                case 768: {
                                    scope.problemReporter().localVariableRedundantNullAssignment(local, expression);
                                    break block16;
                                }
                                case 1024: {
                                    scope.problemReporter().localVariableNullInstanceof(local, expression);
                                    break block16;
                                }
                            }
                            break;
                        }
                        if (!flowInfo.isPotentiallyNull(local)) break;
                        switch (this.nullCheckTypes[i] & -256) {
                            case 256: {
                                this.nullReferences[i] = null;
                                if ((this.nullCheckTypes[i] & 255) != 1 || (expression.implicitConversion & 1024) == 0) break block16;
                                scope.problemReporter().localVariablePotentialNullReference(local, expression);
                                break block16;
                            }
                            case 512: {
                                this.nullReferences[i] = null;
                                if ((this.nullCheckTypes[i] & 255) != 1 || (expression.implicitConversion & 1024) == 0) break block16;
                                scope.problemReporter().localVariablePotentialNullReference(local, expression);
                                break block16;
                            }
                        }
                        break;
                    }
                    case 3: {
                        if (flowInfo.isDefinitelyNull(local)) {
                            this.nullReferences[i] = null;
                            scope.problemReporter().localVariableNullReference(local, expression);
                            break;
                        }
                        if (!flowInfo.isPotentiallyNull(local)) break;
                        this.nullReferences[i] = null;
                        scope.problemReporter().localVariablePotentialNullReference(local, expression);
                    }
                }
                ++i;
            }
        }
        this.initsOnBreak.addPotentialNullInfoFrom(flowInfo);
        i = 0;
        while (i < this.breakTargetsCount) {
            this.breakTargetContexts[i].initsOnBreak.addPotentialNullInfoFrom(flowInfo);
            ++i;
        }
    }

    public BranchLabel continueLabel() {
        return this.continueLabel;
    }

    public String individualToString() {
        StringBuffer buffer = new StringBuffer("Looping flow context");
        buffer.append("[initsOnBreak - ").append(this.initsOnBreak.toString()).append(']');
        buffer.append("[initsOnContinue - ").append(this.initsOnContinue.toString()).append(']');
        buffer.append("[finalAssignments count - ").append(this.assignCount).append(']');
        buffer.append("[nullReferences count - ").append(this.nullCount).append(']');
        return buffer.toString();
    }

    public boolean isContinuable() {
        return true;
    }

    public boolean isContinuedTo() {
        return this.initsOnContinue != FlowInfo.DEAD_END;
    }

    public void recordBreakTo(FlowContext targetContext) {
        if (targetContext instanceof LabelFlowContext) {
            int current;
            if ((current = this.breakTargetsCount++) == 0) {
                this.breakTargetContexts = new LabelFlowContext[2];
            } else if (current == this.breakTargetContexts.length) {
                this.breakTargetContexts = new LabelFlowContext[current + 2];
                System.arraycopy(this.breakTargetContexts, 0, this.breakTargetContexts, 0, current);
            }
            this.breakTargetContexts[current] = (LabelFlowContext)targetContext;
        }
    }

    public void recordContinueFrom(FlowContext innerFlowContext, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) == 0) {
            this.initsOnContinue = (this.initsOnContinue.tagBits & 1) == 0 ? this.initsOnContinue.mergedWith(flowInfo.unconditionalInitsWithoutSideEffect()) : flowInfo.unconditionalCopy();
            FlowContext inner = innerFlowContext;
            while (inner != this && !(inner instanceof LoopingFlowContext)) {
                inner = inner.parent;
            }
            if (inner == this) {
                this.upstreamNullFlowInfo.addPotentialNullInfoFrom(flowInfo.unconditionalInitsWithoutSideEffect());
            } else {
                int length = 0;
                if (this.innerFlowContexts == null) {
                    this.innerFlowContexts = new LoopingFlowContext[5];
                    this.innerFlowInfos = new UnconditionalFlowInfo[5];
                } else {
                    length = this.innerFlowContexts.length;
                    if (this.innerFlowContextsCount == length - 1) {
                        this.innerFlowContexts = new LoopingFlowContext[length + 5];
                        System.arraycopy(this.innerFlowContexts, 0, this.innerFlowContexts, 0, length);
                        this.innerFlowInfos = new UnconditionalFlowInfo[length + 5];
                        System.arraycopy(this.innerFlowInfos, 0, this.innerFlowInfos, 0, length);
                    }
                }
                this.innerFlowContexts[this.innerFlowContextsCount] = (LoopingFlowContext)inner;
                this.innerFlowInfos[this.innerFlowContextsCount++] = flowInfo.unconditionalInitsWithoutSideEffect();
            }
        }
    }

    protected boolean recordFinalAssignment(VariableBinding binding, Reference finalAssignment) {
        if (binding instanceof LocalVariableBinding) {
            Scope scope = ((LocalVariableBinding)binding).declaringScope;
            while ((scope = scope.parent) != null) {
                if (scope != this.associatedScope) continue;
                return false;
            }
        }
        if (this.assignCount == 0) {
            this.finalAssignments = new Reference[5];
            this.finalVariables = new VariableBinding[5];
        } else {
            if (this.assignCount == this.finalAssignments.length) {
                this.finalAssignments = new Reference[this.assignCount * 2];
                System.arraycopy(this.finalAssignments, 0, this.finalAssignments, 0, this.assignCount);
            }
            this.finalVariables = new VariableBinding[this.assignCount * 2];
            System.arraycopy(this.finalVariables, 0, this.finalVariables, 0, this.assignCount);
        }
        this.finalAssignments[this.assignCount] = finalAssignment;
        this.finalVariables[this.assignCount++] = binding;
        return true;
    }

    protected void recordNullReference(LocalVariableBinding local, Expression expression, int status) {
        if (this.nullCount == 0) {
            this.nullLocals = new LocalVariableBinding[5];
            this.nullReferences = new Expression[5];
            this.nullCheckTypes = new int[5];
        } else if (this.nullCount == this.nullLocals.length) {
            this.nullLocals = new LocalVariableBinding[this.nullCount * 2];
            System.arraycopy(this.nullLocals, 0, this.nullLocals, 0, this.nullCount);
            this.nullReferences = new Expression[this.nullCount * 2];
            System.arraycopy(this.nullReferences, 0, this.nullReferences, 0, this.nullCount);
            this.nullCheckTypes = new int[this.nullCount * 2];
            System.arraycopy(this.nullCheckTypes, 0, this.nullCheckTypes, 0, this.nullCount);
        }
        this.nullLocals[this.nullCount] = local;
        this.nullReferences[this.nullCount] = expression;
        this.nullCheckTypes[this.nullCount++] = status;
    }

    public void recordUsingNullReference(Scope scope, LocalVariableBinding local, Expression reference, int checkType, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 3) != 0 || flowInfo.isDefinitelyUnknown(local)) {
            return;
        }
        switch (checkType) {
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
                } else if (flowInfo.isDefinitelyNull(local)) {
                    if (checkType == 256) {
                        if ((this.tagBits & 4) == 0) {
                            scope.problemReporter().localVariableRedundantCheckOnNull(local, reference);
                        }
                        if (!flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) {
                            flowInfo.initsWhenFalse().setReachMode(2);
                        }
                    } else {
                        if ((this.tagBits & 4) == 0) {
                            scope.problemReporter().localVariableNullComparedToNonNull(local, reference);
                        }
                        if (!flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) {
                            flowInfo.initsWhenTrue().setReachMode(2);
                        }
                    }
                } else if (this.upstreamNullFlowInfo.isDefinitelyNonNull(local) && !flowInfo.isPotentiallyNull(local) && !flowInfo.isPotentiallyUnknown(local)) {
                    flowInfo.markAsDefinitelyNonNull(local);
                    if ((this.tagBits & 4) == 0) {
                        this.recordNullReference(local, reference, checkType);
                    }
                } else {
                    if (flowInfo.cannotBeDefinitelyNullOrNonNull(local)) {
                        return;
                    }
                    if ((this.tagBits & 4) == 0) {
                        if (flowInfo.isPotentiallyNonNull(local)) {
                            this.recordNullReference(local, reference, 2 | checkType & 0xFFFFFF00);
                        } else if (flowInfo.isPotentiallyNull(local)) {
                            this.recordNullReference(local, reference, 1 | checkType & 0xFFFFFF00);
                        } else {
                            this.recordNullReference(local, reference, checkType);
                        }
                    }
                }
                return;
            }
            case 257: 
            case 513: 
            case 769: 
            case 1025: {
                if (flowInfo.isPotentiallyNonNull(local) || flowInfo.isPotentiallyUnknown(local) || flowInfo.isProtectedNonNull(local)) {
                    return;
                }
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
                } else if (flowInfo.isPotentiallyNull(local)) {
                    switch (checkType & 0xFFFFFF00) {
                        case 256: {
                            if ((checkType & 0xFF) != 1 || (reference.implicitConversion & 0x400) == 0) break;
                            scope.problemReporter().localVariablePotentialNullReference(local, reference);
                            return;
                        }
                        case 512: {
                            if ((checkType & 0xFF) != 1 || (reference.implicitConversion & 0x400) == 0) break;
                            scope.problemReporter().localVariablePotentialNullReference(local, reference);
                            return;
                        }
                    }
                }
                if ((this.tagBits & 4) == 0 || (checkType & 0xFFFFFF00) == 768 || (checkType & 0xFFFFFF00) == 1024) {
                    this.recordNullReference(local, reference, checkType);
                }
                return;
            }
            case 3: {
                if (flowInfo.isDefinitelyNonNull(local)) {
                    return;
                }
                if (flowInfo.isDefinitelyNull(local)) {
                    scope.problemReporter().localVariableNullReference(local, reference);
                    return;
                }
                if (flowInfo.isPotentiallyNull(local)) {
                    scope.problemReporter().localVariablePotentialNullReference(local, reference);
                    return;
                }
                this.recordNullReference(local, reference, checkType);
                return;
            }
        }
    }

    void removeFinalAssignmentIfAny(Reference reference) {
        int i = 0;
        while (i < this.assignCount) {
            if (this.finalAssignments[i] == reference) {
                this.finalAssignments[i] = null;
                this.finalVariables[i] = null;
                return;
            }
            ++i;
        }
    }

    public void simulateThrowAfterLoopBack(FlowInfo flowInfo) {
        if (this.escapingExceptionCatchSites != null) {
            int i = 0;
            int exceptionCount = this.escapingExceptionCatchSites.size();
            while (i < exceptionCount) {
                ((EscapingExceptionCatchSite)this.escapingExceptionCatchSites.get(i)).simulateThrowAfterLoopBack(flowInfo);
                ++i;
            }
            this.escapingExceptionCatchSites = null;
        }
    }

    public void recordCatchContextOfEscapingException(ExceptionHandlingFlowContext catchingContext, ReferenceBinding caughtException) {
        if (this.escapingExceptionCatchSites == null) {
            this.escapingExceptionCatchSites = new ArrayList(5);
        }
        this.escapingExceptionCatchSites.add(new EscapingExceptionCatchSite(catchingContext, caughtException));
    }

    public boolean hasEscapingExceptions() {
        return this.escapingExceptionCatchSites != null;
    }

    private static class EscapingExceptionCatchSite {
        final ReferenceBinding caughtException;
        final ExceptionHandlingFlowContext catchingContext;

        public EscapingExceptionCatchSite(ExceptionHandlingFlowContext catchingContext, ReferenceBinding caughtException) {
            this.catchingContext = catchingContext;
            this.caughtException = caughtException;
        }

        void simulateThrowAfterLoopBack(FlowInfo flowInfo) {
            this.catchingContext.recordHandlingException(this.caughtException, flowInfo.unconditionalInits(), null, null, null, true);
        }
    }
}

