/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.impl;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.RecoveredBlock;
import org.eclipse.jdt.internal.compiler.parser.RecoveredElement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredField;
import org.eclipse.jdt.internal.compiler.parser.RecoveredInitializer;
import org.eclipse.jdt.internal.compiler.parser.RecoveredMethod;
import org.eclipse.jdt.internal.compiler.parser.RecoveredType;
import org.eclipse.jdt.internal.compiler.parser.RecoveredUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public abstract class AssistParser
extends Parser {
    public ASTNode assistNode;
    public boolean isOrphanCompletionNode;
    protected int lastModifiers = 0;
    protected int lastModifiersStart = -1;
    int[] blockStarts = new int[30];
    protected int previousToken;
    protected int previousIdentifierPtr;
    protected int bracketDepth;
    protected static final int ElementStackIncrement = 100;
    protected int elementPtr;
    protected int[] elementKindStack = new int[100];
    protected int[] elementInfoStack = new int[100];
    protected Object[] elementObjectInfoStack = new Object[100];
    protected int previousKind;
    protected int previousInfo;
    protected Object previousObjectInfo;
    protected static final int ASSIST_PARSER = 512;
    protected static final int K_SELECTOR = 513;
    protected static final int K_TYPE_DELIMITER = 514;
    protected static final int K_METHOD_DELIMITER = 515;
    protected static final int K_FIELD_INITIALIZER_DELIMITER = 516;
    protected static final int K_ATTRIBUTE_VALUE_DELIMITER = 517;
    protected static final int K_ENUM_CONSTANT_DELIMITER = 518;
    protected static final int THIS_CONSTRUCTOR = -1;
    protected static final int SUPER_CONSTRUCTOR = -2;
    protected static final int NO_BODY = 0;
    protected static final int WITH_BODY = 1;
    protected boolean isFirst = false;

    public AssistParser(ProblemReporter problemReporter) {
        super(problemReporter, true);
        this.javadocParser.checkDocComment = false;
        this.setMethodsFullRecovery(false);
        this.setStatementsRecovery(false);
    }

    public abstract char[] assistIdentifier();

    public Object becomeSimpleParser() {
        return null;
    }

    public void restoreAssistParser(Object parserState) {
    }

    public int bodyEnd(AbstractMethodDeclaration method) {
        return method.bodyEnd;
    }

    public int bodyEnd(Initializer initializer) {
        return initializer.declarationSourceEnd;
    }

    public RecoveredElement buildInitialRecoveryState() {
        int lastStart;
        int i;
        if (this.referenceContext instanceof CompilationUnitDeclaration) {
            RecoveredElement element = super.buildInitialRecoveryState();
            this.flushAssistState();
            this.flushElementStack();
            return element;
        }
        this.lastCheckPoint = 0;
        RecoveredElement element = null;
        if (this.referenceContext instanceof AbstractMethodDeclaration) {
            element = new RecoveredMethod((AbstractMethodDeclaration)this.referenceContext, null, 0, this);
            this.lastCheckPoint = ((AbstractMethodDeclaration)this.referenceContext).bodyStart;
        } else if (this.referenceContext instanceof TypeDeclaration) {
            TypeDeclaration type = (TypeDeclaration)this.referenceContext;
            FieldDeclaration[] fields = type.fields;
            int length = fields == null ? 0 : fields.length;
            i = 0;
            while (i < length) {
                FieldDeclaration field = fields[i];
                if (field != null && field.getKind() == 2 && field.declarationSourceStart <= this.scanner.initialPosition && this.scanner.initialPosition <= field.declarationSourceEnd && this.scanner.eofPosition <= field.declarationSourceEnd + 1) {
                    element = new RecoveredInitializer(field, null, 1, this);
                    this.lastCheckPoint = field.declarationSourceStart;
                    break;
                }
                ++i;
            }
        }
        if (element == null) {
            return element;
        }
        Block block = new Block(0);
        block.sourceStart = lastStart = this.blockStarts[0];
        element = element.add(block, 1);
        int blockIndex = 1;
        i = 0;
        while (i <= this.astPtr) {
            ASTNode node = this.astStack[i];
            if (node instanceof ForeachStatement && ((ForeachStatement)node).action == null) {
                node = ((ForeachStatement)node).elementVariable;
            }
            int nodeStart = node.sourceStart;
            int j = blockIndex;
            while (j <= this.realBlockPtr) {
                if (this.blockStarts[j] >= 0) {
                    if (this.blockStarts[j] > nodeStart) {
                        blockIndex = j;
                        break;
                    }
                    if (this.blockStarts[j] != lastStart) {
                        block = new Block(0);
                        block.sourceStart = lastStart = this.blockStarts[j];
                        element = element.add(block, 1);
                    }
                } else {
                    if (-this.blockStarts[j] > nodeStart) {
                        blockIndex = j;
                        break;
                    }
                    block = new Block(0);
                    block.sourceStart = lastStart = -this.blockStarts[j];
                    element = element.add(block, 1);
                }
                blockIndex = j + 1;
                ++j;
            }
            if (node instanceof LocalDeclaration) {
                LocalDeclaration local = (LocalDeclaration)node;
                if (local.declarationSourceEnd == 0) {
                    element = element.add(local, 0);
                    this.lastCheckPoint = local.initialization == null ? local.sourceEnd + 1 : local.initialization.sourceEnd + 1;
                } else {
                    element = element.add(local, 0);
                    this.lastCheckPoint = local.declarationSourceEnd + 1;
                }
            } else if (node instanceof AbstractMethodDeclaration) {
                AbstractMethodDeclaration method = (AbstractMethodDeclaration)node;
                if (method.declarationSourceEnd == 0) {
                    element = element.add(method, 0);
                    this.lastCheckPoint = method.bodyStart;
                } else {
                    element = element.add(method, 0);
                    this.lastCheckPoint = method.declarationSourceEnd + 1;
                }
            } else if (node instanceof Initializer) {
                Initializer initializer = (Initializer)node;
                if (initializer.declarationSourceEnd == 0) {
                    element = element.add(initializer, 1);
                    this.lastCheckPoint = initializer.sourceStart;
                } else {
                    element = element.add(initializer, 0);
                    this.lastCheckPoint = initializer.declarationSourceEnd + 1;
                }
            } else if (node instanceof FieldDeclaration) {
                FieldDeclaration field = (FieldDeclaration)node;
                if (field.declarationSourceEnd == 0) {
                    element = element.add(field, 0);
                    this.lastCheckPoint = field.initialization == null ? field.sourceEnd + 1 : field.initialization.sourceEnd + 1;
                } else {
                    element = element.add(field, 0);
                    this.lastCheckPoint = field.declarationSourceEnd + 1;
                }
            } else if (node instanceof TypeDeclaration) {
                TypeDeclaration type = (TypeDeclaration)node;
                if (type.declarationSourceEnd == 0) {
                    element = element.add(type, 0);
                    this.lastCheckPoint = type.bodyStart;
                } else {
                    element = element.add(type, 0);
                    this.lastCheckPoint = type.declarationSourceEnd + 1;
                }
            } else if (node instanceof ImportReference) {
                ImportReference importRef = (ImportReference)node;
                element = element.add(importRef, 0);
                this.lastCheckPoint = importRef.declarationSourceEnd + 1;
            }
            ++i;
        }
        if (this.currentToken == 31) {
            this.currentToken = 0;
        }
        int pos = this.assistNode == null ? this.lastCheckPoint : this.assistNode.sourceStart;
        int j = blockIndex;
        while (j <= this.realBlockPtr) {
            if (this.blockStarts[j] >= 0) {
                if (this.blockStarts[j] < pos && this.blockStarts[j] != lastStart) {
                    block = new Block(0);
                    block.sourceStart = lastStart = this.blockStarts[j];
                    element = element.add(block, 1);
                }
            } else if (this.blockStarts[j] < pos) {
                block = new Block(0);
                block.sourceStart = lastStart = -this.blockStarts[j];
                element = element.add(block, 1);
            }
            ++j;
        }
        return element;
    }

    protected void consumeAnnotationTypeDeclarationHeader() {
        super.consumeAnnotationTypeDeclarationHeader();
        this.pushOnElementStack(514);
    }

    protected void consumeClassBodyDeclaration() {
        this.popElement(515);
        super.consumeClassBodyDeclaration();
    }

    protected void consumeClassBodyopt() {
        super.consumeClassBodyopt();
        this.popElement(513);
    }

    protected void consumeClassHeader() {
        super.consumeClassHeader();
        this.pushOnElementStack(514);
    }

    protected void consumeConstructorBody() {
        super.consumeConstructorBody();
        this.popElement(515);
    }

    protected void consumeConstructorHeader() {
        super.consumeConstructorHeader();
        this.pushOnElementStack(515);
    }

    protected void consumeEnhancedForStatementHeaderInit(boolean hasModifiers) {
        super.consumeEnhancedForStatementHeaderInit(hasModifiers);
        if (this.currentElement != null) {
            LocalDeclaration localDecl = ((ForeachStatement)this.astStack[this.astPtr]).elementVariable;
            this.lastCheckPoint = localDecl.sourceEnd + 1;
            this.currentElement = this.currentElement.add(localDecl, 0);
        }
    }

    protected void consumeEnterAnonymousClassBody(boolean qualified) {
        super.consumeEnterAnonymousClassBody(qualified);
        this.popElement(513);
        this.pushOnElementStack(514);
    }

    protected void consumeEnterMemberValue() {
        super.consumeEnterMemberValue();
        this.pushOnElementStack(517, this.identifierPtr);
    }

    protected void consumeEnumConstantHeader() {
        if (this.currentToken == 68) {
            this.popElement(518);
            this.pushOnElementStack(518, 1);
            this.pushOnElementStack(516);
            this.pushOnElementStack(514);
        }
        super.consumeEnumConstantHeader();
    }

    protected void consumeEnumConstantHeaderName() {
        super.consumeEnumConstantHeaderName();
        this.pushOnElementStack(518);
    }

    protected void consumeEnumConstantWithClassBody() {
        this.popElement(514);
        this.popElement(516);
        this.popElement(518);
        super.consumeEnumConstantWithClassBody();
    }

    protected void consumeEnumConstantNoClassBody() {
        this.popElement(518);
        super.consumeEnumConstantNoClassBody();
    }

    protected void consumeEnumHeader() {
        super.consumeEnumHeader();
        this.pushOnElementStack(514);
    }

    protected void consumeExitMemberValue() {
        super.consumeExitMemberValue();
        this.popElement(517);
    }

    protected void consumeExplicitConstructorInvocation(int flag, int recFlag) {
        super.consumeExplicitConstructorInvocation(flag, recFlag);
        this.popElement(513);
    }

    protected void consumeForceNoDiet() {
        super.consumeForceNoDiet();
        if (!this.isInsideMethod()) {
            if (this.topKnownElementKind(512) != 518) {
                if (this.topKnownElementKind(512, 2) != 518) {
                    this.pushOnElementStack(516);
                }
            } else {
                int info = this.topKnownElementInfo(512);
                if (info != 0) {
                    this.pushOnElementStack(516);
                }
            }
        }
    }

    protected void consumeInterfaceHeader() {
        super.consumeInterfaceHeader();
        this.pushOnElementStack(514);
    }

    protected void consumeMethodBody() {
        super.consumeMethodBody();
        this.popElement(515);
    }

    protected void consumeMethodDeclaration(boolean isNotAbstract) {
        if (!isNotAbstract) {
            this.popElement(515);
        }
        super.consumeMethodDeclaration(isNotAbstract);
    }

    protected void consumeMethodHeader() {
        super.consumeMethodHeader();
        this.pushOnElementStack(515);
    }

    protected void consumeMethodInvocationName() {
        super.consumeMethodInvocationName();
        this.popElement(513);
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    protected void consumeMethodInvocationNameWithTypeArguments() {
        super.consumeMethodInvocationNameWithTypeArguments();
        this.popElement(513);
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    protected void consumeMethodInvocationPrimary() {
        super.consumeMethodInvocationPrimary();
        this.popElement(513);
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    protected void consumeMethodInvocationPrimaryWithTypeArguments() {
        super.consumeMethodInvocationPrimaryWithTypeArguments();
        this.popElement(513);
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    protected void consumeMethodInvocationSuper() {
        super.consumeMethodInvocationSuper();
        this.popElement(513);
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    protected void consumeMethodInvocationSuperWithTypeArguments() {
        super.consumeMethodInvocationSuperWithTypeArguments();
        this.popElement(513);
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    protected void consumeNestedMethod() {
        super.consumeNestedMethod();
        if (!this.isInsideMethod()) {
            this.pushOnElementStack(515);
        }
    }

    protected void consumeOpenBlock() {
        super.consumeOpenBlock();
        int stackLength = this.blockStarts.length;
        if (this.realBlockPtr >= stackLength) {
            this.blockStarts = new int[stackLength + 255];
            System.arraycopy(this.blockStarts, 0, this.blockStarts, 0, stackLength);
        }
        this.blockStarts[this.realBlockPtr] = this.scanner.startPosition;
    }

    protected void consumeOpenFakeBlock() {
        super.consumeOpenBlock();
        int stackLength = this.blockStarts.length;
        if (this.realBlockPtr >= stackLength) {
            this.blockStarts = new int[stackLength + 255];
            System.arraycopy(this.blockStarts, 0, this.blockStarts, 0, stackLength);
        }
        this.blockStarts[this.realBlockPtr] = -this.scanner.startPosition;
    }

    protected void consumePackageDeclarationName() {
        int index = this.indexOfAssistIdentifier();
        if (index < 0) {
            super.consumePackageDeclarationName();
            return;
        }
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(index + 1);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        ImportReference reference = this.createAssistPackageReference(subset, positions);
        this.assistNode = reference;
        this.lastCheckPoint = reference.sourceEnd + 1;
        this.compilationUnit.currentPackage = reference;
        reference.declarationSourceEnd = this.currentToken == 27 ? this.scanner.currentPosition - 1 : (int)positions[length - 1];
        reference.declarationSourceStart = this.intStack[this.intPtr--];
        reference.declarationSourceEnd = this.flushCommentsDefinedPriorTo(reference.declarationSourceEnd);
        if (this.currentElement != null) {
            this.lastCheckPoint = reference.declarationSourceEnd + 1;
            this.restartRecovery = true;
        }
    }

    protected void consumePackageDeclarationNameWithModifiers() {
        int index = this.indexOfAssistIdentifier();
        if (index < 0) {
            super.consumePackageDeclarationNameWithModifiers();
            return;
        }
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(index + 1);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        --this.intPtr;
        --this.intPtr;
        ImportReference reference = this.createAssistPackageReference(subset, positions);
        length = this.expressionLengthStack[this.expressionLengthPtr--];
        if (length != 0) {
            reference.annotations = new Annotation[length];
            System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, reference.annotations, 0, length);
        }
        this.assistNode = reference;
        this.lastCheckPoint = reference.sourceEnd + 1;
        this.compilationUnit.currentPackage = reference;
        reference.declarationSourceEnd = this.currentToken == 27 ? this.scanner.currentPosition - 1 : (int)positions[length - 1];
        reference.declarationSourceStart = this.intStack[this.intPtr--];
        reference.declarationSourceEnd = this.flushCommentsDefinedPriorTo(reference.declarationSourceEnd);
        if (this.currentElement != null) {
            this.lastCheckPoint = reference.declarationSourceEnd + 1;
            this.restartRecovery = true;
        }
    }

    protected void consumeRestoreDiet() {
        super.consumeRestoreDiet();
        if (!this.isInsideMethod()) {
            this.popElement(516);
        }
    }

    protected void consumeSingleStaticImportDeclarationName() {
        int index = this.indexOfAssistIdentifier();
        if (index < 0) {
            super.consumeSingleStaticImportDeclarationName();
            return;
        }
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(index + 1);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        ImportReference reference = this.createAssistImportReference(subset, positions, 8);
        this.assistNode = reference;
        this.lastCheckPoint = reference.sourceEnd + 1;
        this.pushOnAstStack(reference);
        reference.declarationSourceEnd = this.currentToken == 27 ? this.scanner.currentPosition - 1 : (int)positions[length - 1];
        reference.declarationSourceStart = this.intStack[this.intPtr--];
        reference.declarationSourceEnd = this.flushCommentsDefinedPriorTo(reference.declarationSourceEnd);
        if (this.currentElement != null) {
            this.lastCheckPoint = reference.declarationSourceEnd + 1;
            this.currentElement = this.currentElement.add(reference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    protected void consumeSingleTypeImportDeclarationName() {
        int index = this.indexOfAssistIdentifier();
        if (index < 0) {
            super.consumeSingleTypeImportDeclarationName();
            return;
        }
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(index + 1);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        ImportReference reference = this.createAssistImportReference(subset, positions, 0);
        this.assistNode = reference;
        this.lastCheckPoint = reference.sourceEnd + 1;
        this.pushOnAstStack(reference);
        reference.declarationSourceEnd = this.currentToken == 27 ? this.scanner.currentPosition - 1 : (int)positions[length - 1];
        reference.declarationSourceStart = this.intStack[this.intPtr--];
        reference.declarationSourceEnd = this.flushCommentsDefinedPriorTo(reference.declarationSourceEnd);
        if (this.currentElement != null) {
            this.lastCheckPoint = reference.declarationSourceEnd + 1;
            this.currentElement = this.currentElement.add(reference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    protected void consumeStaticImportOnDemandDeclarationName() {
        int index = this.indexOfAssistIdentifier();
        if (index < 0) {
            super.consumeStaticImportOnDemandDeclarationName();
            return;
        }
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(index + 1);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        ImportReference reference = this.createAssistImportReference(subset, positions, 8);
        reference.bits |= 0x20000;
        reference.trailingStarPosition = this.intStack[this.intPtr--];
        this.assistNode = reference;
        this.lastCheckPoint = reference.sourceEnd + 1;
        this.pushOnAstStack(reference);
        reference.declarationSourceEnd = this.currentToken == 27 ? this.scanner.currentPosition - 1 : (int)positions[length - 1];
        reference.declarationSourceStart = this.intStack[this.intPtr--];
        reference.declarationSourceEnd = this.flushCommentsDefinedPriorTo(reference.declarationSourceEnd);
        if (this.currentElement != null) {
            this.lastCheckPoint = reference.declarationSourceEnd + 1;
            this.currentElement = this.currentElement.add(reference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    protected void consumeStaticInitializer() {
        super.consumeStaticInitializer();
        this.popElement(515);
    }

    protected void consumeStaticOnly() {
        super.consumeStaticOnly();
        this.pushOnElementStack(515);
    }

    protected void consumeToken(int token) {
        block22: {
            block21: {
                super.consumeToken(token);
                if (this.isFirst) {
                    this.isFirst = false;
                    return;
                }
                if (!this.isInsideMethod() && !this.isInsideFieldInitialization() && !this.isInsideAttributeValue()) break block21;
                switch (token) {
                    case 29: {
                        ++this.bracketDepth;
                        switch (this.previousToken) {
                            case 26: {
                                this.pushOnElementStack(513, this.identifierPtr);
                                break;
                            }
                            case 42: {
                                this.pushOnElementStack(513, -1);
                                break;
                            }
                            case 41: {
                                this.pushOnElementStack(513, -2);
                                break;
                            }
                            case 10: 
                            case 11: 
                            case 12: {
                                if (this.identifierPtr <= -1) break block22;
                                this.pushOnElementStack(513, this.identifierPtr);
                            }
                            default: {
                                break;
                            }
                            {
                            }
                        }
                        break block22;
                    }
                    case 68: {
                        ++this.bracketDepth;
                        break;
                    }
                    case 16: {
                        ++this.bracketDepth;
                        break;
                    }
                    case 31: {
                        --this.bracketDepth;
                        break;
                    }
                    case 70: {
                        --this.bracketDepth;
                        break;
                    }
                    case 28: {
                        --this.bracketDepth;
                    }
                }
                break block22;
            }
            switch (token) {
                case 31: {
                    if (this.topKnownElementKind(512) != 514) break;
                    this.popElement(514);
                }
            }
        }
        this.previousToken = token;
        if (token == 26) {
            this.previousIdentifierPtr = this.identifierPtr;
        }
    }

    protected void consumeTypeImportOnDemandDeclarationName() {
        int index = this.indexOfAssistIdentifier();
        if (index < 0) {
            super.consumeTypeImportOnDemandDeclarationName();
            return;
        }
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(index + 1);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        ImportReference reference = this.createAssistImportReference(subset, positions, 0);
        reference.bits |= 0x20000;
        reference.trailingStarPosition = this.intStack[this.intPtr--];
        this.assistNode = reference;
        this.lastCheckPoint = reference.sourceEnd + 1;
        this.pushOnAstStack(reference);
        reference.declarationSourceEnd = this.currentToken == 27 ? this.scanner.currentPosition - 1 : (int)positions[length - 1];
        reference.declarationSourceStart = this.intStack[this.intPtr--];
        reference.declarationSourceEnd = this.flushCommentsDefinedPriorTo(reference.declarationSourceEnd);
        if (this.currentElement != null) {
            this.lastCheckPoint = reference.declarationSourceEnd + 1;
            this.currentElement = this.currentElement.add(reference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    public abstract ImportReference createAssistImportReference(char[][] var1, long[] var2, int var3);

    public abstract ImportReference createAssistPackageReference(char[][] var1, long[] var2);

    public abstract NameReference createQualifiedAssistNameReference(char[][] var1, char[] var2, long[] var3);

    public abstract TypeReference createQualifiedAssistTypeReference(char[][] var1, char[] var2, long[] var3);

    public abstract TypeReference createParameterizedQualifiedAssistTypeReference(char[][] var1, TypeReference[][] var2, char[] var3, TypeReference[] var4, long[] var5);

    public abstract NameReference createSingleAssistNameReference(char[] var1, long var2);

    public abstract TypeReference createSingleAssistTypeReference(char[] var1, long var2);

    public abstract TypeReference createParameterizedSingleAssistTypeReference(TypeReference[] var1, char[] var2, long var3);

    public void flushAssistState() {
        this.assistNode = null;
        this.isOrphanCompletionNode = false;
        this.setAssistIdentifier(null);
    }

    protected void flushElementStack() {
        int j = 0;
        while (j <= this.elementPtr) {
            this.elementObjectInfoStack[j] = null;
            ++j;
        }
        this.elementPtr = -1;
        this.previousKind = 0;
        this.previousInfo = 0;
        this.previousObjectInfo = null;
    }

    protected TypeReference getTypeReference(int dim) {
        TypeReference reference;
        int numberOfIdentifiers;
        int index = this.indexOfAssistIdentifier(true);
        if (index < 0) {
            return super.getTypeReference(dim);
        }
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        if (length != (numberOfIdentifiers = this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr--]) || this.genericsLengthStack[this.genericsLengthPtr] != 0) {
            --this.identifierLengthPtr;
            reference = this.getAssistTypeReferenceForGenericType(dim, length, numberOfIdentifiers);
        } else {
            char[][] subset = this.identifierSubSet(index);
            --this.identifierLengthPtr;
            this.identifierPtr -= length;
            long[] positions = new long[length];
            System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
            if (index == 0) {
                --this.genericsLengthPtr;
                reference = this.createSingleAssistTypeReference(this.assistIdentifier(), positions[0]);
            } else {
                --this.genericsLengthPtr;
                reference = this.createQualifiedAssistTypeReference(subset, this.assistIdentifier(), positions);
            }
            this.assistNode = reference;
            this.lastCheckPoint = reference.sourceEnd + 1;
        }
        return reference;
    }

    protected TypeReference getAssistTypeReferenceForGenericType(int dim, int identifierLength, int numberOfIdentifiers) {
        TypeReference reference;
        if (identifierLength == 1 && numberOfIdentifiers == 1) {
            TypeReference[] typeArguments;
            int currentTypeArgumentsLength;
            if ((currentTypeArgumentsLength = this.genericsLengthStack[this.genericsLengthPtr--]) > -1) {
                typeArguments = new TypeReference[currentTypeArgumentsLength];
                this.genericsPtr -= currentTypeArgumentsLength;
                System.arraycopy(this.genericsStack, this.genericsPtr + 1, typeArguments, 0, currentTypeArgumentsLength);
            } else {
                typeArguments = TypeReference.NO_TYPE_ARGUMENTS;
            }
            long[] positions = new long[identifierLength];
            System.arraycopy(this.identifierPositionStack, this.identifierPtr, positions, 0, identifierLength);
            --this.identifierPtr;
            TypeReference reference2 = this.createParameterizedSingleAssistTypeReference(typeArguments, this.assistIdentifier(), positions[0]);
            this.assistNode = reference2;
            this.lastCheckPoint = reference2.sourceEnd + 1;
            return reference2;
        }
        TypeReference[][] typeArguments = new TypeReference[numberOfIdentifiers][];
        char[][] tokens = new char[numberOfIdentifiers][];
        long[] positions = new long[numberOfIdentifiers];
        int index = numberOfIdentifiers;
        int currentIdentifiersLength = identifierLength;
        while (index > 0) {
            int currentTypeArgumentsLength;
            if ((currentTypeArgumentsLength = this.genericsLengthStack[this.genericsLengthPtr--]) > 0) {
                this.genericsPtr -= currentTypeArgumentsLength;
                TypeReference[] typeReferenceArray = new TypeReference[currentTypeArgumentsLength];
                typeArguments[index - 1] = typeReferenceArray;
                System.arraycopy(this.genericsStack, this.genericsPtr + 1, typeReferenceArray, 0, currentTypeArgumentsLength);
            }
            switch (currentIdentifiersLength) {
                case 1: {
                    tokens[index - 1] = this.identifierStack[this.identifierPtr];
                    positions[index - 1] = this.identifierPositionStack[this.identifierPtr--];
                    break;
                }
                default: {
                    this.identifierPtr -= currentIdentifiersLength;
                    System.arraycopy(this.identifierStack, this.identifierPtr + 1, tokens, index - currentIdentifiersLength, currentIdentifiersLength);
                    System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, index - currentIdentifiersLength, currentIdentifiersLength);
                }
            }
            if ((index -= currentIdentifiersLength) <= 0) continue;
            currentIdentifiersLength = this.identifierLengthStack[this.identifierLengthPtr--];
        }
        int realLength = numberOfIdentifiers;
        int i = 0;
        while (i < numberOfIdentifiers) {
            if (tokens[i] == this.assistIdentifier()) {
                realLength = i;
            }
            ++i;
        }
        if (realLength == 0) {
            reference = typeArguments[0] != null && typeArguments[0].length > 0 ? this.createParameterizedSingleAssistTypeReference(typeArguments[0], this.assistIdentifier(), positions[0]) : this.createSingleAssistTypeReference(this.assistIdentifier(), positions[0]);
        } else {
            TypeReference[] assistTypeArguments = typeArguments[realLength];
            char[][] cArrayArray = tokens;
            tokens = new char[realLength][];
            System.arraycopy(cArrayArray, 0, tokens, 0, realLength);
            TypeReference[][] typeReferenceArray = typeArguments;
            typeArguments = new TypeReference[realLength][];
            System.arraycopy(typeReferenceArray, 0, typeArguments, 0, realLength);
            boolean isParameterized = false;
            int i2 = 0;
            while (i2 < typeArguments.length) {
                if (typeArguments[i2] != null) {
                    isParameterized = true;
                }
                ++i2;
            }
            reference = isParameterized || assistTypeArguments != null && assistTypeArguments.length > 0 ? this.createParameterizedQualifiedAssistTypeReference(tokens, typeArguments, this.assistIdentifier(), assistTypeArguments, positions) : this.createQualifiedAssistTypeReference(tokens, this.assistIdentifier(), positions);
        }
        this.assistNode = reference;
        this.lastCheckPoint = reference.sourceEnd + 1;
        return reference;
    }

    protected NameReference getUnspecifiedReferenceOptimized() {
        int completionIndex = this.indexOfAssistIdentifier();
        if (completionIndex < 0) {
            return super.getUnspecifiedReferenceOptimized();
        }
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(completionIndex);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        NameReference reference = completionIndex == 0 ? this.createSingleAssistNameReference(this.assistIdentifier(), positions[0]) : this.createQualifiedAssistNameReference(subset, this.assistIdentifier(), positions);
        reference.bits &= 0xFFFFFFF8;
        reference.bits |= 3;
        this.assistNode = reference;
        this.lastCheckPoint = reference.sourceEnd + 1;
        return reference;
    }

    public void goForBlockStatementsopt() {
        super.goForBlockStatementsopt();
        this.isFirst = true;
    }

    public void goForHeaders() {
        super.goForHeaders();
        this.isFirst = true;
    }

    public void goForCompilationUnit() {
        super.goForCompilationUnit();
        this.isFirst = true;
    }

    public void goForBlockStatementsOrCatchHeader() {
        super.goForBlockStatementsOrCatchHeader();
        this.isFirst = true;
    }

    protected char[][] identifierSubSet(int subsetLength) {
        if (subsetLength == 0) {
            return null;
        }
        char[][] subset = new char[subsetLength][];
        System.arraycopy(this.identifierStack, this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr] + 1, subset, 0, subsetLength);
        return subset;
    }

    protected int indexOfAssistIdentifier() {
        return this.indexOfAssistIdentifier(false);
    }

    protected int indexOfAssistIdentifier(boolean useGenericsStack) {
        if (this.identifierLengthPtr < 0) {
            return -1;
        }
        char[] assistIdentifier = this.assistIdentifier();
        if (assistIdentifier == null) {
            return -1;
        }
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        if (useGenericsStack && length > 0 && this.genericsIdentifiersLengthPtr > -1) {
            length = this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr];
        }
        int i = 0;
        while (i < length) {
            if (this.identifierStack[this.identifierPtr - i] == assistIdentifier) {
                return length - i - 1;
            }
            ++i;
        }
        return -1;
    }

    public void initialize() {
        super.initialize();
        this.flushAssistState();
        this.flushElementStack();
        this.previousIdentifierPtr = -1;
        this.bracketDepth = 0;
    }

    public void initialize(boolean initializeNLS) {
        super.initialize(initializeNLS);
        this.flushAssistState();
        this.flushElementStack();
        this.previousIdentifierPtr = -1;
        this.bracketDepth = 0;
    }

    public abstract void initializeScanner();

    protected boolean isIndirectlyInsideFieldInitialization() {
        int i = this.elementPtr;
        while (i > -1) {
            if (this.elementKindStack[i] == 516) {
                return true;
            }
            --i;
        }
        return false;
    }

    protected boolean isIndirectlyInsideMethod() {
        int i = this.elementPtr;
        while (i > -1) {
            if (this.elementKindStack[i] == 515) {
                return true;
            }
            --i;
        }
        return false;
    }

    protected boolean isIndirectlyInsideType() {
        int i = this.elementPtr;
        while (i > -1) {
            if (this.elementKindStack[i] == 514) {
                return true;
            }
            --i;
        }
        return false;
    }

    protected boolean isInsideAttributeValue() {
        int i = this.elementPtr;
        while (i > -1) {
            switch (this.elementKindStack[i]) {
                case 514: {
                    return false;
                }
                case 515: {
                    return false;
                }
                case 516: {
                    return false;
                }
                case 517: {
                    return true;
                }
            }
            --i;
        }
        return false;
    }

    protected boolean isInsideFieldInitialization() {
        int i = this.elementPtr;
        while (i > -1) {
            switch (this.elementKindStack[i]) {
                case 514: {
                    return false;
                }
                case 515: {
                    return false;
                }
                case 516: {
                    return true;
                }
            }
            --i;
        }
        return false;
    }

    protected boolean isInsideMethod() {
        int i = this.elementPtr;
        while (i > -1) {
            switch (this.elementKindStack[i]) {
                case 514: {
                    return false;
                }
                case 515: {
                    return true;
                }
                case 516: {
                    return false;
                }
            }
            --i;
        }
        return false;
    }

    protected boolean isInsideType() {
        int i = this.elementPtr;
        while (i > -1) {
            switch (this.elementKindStack[i]) {
                case 514: {
                    return true;
                }
                case 515: {
                    return false;
                }
                case 516: {
                    return false;
                }
            }
            --i;
        }
        return false;
    }

    protected int lastIndexOfElement(int kind) {
        int i = this.elementPtr;
        while (i > -1) {
            if (this.elementKindStack[i] == kind) {
                return i;
            }
            --i;
        }
        return -1;
    }

    public void parseBlockStatements(AbstractMethodDeclaration md, CompilationUnitDeclaration unit) {
        if (md instanceof MethodDeclaration) {
            this.parseBlockStatements((MethodDeclaration)md, unit);
        } else if (md instanceof ConstructorDeclaration) {
            this.parseBlockStatements((ConstructorDeclaration)md, unit);
        }
    }

    public void parseBlockStatements(ConstructorDeclaration cd, CompilationUnitDeclaration unit) {
        int length;
        this.initialize();
        this.lastModifiers = cd.modifiers;
        this.lastModifiersStart = cd.modifiersSourceStart;
        this.goForBlockStatementsopt();
        this.referenceContext = cd;
        this.compilationUnit = unit;
        this.scanner.resetTo(cd.bodyStart, this.bodyEnd(cd));
        this.consumeNestedMethod();
        try {
            this.parse();
        }
        catch (AbortCompilation abortCompilation) {
            this.lastAct = 12446;
        }
        if (this.lastAct == 12446) {
            cd.bits |= 0x80000;
            return;
        }
        cd.explicitDeclarations = this.realBlockStack[this.realBlockPtr--];
        if ((length = this.astLengthStack[this.astLengthPtr--]) != 0) {
            this.astPtr -= length;
            if (this.astStack[this.astPtr + 1] instanceof ExplicitConstructorCall) {
                cd.statements = new Statement[length - 1];
                System.arraycopy(this.astStack, this.astPtr + 2, cd.statements, 0, length - 1);
                cd.constructorCall = (ExplicitConstructorCall)this.astStack[this.astPtr + 1];
            } else {
                cd.statements = new Statement[length];
                System.arraycopy(this.astStack, this.astPtr + 1, cd.statements, 0, length);
                cd.constructorCall = SuperReference.implicitSuperConstructorCall();
            }
        } else {
            cd.constructorCall = SuperReference.implicitSuperConstructorCall();
            if (!this.containsComment(cd.bodyStart, cd.bodyEnd)) {
                cd.bits |= 8;
            }
        }
        if (cd.constructorCall.sourceEnd == 0) {
            cd.constructorCall.sourceEnd = cd.sourceEnd;
            cd.constructorCall.sourceStart = cd.sourceStart;
        }
    }

    public void parseBlockStatements(Initializer initializer, TypeDeclaration type, CompilationUnitDeclaration unit) {
        int length;
        block10: {
            this.initialize();
            this.lastModifiers = initializer.modifiers;
            this.lastModifiersStart = initializer.modifiersSourceStart;
            this.goForBlockStatementsopt();
            this.referenceContext = type;
            this.compilationUnit = unit;
            this.scanner.resetTo(initializer.sourceStart, this.bodyEnd(initializer));
            this.consumeNestedMethod();
            try {
                try {
                    this.parse();
                }
                catch (AbortCompilation abortCompilation) {
                    this.lastAct = 12446;
                    int n = this.nestedType;
                    this.nestedMethod[n] = this.nestedMethod[n] - 1;
                    break block10;
                }
            }
            catch (Throwable throwable) {
                int n = this.nestedType;
                this.nestedMethod[n] = this.nestedMethod[n] - 1;
                throw throwable;
            }
            int n = this.nestedType;
            this.nestedMethod[n] = this.nestedMethod[n] - 1;
        }
        if (this.lastAct == 12446) {
            initializer.bits |= 0x80000;
            return;
        }
        initializer.block.explicitDeclarations = this.realBlockStack[this.realBlockPtr--];
        if ((length = this.astLengthStack[this.astLengthPtr--]) > 0) {
            initializer.block.statements = new Statement[length];
            System.arraycopy(this.astStack, (this.astPtr -= length) + 1, initializer.block.statements, 0, length);
        } else if (!this.containsComment(initializer.block.sourceStart, initializer.block.sourceEnd)) {
            initializer.block.bits |= 8;
        }
        if ((type.bits & 2) != 0) {
            initializer.bits |= 2;
        }
    }

    public void parseBlockStatements(MethodDeclaration md, CompilationUnitDeclaration unit) {
        int length;
        block12: {
            if (md.isAbstract()) {
                return;
            }
            if (md.isNative()) {
                return;
            }
            if ((md.modifiers & 0x1000000) != 0) {
                return;
            }
            this.initialize();
            this.lastModifiers = md.modifiers;
            this.lastModifiersStart = md.modifiersSourceStart;
            this.goForBlockStatementsopt();
            this.referenceContext = md;
            this.compilationUnit = unit;
            this.scanner.resetTo(md.bodyStart, this.bodyEnd(md));
            this.consumeNestedMethod();
            try {
                try {
                    this.parse();
                }
                catch (AbortCompilation abortCompilation) {
                    this.lastAct = 12446;
                    int n = this.nestedType;
                    this.nestedMethod[n] = this.nestedMethod[n] - 1;
                    break block12;
                }
            }
            catch (Throwable throwable) {
                int n = this.nestedType;
                this.nestedMethod[n] = this.nestedMethod[n] - 1;
                throw throwable;
            }
            int n = this.nestedType;
            this.nestedMethod[n] = this.nestedMethod[n] - 1;
        }
        if (this.lastAct == 12446) {
            md.bits |= 0x80000;
            return;
        }
        md.explicitDeclarations = this.realBlockStack[this.realBlockPtr--];
        if ((length = this.astLengthStack[this.astLengthPtr--]) != 0) {
            md.statements = new Statement[length];
            System.arraycopy(this.astStack, (this.astPtr -= length) + 1, md.statements, 0, length);
        } else if (!this.containsComment(md.bodyStart, md.bodyEnd)) {
            md.bits |= 8;
        }
    }

    protected void popElement(int kind) {
        if (this.elementPtr < 0 || this.elementKindStack[this.elementPtr] != kind) {
            return;
        }
        this.previousKind = this.elementKindStack[this.elementPtr];
        this.previousInfo = this.elementInfoStack[this.elementPtr];
        this.previousObjectInfo = this.elementObjectInfoStack[this.elementPtr];
        this.elementObjectInfoStack[this.elementPtr] = null;
        --this.elementPtr;
    }

    protected void popUntilElement(int kind) {
        if (this.elementPtr < 0) {
            return;
        }
        int i = this.elementPtr;
        while (i >= 0 && this.elementKindStack[i] != kind) {
            --i;
        }
        if (i >= 0) {
            if (i < this.elementPtr) {
                this.previousKind = this.elementKindStack[i + 1];
                this.previousInfo = this.elementInfoStack[i + 1];
                this.previousObjectInfo = this.elementObjectInfoStack[i + 1];
                int j = i + 1;
                while (j <= this.elementPtr) {
                    this.elementObjectInfoStack[j] = null;
                    ++j;
                }
            }
            this.elementPtr = i;
        }
    }

    protected void prepareForBlockStatements() {
        this.nestedType = 0;
        this.nestedMethod[0] = 1;
        this.variablesCounter[this.nestedType] = 0;
        this.realBlockPtr = 1;
        this.realBlockStack[1] = 0;
        int fieldInitializerIndex = this.lastIndexOfElement(516);
        int methodIndex = this.lastIndexOfElement(515);
        if (methodIndex == fieldInitializerIndex) {
            this.flushElementStack();
        } else if (methodIndex > fieldInitializerIndex) {
            this.popUntilElement(515);
        } else {
            this.popUntilElement(516);
        }
    }

    protected void prepareForHeaders() {
        this.nestedType = 0;
        this.nestedMethod[0] = 0;
        this.variablesCounter[this.nestedType] = 0;
        this.realBlockPtr = 0;
        this.realBlockStack[0] = 0;
        this.popUntilElement(514);
        if (this.topKnownElementKind(512) != 514) {
            this.flushElementStack();
        }
    }

    protected void pushOnElementStack(int kind) {
        this.pushOnElementStack(kind, 0, null);
    }

    protected void pushOnElementStack(int kind, int info) {
        this.pushOnElementStack(kind, info, null);
    }

    protected void pushOnElementStack(int kind, int info, Object objectInfo) {
        if (this.elementPtr < -1) {
            return;
        }
        this.previousKind = 0;
        this.previousInfo = 0;
        this.previousObjectInfo = null;
        int stackLength = this.elementKindStack.length;
        if (++this.elementPtr >= stackLength) {
            this.elementKindStack = new int[stackLength + 255];
            System.arraycopy(this.elementKindStack, 0, this.elementKindStack, 0, stackLength);
            this.elementInfoStack = new int[stackLength + 255];
            System.arraycopy(this.elementInfoStack, 0, this.elementInfoStack, 0, stackLength);
            this.elementObjectInfoStack = new Object[stackLength + 255];
            System.arraycopy(this.elementObjectInfoStack, 0, this.elementObjectInfoStack, 0, stackLength);
        }
        this.elementKindStack[this.elementPtr] = kind;
        this.elementInfoStack[this.elementPtr] = info;
        this.elementObjectInfoStack[this.elementPtr] = objectInfo;
    }

    public void recoveryExitFromVariable() {
        if (this.currentElement != null && this.currentElement instanceof RecoveredField && !(this.currentElement instanceof RecoveredInitializer)) {
            RecoveredElement oldElement = this.currentElement;
            super.recoveryExitFromVariable();
            if (oldElement != this.currentElement) {
                this.popElement(516);
            }
        } else {
            super.recoveryExitFromVariable();
        }
    }

    public void recoveryTokenCheck() {
        RecoveredElement oldElement = this.currentElement;
        switch (this.currentToken) {
            case 68: {
                super.recoveryTokenCheck();
                if (!(this.currentElement instanceof RecoveredInitializer)) break;
                if (oldElement instanceof RecoveredField) {
                    this.popUntilElement(516);
                    this.popElement(516);
                }
                if (this.currentElement == oldElement || this.topKnownElementKind(512) == 515) break;
                this.pushOnElementStack(515);
                break;
            }
            case 31: {
                super.recoveryTokenCheck();
                if (this.currentElement == oldElement || this.isInsideAttributeValue()) break;
                if (oldElement instanceof RecoveredInitializer || oldElement instanceof RecoveredMethod || oldElement instanceof RecoveredBlock && oldElement.parent instanceof RecoveredInitializer || oldElement instanceof RecoveredBlock && oldElement.parent instanceof RecoveredMethod) {
                    this.popUntilElement(515);
                    this.popElement(515);
                    break;
                }
                if (!(oldElement instanceof RecoveredType)) break;
                this.popUntilElement(514);
                if (this.referenceContext instanceof CompilationUnitDeclaration && !this.isIndirectlyInsideFieldInitialization() && !(this.currentElement instanceof RecoveredUnit)) break;
                this.popElement(514);
                break;
            }
            default: {
                super.recoveryTokenCheck();
            }
        }
    }

    public void reset() {
        this.flushAssistState();
    }

    protected boolean resumeAfterRecovery() {
        this.astPtr = -1;
        this.astLengthPtr = -1;
        this.expressionPtr = -1;
        this.expressionLengthPtr = -1;
        this.identifierPtr = -1;
        this.identifierLengthPtr = -1;
        this.intPtr = -1;
        this.dimensions = 0;
        this.recoveredStaticInitializerStart = 0;
        this.genericsIdentifiersLengthPtr = -1;
        this.genericsLengthPtr = -1;
        this.genericsPtr = -1;
        this.modifiers = 0;
        this.modifiersSourceStart = -1;
        if (this.diet) {
            this.dietInt = 0;
        }
        if (!this.moveRecoveryCheckpoint()) {
            return false;
        }
        if (this.referenceContext instanceof CompilationUnitDeclaration || this.assistNode != null) {
            if (this.isInsideMethod() && this.isIndirectlyInsideFieldInitialization() && this.assistNode == null) {
                this.prepareForBlockStatements();
                this.goForBlockStatementsOrCatchHeader();
            } else {
                this.prepareForHeaders();
                this.goForHeaders();
                this.diet = true;
            }
            return true;
        }
        if (this.referenceContext instanceof AbstractMethodDeclaration || this.referenceContext instanceof TypeDeclaration) {
            if (this.currentElement instanceof RecoveredType) {
                this.prepareForHeaders();
                this.goForHeaders();
            } else {
                this.prepareForBlockStatements();
                this.goForBlockStatementsOrCatchHeader();
            }
            return true;
        }
        return false;
    }

    public abstract void setAssistIdentifier(char[] var1);

    protected int topKnownElementInfo(int owner) {
        return this.topKnownElementInfo(owner, 0);
    }

    protected int topKnownElementInfo(int owner, int offSet) {
        int i = this.elementPtr;
        while (i > -1) {
            if ((this.elementKindStack[i] & owner) != 0) {
                if (offSet <= 0) {
                    return this.elementInfoStack[i];
                }
                --offSet;
            }
            --i;
        }
        return 0;
    }

    protected int topKnownElementKind(int owner) {
        return this.topKnownElementKind(owner, 0);
    }

    protected int topKnownElementKind(int owner, int offSet) {
        int i = this.elementPtr;
        while (i > -1) {
            if ((this.elementKindStack[i] & owner) != 0) {
                if (offSet <= 0) {
                    return this.elementKindStack[i];
                }
                --offSet;
            }
            --i;
        }
        return 0;
    }

    protected Object topKnownElementObjectInfo(int owner, int offSet) {
        int i = this.elementPtr;
        while (i > -1) {
            if ((this.elementKindStack[i] & owner) != 0) {
                if (offSet <= 0) {
                    return this.elementObjectInfoStack[i];
                }
                --offSet;
            }
            --i;
        }
        return null;
    }

    protected Object topKnownElementObjectInfo(int owner) {
        return this.topKnownElementObjectInfo(owner, 0);
    }

    protected ASTNode wrapWithExplicitConstructorCallIfNeeded(ASTNode ast) {
        int selector;
        if (ast != null && this.topKnownElementKind(512) == 513 && ast instanceof Expression && ((selector = this.topKnownElementInfo(512)) == -1 || selector == -2)) {
            ExplicitConstructorCall call = new ExplicitConstructorCall(selector == -1 ? 3 : 2);
            call.arguments = new Expression[]{(Expression)ast};
            call.sourceStart = ast.sourceStart;
            call.sourceEnd = ast.sourceEnd;
            return call;
        }
        return ast;
    }
}

