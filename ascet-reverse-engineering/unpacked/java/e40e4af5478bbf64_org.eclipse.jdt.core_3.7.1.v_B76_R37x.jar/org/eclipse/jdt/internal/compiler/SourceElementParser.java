/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.compiler;

import java.util.HashMap;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.SourceElementNotifier;
import org.eclipse.jdt.internal.compiler.SourceJavadocParser;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.core.util.CommentRecorderParser;
import org.eclipse.jdt.internal.core.util.Messages;

public class SourceElementParser
extends CommentRecorderParser {
    ISourceElementRequestor requestor;
    boolean reportReferenceInfo;
    boolean reportLocalDeclarations;
    HashtableOfObjectToInt sourceEnds = new HashtableOfObjectToInt();
    HashMap nodesToCategories = new HashMap();
    boolean useSourceJavadocParser = true;
    SourceElementNotifier notifier;

    public SourceElementParser(ISourceElementRequestor requestor, IProblemFactory problemFactory, CompilerOptions options, boolean reportLocalDeclarations, boolean optimizeStringLiterals) {
        this(requestor, problemFactory, options, reportLocalDeclarations, optimizeStringLiterals, true);
    }

    public SourceElementParser(ISourceElementRequestor requestor, IProblemFactory problemFactory, CompilerOptions options, boolean reportLocalDeclarations, boolean optimizeStringLiterals, boolean useSourceJavadocParser) {
        super(new ProblemReporter(DefaultErrorHandlingPolicies.exitAfterAllProblems(), options, problemFactory), optimizeStringLiterals);
        this.reportLocalDeclarations = reportLocalDeclarations;
        this.problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.exitAfterAllProblems(), options, problemFactory){

            public void record(CategorizedProblem problem, CompilationResult unitResult, ReferenceContext context) {
                unitResult.record(problem, context);
                SourceElementParser.this.requestor.acceptProblem(problem);
            }
        };
        this.requestor = requestor;
        this.options = options;
        this.notifier = new SourceElementNotifier(this.requestor, reportLocalDeclarations);
        this.useSourceJavadocParser = useSourceJavadocParser;
        if (useSourceJavadocParser) {
            this.javadocParser = new SourceJavadocParser(this);
        }
    }

    private void acceptJavadocTypeReference(Expression expression) {
        if (expression instanceof JavadocSingleTypeReference) {
            JavadocSingleTypeReference singleRef = (JavadocSingleTypeReference)expression;
            this.requestor.acceptTypeReference(singleRef.token, singleRef.sourceStart);
        } else if (expression instanceof JavadocQualifiedTypeReference) {
            JavadocQualifiedTypeReference qualifiedRef = (JavadocQualifiedTypeReference)expression;
            this.requestor.acceptTypeReference(qualifiedRef.tokens, qualifiedRef.sourceStart, qualifiedRef.sourceEnd);
        }
    }

    public void addUnknownRef(NameReference nameRef) {
        if (nameRef instanceof SingleNameReference) {
            this.requestor.acceptUnknownReference(((SingleNameReference)nameRef).token, nameRef.sourceStart);
        } else {
            this.requestor.acceptUnknownReference(((QualifiedNameReference)nameRef).tokens, nameRef.sourceStart, nameRef.sourceEnd);
        }
    }

    public void checkComment() {
        if (!(this.diet && this.dietInt == 0 || this.scanner.commentPtr < 0)) {
            this.flushCommentsDefinedPriorTo(this.endStatementPosition);
        }
        int lastComment = this.scanner.commentPtr;
        if (this.modifiersSourceStart >= 0) {
            while (lastComment >= 0) {
                int commentSourceStart = this.scanner.commentStarts[lastComment];
                if (commentSourceStart < 0) {
                    commentSourceStart = -commentSourceStart;
                }
                if (commentSourceStart <= this.modifiersSourceStart) break;
                --lastComment;
            }
        }
        if (lastComment >= 0) {
            this.modifiersSourceStart = this.scanner.commentStarts[0];
            if (this.modifiersSourceStart < 0) {
                this.modifiersSourceStart = -this.modifiersSourceStart;
            }
            while (lastComment >= 0 && this.scanner.commentStops[lastComment] < 0) {
                --lastComment;
            }
            if (lastComment >= 0 && this.javadocParser != null) {
                int commentEnd = this.scanner.commentStops[lastComment] - 1;
                this.javadocParser.reportProblems = this.javadocParser.shouldReportProblems ? this.currentElement == null || commentEnd > this.lastJavadocEnd : false;
                if (this.javadocParser.checkDeprecation(lastComment)) {
                    this.checkAndSetModifiers(0x100000);
                }
                this.javadoc = this.javadocParser.docComment;
                if (this.currentElement == null) {
                    this.lastJavadocEnd = commentEnd;
                }
            }
        }
        if (this.reportReferenceInfo && this.javadocParser.checkDocComment && this.javadoc != null) {
            Expression[] references;
            TypeReference[] thrownExceptions = this.javadoc.exceptionReferences;
            if (thrownExceptions != null) {
                int i = 0;
                int max = thrownExceptions.length;
                while (i < max) {
                    TypeReference typeRef = thrownExceptions[i];
                    if (typeRef instanceof JavadocSingleTypeReference) {
                        JavadocSingleTypeReference singleRef = (JavadocSingleTypeReference)typeRef;
                        this.requestor.acceptTypeReference(singleRef.token, singleRef.sourceStart);
                    } else if (typeRef instanceof JavadocQualifiedTypeReference) {
                        JavadocQualifiedTypeReference qualifiedRef = (JavadocQualifiedTypeReference)typeRef;
                        this.requestor.acceptTypeReference(qualifiedRef.tokens, qualifiedRef.sourceStart, qualifiedRef.sourceEnd);
                    }
                    ++i;
                }
            }
            if ((references = this.javadoc.seeReferences) != null) {
                int i = 0;
                int max = references.length;
                while (i < max) {
                    int argCount;
                    Expression reference = references[i];
                    this.acceptJavadocTypeReference(reference);
                    if (reference instanceof JavadocFieldReference) {
                        JavadocFieldReference fieldRef = (JavadocFieldReference)reference;
                        this.requestor.acceptFieldReference(fieldRef.token, fieldRef.sourceStart);
                        if (fieldRef.receiver != null && !fieldRef.receiver.isThis()) {
                            this.acceptJavadocTypeReference(fieldRef.receiver);
                        }
                    } else if (reference instanceof JavadocMessageSend) {
                        JavadocMessageSend messageSend = (JavadocMessageSend)reference;
                        argCount = messageSend.arguments == null ? 0 : messageSend.arguments.length;
                        this.requestor.acceptMethodReference(messageSend.selector, argCount, messageSend.sourceStart);
                        this.requestor.acceptConstructorReference(messageSend.selector, argCount, messageSend.sourceStart);
                        if (messageSend.receiver != null && !messageSend.receiver.isThis()) {
                            this.acceptJavadocTypeReference(messageSend.receiver);
                        }
                    } else if (reference instanceof JavadocAllocationExpression) {
                        JavadocAllocationExpression constructor = (JavadocAllocationExpression)reference;
                        int n = argCount = constructor.arguments == null ? 0 : constructor.arguments.length;
                        if (constructor.type != null) {
                            char[][] compoundName = constructor.type.getParameterizedTypeName();
                            this.requestor.acceptConstructorReference(compoundName[compoundName.length - 1], argCount, constructor.sourceStart);
                            if (!constructor.type.isThis()) {
                                this.acceptJavadocTypeReference(constructor.type);
                            }
                        }
                    }
                    ++i;
                }
            }
        }
    }

    protected void classInstanceCreation(boolean alwaysQualified) {
        boolean previousFlag = this.reportReferenceInfo;
        this.reportReferenceInfo = false;
        super.classInstanceCreation(alwaysQualified);
        this.reportReferenceInfo = previousFlag;
        if (this.reportReferenceInfo) {
            AllocationExpression alloc = (AllocationExpression)this.expressionStack[this.expressionPtr];
            TypeReference typeRef = alloc.type;
            this.requestor.acceptConstructorReference(typeRef instanceof SingleTypeReference ? ((SingleTypeReference)typeRef).token : CharOperation.concatWith(alloc.type.getParameterizedTypeName(), '.'), alloc.arguments == null ? 0 : alloc.arguments.length, alloc.sourceStart);
        }
    }

    protected void consumeAnnotationAsModifier() {
        super.consumeAnnotationAsModifier();
        Annotation annotation = (Annotation)this.expressionStack[this.expressionPtr];
        if (this.reportReferenceInfo) {
            this.requestor.acceptAnnotationTypeReference(annotation.type.getTypeName(), annotation.sourceStart, annotation.sourceEnd);
        }
    }

    protected void consumeClassInstanceCreationExpressionQualifiedWithTypeArguments() {
        boolean previousFlag = this.reportReferenceInfo;
        this.reportReferenceInfo = false;
        super.consumeClassInstanceCreationExpressionQualifiedWithTypeArguments();
        this.reportReferenceInfo = previousFlag;
        if (this.reportReferenceInfo) {
            AllocationExpression alloc = (AllocationExpression)this.expressionStack[this.expressionPtr];
            TypeReference typeRef = alloc.type;
            this.requestor.acceptConstructorReference(typeRef instanceof SingleTypeReference ? ((SingleTypeReference)typeRef).token : CharOperation.concatWith(alloc.type.getParameterizedTypeName(), '.'), alloc.arguments == null ? 0 : alloc.arguments.length, alloc.sourceStart);
        }
    }

    protected void consumeAnnotationTypeDeclarationHeaderName() {
        int currentAstPtr = this.astPtr;
        super.consumeAnnotationTypeDeclarationHeaderName();
        if (this.astPtr > currentAstPtr) {
            this.rememberCategories();
        }
    }

    protected void consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters() {
        int currentAstPtr = this.astPtr;
        super.consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters();
        if (this.astPtr > currentAstPtr) {
            this.rememberCategories();
        }
    }

    protected void consumeCatchFormalParameter() {
        super.consumeCatchFormalParameter();
        this.flushCommentsDefinedPriorTo(this.scanner.currentPosition);
    }

    protected void consumeClassHeaderName1() {
        int currentAstPtr = this.astPtr;
        super.consumeClassHeaderName1();
        if (this.astPtr > currentAstPtr) {
            this.rememberCategories();
        }
    }

    protected void consumeClassInstanceCreationExpressionWithTypeArguments() {
        boolean previousFlag = this.reportReferenceInfo;
        this.reportReferenceInfo = false;
        super.consumeClassInstanceCreationExpressionWithTypeArguments();
        this.reportReferenceInfo = previousFlag;
        if (this.reportReferenceInfo) {
            AllocationExpression alloc = (AllocationExpression)this.expressionStack[this.expressionPtr];
            TypeReference typeRef = alloc.type;
            this.requestor.acceptConstructorReference(typeRef instanceof SingleTypeReference ? ((SingleTypeReference)typeRef).token : CharOperation.concatWith(alloc.type.getParameterizedTypeName(), '.'), alloc.arguments == null ? 0 : alloc.arguments.length, alloc.sourceStart);
        }
    }

    protected void consumeConstructorHeaderName() {
        long selectorSourcePositions = this.identifierPositionStack[this.identifierPtr];
        int selectorSourceEnd = (int)selectorSourcePositions;
        int currentAstPtr = this.astPtr;
        super.consumeConstructorHeaderName();
        if (this.astPtr > currentAstPtr) {
            this.sourceEnds.put(this.astStack[this.astPtr], selectorSourceEnd);
            this.rememberCategories();
        }
    }

    protected void consumeConstructorHeaderNameWithTypeParameters() {
        long selectorSourcePositions = this.identifierPositionStack[this.identifierPtr];
        int selectorSourceEnd = (int)selectorSourcePositions;
        int currentAstPtr = this.astPtr;
        super.consumeConstructorHeaderNameWithTypeParameters();
        if (this.astPtr > currentAstPtr) {
            this.sourceEnds.put(this.astStack[this.astPtr], selectorSourceEnd);
            this.rememberCategories();
        }
    }

    protected void consumeEnumConstantWithClassBody() {
        super.consumeEnumConstantWithClassBody();
        if ((this.currentToken == 30 || this.currentToken == 27) && this.astStack[this.astPtr] instanceof FieldDeclaration) {
            this.sourceEnds.put(this.astStack[this.astPtr], this.scanner.currentPosition - 1);
            this.rememberCategories();
        }
    }

    protected void consumeEnumConstantNoClassBody() {
        super.consumeEnumConstantNoClassBody();
        if ((this.currentToken == 30 || this.currentToken == 27) && this.astStack[this.astPtr] instanceof FieldDeclaration) {
            this.sourceEnds.put(this.astStack[this.astPtr], this.scanner.currentPosition - 1);
            this.rememberCategories();
        }
    }

    protected void consumeEnumHeaderName() {
        int currentAstPtr = this.astPtr;
        super.consumeEnumHeaderName();
        if (this.astPtr > currentAstPtr) {
            this.rememberCategories();
        }
    }

    protected void consumeEnumHeaderNameWithTypeParameters() {
        int currentAstPtr = this.astPtr;
        super.consumeEnumHeaderNameWithTypeParameters();
        if (this.astPtr > currentAstPtr) {
            this.rememberCategories();
        }
    }

    protected void consumeExitVariableWithInitialization() {
        super.consumeExitVariableWithInitialization();
        if ((this.currentToken == 30 || this.currentToken == 27) && this.astStack[this.astPtr] instanceof FieldDeclaration) {
            this.sourceEnds.put(this.astStack[this.astPtr], this.scanner.currentPosition - 1);
            this.rememberCategories();
        }
    }

    protected void consumeExitVariableWithoutInitialization() {
        super.consumeExitVariableWithoutInitialization();
        if ((this.currentToken == 30 || this.currentToken == 27) && this.astStack[this.astPtr] instanceof FieldDeclaration) {
            this.sourceEnds.put(this.astStack[this.astPtr], this.scanner.currentPosition - 1);
            this.rememberCategories();
        }
    }

    protected void consumeFieldAccess(boolean isSuperAccess) {
        super.consumeFieldAccess(isSuperAccess);
        FieldReference fr = (FieldReference)this.expressionStack[this.expressionPtr];
        if (this.reportReferenceInfo) {
            this.requestor.acceptFieldReference(fr.token, fr.sourceStart);
        }
    }

    protected void consumeFormalParameter(boolean isVarArgs) {
        super.consumeFormalParameter(isVarArgs);
        this.flushCommentsDefinedPriorTo(this.scanner.currentPosition);
    }

    protected void consumeInterfaceHeaderName1() {
        int currentAstPtr = this.astPtr;
        super.consumeInterfaceHeaderName1();
        if (this.astPtr > currentAstPtr) {
            this.rememberCategories();
        }
    }

    protected void consumeMemberValuePair() {
        super.consumeMemberValuePair();
        MemberValuePair memberValuepair = (MemberValuePair)this.astStack[this.astPtr];
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(memberValuepair.name, 0, memberValuepair.sourceStart);
        }
    }

    protected void consumeMarkerAnnotation() {
        super.consumeMarkerAnnotation();
        Annotation annotation = (Annotation)this.expressionStack[this.expressionPtr];
        if (this.reportReferenceInfo) {
            this.requestor.acceptAnnotationTypeReference(annotation.type.getTypeName(), annotation.sourceStart, annotation.sourceEnd);
        }
    }

    protected void consumeMethodHeaderName(boolean isAnnotationMethod) {
        long selectorSourcePositions = this.identifierPositionStack[this.identifierPtr];
        int selectorSourceEnd = (int)selectorSourcePositions;
        int currentAstPtr = this.astPtr;
        super.consumeMethodHeaderName(isAnnotationMethod);
        if (this.astPtr > currentAstPtr) {
            this.sourceEnds.put(this.astStack[this.astPtr], selectorSourceEnd);
            this.rememberCategories();
        }
    }

    protected void consumeMethodHeaderNameWithTypeParameters(boolean isAnnotationMethod) {
        long selectorSourcePositions = this.identifierPositionStack[this.identifierPtr];
        int selectorSourceEnd = (int)selectorSourcePositions;
        int currentAstPtr = this.astPtr;
        super.consumeMethodHeaderNameWithTypeParameters(isAnnotationMethod);
        if (this.astPtr > currentAstPtr) {
            this.sourceEnds.put(this.astStack[this.astPtr], selectorSourceEnd);
        }
        this.rememberCategories();
    }

    protected void consumeMethodInvocationName() {
        super.consumeMethodInvocationName();
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        Expression[] args = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, args == null ? 0 : args.length, (int)(messageSend.nameSourcePosition >>> 32));
        }
    }

    protected void consumeMethodInvocationNameWithTypeArguments() {
        super.consumeMethodInvocationNameWithTypeArguments();
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        Expression[] args = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, args == null ? 0 : args.length, (int)(messageSend.nameSourcePosition >>> 32));
        }
    }

    protected void consumeMethodInvocationPrimary() {
        super.consumeMethodInvocationPrimary();
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        Expression[] args = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, args == null ? 0 : args.length, (int)(messageSend.nameSourcePosition >>> 32));
        }
    }

    protected void consumeMethodInvocationPrimaryWithTypeArguments() {
        super.consumeMethodInvocationPrimaryWithTypeArguments();
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        Expression[] args = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, args == null ? 0 : args.length, (int)(messageSend.nameSourcePosition >>> 32));
        }
    }

    protected void consumeMethodInvocationSuper() {
        super.consumeMethodInvocationSuper();
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        Expression[] args = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, args == null ? 0 : args.length, (int)(messageSend.nameSourcePosition >>> 32));
        }
    }

    protected void consumeMethodInvocationSuperWithTypeArguments() {
        super.consumeMethodInvocationSuperWithTypeArguments();
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        Expression[] args = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, args == null ? 0 : args.length, (int)(messageSend.nameSourcePosition >>> 32));
        }
    }

    protected void consumeNormalAnnotation() {
        super.consumeNormalAnnotation();
        Annotation annotation = (Annotation)this.expressionStack[this.expressionPtr];
        if (this.reportReferenceInfo) {
            this.requestor.acceptAnnotationTypeReference(annotation.type.getTypeName(), annotation.sourceStart, annotation.sourceEnd);
        }
    }

    protected void consumeSingleMemberAnnotation() {
        super.consumeSingleMemberAnnotation();
        SingleMemberAnnotation member = (SingleMemberAnnotation)this.expressionStack[this.expressionPtr];
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(TypeConstants.VALUE, 0, member.sourceStart);
        }
    }

    protected void consumeSingleStaticImportDeclarationName() {
        int length = this.identifierLengthStack[this.identifierLengthPtr--];
        char[][] tokens = new char[length][];
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierStack, this.identifierPtr + 1, tokens, 0, length);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        ImportReference impt = this.newImportReference(tokens, positions, false, 8);
        this.pushOnAstStack(impt);
        this.modifiers = 0;
        this.modifiersSourceStart = -1;
        impt.declarationSourceEnd = this.currentToken == 27 ? this.scanner.currentPosition - 1 : impt.sourceEnd;
        impt.declarationEnd = impt.declarationSourceEnd;
        impt.declarationSourceStart = this.intStack[this.intPtr--];
        if (!this.statementRecoveryActivated && this.options.sourceLevel < 0x310000L && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            impt.modifiers = 0;
            this.problemReporter().invalidUsageOfStaticImports(impt);
        }
        if (this.currentElement != null) {
            this.lastCheckPoint = impt.declarationSourceEnd + 1;
            this.currentElement = this.currentElement.add(impt, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
        if (this.reportReferenceInfo) {
            int tokensLength = impt.tokens.length - 1;
            int start = (int)(impt.sourcePositions[tokensLength] >>> 32);
            char[] last = impt.tokens[tokensLength];
            this.requestor.acceptFieldReference(last, start);
            this.requestor.acceptMethodReference(last, 0, start);
            this.requestor.acceptTypeReference(last, start);
            if (tokensLength > 0) {
                char[][] compoundName = new char[tokensLength][];
                System.arraycopy(impt.tokens, 0, compoundName, 0, tokensLength);
                int end = (int)impt.sourcePositions[tokensLength - 1];
                this.requestor.acceptTypeReference(compoundName, impt.sourceStart, end);
            }
        }
    }

    protected void consumeSingleTypeImportDeclarationName() {
        int length = this.identifierLengthStack[this.identifierLengthPtr--];
        char[][] tokens = new char[length][];
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierStack, this.identifierPtr + 1, tokens, 0, length);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        ImportReference impt = this.newImportReference(tokens, positions, false, 0);
        this.pushOnAstStack(impt);
        impt.declarationSourceEnd = this.currentToken == 27 ? this.scanner.currentPosition - 1 : impt.sourceEnd;
        impt.declarationEnd = impt.declarationSourceEnd;
        impt.declarationSourceStart = this.intStack[this.intPtr--];
        if (this.currentElement != null) {
            this.lastCheckPoint = impt.declarationSourceEnd + 1;
            this.currentElement = this.currentElement.add(impt, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
        if (this.reportReferenceInfo) {
            this.requestor.acceptTypeReference(impt.tokens, impt.sourceStart, impt.sourceEnd);
        }
    }

    protected void consumeStaticImportOnDemandDeclarationName() {
        int length = this.identifierLengthStack[this.identifierLengthPtr--];
        char[][] tokens = new char[length][];
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierStack, this.identifierPtr + 1, tokens, 0, length);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        ImportReference impt = new ImportReference(tokens, positions, true, 8);
        this.pushOnAstStack(impt);
        impt.trailingStarPosition = this.intStack[this.intPtr--];
        this.modifiers = 0;
        this.modifiersSourceStart = -1;
        impt.declarationSourceEnd = this.currentToken == 27 ? this.scanner.currentPosition - 1 : impt.sourceEnd;
        impt.declarationEnd = impt.declarationSourceEnd;
        impt.declarationSourceStart = this.intStack[this.intPtr--];
        if (!this.statementRecoveryActivated && this.options.sourceLevel < 0x310000L && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            impt.modifiers = 0;
            this.problemReporter().invalidUsageOfStaticImports(impt);
        }
        if (this.currentElement != null) {
            this.lastCheckPoint = impt.declarationSourceEnd + 1;
            this.currentElement = this.currentElement.add(impt, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
        if (this.reportReferenceInfo) {
            this.requestor.acceptTypeReference(impt.tokens, impt.sourceStart, impt.sourceEnd);
        }
    }

    protected void consumeTypeImportOnDemandDeclarationName() {
        int length = this.identifierLengthStack[this.identifierLengthPtr--];
        char[][] tokens = new char[length][];
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierStack, this.identifierPtr + 1, tokens, 0, length);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        ImportReference impt = new ImportReference(tokens, positions, true, 0);
        this.pushOnAstStack(impt);
        impt.trailingStarPosition = this.intStack[this.intPtr--];
        impt.declarationSourceEnd = this.currentToken == 27 ? this.scanner.currentPosition - 1 : impt.sourceEnd;
        impt.declarationEnd = impt.declarationSourceEnd;
        impt.declarationSourceStart = this.intStack[this.intPtr--];
        if (this.currentElement != null) {
            this.lastCheckPoint = impt.declarationSourceEnd + 1;
            this.currentElement = this.currentElement.add(impt, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
        if (this.reportReferenceInfo) {
            this.requestor.acceptUnknownReference(impt.tokens, impt.sourceStart, impt.sourceEnd);
        }
    }

    public MethodDeclaration convertToMethodDeclaration(ConstructorDeclaration c, CompilationResult compilationResult) {
        char[][] categories;
        MethodDeclaration methodDeclaration = super.convertToMethodDeclaration(c, compilationResult);
        int selectorSourceEnd = this.sourceEnds.removeKey(c);
        if (selectorSourceEnd != -1) {
            this.sourceEnds.put(methodDeclaration, selectorSourceEnd);
        }
        if ((categories = (char[][])this.nodesToCategories.remove(c)) != null) {
            this.nodesToCategories.put(methodDeclaration, categories);
        }
        return methodDeclaration;
    }

    protected CompilationUnitDeclaration endParse(int act) {
        if (this.scanner.recordLineSeparator) {
            this.requestor.acceptLineSeparatorPositions(this.scanner.getLineEnds());
        }
        if (this.compilationUnit != null) {
            CompilationUnitDeclaration result = super.endParse(act);
            return result;
        }
        return null;
    }

    public TypeReference getTypeReference(int dim) {
        int numberOfIdentifiers;
        int length;
        if ((length = this.identifierLengthStack[this.identifierLengthPtr--]) < 0) {
            TypeReference ref = TypeReference.baseTypeReference(-length, dim);
            ref.sourceStart = this.intStack[this.intPtr--];
            if (dim == 0) {
                ref.sourceEnd = this.intStack[this.intPtr--];
            } else {
                --this.intPtr;
                ref.sourceEnd = this.endPosition;
            }
            if (this.reportReferenceInfo) {
                this.requestor.acceptTypeReference(ref.getParameterizedTypeName(), ref.sourceStart, ref.sourceEnd);
            }
            return ref;
        }
        if (length != (numberOfIdentifiers = this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr--]) || this.genericsLengthStack[this.genericsLengthPtr] != 0) {
            TypeReference ref = this.getTypeReferenceForGenericType(dim, length, numberOfIdentifiers);
            if (this.reportReferenceInfo) {
                if (length == 1 && numberOfIdentifiers == 1) {
                    ParameterizedSingleTypeReference parameterizedSingleTypeReference = (ParameterizedSingleTypeReference)ref;
                    this.requestor.acceptTypeReference(parameterizedSingleTypeReference.token, parameterizedSingleTypeReference.sourceStart);
                } else {
                    ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference)ref;
                    this.requestor.acceptTypeReference(parameterizedQualifiedTypeReference.tokens, parameterizedQualifiedTypeReference.sourceStart, parameterizedQualifiedTypeReference.sourceEnd);
                }
            }
            return ref;
        }
        if (length == 1) {
            --this.genericsLengthPtr;
            if (dim == 0) {
                SingleTypeReference ref = new SingleTypeReference(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr--]);
                if (this.reportReferenceInfo) {
                    this.requestor.acceptTypeReference(ref.token, ref.sourceStart);
                }
                return ref;
            }
            ArrayTypeReference ref = new ArrayTypeReference(this.identifierStack[this.identifierPtr], dim, this.identifierPositionStack[this.identifierPtr--]);
            ref.sourceEnd = this.endPosition;
            if (this.reportReferenceInfo) {
                this.requestor.acceptTypeReference(ref.token, ref.sourceStart);
            }
            return ref;
        }
        --this.genericsLengthPtr;
        char[][] tokens = new char[length][];
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierStack, this.identifierPtr + 1, tokens, 0, length);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        if (dim == 0) {
            QualifiedTypeReference ref = new QualifiedTypeReference(tokens, positions);
            if (this.reportReferenceInfo) {
                this.requestor.acceptTypeReference(ref.tokens, ref.sourceStart, ref.sourceEnd);
            }
            return ref;
        }
        ArrayQualifiedTypeReference ref = new ArrayQualifiedTypeReference(tokens, dim, positions);
        ref.sourceEnd = this.endPosition;
        if (this.reportReferenceInfo) {
            this.requestor.acceptTypeReference(ref.tokens, ref.sourceStart, ref.sourceEnd);
        }
        return ref;
    }

    public NameReference getUnspecifiedReference() {
        int length;
        if ((length = this.identifierLengthStack[this.identifierLengthPtr--]) == 1) {
            SingleNameReference ref = this.newSingleNameReference(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr--]);
            if (this.reportReferenceInfo) {
                this.addUnknownRef(ref);
            }
            return ref;
        }
        char[][] tokens = new char[length][];
        this.identifierPtr -= length;
        System.arraycopy(this.identifierStack, this.identifierPtr + 1, tokens, 0, length);
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        QualifiedNameReference ref = this.newQualifiedNameReference(tokens, positions, (int)(this.identifierPositionStack[this.identifierPtr + 1] >> 32), (int)this.identifierPositionStack[this.identifierPtr + length]);
        if (this.reportReferenceInfo) {
            this.addUnknownRef(ref);
        }
        return ref;
    }

    public NameReference getUnspecifiedReferenceOptimized() {
        int length;
        if ((length = this.identifierLengthStack[this.identifierLengthPtr--]) == 1) {
            SingleNameReference ref = this.newSingleNameReference(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr--]);
            ref.bits &= 0xFFFFFFF8;
            ref.bits |= 3;
            if (this.reportReferenceInfo) {
                this.addUnknownRef(ref);
            }
            return ref;
        }
        char[][] tokens = new char[length][];
        this.identifierPtr -= length;
        System.arraycopy(this.identifierStack, this.identifierPtr + 1, tokens, 0, length);
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        QualifiedNameReference ref = this.newQualifiedNameReference(tokens, positions, (int)(this.identifierPositionStack[this.identifierPtr + 1] >> 32), (int)this.identifierPositionStack[this.identifierPtr + length]);
        ref.bits &= 0xFFFFFFF8;
        ref.bits |= 3;
        if (this.reportReferenceInfo) {
            this.addUnknownRef(ref);
        }
        return ref;
    }

    protected ImportReference newImportReference(char[][] tokens, long[] positions, boolean onDemand, int mod) {
        return new ImportReference(tokens, positions, onDemand, mod);
    }

    protected QualifiedNameReference newQualifiedNameReference(char[][] tokens, long[] positions, int sourceStart, int sourceEnd) {
        return new QualifiedNameReference(tokens, positions, sourceStart, sourceEnd);
    }

    protected SingleNameReference newSingleNameReference(char[] source, long positions) {
        return new SingleNameReference(source, positions);
    }

    public CompilationUnitDeclaration parseCompilationUnit(ICompilationUnit unit, boolean fullParse, IProgressMonitor pm) {
        boolean old = this.diet;
        CompilationUnitDeclaration parsedUnit = null;
        try {
            this.diet = true;
            this.reportReferenceInfo = fullParse;
            CompilationResult compilationUnitResult = new CompilationResult(unit, 0, 0, this.options.maxProblemsPerUnit);
            parsedUnit = this.parse(unit, compilationUnitResult);
            if (pm != null && pm.isCanceled()) {
                throw new OperationCanceledException(Messages.operation_cancelled);
            }
            if (this.scanner.recordLineSeparator) {
                this.requestor.acceptLineSeparatorPositions(compilationUnitResult.getLineSeparatorPositions());
            }
            int initialStart = this.scanner.initialPosition;
            int initialEnd = this.scanner.eofPosition;
            if (this.reportLocalDeclarations || fullParse) {
                this.diet = false;
                this.getMethodBodies(parsedUnit);
            }
            this.scanner.resetTo(initialStart, initialEnd);
            this.notifier.notifySourceElementRequestor(parsedUnit, this.scanner.initialPosition, this.scanner.eofPosition, this.reportReferenceInfo, this.sourceEnds, this.nodesToCategories);
            CompilationUnitDeclaration compilationUnitDeclaration = parsedUnit;
            return compilationUnitDeclaration;
        }
        catch (AbortCompilation abortCompilation) {
        }
        finally {
            this.diet = old;
            this.reset();
        }
        return parsedUnit;
    }

    private void rememberCategories() {
        if (this.useSourceJavadocParser) {
            SourceJavadocParser sourceJavadocParser = (SourceJavadocParser)this.javadocParser;
            char[][] categories = sourceJavadocParser.categories;
            if (categories.length > 0) {
                this.nodesToCategories.put(this.astStack[this.astPtr], categories);
                sourceJavadocParser.categories = CharOperation.NO_CHAR_CHAR;
            }
        }
    }

    private void reset() {
        this.sourceEnds = new HashtableOfObjectToInt();
        this.nodesToCategories = new HashMap();
    }

    public void setRequestor(ISourceElementRequestor requestor) {
        this.requestor = requestor;
        this.notifier.requestor = requestor;
    }
}

