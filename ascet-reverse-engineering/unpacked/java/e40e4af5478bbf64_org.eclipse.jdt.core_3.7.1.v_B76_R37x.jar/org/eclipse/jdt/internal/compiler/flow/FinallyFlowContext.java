/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class FinallyFlowContext
extends FlowContext {
    Reference[] finalAssignments;
    VariableBinding[] finalVariables;
    int assignCount;
    LocalVariableBinding[] nullLocals;
    Expression[] nullReferences;
    int[] nullCheckTypes;
    int nullCount;

    public FinallyFlowContext(FlowContext parent, ASTNode associatedNode) {
        super(parent, associatedNode);
    }

    public void complainOnDeferredChecks(FlowInfo flowInfo, BlockScope scope) {
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
                    FlowContext currentContext = this.parent;
                    while (currentContext != null) {
                        currentContext.removeFinalAssignmentIfAny(this.finalAssignments[i]);
                        currentContext = currentContext.parent;
                    }
                }
            }
            ++i;
        }
        if ((this.tagBits & 1) != 0) {
            i = 0;
            while (i < this.nullCount) {
                this.parent.recordUsingNullReference(scope, this.nullLocals[i], this.nullReferences[i], this.nullCheckTypes[i], flowInfo);
                ++i;
            }
        } else {
            i = 0;
            while (i < this.nullCount) {
                Expression expression = this.nullReferences[i];
                LocalVariableBinding local = this.nullLocals[i];
                block0 : switch (this.nullCheckTypes[i]) {
                    case 256: 
                    case 512: {
                        if (flowInfo.isDefinitelyNonNull(local)) {
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
                            switch (this.nullCheckTypes[i] & 0xFFFFFF00) {
                                case 256: {
                                    if ((this.nullCheckTypes[i] & 0xFF) == 1 && (expression.implicitConversion & 0x400) != 0) {
                                        scope.problemReporter().localVariableNullReference(local, expression);
                                        break block0;
                                    }
                                    if ((this.tagBits & 4) != 0) break block0;
                                    scope.problemReporter().localVariableRedundantCheckOnNull(local, expression);
                                    break block0;
                                }
                                case 512: {
                                    if ((this.nullCheckTypes[i] & 0xFF) == 1 && (expression.implicitConversion & 0x400) != 0) {
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
                            break;
                        }
                        if (!flowInfo.isPotentiallyNull(local)) break;
                        switch (this.nullCheckTypes[i] & 0xFFFFFF00) {
                            case 256: {
                                this.nullReferences[i] = null;
                                if ((this.nullCheckTypes[i] & 0xFF) != 1 || (expression.implicitConversion & 0x400) == 0) break block0;
                                scope.problemReporter().localVariablePotentialNullReference(local, expression);
                                break block0;
                            }
                            case 512: {
                                this.nullReferences[i] = null;
                                if ((this.nullCheckTypes[i] & 0xFF) != 1 || (expression.implicitConversion & 0x400) == 0) break block0;
                                scope.problemReporter().localVariablePotentialNullReference(local, expression);
                                break block0;
                            }
                        }
                        break;
                    }
                    case 3: {
                        if (flowInfo.isDefinitelyNull(local)) {
                            scope.problemReporter().localVariableNullReference(local, expression);
                            break;
                        }
                        if (!flowInfo.isPotentiallyNull(local)) break;
                        scope.problemReporter().localVariablePotentialNullReference(local, expression);
                    }
                }
                ++i;
            }
        }
    }

    public String individualToString() {
        StringBuffer buffer = new StringBuffer("Finally flow context");
        buffer.append("[finalAssignments count - ").append(this.assignCount).append(']');
        buffer.append("[nullReferences count - ").append(this.nullCount).append(']');
        return buffer.toString();
    }

    public boolean isSubRoutine() {
        return true;
    }

    protected boolean recordFinalAssignment(VariableBinding binding, Reference finalAssignment) {
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

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void recordUsingNullReference(Scope scope, LocalVariableBinding local, Expression reference, int checkType, FlowInfo flowInfo) {
        block56: {
            block55: {
                if ((flowInfo.tagBits & 3) != 0 || flowInfo.isDefinitelyUnknown(local)) return;
                if ((this.tagBits & 1) == 0) break block55;
                switch (checkType) {
                    case 256: 
                    case 257: 
                    case 512: 
                    case 513: 
                    case 769: 
                    case 1025: {
                        if (flowInfo.cannotBeNull(local)) {
                            if (checkType == 512) {
                                if ((this.tagBits & 4) == 0) {
                                    scope.problemReporter().localVariableRedundantCheckOnNonNull(local, reference);
                                }
                                if (flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) return;
                                flowInfo.initsWhenFalse().setReachMode(2);
                                return;
                            } else {
                                if (checkType != 256) return;
                                if ((this.tagBits & 4) == 0) {
                                    scope.problemReporter().localVariableNonNullComparedToNull(local, reference);
                                }
                                if (flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) return;
                                flowInfo.initsWhenTrue().setReachMode(2);
                            }
                            return;
                        }
                        if (flowInfo.canOnlyBeNull(local)) {
                            switch (checkType & 0xFFFFFF00) {
                                case 256: {
                                    if ((checkType & 0xFF) == 1 && (reference.implicitConversion & 0x400) != 0) {
                                        scope.problemReporter().localVariableNullReference(local, reference);
                                        return;
                                    }
                                    if ((this.tagBits & 4) == 0) {
                                        scope.problemReporter().localVariableRedundantCheckOnNull(local, reference);
                                    }
                                    if (flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) return;
                                    flowInfo.initsWhenFalse().setReachMode(2);
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
                                    if (flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) return;
                                    flowInfo.initsWhenTrue().setReachMode(2);
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
                        if (!flowInfo.isPotentiallyNull(local)) break block56;
                        switch (checkType & 0xFFFFFF00) {
                            case 256: {
                                if ((checkType & 0xFF) == 1 && (reference.implicitConversion & 0x400) != 0) {
                                    scope.problemReporter().localVariablePotentialNullReference(local, reference);
                                    return;
                                }
                                break block56;
                            }
                            case 512: {
                                if ((checkType & 0xFF) == 1 && (reference.implicitConversion & 0x400) != 0) {
                                    scope.problemReporter().localVariablePotentialNullReference(local, reference);
                                    return;
                                }
                                break block56;
                            }
                        }
                        break block56;
                    }
                    case 3: {
                        if (flowInfo.cannotBeNull(local)) {
                            return;
                        }
                        if (flowInfo.canOnlyBeNull(local)) {
                            scope.problemReporter().localVariableNullReference(local, reference);
                            return;
                        }
                        break block56;
                    }
                }
                break block56;
            }
            block14 : switch (checkType) {
                case 256: 
                case 512: {
                    if (flowInfo.isDefinitelyNonNull(local)) {
                        if (checkType == 512) {
                            if ((this.tagBits & 4) == 0) {
                                scope.problemReporter().localVariableRedundantCheckOnNonNull(local, reference);
                            }
                            if (flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) return;
                            flowInfo.initsWhenFalse().setReachMode(2);
                            return;
                        } else {
                            if ((this.tagBits & 4) == 0) {
                                scope.problemReporter().localVariableNonNullComparedToNull(local, reference);
                            }
                            if (flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) return;
                            flowInfo.initsWhenTrue().setReachMode(2);
                        }
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
                                if (flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) return;
                                flowInfo.initsWhenFalse().setReachMode(2);
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
                                if (flowInfo.isMarkedAsNullOrNonNullInAssertExpression(local)) return;
                                flowInfo.initsWhenTrue().setReachMode(2);
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
                    if (!flowInfo.isPotentiallyNull(local)) break;
                    switch (checkType & 0xFFFFFF00) {
                        case 256: {
                            if ((checkType & 0xFF) != 1 || (reference.implicitConversion & 0x400) == 0) break block14;
                            scope.problemReporter().localVariablePotentialNullReference(local, reference);
                            return;
                        }
                        case 512: {
                            if ((checkType & 0xFF) != 1 || (reference.implicitConversion & 0x400) == 0) break block14;
                            scope.problemReporter().localVariablePotentialNullReference(local, reference);
                            return;
                        }
                    }
                    break;
                }
                case 3: {
                    if (flowInfo.isDefinitelyNull(local)) {
                        scope.problemReporter().localVariableNullReference(local, reference);
                        return;
                    }
                    if (flowInfo.isPotentiallyNull(local)) {
                        scope.problemReporter().localVariablePotentialNullReference(local, reference);
                        return;
                    }
                    if (!flowInfo.isDefinitelyNonNull(local)) break;
                    return;
                }
            }
        }
        if ((this.tagBits & 4) != 0 && checkType != 3 && (checkType & 0xFFFFFF00) != 768 && (checkType & 0xFFFFFF00) != 1024) return;
        this.recordNullReference(local, reference, checkType);
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

    protected void recordNullReference(LocalVariableBinding local, Expression expression, int status) {
        if (this.nullCount == 0) {
            this.nullLocals = new LocalVariableBinding[5];
            this.nullReferences = new Expression[5];
            this.nullCheckTypes = new int[5];
        } else if (this.nullCount == this.nullLocals.length) {
            int newLength = this.nullCount * 2;
            this.nullLocals = new LocalVariableBinding[newLength];
            System.arraycopy(this.nullLocals, 0, this.nullLocals, 0, this.nullCount);
            this.nullReferences = new Expression[newLength];
            System.arraycopy(this.nullReferences, 0, this.nullReferences, 0, this.nullCount);
            this.nullCheckTypes = new int[newLength];
            System.arraycopy(this.nullCheckTypes, 0, this.nullCheckTypes, 0, this.nullCount);
        }
        this.nullLocals[this.nullCount] = local;
        this.nullReferences[this.nullCount] = expression;
        this.nullCheckTypes[this.nullCount++] = status;
    }
}

