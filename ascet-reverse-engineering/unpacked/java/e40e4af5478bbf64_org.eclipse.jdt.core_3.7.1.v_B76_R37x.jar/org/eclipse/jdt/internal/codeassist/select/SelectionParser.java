/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.impl.AssistParser;
import org.eclipse.jdt.internal.codeassist.select.SelectionJavadocParser;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnArgumentName;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnExplicitConstructorCall;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnFieldReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnFieldType;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnImportReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnLocalName;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnMessageSend;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnNameOfMemberValuePair;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnPackageReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnQualifiedAllocationExpression;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnQualifiedNameReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnQualifiedSuperReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnSingleNameReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnSuperReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionScanner;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.RecoveredType;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;

public class SelectionParser
extends AssistParser {
    protected static final int SELECTION_PARSER = 1024;
    protected static final int SELECTION_OR_ASSIST_PARSER = 1536;
    protected static final int K_BETWEEN_CASE_AND_COLON = 1025;
    protected static final int K_INSIDE_RETURN_STATEMENT = 1026;
    protected static final int K_CAST_STATEMENT = 1027;
    public ASTNode assistNodeParent;
    public int selectionStart;
    public int selectionEnd;
    public static final char[] SUPER = "super".toCharArray();
    public static final char[] THIS = "this".toCharArray();

    public SelectionParser(ProblemReporter problemReporter) {
        super(problemReporter);
        this.javadocParser.checkDocComment = true;
    }

    public char[] assistIdentifier() {
        return ((SelectionScanner)this.scanner).selectionIdentifier;
    }

    protected void attachOrphanCompletionNode() {
        if (this.isOrphanCompletionNode) {
            ASTNode orphan = this.assistNode;
            this.isOrphanCompletionNode = false;
            if (this.currentElement instanceof RecoveredType) {
                RecoveredType recoveredType = (RecoveredType)this.currentElement;
                if (recoveredType.foundOpeningBrace && orphan instanceof TypeReference) {
                    this.currentElement = this.currentElement.add(new SelectionOnFieldType((TypeReference)orphan), 0);
                    return;
                }
            }
            if (orphan instanceof Expression) {
                this.buildMoreCompletionContext((Expression)orphan);
            } else {
                Statement statement = (Statement)orphan;
                this.currentElement = this.currentElement.add(statement, 0);
            }
            this.currentToken = 0;
        }
    }

    private void buildMoreCompletionContext(Expression expression) {
        Statement parentNode = null;
        int kind = this.topKnownElementKind(1536);
        if (kind != 0) {
            int info = this.topKnownElementInfo(1536);
            switch (kind) {
                case 1025: {
                    if (this.expressionPtr <= 0) break;
                    SwitchStatement switchStatement = new SwitchStatement();
                    switchStatement.expression = this.expressionStack[this.expressionPtr - 1];
                    if (this.astLengthPtr > -1 && this.astPtr > -1) {
                        int length = this.astLengthStack[this.astLengthPtr];
                        int newAstPtr = this.astPtr - length;
                        ASTNode firstNode = this.astStack[newAstPtr + 1];
                        if (length != 0 && firstNode.sourceStart > switchStatement.expression.sourceEnd) {
                            switchStatement.statements = new Statement[length + 1];
                            System.arraycopy(this.astStack, newAstPtr + 1, switchStatement.statements, 0, length);
                        }
                    }
                    CaseStatement caseStatement = new CaseStatement(expression, expression.sourceStart, expression.sourceEnd);
                    if (switchStatement.statements == null) {
                        switchStatement.statements = new Statement[]{caseStatement};
                    } else {
                        switchStatement.statements[switchStatement.statements.length - 1] = caseStatement;
                    }
                    parentNode = switchStatement;
                    this.assistNodeParent = parentNode;
                    break;
                }
                case 1026: {
                    ReturnStatement returnStatement;
                    if (info != this.bracketDepth) break;
                    parentNode = returnStatement = new ReturnStatement(expression, expression.sourceStart, expression.sourceEnd);
                    this.assistNodeParent = parentNode;
                    break;
                }
                case 1027: {
                    Expression castType;
                    if (this.expressionPtr <= 0 || !((castType = this.expressionStack[this.expressionPtr - 1]) instanceof TypeReference)) break;
                    CastExpression cast = new CastExpression(expression, (TypeReference)castType);
                    cast.sourceStart = castType.sourceStart;
                    cast.sourceEnd = expression.sourceEnd;
                    parentNode = cast;
                    this.assistNodeParent = parentNode;
                }
            }
        }
        if (parentNode != null) {
            this.currentElement = this.currentElement.add(parentNode, 0);
        } else {
            this.currentElement = this.currentElement.add((Statement)this.wrapWithExplicitConstructorCallIfNeeded(expression), 0);
            if (this.lastCheckPoint < expression.sourceEnd) {
                this.lastCheckPoint = expression.sourceEnd + 1;
            }
        }
    }

    private boolean checkRecoveredType() {
        if (this.currentElement instanceof RecoveredType) {
            if (this.indexOfAssistIdentifier() < 0) {
                return false;
            }
            if (this.lastErrorEndPosition >= this.selectionStart && this.lastErrorEndPosition <= this.selectionEnd + 1) {
                return false;
            }
            RecoveredType recoveredType = (RecoveredType)this.currentElement;
            if (recoveredType.foundOpeningBrace) {
                this.assistNode = this.getTypeReference(0);
                this.lastCheckPoint = this.assistNode.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
        }
        return false;
    }

    protected void classInstanceCreation(boolean hasClassBody) {
        if (this.astLengthStack[this.astLengthPtr] == 1 && this.astStack[this.astPtr] == null) {
            int length;
            int index = this.indexOfAssistIdentifier();
            if (index < 0) {
                super.classInstanceCreation(hasClassBody);
                return;
            }
            if (this.identifierLengthPtr > -1 && this.identifierLengthStack[this.identifierLengthPtr] - 1 != index) {
                super.classInstanceCreation(hasClassBody);
                return;
            }
            --this.astPtr;
            --this.astLengthPtr;
            SelectionOnQualifiedAllocationExpression alloc = new SelectionOnQualifiedAllocationExpression();
            alloc.sourceEnd = this.endPosition;
            if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                this.expressionPtr -= length;
                alloc.arguments = new Expression[length];
                System.arraycopy(this.expressionStack, this.expressionPtr + 1, alloc.arguments, 0, length);
            }
            char[] oldIdent = this.assistIdentifier();
            this.setAssistIdentifier(null);
            alloc.type = this.getTypeReference(0);
            this.checkForDiamond(alloc.type);
            this.setAssistIdentifier(oldIdent);
            alloc.sourceStart = this.intStack[this.intPtr--];
            this.pushOnExpressionStack(alloc);
            this.assistNode = alloc;
            this.lastCheckPoint = alloc.sourceEnd + 1;
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
        } else {
            super.classInstanceCreation(hasClassBody);
        }
    }

    protected void consumeArrayCreationExpressionWithoutInitializer() {
        super.consumeArrayCreationExpressionWithoutInitializer();
        ArrayAllocationExpression alloc = (ArrayAllocationExpression)this.expressionStack[this.expressionPtr];
        if (alloc.type == this.assistNode) {
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
        }
    }

    protected void consumeArrayCreationExpressionWithInitializer() {
        super.consumeArrayCreationExpressionWithInitializer();
        ArrayAllocationExpression alloc = (ArrayAllocationExpression)this.expressionStack[this.expressionPtr];
        if (alloc.type == this.assistNode) {
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
        }
    }

    protected void consumeCastExpressionLL1() {
        this.popElement(1027);
        super.consumeCastExpressionLL1();
    }

    protected void consumeCastExpressionWithGenericsArray() {
        this.popElement(1027);
        super.consumeCastExpressionWithGenericsArray();
    }

    protected void consumeCastExpressionWithNameArray() {
        this.popElement(1027);
        super.consumeCastExpressionWithNameArray();
    }

    protected void consumeCastExpressionWithPrimitiveType() {
        this.popElement(1027);
        super.consumeCastExpressionWithPrimitiveType();
    }

    protected void consumeCastExpressionWithQualifiedGenericsArray() {
        this.popElement(1027);
        super.consumeCastExpressionWithQualifiedGenericsArray();
    }

    protected void consumeCatchFormalParameter() {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeCatchFormalParameter();
            if (!(this.diet && this.dietInt == 0 || this.astPtr <= -1)) {
                Argument argument = (Argument)this.astStack[this.astPtr];
                if (argument.type == this.assistNode) {
                    this.isOrphanCompletionNode = true;
                    this.restartRecovery = true;
                    this.lastIgnoredToken = -1;
                }
            }
        } else {
            int length;
            --this.identifierLengthPtr;
            char[] identifierName = this.identifierStack[this.identifierPtr];
            long namePositions = this.identifierPositionStack[this.identifierPtr--];
            --this.intPtr;
            TypeReference type = (TypeReference)this.astStack[this.astPtr--];
            int modifierPositions = this.intStack[this.intPtr--];
            --this.intPtr;
            SelectionOnArgumentName arg = new SelectionOnArgumentName(identifierName, namePositions, type, this.intStack[this.intPtr + 1] & 0xFFEFFFFF);
            arg.bits &= 0xFFFFFFFB;
            arg.declarationSourceStart = modifierPositions;
            if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                arg.annotations = new Annotation[length];
                System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, arg.annotations, 0, length);
            }
            this.pushOnAstStack(arg);
            this.assistNode = arg;
            this.lastCheckPoint = (int)namePositions;
            this.isOrphanCompletionNode = true;
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            ++this.listLength;
        }
    }

    protected void consumeClassInstanceCreationExpressionQualifiedWithTypeArguments() {
        int length = this.astLengthStack[this.astLengthPtr];
        if (length == 1 && this.astStack[this.astPtr] == null) {
            if (this.indexOfAssistIdentifier() < 0) {
                super.consumeClassInstanceCreationExpressionQualifiedWithTypeArguments();
                return;
            }
            --this.astPtr;
            --this.astLengthPtr;
            SelectionOnQualifiedAllocationExpression alloc = new SelectionOnQualifiedAllocationExpression();
            alloc.sourceEnd = this.endPosition;
            if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                this.expressionPtr -= length;
                alloc.arguments = new Expression[length];
                System.arraycopy(this.expressionStack, this.expressionPtr + 1, alloc.arguments, 0, length);
            }
            char[] oldIdent = this.assistIdentifier();
            this.setAssistIdentifier(null);
            alloc.type = this.getTypeReference(0);
            this.checkForDiamond(alloc.type);
            this.setAssistIdentifier(oldIdent);
            length = this.genericsLengthStack[this.genericsLengthPtr--];
            this.genericsPtr -= length;
            alloc.typeArguments = new TypeReference[length];
            System.arraycopy(this.genericsStack, this.genericsPtr + 1, alloc.typeArguments, 0, length);
            --this.intPtr;
            alloc.sourceStart = this.intStack[this.intPtr--];
            this.pushOnExpressionStack(alloc);
            this.assistNode = alloc;
            this.lastCheckPoint = alloc.sourceEnd + 1;
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
        } else {
            super.consumeClassInstanceCreationExpressionQualifiedWithTypeArguments();
        }
        --this.expressionLengthPtr;
        QualifiedAllocationExpression qae = (QualifiedAllocationExpression)this.expressionStack[this.expressionPtr--];
        qae.enclosingInstance = this.expressionStack[this.expressionPtr];
        this.expressionStack[this.expressionPtr] = qae;
        qae.sourceStart = qae.enclosingInstance.sourceStart;
    }

    protected void consumeClassInstanceCreationExpressionWithTypeArguments() {
        int length = this.astLengthStack[this.astLengthPtr];
        if (length == 1 && this.astStack[this.astPtr] == null) {
            if (this.indexOfAssistIdentifier() < 0) {
                super.consumeClassInstanceCreationExpressionWithTypeArguments();
                return;
            }
            --this.astPtr;
            --this.astLengthPtr;
            SelectionOnQualifiedAllocationExpression alloc = new SelectionOnQualifiedAllocationExpression();
            alloc.sourceEnd = this.endPosition;
            if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                this.expressionPtr -= length;
                alloc.arguments = new Expression[length];
                System.arraycopy(this.expressionStack, this.expressionPtr + 1, alloc.arguments, 0, length);
            }
            char[] oldIdent = this.assistIdentifier();
            this.setAssistIdentifier(null);
            alloc.type = this.getTypeReference(0);
            this.checkForDiamond(alloc.type);
            this.setAssistIdentifier(oldIdent);
            length = this.genericsLengthStack[this.genericsLengthPtr--];
            this.genericsPtr -= length;
            alloc.typeArguments = new TypeReference[length];
            System.arraycopy(this.genericsStack, this.genericsPtr + 1, alloc.typeArguments, 0, length);
            --this.intPtr;
            alloc.sourceStart = this.intStack[this.intPtr--];
            this.pushOnExpressionStack(alloc);
            this.assistNode = alloc;
            this.lastCheckPoint = alloc.sourceEnd + 1;
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
        } else {
            super.consumeClassInstanceCreationExpressionWithTypeArguments();
        }
    }

    protected void consumeEnterAnonymousClassBody(boolean qualified) {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeEnterAnonymousClassBody(qualified);
            return;
        }
        char[] oldIdent = this.assistIdentifier();
        this.setAssistIdentifier(null);
        TypeReference typeReference = this.getTypeReference(0);
        this.setAssistIdentifier(oldIdent);
        TypeDeclaration anonymousType = new TypeDeclaration(this.compilationUnit.compilationResult);
        anonymousType.name = CharOperation.NO_CHAR;
        anonymousType.bits |= 0x300;
        SelectionOnQualifiedAllocationExpression alloc = new SelectionOnQualifiedAllocationExpression(anonymousType);
        this.markEnclosingMemberWithLocalType();
        this.pushOnAstStack(anonymousType);
        alloc.sourceEnd = this.rParenPos;
        int argumentLength = this.expressionLengthStack[this.expressionLengthPtr--];
        if (argumentLength != 0) {
            this.expressionPtr -= argumentLength;
            alloc.arguments = new Expression[argumentLength];
            System.arraycopy(this.expressionStack, this.expressionPtr + 1, alloc.arguments, 0, argumentLength);
        }
        if (qualified) {
            --this.expressionLengthPtr;
            alloc.enclosingInstance = this.expressionStack[this.expressionPtr--];
        }
        alloc.type = typeReference;
        anonymousType.sourceEnd = alloc.sourceEnd;
        anonymousType.sourceStart = anonymousType.declarationSourceStart = alloc.type.sourceStart;
        alloc.sourceStart = this.intStack[this.intPtr--];
        this.pushOnExpressionStack(alloc);
        this.assistNode = alloc;
        this.lastCheckPoint = alloc.sourceEnd + 1;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
            this.currentToken = 0;
            this.hasReportedError = true;
        }
        anonymousType.bodyStart = this.scanner.currentPosition;
        this.listLength = 0;
        if (this.currentElement != null) {
            this.lastCheckPoint = anonymousType.bodyStart;
            this.currentElement = this.currentElement.add(anonymousType, 0);
            this.currentToken = 0;
            this.lastIgnoredToken = -1;
        }
    }

    protected void consumeEnterVariable() {
        super.consumeEnterVariable();
        AbstractVariableDeclaration variable = (AbstractVariableDeclaration)this.astStack[this.astPtr];
        if (variable.type == this.assistNode) {
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = false;
        }
    }

    protected void consumeExitVariableWithInitialization() {
        super.consumeExitVariableWithInitialization();
        AbstractVariableDeclaration variable = (AbstractVariableDeclaration)this.astStack[this.astPtr];
        int start = variable.initialization.sourceStart;
        int end = variable.initialization.sourceEnd;
        if (this.selectionStart < start && this.selectionEnd < start || this.selectionStart > end && this.selectionEnd > end) {
            variable.initialization = null;
        }
    }

    protected void consumeFieldAccess(boolean isSuperAccess) {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeFieldAccess(isSuperAccess);
            return;
        }
        SelectionOnFieldReference fieldReference = new SelectionOnFieldReference(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr--]);
        --this.identifierLengthPtr;
        if (isSuperAccess) {
            fieldReference.sourceStart = this.intStack[this.intPtr--];
            fieldReference.receiver = new SuperReference(fieldReference.sourceStart, this.endPosition);
            this.pushOnExpressionStack(fieldReference);
        } else {
            fieldReference.receiver = this.expressionStack[this.expressionPtr];
            if (fieldReference.receiver.isThis()) {
                fieldReference.sourceStart = fieldReference.receiver.sourceStart;
            }
            this.expressionStack[this.expressionPtr] = fieldReference;
        }
        this.assistNode = fieldReference;
        this.lastCheckPoint = fieldReference.sourceEnd + 1;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.isOrphanCompletionNode = true;
    }

    protected void consumeFormalParameter(boolean isVarArgs) {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeFormalParameter(isVarArgs);
            if (!(this.diet && this.dietInt == 0 || this.astPtr <= -1)) {
                Argument argument = (Argument)this.astStack[this.astPtr];
                if (argument.type == this.assistNode) {
                    this.isOrphanCompletionNode = true;
                    this.restartRecovery = true;
                    this.lastIgnoredToken = -1;
                }
            }
        } else {
            int length;
            --this.identifierLengthPtr;
            char[] identifierName = this.identifierStack[this.identifierPtr];
            long namePositions = this.identifierPositionStack[this.identifierPtr--];
            int extendedDimensions = this.intStack[this.intPtr--];
            int endOfEllipsis = 0;
            if (isVarArgs) {
                endOfEllipsis = this.intStack[this.intPtr--];
            }
            int firstDimensions = this.intStack[this.intPtr--];
            int typeDimensions = firstDimensions + extendedDimensions;
            TypeReference type = this.getTypeReference(typeDimensions);
            if (isVarArgs) {
                type = this.copyDims(type, typeDimensions + 1);
                if (extendedDimensions == 0) {
                    type.sourceEnd = endOfEllipsis;
                }
                type.bits |= 0x4000;
            }
            int modifierPositions = this.intStack[this.intPtr--];
            --this.intPtr;
            SelectionOnArgumentName arg = new SelectionOnArgumentName(identifierName, namePositions, type, this.intStack[this.intPtr + 1] & 0xFFEFFFFF);
            arg.declarationSourceStart = modifierPositions;
            if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                arg.annotations = new Annotation[length];
                System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, arg.annotations, 0, length);
            }
            this.pushOnAstStack(arg);
            this.assistNode = arg;
            this.lastCheckPoint = (int)namePositions;
            this.isOrphanCompletionNode = true;
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            ++this.listLength;
        }
    }

    protected void consumeInsideCastExpression() {
        super.consumeInsideCastExpression();
        this.pushOnElementStack(1027);
    }

    protected void consumeInsideCastExpressionLL1() {
        super.consumeInsideCastExpressionLL1();
        this.pushOnElementStack(1027);
    }

    protected void consumeInsideCastExpressionWithQualifiedGenerics() {
        super.consumeInsideCastExpressionWithQualifiedGenerics();
        this.pushOnElementStack(1027);
    }

    protected void consumeInstanceOfExpression() {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeInstanceOfExpression();
        } else {
            this.getTypeReference(this.intStack[this.intPtr--]);
            this.isOrphanCompletionNode = true;
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
    }

    protected void consumeInstanceOfExpressionWithName() {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeInstanceOfExpressionWithName();
        } else {
            this.getTypeReference(this.intStack[this.intPtr--]);
            this.isOrphanCompletionNode = true;
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
    }

    protected void consumeLocalVariableDeclarationStatement() {
        super.consumeLocalVariableDeclarationStatement();
        if (!this.diet) {
            LocalDeclaration localDeclaration = (LocalDeclaration)this.astStack[this.astPtr];
            if (this.selectionStart >= localDeclaration.sourceStart && this.selectionEnd <= localDeclaration.sourceEnd) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
        }
    }

    protected void consumeMarkerAnnotation() {
        int index = this.indexOfAssistIdentifier();
        if (index < 0) {
            super.consumeMarkerAnnotation();
            return;
        }
        MarkerAnnotation markerAnnotation = null;
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(index);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        TypeReference typeReference = index == 0 ? this.createSingleAssistTypeReference(this.assistIdentifier(), positions[0]) : this.createQualifiedAssistTypeReference(subset, this.assistIdentifier(), positions);
        this.assistNode = typeReference;
        this.lastCheckPoint = typeReference.sourceEnd + 1;
        markerAnnotation = new MarkerAnnotation(typeReference, this.intStack[this.intPtr--]);
        markerAnnotation.declarationSourceEnd = markerAnnotation.sourceEnd;
        this.pushOnExpressionStack(markerAnnotation);
    }

    protected void consumeMemberValuePair() {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeMemberValuePair();
            return;
        }
        char[] simpleName = this.identifierStack[this.identifierPtr];
        long position = this.identifierPositionStack[this.identifierPtr--];
        --this.identifierLengthPtr;
        int end = (int)position;
        int start = (int)(position >>> 32);
        Expression value = this.expressionStack[this.expressionPtr--];
        --this.expressionLengthPtr;
        SelectionOnNameOfMemberValuePair memberValuePair = new SelectionOnNameOfMemberValuePair(simpleName, start, end, value);
        this.pushOnAstStack(memberValuePair);
        this.assistNode = memberValuePair;
        this.lastCheckPoint = memberValuePair.sourceEnd + 1;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void consumeMethodInvocationName() {
        int accessMode;
        char[] selector = this.identifierStack[this.identifierPtr];
        if (selector != this.assistIdentifier()) {
            super.consumeMethodInvocationName();
            return;
        }
        if (CharOperation.equals(selector, SUPER)) {
            accessMode = 2;
        } else {
            if (!CharOperation.equals(selector, THIS)) {
                super.consumeMethodInvocationName();
                return;
            }
            accessMode = 3;
        }
        final SelectionOnExplicitConstructorCall constructorCall = new SelectionOnExplicitConstructorCall(accessMode);
        constructorCall.sourceEnd = this.rParenPos;
        constructorCall.sourceStart = (int)(this.identifierPositionStack[this.identifierPtr] >>> 32);
        int length = this.expressionLengthStack[this.expressionLengthPtr--];
        if (length != 0) {
            this.expressionPtr -= length;
            constructorCall.arguments = new Expression[length];
            System.arraycopy(this.expressionStack, this.expressionPtr + 1, constructorCall.arguments, 0, length);
        }
        if (!this.diet) {
            this.pushOnAstStack(constructorCall);
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        } else {
            this.pushOnExpressionStack(new Expression(){

                public TypeBinding resolveType(BlockScope scope) {
                    constructorCall.resolve(scope);
                    return null;
                }

                public StringBuffer printExpression(int indent, StringBuffer output) {
                    return output;
                }
            });
        }
        this.assistNode = constructorCall;
        this.lastCheckPoint = constructorCall.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void consumeMethodInvocationPrimary() {
        int accessMode;
        char[] selector = this.identifierStack[this.identifierPtr];
        if (selector != this.assistIdentifier()) {
            super.consumeMethodInvocationPrimary();
            return;
        }
        if (CharOperation.equals(selector, SUPER)) {
            accessMode = 2;
        } else {
            if (!CharOperation.equals(selector, THIS)) {
                super.consumeMethodInvocationPrimary();
                return;
            }
            accessMode = 3;
        }
        final SelectionOnExplicitConstructorCall constructorCall = new SelectionOnExplicitConstructorCall(accessMode);
        constructorCall.sourceEnd = this.rParenPos;
        int length = this.expressionLengthStack[this.expressionLengthPtr--];
        if (length != 0) {
            this.expressionPtr -= length;
            constructorCall.arguments = new Expression[length];
            System.arraycopy(this.expressionStack, this.expressionPtr + 1, constructorCall.arguments, 0, length);
        }
        constructorCall.qualification = this.expressionStack[this.expressionPtr--];
        constructorCall.sourceStart = constructorCall.qualification.sourceStart;
        if (!this.diet) {
            this.pushOnAstStack(constructorCall);
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        } else {
            this.pushOnExpressionStack(new Expression(){

                public TypeBinding resolveType(BlockScope scope) {
                    constructorCall.resolve(scope);
                    return null;
                }

                public StringBuffer printExpression(int indent, StringBuffer output) {
                    return output;
                }
            });
        }
        this.assistNode = constructorCall;
        this.lastCheckPoint = constructorCall.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
    }

    protected void consumeNormalAnnotation() {
        int index = this.indexOfAssistIdentifier();
        if (index < 0) {
            super.consumeNormalAnnotation();
            return;
        }
        NormalAnnotation normalAnnotation = null;
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(index);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        TypeReference typeReference = index == 0 ? this.createSingleAssistTypeReference(this.assistIdentifier(), positions[0]) : this.createQualifiedAssistTypeReference(subset, this.assistIdentifier(), positions);
        this.assistNode = typeReference;
        this.lastCheckPoint = typeReference.sourceEnd + 1;
        normalAnnotation = new NormalAnnotation(typeReference, this.intStack[this.intPtr--]);
        length = this.astLengthStack[this.astLengthPtr--];
        if (length != 0) {
            normalAnnotation.memberValuePairs = new MemberValuePair[length];
            System.arraycopy(this.astStack, (this.astPtr -= length) + 1, normalAnnotation.memberValuePairs, 0, length);
        }
        normalAnnotation.declarationSourceEnd = this.rParenPos;
        this.pushOnExpressionStack(normalAnnotation);
    }

    protected void consumeSingleMemberAnnotation() {
        int index = this.indexOfAssistIdentifier();
        if (index < 0) {
            super.consumeSingleMemberAnnotation();
            return;
        }
        SingleMemberAnnotation singleMemberAnnotation = null;
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(index);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        TypeReference typeReference = index == 0 ? this.createSingleAssistTypeReference(this.assistIdentifier(), positions[0]) : this.createQualifiedAssistTypeReference(subset, this.assistIdentifier(), positions);
        this.assistNode = typeReference;
        this.lastCheckPoint = typeReference.sourceEnd + 1;
        singleMemberAnnotation = new SingleMemberAnnotation(typeReference, this.intStack[this.intPtr--]);
        singleMemberAnnotation.memberValue = this.expressionStack[this.expressionPtr--];
        --this.expressionLengthPtr;
        singleMemberAnnotation.declarationSourceEnd = this.rParenPos;
        this.pushOnExpressionStack(singleMemberAnnotation);
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

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void consumeToken(int token) {
        super.consumeToken(token);
        if (!this.isInsideMethod() && !this.isInsideFieldInitialization()) return;
        switch (token) {
            case 102: {
                this.pushOnElementStack(1025);
                return;
            }
            case 65: {
                if (this.topKnownElementKind(1536) != 1025) return;
                this.popElement(1025);
                return;
            }
            case 80: {
                this.pushOnElementStack(1026, this.bracketDepth);
                return;
            }
            case 27: {
                switch (this.topKnownElementKind(1536)) {
                    case 1026: {
                        if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                        this.popElement(1026);
                    }
                }
            }
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

    public ImportReference createAssistImportReference(char[][] tokens, long[] positions, int mod) {
        return new SelectionOnImportReference(tokens, positions, mod);
    }

    public ImportReference createAssistPackageReference(char[][] tokens, long[] positions) {
        return new SelectionOnPackageReference(tokens, positions);
    }

    protected JavadocParser createJavadocParser() {
        return new SelectionJavadocParser(this);
    }

    protected LocalDeclaration createLocalDeclaration(char[] assistName, int sourceStart, int sourceEnd) {
        if (this.indexOfAssistIdentifier() < 0) {
            return super.createLocalDeclaration(assistName, sourceStart, sourceEnd);
        }
        SelectionOnLocalName local = new SelectionOnLocalName(assistName, sourceStart, sourceEnd);
        this.assistNode = local;
        this.lastCheckPoint = sourceEnd + 1;
        return local;
    }

    public NameReference createQualifiedAssistNameReference(char[][] previousIdentifiers, char[] assistName, long[] positions) {
        return new SelectionOnQualifiedNameReference(previousIdentifiers, assistName, positions);
    }

    public TypeReference createQualifiedAssistTypeReference(char[][] previousIdentifiers, char[] assistName, long[] positions) {
        return new SelectionOnQualifiedTypeReference(previousIdentifiers, assistName, positions);
    }

    public TypeReference createParameterizedQualifiedAssistTypeReference(char[][] tokens, TypeReference[][] typeArguments, char[] assistname, TypeReference[] assistTypeArguments, long[] positions) {
        return new SelectionOnParameterizedQualifiedTypeReference(tokens, assistname, typeArguments, assistTypeArguments, positions);
    }

    public NameReference createSingleAssistNameReference(char[] assistName, long position) {
        return new SelectionOnSingleNameReference(assistName, position);
    }

    public TypeReference createSingleAssistTypeReference(char[] assistName, long position) {
        return new SelectionOnSingleTypeReference(assistName, position);
    }

    public TypeReference createParameterizedSingleAssistTypeReference(TypeReference[] typeArguments, char[] assistName, long position) {
        return new SelectionOnParameterizedSingleTypeReference(assistName, typeArguments, position);
    }

    public CompilationUnitDeclaration dietParse(ICompilationUnit sourceUnit, CompilationResult compilationResult, int start, int end) {
        this.selectionStart = start;
        this.selectionEnd = end;
        SelectionScanner selectionScanner = (SelectionScanner)this.scanner;
        selectionScanner.selectionIdentifier = null;
        selectionScanner.selectionStart = start;
        selectionScanner.selectionEnd = end;
        return this.dietParse(sourceUnit, compilationResult);
    }

    protected NameReference getUnspecifiedReference() {
        int completionIndex = this.indexOfAssistIdentifier();
        if (completionIndex < 0) {
            return super.getUnspecifiedReference();
        }
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        if (CharOperation.equals(this.assistIdentifier(), SUPER)) {
            ThisReference reference;
            if (completionIndex > 0) {
                this.identifierLengthStack[this.identifierLengthPtr] = completionIndex;
                int ptr = this.identifierPtr -= length - completionIndex;
                this.pushOnGenericsLengthStack(0);
                this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                reference = new SelectionOnQualifiedSuperReference(this.getTypeReference(0), (int)(this.identifierPositionStack[ptr + 1] >>> 32), (int)this.identifierPositionStack[ptr + 1]);
            } else {
                this.identifierPtr -= length;
                --this.identifierLengthPtr;
                reference = new SelectionOnSuperReference((int)(this.identifierPositionStack[this.identifierPtr + 1] >>> 32), (int)this.identifierPositionStack[this.identifierPtr + 1]);
            }
            this.pushOnAstStack(reference);
            this.assistNode = reference;
            this.lastCheckPoint = reference.sourceEnd + 1;
            if (!this.diet || this.dietInt != 0) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
            return new SingleNameReference(CharOperation.NO_CHAR, 0L);
        }
        char[][] subset = this.identifierSubSet(completionIndex);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        NameReference nameReference = completionIndex == 0 ? this.createSingleAssistNameReference(this.assistIdentifier(), positions[0]) : this.createQualifiedAssistNameReference(subset, this.assistIdentifier(), positions);
        this.assistNode = nameReference;
        this.lastCheckPoint = nameReference.sourceEnd + 1;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.isOrphanCompletionNode = true;
        return nameReference;
    }

    protected NameReference getUnspecifiedReferenceOptimized() {
        int index = this.indexOfAssistIdentifier();
        NameReference reference = super.getUnspecifiedReferenceOptimized();
        if (index >= 0) {
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
        }
        return reference;
    }

    public void initializeScanner() {
        this.scanner = new SelectionScanner(this.options.sourceLevel);
    }

    protected MessageSend newMessageSend() {
        int length;
        char[] selector = this.identifierStack[this.identifierPtr];
        if (selector != this.assistIdentifier()) {
            return super.newMessageSend();
        }
        SelectionOnMessageSend messageSend = new SelectionOnMessageSend();
        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
            this.expressionPtr -= length;
            messageSend.arguments = new Expression[length];
            System.arraycopy(this.expressionStack, this.expressionPtr + 1, messageSend.arguments, 0, length);
        }
        this.assistNode = messageSend;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.isOrphanCompletionNode = true;
        return messageSend;
    }

    protected MessageSend newMessageSendWithTypeArguments() {
        int length;
        char[] selector = this.identifierStack[this.identifierPtr];
        if (selector != this.assistIdentifier()) {
            return super.newMessageSendWithTypeArguments();
        }
        SelectionOnMessageSend messageSend = new SelectionOnMessageSend();
        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
            this.expressionPtr -= length;
            messageSend.arguments = new Expression[length];
            System.arraycopy(this.expressionStack, this.expressionPtr + 1, messageSend.arguments, 0, length);
        }
        this.assistNode = messageSend;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.isOrphanCompletionNode = true;
        return messageSend;
    }

    public CompilationUnitDeclaration parse(ICompilationUnit sourceUnit, CompilationResult compilationResult, int start, int end) {
        if (end == -1) {
            return super.parse(sourceUnit, compilationResult, start, end);
        }
        this.selectionStart = start;
        this.selectionEnd = end;
        SelectionScanner selectionScanner = (SelectionScanner)this.scanner;
        selectionScanner.selectionIdentifier = null;
        selectionScanner.selectionStart = start;
        selectionScanner.selectionEnd = end;
        return super.parse(sourceUnit, compilationResult, -1, -1);
    }

    protected boolean resumeAfterRecovery() {
        if (this.assistNode != null && !(this.referenceContext instanceof CompilationUnitDeclaration)) {
            this.currentElement.preserveEnclosingBlocks();
            if (this.currentElement.enclosingType() == null) {
                if (!(this.currentElement instanceof RecoveredType)) {
                    this.resetStacks();
                    return false;
                }
                RecoveredType recoveredType = (RecoveredType)this.currentElement;
                if (recoveredType.typeDeclaration != null && recoveredType.typeDeclaration.allocation == this.assistNode) {
                    this.resetStacks();
                    return false;
                }
            }
        }
        return super.resumeAfterRecovery();
    }

    public void selectionIdentifierCheck() {
        if (this.checkRecoveredType()) {
            return;
        }
    }

    public void setAssistIdentifier(char[] assistIdent) {
        ((SelectionScanner)this.scanner).selectionIdentifier = assistIdent;
    }

    protected void updateRecoveryState() {
        this.currentElement.updateFromParserState();
        this.selectionIdentifierCheck();
        this.attachOrphanCompletionNode();
        if (this.assistNode != null && this.currentElement != null) {
            this.currentElement.preserveEnclosingBlocks();
        }
        this.recoveryTokenCheck();
    }

    public String toString() {
        String s = Util.EMPTY_STRING;
        s = String.valueOf(s) + "elementKindStack : int[] = {";
        int i = 0;
        while (i <= this.elementPtr) {
            s = String.valueOf(s) + String.valueOf(this.elementKindStack[i]) + ",";
            ++i;
        }
        s = String.valueOf(s) + "}\n";
        s = String.valueOf(s) + "elementInfoStack : int[] = {";
        i = 0;
        while (i <= this.elementPtr) {
            s = String.valueOf(s) + String.valueOf(this.elementInfoStack[i]) + ",";
            ++i;
        }
        s = String.valueOf(s) + "}\n";
        return String.valueOf(s) + super.toString();
    }
}

