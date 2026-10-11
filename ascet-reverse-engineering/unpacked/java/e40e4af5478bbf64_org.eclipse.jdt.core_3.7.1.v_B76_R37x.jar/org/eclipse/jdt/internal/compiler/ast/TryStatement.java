/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.SubRoutineStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.codegen.ExceptionLabel;
import org.eclipse.jdt.internal.compiler.codegen.MultiCatchExceptionLabel;
import org.eclipse.jdt.internal.compiler.codegen.StackMapFrameCodeStream;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FinallyFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InsideSubRoutineFlowContext;
import org.eclipse.jdt.internal.compiler.flow.NullInfoRegistry;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class TryStatement
extends SubRoutineStatement {
    static final char[] SECRET_RETURN_ADDRESS_NAME = " returnAddress".toCharArray();
    static final char[] SECRET_ANY_HANDLER_NAME = " anyExceptionHandler".toCharArray();
    static final char[] SECRET_PRIMARY_EXCEPTION_VARIABLE_NAME = " primaryException".toCharArray();
    static final char[] SECRET_CAUGHT_THROWABLE_VARIABLE_NAME = " caughtThrowable".toCharArray();
    static final char[] SECRET_RETURN_VALUE_NAME = " returnValue".toCharArray();
    private static LocalDeclaration[] NO_RESOURCES = new LocalDeclaration[0];
    public LocalDeclaration[] resources = NO_RESOURCES;
    public Block tryBlock;
    public Block[] catchBlocks;
    public Argument[] catchArguments;
    public Block finallyBlock;
    BlockScope scope;
    public UnconditionalFlowInfo subRoutineInits;
    ReferenceBinding[] caughtExceptionTypes;
    boolean[] catchExits;
    BranchLabel subRoutineStartLabel;
    public LocalVariableBinding anyExceptionVariable;
    public LocalVariableBinding returnAddressVariable;
    public LocalVariableBinding secretReturnValue;
    ExceptionLabel[] declaredExceptionLabels;
    private Object[] reusableJSRTargets;
    private BranchLabel[] reusableJSRSequenceStartLabels;
    private int[] reusableJSRStateIndexes;
    private int reusableJSRTargetsCount = 0;
    private static final int NO_FINALLY = 0;
    private static final int FINALLY_SUBROUTINE = 1;
    private static final int FINALLY_DOES_NOT_COMPLETE = 2;
    private static final int FINALLY_INLINE = 3;
    int mergedInitStateIndex = -1;
    int preTryInitStateIndex = -1;
    int[] postResourcesInitStateIndexes;
    int naturalExitMergeInitStateIndex = -1;
    int[] catchExitInitStateIndexes;
    private LocalVariableBinding primaryExceptionVariable;
    private LocalVariableBinding caughtThrowableVariable;
    private ExceptionLabel[] resourceExceptionLabels;
    private int[] caughtExceptionsCatchBlocks;

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo tryInfo;
        int resourcesLength;
        this.preTryInitStateIndex = currentScope.methodScope().recordInitializationStates(flowInfo);
        if (this.anyExceptionVariable != null) {
            this.anyExceptionVariable.useFlag = 1;
        }
        if (this.primaryExceptionVariable != null) {
            this.primaryExceptionVariable.useFlag = 1;
        }
        if (this.caughtThrowableVariable != null) {
            this.caughtThrowableVariable.useFlag = 1;
        }
        if (this.returnAddressVariable != null) {
            this.returnAddressVariable.useFlag = 1;
        }
        if ((resourcesLength = this.resources.length) > 0) {
            this.postResourcesInitStateIndexes = new int[resourcesLength];
        }
        if (this.subRoutineStartLabel == null) {
            FlowInfo tryInfo2;
            ExceptionHandlingFlowContext handlingContext = new ExceptionHandlingFlowContext(flowContext, this, this.caughtExceptionTypes, this.caughtExceptionsCatchBlocks, this.catchArguments, null, this.scope, flowInfo.unconditionalInits());
            handlingContext.initsOnFinally = new NullInfoRegistry(flowInfo.unconditionalInits());
            int i = 0;
            while (i < resourcesLength) {
                ReferenceBinding binding;
                MethodBinding closeMethod;
                flowInfo = this.resources[i].analyseCode(currentScope, handlingContext, flowInfo.copy());
                this.postResourcesInitStateIndexes[i] = currentScope.methodScope().recordInitializationStates(flowInfo);
                this.resources[i].binding.useFlag = 1;
                TypeBinding type = this.resources[i].binding.type;
                if (type != null && type.isValidBinding() && (closeMethod = (binding = (ReferenceBinding)type).getExactMethod(ConstantPool.Close, new TypeBinding[0], this.scope.compilationUnitScope())) != null && closeMethod.returnType.id == 6) {
                    ReferenceBinding[] thrownExceptions = closeMethod.thrownExceptions;
                    int j = 0;
                    int length = thrownExceptions.length;
                    while (j < length) {
                        handlingContext.checkExceptionHandlers(thrownExceptions[j], this.resources[i], flowInfo, currentScope, true);
                        ++j;
                    }
                }
                ++i;
            }
            if (this.tryBlock.isEmptyBlock()) {
                tryInfo2 = flowInfo;
            } else {
                tryInfo2 = this.tryBlock.analyseCode(currentScope, handlingContext, flowInfo.copy());
                if ((tryInfo2.tagBits & 1) != 0) {
                    this.bits |= 0x20000000;
                }
            }
            handlingContext.complainIfUnusedExceptionHandlers(this.scope, this);
            if (this.catchArguments != null) {
                int catchCount = this.catchBlocks.length;
                this.catchExits = new boolean[catchCount];
                this.catchExitInitStateIndexes = new int[catchCount];
                int i2 = 0;
                while (i2 < catchCount) {
                    FlowInfo catchInfo;
                    if (this.isUncheckedCatchBlock(i2)) {
                        catchInfo = handlingContext.initsOnFinally.mitigateNullInfoOf(flowInfo.unconditionalCopy().addPotentialInitializationsFrom(handlingContext.initsOnException(i2)).addPotentialInitializationsFrom(tryInfo2).addPotentialInitializationsFrom(handlingContext.initsOnReturn));
                    } else {
                        UnconditionalFlowInfo initsOnException = handlingContext.initsOnException(i2);
                        catchInfo = flowInfo.nullInfoLessUnconditionalCopy().addPotentialInitializationsFrom(initsOnException).addNullInfoFrom(initsOnException).addPotentialInitializationsFrom(tryInfo2.nullInfoLessUnconditionalCopy()).addPotentialInitializationsFrom(handlingContext.initsOnReturn.nullInfoLessUnconditionalCopy());
                    }
                    LocalVariableBinding catchArg = this.catchArguments[i2].binding;
                    catchInfo.markAsDefinitelyAssigned(catchArg);
                    catchInfo.markAsDefinitelyNonNull(catchArg);
                    if (this.tryBlock.statements == null && this.resources == NO_RESOURCES) {
                        catchInfo.setReachMode(1);
                    }
                    catchInfo = this.catchBlocks[i2].analyseCode(currentScope, flowContext, catchInfo);
                    this.catchExitInitStateIndexes[i2] = currentScope.methodScope().recordInitializationStates(catchInfo);
                    this.catchExits[i2] = (catchInfo.tagBits & 1) != 0;
                    tryInfo2 = tryInfo2.mergedWith(catchInfo.unconditionalInits());
                    ++i2;
                }
            }
            this.mergedInitStateIndex = currentScope.methodScope().recordInitializationStates(tryInfo2);
            if (flowContext.initsOnFinally != null) {
                flowContext.initsOnFinally.add(handlingContext.initsOnFinally);
            }
            return tryInfo2;
        }
        InsideSubRoutineFlowContext insideSubContext = new InsideSubRoutineFlowContext(flowContext, this);
        FinallyFlowContext finallyContext = new FinallyFlowContext(flowContext, this.finallyBlock);
        UnconditionalFlowInfo subInfo = this.finallyBlock.analyseCode(currentScope, finallyContext, flowInfo.nullInfoLessUnconditionalCopy()).unconditionalInits();
        if (subInfo == FlowInfo.DEAD_END) {
            this.bits |= 0x4000;
            this.scope.problemReporter().finallyMustCompleteNormally(this.finallyBlock);
        }
        this.subRoutineInits = subInfo;
        ExceptionHandlingFlowContext handlingContext = new ExceptionHandlingFlowContext(insideSubContext, this, this.caughtExceptionTypes, this.caughtExceptionsCatchBlocks, this.catchArguments, null, this.scope, flowInfo.unconditionalInits());
        handlingContext.initsOnFinally = new NullInfoRegistry(flowInfo.unconditionalInits());
        int i = 0;
        while (i < resourcesLength) {
            ReferenceBinding binding;
            MethodBinding closeMethod;
            flowInfo = this.resources[i].analyseCode(currentScope, handlingContext, flowInfo.copy());
            this.postResourcesInitStateIndexes[i] = currentScope.methodScope().recordInitializationStates(flowInfo);
            this.resources[i].binding.useFlag = 1;
            TypeBinding type = this.resources[i].binding.type;
            if (type != null && type.isValidBinding() && (closeMethod = (binding = (ReferenceBinding)type).getExactMethod(ConstantPool.Close, new TypeBinding[0], this.scope.compilationUnitScope())) != null && closeMethod.returnType.id == 6) {
                ReferenceBinding[] thrownExceptions = closeMethod.thrownExceptions;
                int j = 0;
                int length = thrownExceptions.length;
                while (j < length) {
                    handlingContext.checkExceptionHandlers(thrownExceptions[j], (ASTNode)this.resources[j], flowInfo, currentScope);
                    ++j;
                }
            }
            ++i;
        }
        if (this.tryBlock.isEmptyBlock()) {
            tryInfo = flowInfo;
        } else {
            tryInfo = this.tryBlock.analyseCode(currentScope, handlingContext, flowInfo.copy());
            if ((tryInfo.tagBits & 1) != 0) {
                this.bits |= 0x20000000;
            }
        }
        handlingContext.complainIfUnusedExceptionHandlers(this.scope, this);
        if (this.catchArguments != null) {
            int catchCount = this.catchBlocks.length;
            this.catchExits = new boolean[catchCount];
            this.catchExitInitStateIndexes = new int[catchCount];
            int i3 = 0;
            while (i3 < catchCount) {
                FlowInfo catchInfo;
                if (this.isUncheckedCatchBlock(i3)) {
                    catchInfo = handlingContext.initsOnFinally.mitigateNullInfoOf(flowInfo.unconditionalCopy().addPotentialInitializationsFrom(handlingContext.initsOnException(i3)).addPotentialInitializationsFrom(tryInfo).addPotentialInitializationsFrom(handlingContext.initsOnReturn));
                } else {
                    UnconditionalFlowInfo initsOnException = handlingContext.initsOnException(i3);
                    catchInfo = flowInfo.nullInfoLessUnconditionalCopy().addPotentialInitializationsFrom(initsOnException).addNullInfoFrom(initsOnException).addPotentialInitializationsFrom(tryInfo.nullInfoLessUnconditionalCopy()).addPotentialInitializationsFrom(handlingContext.initsOnReturn.nullInfoLessUnconditionalCopy());
                }
                LocalVariableBinding catchArg = this.catchArguments[i3].binding;
                catchInfo.markAsDefinitelyAssigned(catchArg);
                catchInfo.markAsDefinitelyNonNull(catchArg);
                if (this.tryBlock.statements == null && this.resources == NO_RESOURCES) {
                    catchInfo.setReachMode(1);
                }
                catchInfo = this.catchBlocks[i3].analyseCode(currentScope, insideSubContext, catchInfo);
                this.catchExitInitStateIndexes[i3] = currentScope.methodScope().recordInitializationStates(catchInfo);
                this.catchExits[i3] = (catchInfo.tagBits & 1) != 0;
                tryInfo = tryInfo.mergedWith(catchInfo.unconditionalInits());
                ++i3;
            }
        }
        finallyContext.complainOnDeferredChecks(handlingContext.initsOnFinally.mitigateNullInfoOf((tryInfo.tagBits & 3) == 0 ? flowInfo.unconditionalCopy().addPotentialInitializationsFrom(tryInfo).addPotentialInitializationsFrom(insideSubContext.initsOnReturn) : insideSubContext.initsOnReturn), currentScope);
        if (flowContext.initsOnFinally != null) {
            flowContext.initsOnFinally.add(handlingContext.initsOnFinally);
        }
        this.naturalExitMergeInitStateIndex = currentScope.methodScope().recordInitializationStates(tryInfo);
        if (subInfo == FlowInfo.DEAD_END) {
            this.mergedInitStateIndex = currentScope.methodScope().recordInitializationStates(subInfo);
            return subInfo;
        }
        FlowInfo mergedInfo = tryInfo.addInitializationsFrom(subInfo);
        this.mergedInitStateIndex = currentScope.methodScope().recordInitializationStates(mergedInfo);
        return mergedInfo;
    }

    private boolean isUncheckedCatchBlock(int catchBlock) {
        if (this.caughtExceptionsCatchBlocks == null) {
            return this.caughtExceptionTypes[catchBlock].isUncheckedException(true);
        }
        int i = 0;
        int length = this.caughtExceptionsCatchBlocks.length;
        while (i < length) {
            if (this.caughtExceptionsCatchBlocks[i] == catchBlock && this.caughtExceptionTypes[i].isUncheckedException(true)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public ExceptionLabel enterAnyExceptionHandler(CodeStream codeStream) {
        if (this.subRoutineStartLabel == null) {
            return null;
        }
        return super.enterAnyExceptionHandler(codeStream);
    }

    public void enterDeclaredExceptionHandlers(CodeStream codeStream) {
        int i = 0;
        int length = this.declaredExceptionLabels == null ? 0 : this.declaredExceptionLabels.length;
        while (i < length) {
            this.declaredExceptionLabels[i].placeStart();
            ++i;
        }
    }

    public void exitAnyExceptionHandler() {
        if (this.subRoutineStartLabel == null) {
            return;
        }
        super.exitAnyExceptionHandler();
    }

    public void exitDeclaredExceptionHandlers(CodeStream codeStream) {
        int i = 0;
        int length = this.declaredExceptionLabels == null ? 0 : this.declaredExceptionLabels.length;
        while (i < length) {
            this.declaredExceptionLabels[i].placeEnd();
            ++i;
        }
    }

    private int finallyMode() {
        if (this.subRoutineStartLabel == null) {
            return 0;
        }
        if (this.isSubRoutineEscaping()) {
            return 2;
        }
        if (this.scope.compilerOptions().inlineJsrBytecode) {
            return 3;
        }
        return 1;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream) {
        boolean tryBlockHasSomeCode;
        ExceptionLabel[] exceptionLabels;
        int maxCatches;
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        boolean isStackMapFrameCodeStream = codeStream instanceof StackMapFrameCodeStream;
        this.anyExceptionLabel = null;
        this.reusableJSRTargets = null;
        this.reusableJSRSequenceStartLabels = null;
        this.reusableJSRTargetsCount = 0;
        int pc = codeStream.position;
        int finallyMode = this.finallyMode();
        boolean requiresNaturalExit = false;
        int n = maxCatches = this.catchArguments == null ? 0 : this.catchArguments.length;
        if (maxCatches > 0) {
            exceptionLabels = new ExceptionLabel[maxCatches];
            int i = 0;
            while (i < maxCatches) {
                Argument argument = this.catchArguments[i];
                ExceptionLabel exceptionLabel = null;
                if ((argument.binding.tagBits & 0x1000L) != 0L) {
                    MultiCatchExceptionLabel multiCatchExceptionLabel = new MultiCatchExceptionLabel(codeStream, argument.binding.type);
                    multiCatchExceptionLabel.initialize((UnionTypeReference)argument.type);
                    exceptionLabel = multiCatchExceptionLabel;
                } else {
                    exceptionLabel = new ExceptionLabel(codeStream, argument.binding.type);
                }
                exceptionLabel.placeStart();
                exceptionLabels[i] = exceptionLabel;
                ++i;
            }
        } else {
            exceptionLabels = null;
        }
        if (this.subRoutineStartLabel != null) {
            this.subRoutineStartLabel.initialize(codeStream);
            this.enterAnyExceptionHandler(codeStream);
        }
        try {
            this.declaredExceptionLabels = exceptionLabels;
            int resourceCount = this.resources.length;
            if (resourceCount > 0) {
                this.resourceExceptionLabels = new ExceptionLabel[resourceCount + 1];
                codeStream.aconst_null();
                codeStream.store(this.primaryExceptionVariable, false);
                codeStream.addVariable(this.primaryExceptionVariable);
                codeStream.aconst_null();
                codeStream.store(this.caughtThrowableVariable, false);
                codeStream.addVariable(this.caughtThrowableVariable);
                int i = 0;
                while (i <= resourceCount) {
                    this.resourceExceptionLabels[i] = new ExceptionLabel(codeStream, null);
                    this.resourceExceptionLabels[i].placeStart();
                    if (i < resourceCount) {
                        this.resources[i].generateCode(this.scope, codeStream);
                    }
                    ++i;
                }
            }
            this.tryBlock.generateCode(this.scope, codeStream);
            if (resourceCount > 0) {
                int i = resourceCount;
                while (i >= 0) {
                    LocalVariableBinding localVariable;
                    BranchLabel exitLabel = new BranchLabel(codeStream);
                    this.resourceExceptionLabels[i].placeEnd();
                    LocalVariableBinding localVariableBinding = localVariable = i > 0 ? this.resources[i - 1].binding : null;
                    if ((this.bits & 0x20000000) == 0) {
                        if (i > 0) {
                            int invokeCloseStartPc = codeStream.position;
                            codeStream.load(localVariable);
                            codeStream.ifnull(exitLabel);
                            codeStream.load(localVariable);
                            codeStream.invokeAutoCloseableClose(localVariable.type);
                            codeStream.recordPositionsFrom(invokeCloseStartPc, this.tryBlock.sourceEnd);
                        }
                        codeStream.goto_(exitLabel);
                    }
                    if (i > 0) {
                        codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.postResourcesInitStateIndexes[i - 1]);
                        codeStream.addDefinitelyAssignedVariables(currentScope, this.postResourcesInitStateIndexes[i - 1]);
                    }
                    codeStream.pushExceptionOnStack(this.scope.getJavaLangThrowable());
                    this.resourceExceptionLabels[i].place();
                    if (i == resourceCount) {
                        codeStream.store(this.primaryExceptionVariable, false);
                    } else {
                        BranchLabel elseLabel = new BranchLabel(codeStream);
                        BranchLabel postElseLabel = new BranchLabel(codeStream);
                        codeStream.store(this.caughtThrowableVariable, false);
                        codeStream.load(this.primaryExceptionVariable);
                        codeStream.ifnonnull(elseLabel);
                        codeStream.load(this.caughtThrowableVariable);
                        codeStream.store(this.primaryExceptionVariable, false);
                        codeStream.goto_(postElseLabel);
                        elseLabel.place();
                        codeStream.load(this.primaryExceptionVariable);
                        codeStream.load(this.caughtThrowableVariable);
                        codeStream.if_acmpeq(postElseLabel);
                        codeStream.load(this.primaryExceptionVariable);
                        codeStream.load(this.caughtThrowableVariable);
                        codeStream.invokeThrowableAddSuppressed();
                        postElseLabel.place();
                    }
                    if (i > 0) {
                        BranchLabel postCloseLabel = new BranchLabel(codeStream);
                        int invokeCloseStartPc = codeStream.position;
                        codeStream.load(localVariable);
                        codeStream.ifnull(postCloseLabel);
                        codeStream.load(localVariable);
                        codeStream.invokeAutoCloseableClose(localVariable.type);
                        codeStream.recordPositionsFrom(invokeCloseStartPc, this.tryBlock.sourceEnd);
                        codeStream.removeVariable(localVariable);
                        postCloseLabel.place();
                    }
                    codeStream.load(this.primaryExceptionVariable);
                    codeStream.athrow();
                    exitLabel.place();
                    --i;
                }
                codeStream.removeVariable(this.primaryExceptionVariable);
                codeStream.removeVariable(this.caughtThrowableVariable);
            }
        }
        finally {
            this.declaredExceptionLabels = null;
        }
        boolean bl = tryBlockHasSomeCode = codeStream.position != pc;
        if (tryBlockHasSomeCode) {
            BranchLabel naturalExitLabel = new BranchLabel(codeStream);
            BranchLabel postCatchesFinallyLabel = null;
            int i = 0;
            while (i < maxCatches) {
                exceptionLabels[i].placeEnd();
                ++i;
            }
            if ((this.bits & 0x20000000) == 0) {
                int position = codeStream.position;
                switch (finallyMode) {
                    case 1: 
                    case 3: {
                        requiresNaturalExit = true;
                        if (this.naturalExitMergeInitStateIndex != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.naturalExitMergeInitStateIndex);
                            codeStream.addDefinitelyAssignedVariables(currentScope, this.naturalExitMergeInitStateIndex);
                        }
                        codeStream.goto_(naturalExitLabel);
                        break;
                    }
                    case 0: {
                        if (this.naturalExitMergeInitStateIndex != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.naturalExitMergeInitStateIndex);
                            codeStream.addDefinitelyAssignedVariables(currentScope, this.naturalExitMergeInitStateIndex);
                        }
                        codeStream.goto_(naturalExitLabel);
                        break;
                    }
                    case 2: {
                        codeStream.goto_(this.subRoutineStartLabel);
                    }
                }
                codeStream.updateLastRecordedEndPC(this.tryBlock.scope, position);
            }
            this.exitAnyExceptionHandler();
            if (this.catchArguments != null) {
                postCatchesFinallyLabel = new BranchLabel(codeStream);
                i = 0;
                while (i < maxCatches) {
                    if (exceptionLabels[i].getCount() != 0) {
                        this.enterAnyExceptionHandler(codeStream);
                        if (this.preTryInitStateIndex != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.preTryInitStateIndex);
                            codeStream.addDefinitelyAssignedVariables(currentScope, this.preTryInitStateIndex);
                        }
                        codeStream.pushExceptionOnStack(exceptionLabels[i].exceptionType);
                        exceptionLabels[i].place();
                        int varPC = codeStream.position;
                        LocalVariableBinding catchVar = this.catchArguments[i].binding;
                        if (catchVar.resolvedPosition != -1) {
                            codeStream.store(catchVar, false);
                            catchVar.recordInitializationStartPC(codeStream.position);
                            codeStream.addVisibleLocalVariable(catchVar);
                        } else {
                            codeStream.pop();
                        }
                        codeStream.recordPositionsFrom(varPC, this.catchArguments[i].sourceStart);
                        this.catchBlocks[i].generateCode(this.scope, codeStream);
                        this.exitAnyExceptionHandler();
                        if (!this.catchExits[i]) {
                            switch (finallyMode) {
                                case 3: {
                                    if (isStackMapFrameCodeStream) {
                                        ((StackMapFrameCodeStream)codeStream).pushStateIndex(this.naturalExitMergeInitStateIndex);
                                    }
                                    if (this.catchExitInitStateIndexes[i] != -1) {
                                        codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.catchExitInitStateIndexes[i]);
                                        codeStream.addDefinitelyAssignedVariables(currentScope, this.catchExitInitStateIndexes[i]);
                                    }
                                    this.finallyBlock.generateCode(this.scope, codeStream);
                                    codeStream.goto_(postCatchesFinallyLabel);
                                    if (!isStackMapFrameCodeStream) break;
                                    ((StackMapFrameCodeStream)codeStream).popStateIndex();
                                    break;
                                }
                                case 1: {
                                    requiresNaturalExit = true;
                                }
                                case 0: {
                                    if (this.naturalExitMergeInitStateIndex != -1) {
                                        codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.naturalExitMergeInitStateIndex);
                                        codeStream.addDefinitelyAssignedVariables(currentScope, this.naturalExitMergeInitStateIndex);
                                    }
                                    codeStream.goto_(naturalExitLabel);
                                    break;
                                }
                                case 2: {
                                    codeStream.goto_(this.subRoutineStartLabel);
                                }
                            }
                        }
                    }
                    ++i;
                }
            }
            ExceptionLabel naturalExitExceptionHandler = requiresNaturalExit && finallyMode == 1 ? new ExceptionLabel(codeStream, null) : null;
            int finallySequenceStartPC = codeStream.position;
            if (this.subRoutineStartLabel != null && this.anyExceptionLabel.getCount() != 0) {
                codeStream.pushExceptionOnStack(this.scope.getJavaLangThrowable());
                if (this.preTryInitStateIndex != -1) {
                    codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.preTryInitStateIndex);
                    codeStream.addDefinitelyAssignedVariables(currentScope, this.preTryInitStateIndex);
                }
                this.placeAllAnyExceptionHandler();
                if (naturalExitExceptionHandler != null) {
                    naturalExitExceptionHandler.place();
                }
                switch (finallyMode) {
                    case 1: {
                        codeStream.store(this.anyExceptionVariable, false);
                        codeStream.jsr(this.subRoutineStartLabel);
                        codeStream.recordPositionsFrom(finallySequenceStartPC, this.finallyBlock.sourceStart);
                        int position = codeStream.position;
                        codeStream.throwAnyException(this.anyExceptionVariable);
                        codeStream.recordPositionsFrom(position, this.finallyBlock.sourceEnd);
                        this.subRoutineStartLabel.place();
                        codeStream.pushExceptionOnStack(this.scope.getJavaLangThrowable());
                        position = codeStream.position;
                        codeStream.store(this.returnAddressVariable, false);
                        codeStream.recordPositionsFrom(position, this.finallyBlock.sourceStart);
                        this.finallyBlock.generateCode(this.scope, codeStream);
                        position = codeStream.position;
                        codeStream.ret(this.returnAddressVariable.resolvedPosition);
                        codeStream.recordPositionsFrom(position, this.finallyBlock.sourceEnd);
                        break;
                    }
                    case 3: {
                        codeStream.store(this.anyExceptionVariable, false);
                        codeStream.addVariable(this.anyExceptionVariable);
                        codeStream.recordPositionsFrom(finallySequenceStartPC, this.finallyBlock.sourceStart);
                        this.finallyBlock.generateCode(currentScope, codeStream);
                        int position = codeStream.position;
                        codeStream.throwAnyException(this.anyExceptionVariable);
                        codeStream.removeVariable(this.anyExceptionVariable);
                        if (this.preTryInitStateIndex != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.preTryInitStateIndex);
                        }
                        this.subRoutineStartLabel.place();
                        codeStream.recordPositionsFrom(position, this.finallyBlock.sourceEnd);
                        break;
                    }
                    case 2: {
                        codeStream.pop();
                        this.subRoutineStartLabel.place();
                        codeStream.recordPositionsFrom(finallySequenceStartPC, this.finallyBlock.sourceStart);
                        this.finallyBlock.generateCode(this.scope, codeStream);
                    }
                }
                if (requiresNaturalExit) {
                    switch (finallyMode) {
                        case 1: {
                            naturalExitLabel.place();
                            int position = codeStream.position;
                            naturalExitExceptionHandler.placeStart();
                            codeStream.jsr(this.subRoutineStartLabel);
                            naturalExitExceptionHandler.placeEnd();
                            codeStream.recordPositionsFrom(position, this.finallyBlock.sourceEnd);
                            break;
                        }
                        case 3: {
                            if (isStackMapFrameCodeStream) {
                                ((StackMapFrameCodeStream)codeStream).pushStateIndex(this.naturalExitMergeInitStateIndex);
                            }
                            if (this.naturalExitMergeInitStateIndex != -1) {
                                codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.naturalExitMergeInitStateIndex);
                                codeStream.addDefinitelyAssignedVariables(currentScope, this.naturalExitMergeInitStateIndex);
                            }
                            naturalExitLabel.place();
                            this.finallyBlock.generateCode(this.scope, codeStream);
                            if (postCatchesFinallyLabel != null) {
                                int position = codeStream.position;
                                codeStream.goto_(postCatchesFinallyLabel);
                                codeStream.recordPositionsFrom(position, this.finallyBlock.sourceEnd);
                            }
                            if (!isStackMapFrameCodeStream) break;
                            ((StackMapFrameCodeStream)codeStream).popStateIndex();
                            break;
                        }
                        case 2: {
                            break;
                        }
                        default: {
                            naturalExitLabel.place();
                        }
                    }
                }
                if (postCatchesFinallyLabel != null) {
                    postCatchesFinallyLabel.place();
                }
            } else {
                naturalExitLabel.place();
            }
        } else if (this.subRoutineStartLabel != null) {
            this.finallyBlock.generateCode(this.scope, codeStream);
        }
        if (this.mergedInitStateIndex != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
            codeStream.addDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public boolean generateSubRoutineInvocation(BlockScope currentScope, CodeStream codeStream, Object targetLocation, int stateIndex, LocalVariableBinding secretLocal) {
        int resourceCount = this.resources.length;
        if (resourceCount > 0) {
            int i = resourceCount;
            while (i > 0) {
                this.resourceExceptionLabels[i].placeEnd();
                LocalVariableBinding localVariable = this.resources[i - 1].binding;
                BranchLabel exitLabel = new BranchLabel(codeStream);
                int invokeCloseStartPc = codeStream.position;
                codeStream.load(localVariable);
                codeStream.ifnull(exitLabel);
                codeStream.load(localVariable);
                codeStream.invokeAutoCloseableClose(localVariable.type);
                codeStream.recordPositionsFrom(invokeCloseStartPc, this.tryBlock.sourceEnd);
                exitLabel.place();
                --i;
            }
            i = resourceCount;
            while (i > 0) {
                this.resourceExceptionLabels[i].placeStart();
                --i;
            }
        }
        boolean isStackMapFrameCodeStream = codeStream instanceof StackMapFrameCodeStream;
        int finallyMode = this.finallyMode();
        switch (finallyMode) {
            case 2: {
                codeStream.goto_(this.subRoutineStartLabel);
                return true;
            }
            case 0: {
                this.exitDeclaredExceptionHandlers(codeStream);
                return false;
            }
        }
        if (targetLocation != null) {
            boolean reuseTargetLocation = true;
            if (this.reusableJSRTargetsCount > 0) {
                int i = 0;
                int count = this.reusableJSRTargetsCount;
                while (i < count) {
                    Object reusableJSRTarget = this.reusableJSRTargets[i];
                    if (targetLocation == reusableJSRTarget || targetLocation instanceof Constant && reusableJSRTarget instanceof Constant && ((Constant)targetLocation).hasSameValue((Constant)reusableJSRTarget)) {
                        if (this.reusableJSRStateIndexes[i] != stateIndex && finallyMode == 3) {
                            reuseTargetLocation = false;
                            break;
                        }
                        codeStream.goto_(this.reusableJSRSequenceStartLabels[i]);
                        return true;
                    }
                    ++i;
                }
            } else {
                this.reusableJSRTargets = new Object[3];
                this.reusableJSRSequenceStartLabels = new BranchLabel[3];
                this.reusableJSRStateIndexes = new int[3];
            }
            if (reuseTargetLocation) {
                if (this.reusableJSRTargetsCount == this.reusableJSRTargets.length) {
                    this.reusableJSRTargets = new Object[2 * this.reusableJSRTargetsCount];
                    System.arraycopy(this.reusableJSRTargets, 0, this.reusableJSRTargets, 0, this.reusableJSRTargetsCount);
                    this.reusableJSRSequenceStartLabels = new BranchLabel[2 * this.reusableJSRTargetsCount];
                    System.arraycopy(this.reusableJSRSequenceStartLabels, 0, this.reusableJSRSequenceStartLabels, 0, this.reusableJSRTargetsCount);
                    this.reusableJSRStateIndexes = new int[2 * this.reusableJSRTargetsCount];
                    System.arraycopy(this.reusableJSRStateIndexes, 0, this.reusableJSRStateIndexes, 0, this.reusableJSRTargetsCount);
                }
                this.reusableJSRTargets[this.reusableJSRTargetsCount] = targetLocation;
                BranchLabel reusableJSRSequenceStartLabel = new BranchLabel(codeStream);
                reusableJSRSequenceStartLabel.place();
                this.reusableJSRStateIndexes[this.reusableJSRTargetsCount] = stateIndex;
                this.reusableJSRSequenceStartLabels[this.reusableJSRTargetsCount++] = reusableJSRSequenceStartLabel;
            }
        }
        if (finallyMode == 3) {
            if (isStackMapFrameCodeStream) {
                ((StackMapFrameCodeStream)codeStream).pushStateIndex(stateIndex);
            }
            if (secretLocal != null) {
                codeStream.addVariable(secretLocal);
            }
            this.exitAnyExceptionHandler();
            this.exitDeclaredExceptionHandlers(codeStream);
            this.finallyBlock.generateCode(currentScope, codeStream);
            if (isStackMapFrameCodeStream) {
                ((StackMapFrameCodeStream)codeStream).popStateIndex();
            }
        } else {
            codeStream.jsr(this.subRoutineStartLabel);
            this.exitAnyExceptionHandler();
            this.exitDeclaredExceptionHandlers(codeStream);
        }
        return false;
    }

    public boolean isSubRoutineEscaping() {
        return (this.bits & 0x4000) != 0;
    }

    public StringBuffer printStatement(int indent, StringBuffer output) {
        int length = this.resources.length;
        TryStatement.printIndent(indent, output).append("try" + (length == 0 ? "\n" : " ("));
        int i = 0;
        while (i < length) {
            this.resources[i].printAsExpression(0, output);
            if (i != length - 1) {
                output.append(";\n");
                TryStatement.printIndent(indent + 2, output);
            }
            ++i;
        }
        if (length > 0) {
            output.append(")\n");
        }
        this.tryBlock.printStatement(indent + 1, output);
        if (this.catchBlocks != null) {
            i = 0;
            while (i < this.catchBlocks.length) {
                output.append('\n');
                TryStatement.printIndent(indent, output).append("catch (");
                this.catchArguments[i].print(0, output).append(")\n");
                this.catchBlocks[i].printStatement(indent + 1, output);
                ++i;
            }
        }
        if (this.finallyBlock != null) {
            output.append('\n');
            TryStatement.printIndent(indent, output).append("finally\n");
            this.finallyBlock.printStatement(indent + 1, output);
        }
        return output;
    }

    public void resolve(BlockScope upperScope) {
        this.scope = new BlockScope(upperScope);
        BlockScope finallyScope = null;
        BlockScope resourceManagementScope = null;
        int resourceCount = this.resources.length;
        if (resourceCount > 0) {
            resourceManagementScope = new BlockScope(this.scope);
            this.primaryExceptionVariable = new LocalVariableBinding(SECRET_PRIMARY_EXCEPTION_VARIABLE_NAME, (TypeBinding)this.scope.getJavaLangThrowable(), 0, false);
            resourceManagementScope.addLocalVariable(this.primaryExceptionVariable);
            this.primaryExceptionVariable.setConstant(Constant.NotAConstant);
            this.caughtThrowableVariable = new LocalVariableBinding(SECRET_CAUGHT_THROWABLE_VARIABLE_NAME, (TypeBinding)this.scope.getJavaLangThrowable(), 0, false);
            resourceManagementScope.addLocalVariable(this.caughtThrowableVariable);
            this.caughtThrowableVariable.setConstant(Constant.NotAConstant);
        }
        int i = 0;
        while (i < resourceCount) {
            this.resources[i].resolve(resourceManagementScope);
            LocalVariableBinding localVariableBinding = this.resources[i].binding;
            if (localVariableBinding != null && localVariableBinding.isValidBinding()) {
                localVariableBinding.modifiers |= 0x10;
                localVariableBinding.tagBits |= 0x2000L;
                TypeBinding resourceType = localVariableBinding.type;
                if (resourceType instanceof ReferenceBinding) {
                    if (resourceType.findSuperTypeOriginatingFrom(62, false) == null && resourceType.isValidBinding()) {
                        upperScope.problemReporter().resourceHasToImplementAutoCloseable(resourceType, this.resources[i].type);
                        localVariableBinding.type = new ProblemReferenceBinding(CharOperation.splitOn('.', resourceType.shortReadableName()), null, 15);
                    }
                } else if (resourceType != null) {
                    upperScope.problemReporter().resourceHasToImplementAutoCloseable(resourceType, this.resources[i].type);
                    localVariableBinding.type = new ProblemReferenceBinding(CharOperation.splitOn('.', resourceType.shortReadableName()), null, 15);
                }
            }
            ++i;
        }
        BlockScope tryScope = new BlockScope(resourceManagementScope != null ? resourceManagementScope : this.scope);
        if (this.finallyBlock != null) {
            if (this.finallyBlock.isEmptyBlock()) {
                if ((this.finallyBlock.bits & 8) != 0) {
                    this.scope.problemReporter().undocumentedEmptyBlock(this.finallyBlock.sourceStart, this.finallyBlock.sourceEnd);
                }
            } else {
                MethodBinding methodBinding;
                finallyScope = new BlockScope(this.scope, false);
                MethodScope methodScope = this.scope.methodScope();
                if (!upperScope.compilerOptions().inlineJsrBytecode) {
                    this.returnAddressVariable = new LocalVariableBinding(SECRET_RETURN_ADDRESS_NAME, (TypeBinding)upperScope.getJavaLangObject(), 0, false);
                    finallyScope.addLocalVariable(this.returnAddressVariable);
                    this.returnAddressVariable.setConstant(Constant.NotAConstant);
                }
                this.subRoutineStartLabel = new BranchLabel();
                this.anyExceptionVariable = new LocalVariableBinding(SECRET_ANY_HANDLER_NAME, (TypeBinding)this.scope.getJavaLangThrowable(), 0, false);
                finallyScope.addLocalVariable(this.anyExceptionVariable);
                this.anyExceptionVariable.setConstant(Constant.NotAConstant);
                if (!methodScope.isInsideInitializer() && (methodBinding = ((AbstractMethodDeclaration)methodScope.referenceContext).binding) != null) {
                    TypeBinding methodReturnType = methodBinding.returnType;
                    if (methodReturnType.id != 6) {
                        this.secretReturnValue = new LocalVariableBinding(SECRET_RETURN_VALUE_NAME, methodReturnType, 0, false);
                        finallyScope.addLocalVariable(this.secretReturnValue);
                        this.secretReturnValue.setConstant(Constant.NotAConstant);
                    }
                }
                this.finallyBlock.resolveUsing(finallyScope);
                int shiftScopesLength = this.catchArguments == null ? 1 : this.catchArguments.length + 1;
                finallyScope.shiftScopes = new BlockScope[shiftScopesLength];
                finallyScope.shiftScopes[0] = tryScope;
            }
        }
        this.tryBlock.resolveUsing(tryScope);
        if (this.catchBlocks != null) {
            int length = this.catchArguments.length;
            TypeBinding[] argumentTypes = new TypeBinding[length];
            boolean containsUnionTypes = false;
            boolean catchHasError = false;
            int i2 = 0;
            while (i2 < length) {
                BlockScope catchScope = new BlockScope(this.scope);
                if (finallyScope != null) {
                    finallyScope.shiftScopes[i2 + 1] = catchScope;
                }
                Argument catchArgument = this.catchArguments[i2];
                containsUnionTypes |= (catchArgument.type.bits & 0x20000000) != 0;
                argumentTypes[i2] = catchArgument.resolveForCatch(catchScope);
                if (argumentTypes[i2] == null) {
                    catchHasError = true;
                }
                this.catchBlocks[i2].resolveUsing(catchScope);
                ++i2;
            }
            if (catchHasError) {
                return;
            }
            this.verifyDuplicationAndOrder(length, argumentTypes, containsUnionTypes);
        } else {
            this.caughtExceptionTypes = new ReferenceBinding[0];
        }
        if (finallyScope != null) {
            this.scope.addSubscope(finallyScope);
        }
    }

    public void traverse(ASTVisitor visitor, BlockScope blockScope) {
        if (visitor.visit(this, blockScope)) {
            LocalDeclaration[] localDeclarations = this.resources;
            int i = 0;
            int max = localDeclarations.length;
            while (i < max) {
                localDeclarations[i].traverse(visitor, this.scope);
                ++i;
            }
            this.tryBlock.traverse(visitor, this.scope);
            if (this.catchArguments != null) {
                i = 0;
                max = this.catchBlocks.length;
                while (i < max) {
                    this.catchArguments[i].traverse(visitor, this.scope);
                    this.catchBlocks[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
            if (this.finallyBlock != null) {
                this.finallyBlock.traverse(visitor, this.scope);
            }
        }
        visitor.endVisit(this, blockScope);
    }

    protected void verifyDuplicationAndOrder(int length, TypeBinding[] argumentTypes, boolean containsUnionTypes) {
        if (containsUnionTypes) {
            int totalCount = 0;
            ReferenceBinding[][] allExceptionTypes = new ReferenceBinding[length][];
            int i = 0;
            while (i < length) {
                ReferenceBinding currentExceptionType = (ReferenceBinding)argumentTypes[i];
                TypeReference catchArgumentType = this.catchArguments[i].type;
                if ((catchArgumentType.bits & 0x20000000) != 0) {
                    TypeReference[] typeReferences = ((UnionTypeReference)catchArgumentType).typeReferences;
                    int typeReferencesLength = typeReferences.length;
                    ReferenceBinding[] unionExceptionTypes = new ReferenceBinding[typeReferencesLength];
                    int j = 0;
                    while (j < typeReferencesLength) {
                        unionExceptionTypes[j] = (ReferenceBinding)typeReferences[j].resolvedType;
                        ++j;
                    }
                    totalCount += typeReferencesLength;
                    allExceptionTypes[i] = unionExceptionTypes;
                } else {
                    allExceptionTypes[i] = new ReferenceBinding[]{currentExceptionType};
                    ++totalCount;
                }
                ++i;
            }
            this.caughtExceptionTypes = new ReferenceBinding[totalCount];
            this.caughtExceptionsCatchBlocks = new int[totalCount];
            i = 0;
            int l = 0;
            while (i < length) {
                ReferenceBinding[] currentExceptions = allExceptionTypes[i];
                int j = 0;
                int max = currentExceptions.length;
                block3: while (j < max) {
                    ReferenceBinding exception;
                    this.caughtExceptionTypes[l] = exception = currentExceptions[j];
                    this.caughtExceptionsCatchBlocks[l++] = i;
                    int k = 0;
                    while (k < i) {
                        ReferenceBinding[] exceptions = allExceptionTypes[k];
                        int n = 0;
                        int max2 = exceptions.length;
                        while (n < max2) {
                            ReferenceBinding currentException = exceptions[n];
                            if (exception.isCompatibleWith(currentException)) {
                                TypeReference catchArgumentType = this.catchArguments[i].type;
                                if ((catchArgumentType.bits & 0x20000000) != 0) {
                                    catchArgumentType = ((UnionTypeReference)catchArgumentType).typeReferences[j];
                                }
                                this.scope.problemReporter().wrongSequenceOfExceptionTypesError(catchArgumentType, exception, currentException);
                                break block3;
                            }
                            ++n;
                        }
                        ++k;
                    }
                    ++j;
                }
                ++i;
            }
        } else {
            this.caughtExceptionTypes = new ReferenceBinding[length];
            int i = 0;
            while (i < length) {
                this.caughtExceptionTypes[i] = (ReferenceBinding)argumentTypes[i];
                int j = 0;
                while (j < i) {
                    if (this.caughtExceptionTypes[i].isCompatibleWith(argumentTypes[j])) {
                        this.scope.problemReporter().wrongSequenceOfExceptionTypesError(this.catchArguments[i].type, this.caughtExceptionTypes[i], argumentTypes[j]);
                    }
                    ++j;
                }
                ++i;
            }
        }
    }
}

