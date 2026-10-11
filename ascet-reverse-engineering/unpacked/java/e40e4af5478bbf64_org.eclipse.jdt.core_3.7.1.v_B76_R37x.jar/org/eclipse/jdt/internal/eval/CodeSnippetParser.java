/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.eval.CodeSnippetAllocationExpression;
import org.eclipse.jdt.internal.eval.CodeSnippetFieldReference;
import org.eclipse.jdt.internal.eval.CodeSnippetMessageSend;
import org.eclipse.jdt.internal.eval.CodeSnippetQualifiedNameReference;
import org.eclipse.jdt.internal.eval.CodeSnippetReturnStatement;
import org.eclipse.jdt.internal.eval.CodeSnippetSingleNameReference;
import org.eclipse.jdt.internal.eval.CodeSnippetSuperReference;
import org.eclipse.jdt.internal.eval.CodeSnippetThisReference;
import org.eclipse.jdt.internal.eval.CodeSnippetTypeDeclaration;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;

public class CodeSnippetParser
extends Parser
implements EvaluationConstants {
    int codeSnippetStart;
    int codeSnippetEnd;
    EvaluationContext evaluationContext;
    boolean hasRecoveredOnExpression;
    int lastStatement = -1;
    int lineSeparatorLength;
    int problemCountBeforeRecovery = 0;

    public CodeSnippetParser(ProblemReporter problemReporter, EvaluationContext evaluationContext, boolean optimizeStringLiterals, int codeSnippetStart, int codeSnippetEnd) {
        super(problemReporter, optimizeStringLiterals);
        this.codeSnippetStart = codeSnippetStart;
        this.codeSnippetEnd = codeSnippetEnd;
        this.evaluationContext = evaluationContext;
        this.reportOnlyOneSyntaxError = true;
        this.javadocParser.checkDocComment = false;
    }

    protected void classInstanceCreation(boolean alwaysQualified) {
        int length;
        if ((length = this.astLengthStack[this.astLengthPtr--]) == 1 && this.astStack[this.astPtr] == null) {
            --this.astPtr;
            AllocationExpression alloc = alwaysQualified ? new QualifiedAllocationExpression() : new CodeSnippetAllocationExpression(this.evaluationContext);
            alloc.sourceEnd = this.endPosition;
            if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                this.expressionPtr -= length;
                alloc.arguments = new Expression[length];
                System.arraycopy(this.expressionStack, this.expressionPtr + 1, alloc.arguments, 0, length);
            }
            alloc.type = this.getTypeReference(0);
            this.checkForDiamond(alloc.type);
            alloc.sourceStart = this.intStack[this.intPtr--];
            this.pushOnExpressionStack(alloc);
        } else {
            this.dispatchDeclarationInto(length);
            TypeDeclaration anonymousTypeDeclaration = (TypeDeclaration)this.astStack[this.astPtr];
            anonymousTypeDeclaration.declarationSourceEnd = this.endStatementPosition;
            if (anonymousTypeDeclaration.allocation != null) {
                anonymousTypeDeclaration.allocation.sourceEnd = this.endStatementPosition;
            }
            --this.astPtr;
            --this.astLengthPtr;
        }
    }

    protected void consumeClassInstanceCreationExpressionWithTypeArguments() {
        int length;
        if ((length = this.astLengthStack[this.astLengthPtr--]) == 1 && this.astStack[this.astPtr] == null) {
            --this.astPtr;
            CodeSnippetAllocationExpression alloc = new CodeSnippetAllocationExpression(this.evaluationContext);
            alloc.sourceEnd = this.endPosition;
            if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                this.expressionPtr -= length;
                alloc.arguments = new Expression[length];
                System.arraycopy(this.expressionStack, this.expressionPtr + 1, alloc.arguments, 0, length);
            }
            alloc.type = this.getTypeReference(0);
            length = this.genericsLengthStack[this.genericsLengthPtr--];
            this.genericsPtr -= length;
            alloc.typeArguments = new TypeReference[length];
            System.arraycopy(this.genericsStack, this.genericsPtr + 1, alloc.typeArguments, 0, length);
            --this.intPtr;
            alloc.sourceStart = this.intStack[this.intPtr--];
            this.pushOnExpressionStack(alloc);
        } else {
            this.dispatchDeclarationInto(length);
            TypeDeclaration anonymousTypeDeclaration = (TypeDeclaration)this.astStack[this.astPtr];
            anonymousTypeDeclaration.declarationSourceEnd = this.endStatementPosition;
            anonymousTypeDeclaration.bodyEnd = this.endStatementPosition;
            if (length == 0 && !this.containsComment(anonymousTypeDeclaration.bodyStart, anonymousTypeDeclaration.bodyEnd)) {
                anonymousTypeDeclaration.bits |= 8;
            }
            --this.astPtr;
            --this.astLengthPtr;
            QualifiedAllocationExpression allocationExpression = anonymousTypeDeclaration.allocation;
            if (allocationExpression != null) {
                allocationExpression.sourceEnd = this.endStatementPosition;
                length = this.genericsLengthStack[this.genericsLengthPtr--];
                this.genericsPtr -= length;
                allocationExpression.typeArguments = new TypeReference[length];
                System.arraycopy(this.genericsStack, this.genericsPtr + 1, allocationExpression.typeArguments, 0, length);
                allocationExpression.sourceStart = this.intStack[this.intPtr--];
            }
        }
    }

    protected void consumeClassDeclaration() {
        super.consumeClassDeclaration();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeClassHeaderName1() {
        TypeDeclaration typeDecl;
        if (this.nestedMethod[this.nestedType] == 0) {
            if (this.nestedType != 0) {
                typeDecl = new TypeDeclaration(this.compilationUnit.compilationResult);
                typeDecl.bits |= 0x400;
            } else {
                typeDecl = new CodeSnippetTypeDeclaration(this.compilationUnit.compilationResult);
            }
        } else {
            typeDecl = new TypeDeclaration(this.compilationUnit.compilationResult);
            typeDecl.bits |= 0x100;
            this.markEnclosingMemberWithLocalType();
            this.blockReal();
        }
        long pos = this.identifierPositionStack[this.identifierPtr];
        typeDecl.sourceEnd = (int)pos;
        typeDecl.sourceStart = (int)(pos >>> 32);
        typeDecl.name = this.identifierStack[this.identifierPtr--];
        --this.identifierLengthPtr;
        typeDecl.declarationSourceStart = this.intStack[this.intPtr--];
        --this.intPtr;
        typeDecl.modifiersSourceStart = this.intStack[this.intPtr--];
        typeDecl.modifiers = this.intStack[this.intPtr--];
        if (typeDecl.modifiersSourceStart >= 0) {
            typeDecl.declarationSourceStart = typeDecl.modifiersSourceStart;
        }
        typeDecl.bodyStart = typeDecl.sourceEnd + 1;
        this.pushOnAstStack(typeDecl);
        this.listLength = 0;
        if (this.currentElement != null) {
            this.lastCheckPoint = typeDecl.bodyStart;
            this.currentElement = this.currentElement.add(typeDecl, 0);
            this.lastIgnoredToken = -1;
        }
        typeDecl.javadoc = this.javadoc;
        this.javadoc = null;
    }

    protected void consumeEmptyStatement() {
        super.consumeEmptyStatement();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeEnhancedForStatement() {
        super.consumeEnhancedForStatement();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeExpressionStatement() {
        super.consumeExpressionStatement();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeFieldAccess(boolean isSuperAccess) {
        CodeSnippetFieldReference fr = new CodeSnippetFieldReference(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr--], this.evaluationContext);
        --this.identifierLengthPtr;
        if (isSuperAccess) {
            fr.sourceStart = this.intStack[this.intPtr--];
            this.problemReporter().codeSnippetMissingClass(null, 0, 0);
            fr.receiver = new CodeSnippetSuperReference(fr.sourceStart, this.endPosition);
            this.pushOnExpressionStack(fr);
        } else {
            fr.receiver = this.expressionStack[this.expressionPtr];
            if (fr.receiver.isThis()) {
                fr.sourceStart = fr.receiver.sourceStart;
            }
            this.expressionStack[this.expressionPtr] = fr;
        }
    }

    protected void consumeInternalCompilationUnit() {
    }

    protected void consumeInternalCompilationUnitWithTypes() {
        int length;
        if ((length = this.astLengthStack[this.astLengthPtr--]) != 0) {
            this.compilationUnit.types = new TypeDeclaration[length];
            this.astPtr -= length;
            System.arraycopy(this.astStack, this.astPtr + 1, this.compilationUnit.types, 0, length);
        }
    }

    protected void consumeLocalVariableDeclarationStatement() {
        super.consumeLocalVariableDeclarationStatement();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeMethodDeclaration(boolean isNotAbstract) {
        int start;
        super.consumeMethodDeclaration(isNotAbstract);
        MethodDeclaration methodDecl = (MethodDeclaration)this.astStack[this.astPtr];
        if (this.isTopLevelType()) {
            int last;
            int n = last = methodDecl.statements == null ? -1 : methodDecl.statements.length - 1;
            if (last >= 0 && methodDecl.statements[last] instanceof Expression) {
                Expression lastExpression = (Expression)methodDecl.statements[last];
                methodDecl.statements[last] = new CodeSnippetReturnStatement(lastExpression, lastExpression.sourceStart, lastExpression.sourceEnd);
            }
        }
        int end = start = methodDecl.bodyStart - 1;
        long position = ((long)start << 32) + (long)end;
        long[] positions = new long[]{position};
        if (this.evaluationContext.localVariableNames != null) {
            int varCount = this.evaluationContext.localVariableNames.length;
            Statement[] newStatements = new Statement[varCount + 1];
            int i = 0;
            while (i < varCount) {
                char[] trimmedTypeName = this.evaluationContext.localVariableTypeNames[i];
                int nameEnd = CharOperation.indexOf('[', trimmedTypeName);
                if (nameEnd >= 0) {
                    trimmedTypeName = CharOperation.subarray(trimmedTypeName, 0, nameEnd);
                }
                if ((nameEnd = CharOperation.indexOf(' ', trimmedTypeName)) >= 0) {
                    trimmedTypeName = CharOperation.subarray(trimmedTypeName, 0, nameEnd);
                }
                TypeReference typeReference = CharOperation.indexOf('.', trimmedTypeName) == -1 ? new SingleTypeReference(trimmedTypeName, position) : new QualifiedTypeReference(CharOperation.splitOn('.', trimmedTypeName), positions);
                int dimCount = CharOperation.occurencesOf('[', this.evaluationContext.localVariableTypeNames[i]);
                if (dimCount > 0) {
                    typeReference = this.copyDims(typeReference, dimCount);
                }
                SingleNameReference init = new SingleNameReference(CharOperation.concat(LOCAL_VAR_PREFIX, this.evaluationContext.localVariableNames[i]), position);
                LocalDeclaration declaration = new LocalDeclaration(this.evaluationContext.localVariableNames[i], start, end);
                declaration.initialization = init;
                declaration.type = typeReference;
                declaration.modifiers = this.evaluationContext.localVariableModifiers[i];
                newStatements[i] = declaration;
                ++i;
            }
            TryStatement tryStatement = new TryStatement();
            Block tryBlock = new Block(methodDecl.explicitDeclarations);
            tryBlock.sourceStart = start;
            tryBlock.sourceEnd = end;
            tryBlock.statements = methodDecl.statements;
            tryStatement.tryBlock = tryBlock;
            Block finallyBlock = new Block(0);
            finallyBlock.sourceStart = start;
            finallyBlock.sourceEnd = end;
            finallyBlock.statements = new Statement[varCount];
            int i2 = 0;
            while (i2 < varCount) {
                SingleNameReference nameRef = new SingleNameReference(this.evaluationContext.localVariableNames[i2], position);
                finallyBlock.statements[i2] = new Assignment(new SingleNameReference(CharOperation.concat(LOCAL_VAR_PREFIX, this.evaluationContext.localVariableNames[i2]), position), nameRef, nameRef.sourceEnd);
                ++i2;
            }
            tryStatement.finallyBlock = finallyBlock;
            newStatements[varCount] = tryStatement;
            methodDecl.statements = newStatements;
        }
    }

    protected void consumeMethodInvocationName() {
        if (this.scanner.startPosition >= this.codeSnippetStart && this.scanner.startPosition <= this.codeSnippetEnd + 1 + this.lineSeparatorLength && this.isTopLevelType()) {
            MessageSend m = this.newMessageSend();
            m.sourceEnd = this.rParenPos;
            m.nameSourcePosition = this.identifierPositionStack[this.identifierPtr];
            m.sourceStart = (int)(m.nameSourcePosition >>> 32);
            m.selector = this.identifierStack[this.identifierPtr--];
            if (this.identifierLengthStack[this.identifierLengthPtr] == 1) {
                m.receiver = new CodeSnippetThisReference(0, 0, this.evaluationContext, true);
                --this.identifierLengthPtr;
            } else {
                int n = this.identifierLengthPtr;
                this.identifierLengthStack[n] = this.identifierLengthStack[n] - 1;
                m.receiver = this.getUnspecifiedReference();
                m.sourceStart = m.receiver.sourceStart;
            }
            this.pushOnExpressionStack(m);
        } else {
            super.consumeMethodInvocationName();
        }
    }

    protected void consumeMethodInvocationNameWithTypeArguments() {
        if (this.scanner.startPosition >= this.codeSnippetStart && this.scanner.startPosition <= this.codeSnippetEnd + 1 + this.lineSeparatorLength && this.isTopLevelType()) {
            MessageSend m = this.newMessageSendWithTypeArguments();
            m.sourceEnd = this.rParenPos;
            m.nameSourcePosition = this.identifierPositionStack[this.identifierPtr];
            m.sourceStart = (int)(m.nameSourcePosition >>> 32);
            m.selector = this.identifierStack[this.identifierPtr--];
            --this.identifierLengthPtr;
            int length = this.genericsLengthStack[this.genericsLengthPtr--];
            this.genericsPtr -= length;
            m.typeArguments = new TypeReference[length];
            System.arraycopy(this.genericsStack, this.genericsPtr + 1, m.typeArguments, 0, length);
            --this.intPtr;
            m.receiver = this.getUnspecifiedReference();
            m.sourceStart = m.receiver.sourceStart;
            this.pushOnExpressionStack(m);
        } else {
            super.consumeMethodInvocationNameWithTypeArguments();
        }
    }

    protected void consumeMethodInvocationSuper() {
        MessageSend m = this.newMessageSend();
        m.sourceStart = this.intStack[this.intPtr--];
        m.sourceEnd = this.rParenPos;
        m.nameSourcePosition = this.identifierPositionStack[this.identifierPtr];
        m.selector = this.identifierStack[this.identifierPtr--];
        --this.identifierLengthPtr;
        m.receiver = new CodeSnippetSuperReference(m.sourceStart, this.endPosition);
        this.pushOnExpressionStack(m);
    }

    protected void consumeMethodInvocationSuperWithTypeArguments() {
        MessageSend m = this.newMessageSendWithTypeArguments();
        --this.intPtr;
        m.sourceEnd = this.rParenPos;
        m.nameSourcePosition = this.identifierPositionStack[this.identifierPtr];
        m.selector = this.identifierStack[this.identifierPtr--];
        --this.identifierLengthPtr;
        int length = this.genericsLengthStack[this.genericsLengthPtr--];
        this.genericsPtr -= length;
        m.typeArguments = new TypeReference[length];
        System.arraycopy(this.genericsStack, this.genericsPtr + 1, m.typeArguments, 0, length);
        m.sourceStart = this.intStack[this.intPtr--];
        m.receiver = new CodeSnippetSuperReference(m.sourceStart, this.endPosition);
        this.pushOnExpressionStack(m);
    }

    protected void consumePrimaryNoNewArrayThis() {
        if (this.scanner.startPosition >= this.codeSnippetStart && this.scanner.startPosition <= this.codeSnippetEnd + 1 + this.lineSeparatorLength && this.isTopLevelType()) {
            this.pushOnExpressionStack(new CodeSnippetThisReference(this.intStack[this.intPtr--], this.endPosition, this.evaluationContext, false));
        } else {
            super.consumePrimaryNoNewArrayThis();
        }
    }

    protected void consumeStatementBreak() {
        super.consumeStatementBreak();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementBreakWithLabel() {
        super.consumeStatementBreakWithLabel();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementCatch() {
        super.consumeStatementCatch();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementContinue() {
        super.consumeStatementContinue();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementContinueWithLabel() {
        super.consumeStatementContinueWithLabel();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementDo() {
        super.consumeStatementDo();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementFor() {
        super.consumeStatementFor();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementIfNoElse() {
        super.consumeStatementIfNoElse();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementIfWithElse() {
        super.consumeStatementIfWithElse();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementLabel() {
        super.consumeStatementLabel();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementReturn() {
        if ((this.hasRecoveredOnExpression || this.scanner.startPosition >= this.codeSnippetStart && this.scanner.startPosition <= this.codeSnippetEnd + 1 + this.lineSeparatorLength) && this.expressionLengthStack[this.expressionLengthPtr] != 0 && this.isTopLevelType()) {
            --this.expressionLengthPtr;
            Expression expression = this.expressionStack[this.expressionPtr--];
            this.pushOnAstStack(new CodeSnippetReturnStatement(expression, expression.sourceStart, expression.sourceEnd));
        } else {
            super.consumeStatementReturn();
        }
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementSwitch() {
        super.consumeStatementSwitch();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementSynchronized() {
        super.consumeStatementSynchronized();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementThrow() {
        super.consumeStatementThrow();
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementTry(boolean arg_0, boolean arg_1) {
        super.consumeStatementTry(arg_0, arg_1);
        this.recordLastStatementIfNeeded();
    }

    protected void consumeStatementWhile() {
        super.consumeStatementWhile();
        this.recordLastStatementIfNeeded();
    }

    protected CompilationUnitDeclaration endParse(int act) {
        if (this.hasRecoveredOnExpression) {
            CompilationResult unitResult = this.compilationUnit.compilationResult;
            if (act != 12446) {
                int i = 0;
                while (i < unitResult.problemCount) {
                    unitResult.problems[i] = null;
                    ++i;
                }
                unitResult.problemCount = 0;
                if (this.referenceContext instanceof AbstractMethodDeclaration) {
                    ((AbstractMethodDeclaration)this.referenceContext).ignoreFurtherInvestigation = false;
                }
                if (this.referenceContext instanceof CompilationUnitDeclaration) {
                    ((CompilationUnitDeclaration)this.referenceContext).ignoreFurtherInvestigation = false;
                }
                this.consumeStatementReturn();
                int fieldsCount = (this.evaluationContext.localVariableNames == null ? 0 : this.evaluationContext.localVariableNames.length) + (this.evaluationContext.declaringTypeName == null ? 0 : 1);
                if (this.astPtr > (this.diet ? 0 : 2 + fieldsCount)) {
                    this.consumeBlockStatements();
                }
                this.consumeMethodBody();
                if (!this.diet) {
                    this.consumeMethodDeclaration(true);
                    if (fieldsCount > 0) {
                        this.consumeClassBodyDeclarations();
                    }
                    this.consumeClassBodyDeclarationsopt();
                    this.consumeClassDeclaration();
                    this.consumeInternalCompilationUnitWithTypes();
                    this.consumeCompilationUnit();
                }
                this.lastAct = 12445;
            } else {
                int maxRegularPos = 0;
                int problemCount = unitResult.problemCount;
                int i = 0;
                while (i < this.problemCountBeforeRecovery) {
                    int start;
                    if (unitResult.problems[i].getID() != 1610612956 && (start = unitResult.problems[i].getSourceStart()) > maxRegularPos && start <= this.codeSnippetEnd) {
                        maxRegularPos = start;
                    }
                    ++i;
                }
                int maxRecoveryPos = 0;
                int i2 = this.problemCountBeforeRecovery;
                while (i2 < problemCount) {
                    int start;
                    if (unitResult.problems[i2].getID() != 1610612956 && (start = unitResult.problems[i2].getSourceStart()) > maxRecoveryPos && start <= this.codeSnippetEnd) {
                        maxRecoveryPos = start;
                    }
                    ++i2;
                }
                if (maxRecoveryPos > maxRegularPos) {
                    System.arraycopy(unitResult.problems, this.problemCountBeforeRecovery, unitResult.problems, 0, problemCount - this.problemCountBeforeRecovery);
                    unitResult.problemCount -= this.problemCountBeforeRecovery;
                } else {
                    unitResult.problemCount -= problemCount - this.problemCountBeforeRecovery;
                }
                i2 = unitResult.problemCount;
                while (i2 < problemCount) {
                    unitResult.problems[i2] = null;
                    ++i2;
                }
            }
        }
        return super.endParse(act);
    }

    protected NameReference getUnspecifiedReference() {
        if (this.scanner.startPosition >= this.codeSnippetStart && this.scanner.startPosition <= this.codeSnippetEnd + 1 + this.lineSeparatorLength) {
            NameReference ref;
            int length;
            if ((length = this.identifierLengthStack[this.identifierLengthPtr--]) == 1) {
                ref = new CodeSnippetSingleNameReference(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr--], this.evaluationContext);
            } else {
                char[][] tokens = new char[length][];
                this.identifierPtr -= length;
                System.arraycopy(this.identifierStack, this.identifierPtr + 1, tokens, 0, length);
                long[] positions = new long[length];
                System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
                ref = new CodeSnippetQualifiedNameReference(tokens, positions, (int)(this.identifierPositionStack[this.identifierPtr + 1] >> 32), (int)this.identifierPositionStack[this.identifierPtr + length], this.evaluationContext);
            }
            return ref;
        }
        return super.getUnspecifiedReference();
    }

    protected NameReference getUnspecifiedReferenceOptimized() {
        if (this.scanner.startPosition >= this.codeSnippetStart && this.scanner.startPosition <= this.codeSnippetEnd + 1 + this.lineSeparatorLength) {
            int length;
            if ((length = this.identifierLengthStack[this.identifierLengthPtr--]) == 1) {
                CodeSnippetSingleNameReference ref = new CodeSnippetSingleNameReference(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr--], this.evaluationContext);
                ref.bits &= 0xFFFFFFF8;
                ref.bits |= 3;
                return ref;
            }
            char[][] tokens = new char[length][];
            this.identifierPtr -= length;
            System.arraycopy(this.identifierStack, this.identifierPtr + 1, tokens, 0, length);
            long[] positions = new long[length];
            System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
            CodeSnippetQualifiedNameReference ref = new CodeSnippetQualifiedNameReference(tokens, positions, (int)(this.identifierPositionStack[this.identifierPtr + 1] >> 32), (int)this.identifierPositionStack[this.identifierPtr + length], this.evaluationContext);
            ref.bits &= 0xFFFFFFF8;
            ref.bits |= 3;
            return ref;
        }
        return super.getUnspecifiedReferenceOptimized();
    }

    protected void ignoreExpressionAssignment() {
        super.ignoreExpressionAssignment();
        this.recordLastStatementIfNeeded();
    }

    private boolean isTopLevelType() {
        return this.nestedType == (this.diet ? 0 : 1);
    }

    protected MessageSend newMessageSend() {
        int length;
        CodeSnippetMessageSend m = new CodeSnippetMessageSend(this.evaluationContext);
        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
            this.expressionPtr -= length;
            m.arguments = new Expression[length];
            System.arraycopy(this.expressionStack, this.expressionPtr + 1, m.arguments, 0, length);
        }
        return m;
    }

    protected MessageSend newMessageSendWithTypeArguments() {
        int length;
        CodeSnippetMessageSend m = new CodeSnippetMessageSend(this.evaluationContext);
        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
            this.expressionPtr -= length;
            m.arguments = new Expression[length];
            System.arraycopy(this.expressionStack, this.expressionPtr + 1, m.arguments, 0, length);
        }
        return m;
    }

    private void recordLastStatementIfNeeded() {
        if (this.isTopLevelType() && this.scanner.startPosition <= this.codeSnippetEnd + this.lineSeparatorLength) {
            this.lastStatement = this.scanner.startPosition;
        }
    }

    protected void reportSyntaxErrors(boolean isDietParse, int oldFirstToken) {
        if (!isDietParse) {
            this.scanner.initialPosition = this.lastStatement;
            this.scanner.eofPosition = this.codeSnippetEnd + 1;
            oldFirstToken = 67;
        }
        super.reportSyntaxErrors(isDietParse, oldFirstToken);
    }

    protected boolean resumeOnSyntaxError() {
        if (this.diet || this.hasRecoveredOnExpression) {
            return false;
        }
        this.problemCountBeforeRecovery = this.compilationUnit.compilationResult.problemCount;
        if (this.lastStatement < 0) {
            this.lastStatement = this.codeSnippetStart;
        }
        this.scanner.initialPosition = this.lastStatement;
        this.scanner.startPosition = this.lastStatement;
        this.scanner.currentPosition = this.lastStatement;
        this.scanner.eofPosition = this.codeSnippetEnd < Integer.MAX_VALUE ? this.codeSnippetEnd + 1 : this.codeSnippetEnd;
        this.scanner.commentPtr = -1;
        this.expressionPtr = -1;
        this.identifierPtr = -1;
        this.identifierLengthPtr = -1;
        this.goForExpression();
        this.hasRecoveredOnExpression = true;
        this.hasReportedError = false;
        this.hasError = false;
        return true;
    }
}

