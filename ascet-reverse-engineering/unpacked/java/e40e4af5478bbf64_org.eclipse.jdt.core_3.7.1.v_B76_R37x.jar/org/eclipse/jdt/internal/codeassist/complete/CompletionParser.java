/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import java.util.HashSet;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionJavadocParser;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeDetector;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnAnnotationMemberValuePair;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnAnnotationOfType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnArgumentName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnBranchStatementLabel;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnClassLiteralAccess;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnExplicitConstructorCall;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnImportReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword1;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword2;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword3;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnLocalName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMarkerAnnotationName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMemberAccess;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMemberValueName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMessageSend;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMessageSendName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodReturnType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodTypeParameter;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnPackageReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedAllocationExpression;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnStringLiteral;
import org.eclipse.jdt.internal.codeassist.complete.CompletionScanner;
import org.eclipse.jdt.internal.codeassist.impl.AssistParser;
import org.eclipse.jdt.internal.codeassist.impl.Keywords;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.AssertStatement;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.EmptyStatement;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ForStatement;
import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.OR_OR_Expression;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.PrefixExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;
import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.ast.WhileStatement;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.RecoveredBlock;
import org.eclipse.jdt.internal.compiler.parser.RecoveredElement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredField;
import org.eclipse.jdt.internal.compiler.parser.RecoveredInitializer;
import org.eclipse.jdt.internal.compiler.parser.RecoveredLocalVariable;
import org.eclipse.jdt.internal.compiler.parser.RecoveredMethod;
import org.eclipse.jdt.internal.compiler.parser.RecoveredType;
import org.eclipse.jdt.internal.compiler.parser.RecoveredUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.compiler.util.Util;

public class CompletionParser
extends AssistParser {
    protected static final int COMPLETION_PARSER = 1024;
    protected static final int COMPLETION_OR_ASSIST_PARSER = 1536;
    protected static final int K_BLOCK_DELIMITER = 1025;
    protected static final int K_SELECTOR_INVOCATION_TYPE = 1026;
    protected static final int K_SELECTOR_QUALIFIER = 1027;
    protected static final int K_BETWEEN_CATCH_AND_RIGHT_PAREN = 1028;
    protected static final int K_NEXT_TYPEREF_IS_CLASS = 1029;
    protected static final int K_NEXT_TYPEREF_IS_INTERFACE = 1030;
    protected static final int K_NEXT_TYPEREF_IS_EXCEPTION = 1031;
    protected static final int K_BETWEEN_NEW_AND_LEFT_BRACKET = 1032;
    protected static final int K_INSIDE_THROW_STATEMENT = 1033;
    protected static final int K_INSIDE_RETURN_STATEMENT = 1034;
    protected static final int K_CAST_STATEMENT = 1035;
    protected static final int K_LOCAL_INITIALIZER_DELIMITER = 1036;
    protected static final int K_ARRAY_INITIALIZER = 1037;
    protected static final int K_ARRAY_CREATION = 1038;
    protected static final int K_UNARY_OPERATOR = 1039;
    protected static final int K_BINARY_OPERATOR = 1040;
    protected static final int K_ASSISGNMENT_OPERATOR = 1041;
    protected static final int K_CONDITIONAL_OPERATOR = 1042;
    protected static final int K_BETWEEN_IF_AND_RIGHT_PAREN = 1043;
    protected static final int K_BETWEEN_WHILE_AND_RIGHT_PAREN = 1044;
    protected static final int K_BETWEEN_FOR_AND_RIGHT_PAREN = 1045;
    protected static final int K_BETWEEN_SWITCH_AND_RIGHT_PAREN = 1046;
    protected static final int K_BETWEEN_SYNCHRONIZED_AND_RIGHT_PAREN = 1047;
    protected static final int K_INSIDE_ASSERT_STATEMENT = 1048;
    protected static final int K_SWITCH_LABEL = 1049;
    protected static final int K_BETWEEN_CASE_AND_COLON = 1050;
    protected static final int K_BETWEEN_DEFAULT_AND_COLON = 1051;
    protected static final int K_BETWEEN_LEFT_AND_RIGHT_BRACKET = 1052;
    protected static final int K_EXTENDS_KEYWORD = 1053;
    protected static final int K_PARAMETERIZED_METHOD_INVOCATION = 1054;
    protected static final int K_PARAMETERIZED_ALLOCATION = 1055;
    protected static final int K_PARAMETERIZED_CAST = 1056;
    protected static final int K_BETWEEN_ANNOTATION_NAME_AND_RPAREN = 1057;
    protected static final int K_INSIDE_BREAK_STATEMENT = 1058;
    protected static final int K_INSIDE_CONTINUE_STATEMENT = 1059;
    protected static final int K_LABEL = 1060;
    protected static final int K_MEMBER_VALUE_ARRAY_INITIALIZER = 1061;
    protected static final int K_CONTROL_STATEMENT_DELIMITER = 1062;
    protected static final int K_INSIDE_ASSERT_EXCEPTION = 1063;
    protected static final int K_INSIDE_FOR_CONDITIONAL = 1064;
    protected static final int K_BETWEEN_INSTANCEOF_AND_RPAREN = 1065;
    public static final char[] FAKE_TYPE_NAME = new char[]{' '};
    public static final char[] FAKE_METHOD_NAME = new char[]{' '};
    public static final char[] FAKE_ARGUMENT_NAME = new char[]{' '};
    public static final char[] VALUE = new char[]{'v', 'a', 'l', 'u', 'e'};
    public int cursorLocation;
    public ASTNode assistNodeParent;
    public ASTNode enclosingNode;
    static final int IF = 1;
    static final int TRY = 2;
    static final int CATCH = 3;
    static final int WHILE = 4;
    static final int SWITCH = 5;
    static final int FOR = 6;
    static final int DO = 7;
    static final int SYNCHRONIZED = 8;
    static final int DEFAULT = 1;
    static final int EXPLICIT_RECEIVER = 0;
    static final int NO_RECEIVER = -1;
    static final int SUPER_RECEIVER = -2;
    static final int NAME_RECEIVER = -3;
    static final int ALLOCATION = -4;
    static final int QUALIFIED_ALLOCATION = -5;
    static final int QUESTION = 1;
    static final int COLON = 2;
    static final int LPAREN_NOT_CONSUMED = 1;
    static final int LPAREN_CONSUMED = 2;
    static final int ANNOTATION_NAME_COMPLETION = 4;
    static final int INSIDE_NAME = 1;
    int invocationType;
    int qualifier;
    boolean hasUnusedModifiers;
    int canBeExplicitConstructor = 0;
    static final int NO = 0;
    static final int NEXTTOKEN = 1;
    static final int YES = 2;
    protected static final int LabelStackIncrement = 10;
    char[][] labelStack = new char[10][];
    int labelPtr = -1;
    boolean isAlreadyAttached;
    public boolean record = false;
    public boolean skipRecord = false;
    public int recordFrom;
    public int recordTo;
    public int potentialVariableNamesPtr;
    public char[][] potentialVariableNames;
    public int[] potentialVariableNameStarts;
    public int[] potentialVariableNameEnds;
    CompletionOnAnnotationOfType pendingAnnotation;
    private boolean storeSourceEnds;
    public HashtableOfObjectToInt sourceEnds;

    public CompletionParser(ProblemReporter problemReporter, boolean storeExtraSourceEnds) {
        super(problemReporter);
        this.reportSyntaxErrorIsRequired = false;
        this.javadocParser.checkDocComment = true;
        this.annotationRecoveryActivated = false;
        if (storeExtraSourceEnds) {
            this.storeSourceEnds = true;
            this.sourceEnds = new HashtableOfObjectToInt();
        }
    }

    private void addPotentialName(char[] potentialVariableName, int start, int end) {
        int length = this.potentialVariableNames.length;
        if (this.potentialVariableNamesPtr >= length - 1) {
            char[][] cArrayArray = new char[length * 2][];
            this.potentialVariableNames = cArrayArray;
            System.arraycopy(this.potentialVariableNames, 0, cArrayArray, 0, length);
            this.potentialVariableNameStarts = new int[length * 2];
            System.arraycopy(this.potentialVariableNameStarts, 0, this.potentialVariableNameStarts, 0, length);
            this.potentialVariableNameEnds = new int[length * 2];
            System.arraycopy(this.potentialVariableNameEnds, 0, this.potentialVariableNameEnds, 0, length);
        }
        this.potentialVariableNames[++this.potentialVariableNamesPtr] = potentialVariableName;
        this.potentialVariableNameStarts[this.potentialVariableNamesPtr] = start;
        this.potentialVariableNameEnds[this.potentialVariableNamesPtr] = end;
    }

    public void startRecordingIdentifiers(int from, int to) {
        this.record = true;
        this.skipRecord = false;
        this.recordFrom = from;
        this.recordTo = to;
        this.potentialVariableNamesPtr = -1;
        this.potentialVariableNames = new char[10][];
        this.potentialVariableNameStarts = new int[10];
        this.potentialVariableNameEnds = new int[10];
    }

    public void stopRecordingIdentifiers() {
        this.record = true;
        this.skipRecord = false;
    }

    public char[] assistIdentifier() {
        return ((CompletionScanner)this.scanner).completionIdentifier;
    }

    protected void attachOrphanCompletionNode() {
        Expression expression;
        CompletionNodeDetector detector;
        ASTNode node;
        if (this.assistNode == null || this.isAlreadyAttached) {
            return;
        }
        this.isAlreadyAttached = true;
        if (this.isOrphanCompletionNode) {
            ASTNode orphan = this.assistNode;
            this.isOrphanCompletionNode = false;
            if (this.currentElement instanceof RecoveredUnit && orphan instanceof ImportReference) {
                this.currentElement.add((ImportReference)orphan, 0);
            }
            if (this.currentElement instanceof RecoveredType) {
                RecoveredType recoveredType = (RecoveredType)this.currentElement;
                if (recoveredType.foundOpeningBrace && orphan instanceof TypeReference) {
                    TypeReference fieldType;
                    int kind = this.topKnownElementKind(1536);
                    int info = this.topKnownElementInfo(1536);
                    if (kind == 1040 && info == 4 && this.identifierPtr > -1) {
                        if (this.genericsLengthStack[this.genericsLengthPtr] > 0) {
                            this.consumeTypeArguments();
                        }
                        this.pushOnGenericsStack(orphan);
                        this.consumeTypeArguments();
                        fieldType = this.getTypeReference(0);
                        this.assistNodeParent = fieldType;
                    } else {
                        fieldType = (TypeReference)orphan;
                    }
                    CompletionOnFieldType fieldDeclaration = new CompletionOnFieldType(fieldType, false);
                    int length = this.expressionLengthStack[this.expressionLengthPtr];
                    if (length != 0 && this.expressionStack[this.expressionPtr] instanceof Annotation) {
                        fieldDeclaration.annotations = new Annotation[length];
                        System.arraycopy(this.expressionStack, this.expressionPtr - length + 1, fieldDeclaration.annotations, 0, length);
                    }
                    if (this.intPtr >= 2 && this.intStack[this.intPtr - 1] == this.lastModifiersStart && this.intStack[this.intPtr - 2] == this.lastModifiers) {
                        fieldDeclaration.modifiersSourceStart = this.intStack[this.intPtr - 1];
                        fieldDeclaration.modifiers = this.intStack[this.intPtr - 2];
                    }
                    this.currentElement = this.currentElement.add(fieldDeclaration, 0);
                    return;
                }
            }
            if (this.currentElement instanceof RecoveredMethod) {
                RecoveredMethod recoveredMethod = (RecoveredMethod)this.currentElement;
                if (!recoveredMethod.foundOpeningBrace) {
                    if (orphan instanceof TypeReference) {
                        this.currentElement = this.currentElement.parent.add(new CompletionOnFieldType((TypeReference)orphan, true), 0);
                        return;
                    }
                    if (orphan instanceof Annotation) {
                        CompletionOnAnnotationOfType fakeType = new CompletionOnAnnotationOfType(FAKE_TYPE_NAME, this.compilationUnit.compilationResult(), (Annotation)orphan);
                        fakeType.isParameter = true;
                        this.currentElement.parent.add(fakeType, 0);
                        this.pendingAnnotation = fakeType;
                        return;
                    }
                }
            }
            if (orphan instanceof MemberValuePair) {
                this.buildMoreAnnotationCompletionContext((MemberValuePair)orphan);
                return;
            }
            if (orphan instanceof Annotation) {
                this.popUntilCompletedAnnotationIfNecessary();
                CompletionOnAnnotationOfType fakeType = new CompletionOnAnnotationOfType(FAKE_TYPE_NAME, this.compilationUnit.compilationResult(), (Annotation)orphan);
                this.currentElement.add(fakeType, 0);
                if (!this.isInsideAnnotation()) {
                    this.pendingAnnotation = fakeType;
                }
                return;
            }
            if (this.topKnownElementKind(1536) == 1028) {
                if (this.assistNode instanceof CompletionOnSingleTypeReference && ((CompletionOnSingleTypeReference)this.assistNode).isException()) {
                    this.buildMoreTryStatementCompletionContext((TypeReference)this.assistNode);
                    return;
                }
                if (this.assistNode instanceof CompletionOnQualifiedTypeReference && ((CompletionOnQualifiedTypeReference)this.assistNode).isException()) {
                    this.buildMoreTryStatementCompletionContext((TypeReference)this.assistNode);
                    return;
                }
                if (this.assistNode instanceof CompletionOnParameterizedQualifiedTypeReference && ((CompletionOnParameterizedQualifiedTypeReference)this.assistNode).isException()) {
                    this.buildMoreTryStatementCompletionContext((TypeReference)this.assistNode);
                    return;
                }
            }
            if (orphan instanceof Statement) {
                RecoveredMethod method = this.currentElement.enclosingMethod();
                if (method != null) {
                    AbstractMethodDeclaration methodDecl = method.methodDeclaration;
                    if (methodDecl.bodyStart == methodDecl.sourceEnd + 1 && Util.getLineNumber(orphan.sourceStart, this.scanner.lineEnds, 0, this.scanner.linePtr) == Util.getLineNumber(methodDecl.sourceEnd, this.scanner.lineEnds, 0, this.scanner.linePtr)) {
                        return;
                    }
                }
                this.currentElement = this.currentElement.add((Statement)orphan, 0);
                return;
            }
        }
        if (this.isInsideAnnotation()) {
            MemberValuePair memberValuePair;
            CompletionNodeDetector detector2;
            ASTNode node2;
            if (this.expressionPtr > -1) {
                MemberValuePair valuePair;
                Expression expression2 = this.expressionStack[this.expressionPtr];
                if (expression2 == this.assistNode) {
                    if (this.topKnownElementKind(1536) == 1061) {
                        ArrayInitializer arrayInitializer = new ArrayInitializer();
                        arrayInitializer.expressions = new Expression[]{expression2};
                        valuePair = new MemberValuePair(VALUE, expression2.sourceStart, expression2.sourceEnd, arrayInitializer);
                        this.buildMoreAnnotationCompletionContext(valuePair);
                    } else if (this.topKnownElementKind(1536) == 1057) {
                        if (expression2 instanceof SingleNameReference) {
                            SingleNameReference nameReference = (SingleNameReference)expression2;
                            CompletionOnMemberValueName memberValueName = new CompletionOnMemberValueName(nameReference.token, nameReference.sourceStart, nameReference.sourceEnd);
                            this.buildMoreAnnotationCompletionContext(memberValueName);
                            return;
                        }
                        if (expression2 instanceof QualifiedNameReference || expression2 instanceof StringLiteral) {
                            MemberValuePair valuePair2 = new MemberValuePair(VALUE, expression2.sourceStart, expression2.sourceEnd, expression2);
                            this.buildMoreAnnotationCompletionContext(valuePair2);
                        }
                    } else {
                        int index = this.lastIndexOfElement(517);
                        if (index != -1) {
                            int attributeIndentifierPtr = this.elementInfoStack[index];
                            int identLengthPtr = this.identifierLengthPtr;
                            int identPtr = this.identifierPtr;
                            while (attributeIndentifierPtr < identPtr) {
                                identPtr -= this.identifierLengthStack[identLengthPtr--];
                            }
                            if (attributeIndentifierPtr != identPtr) {
                                return;
                            }
                            this.identifierLengthPtr = identLengthPtr;
                            this.identifierPtr = identPtr;
                            --this.identifierLengthPtr;
                            MemberValuePair memberValuePair2 = new MemberValuePair(this.identifierStack[this.identifierPtr--], expression2.sourceStart, expression2.sourceEnd, expression2);
                            this.buildMoreAnnotationCompletionContext(memberValuePair2);
                            return;
                        }
                    }
                } else {
                    CompletionNodeDetector detector3 = new CompletionNodeDetector(this.assistNode, expression2);
                    if (detector3.containsCompletionNode()) {
                        valuePair = new MemberValuePair(VALUE, expression2.sourceStart, expression2.sourceEnd, expression2);
                        this.buildMoreAnnotationCompletionContext(valuePair);
                    }
                }
            }
            if (this.astPtr > -1 && (node2 = this.astStack[this.astPtr]) instanceof MemberValuePair && (detector2 = new CompletionNodeDetector(this.assistNode, memberValuePair = (MemberValuePair)node2)).containsCompletionNode()) {
                this.buildMoreAnnotationCompletionContext(memberValuePair);
                this.assistNodeParent = detector2.getCompletionNodeParent();
                return;
            }
        }
        if (this.genericsPtr > -1 && (node = this.genericsStack[this.genericsPtr]) instanceof Wildcard && ((Wildcard)node).bound == this.assistNode) {
            int info;
            int kind = this.topKnownElementKind(1536);
            if (kind == 1040 && (info = this.topKnownElementInfo(1536)) == 4) {
                this.buildMoreGenericsCompletionContext(node, true);
                return;
            }
            if (this.identifierLengthPtr > -1 && this.identifierLengthStack[this.identifierLengthPtr] != 0) {
                this.pushOnElementStack(1040, 4);
                this.buildMoreGenericsCompletionContext(node, false);
                return;
            }
        }
        if (this.currentElement instanceof RecoveredType || this.currentElement instanceof RecoveredMethod) {
            if (this.currentElement instanceof RecoveredType) {
                RecoveredType recoveredType = (RecoveredType)this.currentElement;
                if (recoveredType.foundOpeningBrace && this.genericsPtr > -1 && this.genericsStack[this.genericsPtr] instanceof TypeParameter) {
                    TypeParameter typeParameter = (TypeParameter)this.genericsStack[this.genericsPtr];
                    CompletionNodeDetector detector4 = new CompletionNodeDetector(this.assistNode, typeParameter);
                    if (detector4.containsCompletionNode()) {
                        this.currentElement.add(new CompletionOnMethodTypeParameter(new TypeParameter[]{typeParameter}, this.compilationUnit.compilationResult()), 0);
                    }
                    return;
                }
            }
            if (!this.isInsideMethod() && !this.isInsideFieldInitialization() && this.genericsPtr > -1 && this.genericsLengthPtr > -1 && this.genericsIdentifiersLengthPtr > -1) {
                int kind = this.topKnownElementKind(1536);
                int info = this.topKnownElementInfo(1536);
                if (kind == 1040 && info == 4) {
                    this.consumeTypeArguments();
                }
                int numberOfIdentifiers = this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr];
                int genPtr = this.genericsPtr;
                int i = 0;
                block1: while (i <= this.identifierLengthPtr && numberOfIdentifiers > 0) {
                    int identifierLength = this.identifierLengthStack[this.identifierLengthPtr - i];
                    int length = this.genericsLengthStack[this.genericsLengthPtr - i];
                    int j = 0;
                    while (j < length) {
                        ASTNode node3 = this.genericsStack[genPtr - j];
                        CompletionNodeDetector detector5 = new CompletionNodeDetector(this.assistNode, node3);
                        if (detector5.containsCompletionNode()) {
                            if (node3 == this.assistNode) {
                                if (this.identifierLengthPtr <= -1 || this.identifierLengthStack[this.identifierLengthPtr] == 0) break block1;
                                TypeReference ref = this.getTypeReference(0);
                                this.assistNodeParent = ref;
                                break block1;
                            }
                            this.assistNodeParent = detector5.getCompletionNodeParent();
                            break block1;
                        }
                        ++j;
                    }
                    genPtr -= length;
                    numberOfIdentifiers -= identifierLength;
                    ++i;
                }
                if (this.assistNodeParent != null && this.assistNodeParent instanceof TypeReference) {
                    this.currentElement = this.currentElement instanceof RecoveredType ? this.currentElement.add(new CompletionOnFieldType((TypeReference)this.assistNodeParent, false), 0) : this.currentElement.add((TypeReference)this.assistNodeParent, 0);
                }
            }
        }
        if (!(this.isInsideMethod() || this.isInsideFieldInitialization() || this.isInsideAttributeValue())) {
            return;
        }
        if (this.genericsPtr > -1 && (detector = new CompletionNodeDetector(this.assistNode, node = this.genericsStack[this.genericsPtr])).containsCompletionNode()) {
            RecoveredMethod method = this.currentElement.enclosingMethod();
            if (method != null) {
                AbstractMethodDeclaration methodDecl = method.methodDeclaration;
                if (methodDecl.bodyStart == methodDecl.sourceEnd + 1 && Util.getLineNumber(node.sourceStart, this.scanner.lineEnds, 0, this.scanner.linePtr) == Util.getLineNumber(methodDecl.sourceEnd, this.scanner.lineEnds, 0, this.scanner.linePtr)) {
                    return;
                }
            }
            if (node == this.assistNode) {
                this.buildMoreGenericsCompletionContext(node, true);
            }
        }
        if (this.expressionPtr > -1 && (detector = new CompletionNodeDetector(this.assistNode, expression = this.expressionStack[this.expressionPtr])).containsCompletionNode()) {
            RecoveredMethod method = this.currentElement.enclosingMethod();
            if (method != null) {
                AbstractMethodDeclaration methodDecl = method.methodDeclaration;
                if (methodDecl.bodyStart == methodDecl.sourceEnd + 1 && Util.getLineNumber(expression.sourceStart, this.scanner.lineEnds, 0, this.scanner.linePtr) == Util.getLineNumber(methodDecl.sourceEnd, this.scanner.lineEnds, 0, this.scanner.linePtr)) {
                    return;
                }
            }
            if (expression == this.assistNode || expression instanceof Assignment && ((Assignment)expression).expression == this.assistNode && (this.expressionPtr > 0 && this.stackHasInstanceOfExpression(this.expressionStack, this.expressionPtr - 1) || this.elementPtr >= 0 && this.stackHasInstanceOfExpression(this.elementObjectInfoStack, this.elementPtr)) || expression instanceof AllocationExpression && ((AllocationExpression)expression).type == this.assistNode || expression instanceof AND_AND_Expression && this.elementPtr >= 0 && this.elementObjectInfoStack[this.elementPtr] instanceof InstanceOfExpression) {
                this.buildMoreCompletionContext(expression);
                if (this.assistNodeParent == null && expression instanceof Assignment) {
                    this.assistNodeParent = detector.getCompletionNodeParent();
                }
                return;
            }
            this.assistNodeParent = detector.getCompletionNodeParent();
            this.currentElement = this.assistNodeParent != null ? this.currentElement.add((Statement)this.assistNodeParent, 0) : this.currentElement.add(expression, 0);
            return;
        }
        if (this.astPtr > -1 && this.astStack[this.astPtr] instanceof LocalDeclaration) {
            Statement enclosing;
            LocalDeclaration local = (LocalDeclaration)this.astStack[this.astPtr];
            if (local.initialization == this.assistNode && (enclosing = this.buildMoreCompletionEnclosingContext(local)) instanceof IfStatement && this.currentElement instanceof RecoveredBlock) {
                RecoveredBlock recoveredBlock = (RecoveredBlock)this.currentElement;
                recoveredBlock.statements[--recoveredBlock.statementCount] = null;
                this.currentElement = this.currentElement.add(enclosing, 0);
            }
        }
    }

    public Object becomeSimpleParser() {
        CompletionScanner completionScanner = (CompletionScanner)this.scanner;
        int[] parserState = new int[]{this.cursorLocation, completionScanner.cursorLocation};
        this.cursorLocation = Integer.MAX_VALUE;
        completionScanner.cursorLocation = Integer.MAX_VALUE;
        return parserState;
    }

    private void buildMoreAnnotationCompletionContext(MemberValuePair memberValuePair) {
        NormalAnnotation annotation;
        MemberValuePair[] memberValuePairs;
        int nodesToRemove;
        if (this.identifierPtr < 0 || this.identifierLengthPtr < 0) {
            return;
        }
        TypeReference typeReference = this.getAnnotationType();
        int n = nodesToRemove = this.astPtr > -1 && this.astStack[this.astPtr] == memberValuePair ? 1 : 0;
        if (memberValuePair instanceof CompletionOnMemberValueName) {
            int length;
            memberValuePairs = null;
            if (this.astLengthPtr > -1 && (length = this.astLengthStack[this.astLengthPtr--]) > nodesToRemove && this.astStack[this.astPtr] instanceof MemberValuePair) {
                memberValuePairs = new MemberValuePair[length - nodesToRemove];
                System.arraycopy(this.astStack, (this.astPtr -= length) + 1, memberValuePairs, 0, length - nodesToRemove);
            }
            annotation = new CompletionOnAnnotationMemberValuePair(typeReference, this.intStack[this.intPtr--], memberValuePairs, memberValuePair);
            this.assistNode = memberValuePair;
            this.assistNodeParent = annotation;
            if (memberValuePair.sourceEnd >= this.lastCheckPoint) {
                this.lastCheckPoint = memberValuePair.sourceEnd + 1;
            }
        } else {
            memberValuePairs = null;
            int length = 0;
            if (this.astLengthPtr > -1 && (length = this.astLengthStack[this.astLengthPtr--]) > nodesToRemove) {
                if (this.astStack[this.astPtr] instanceof MemberValuePair) {
                    memberValuePairs = new MemberValuePair[length - nodesToRemove + 1];
                    System.arraycopy(this.astStack, (this.astPtr -= length) + 1, memberValuePairs, 0, length - nodesToRemove);
                }
                if (memberValuePairs != null) {
                    memberValuePairs[length - nodesToRemove] = memberValuePair;
                } else {
                    memberValuePairs = new MemberValuePair[]{memberValuePair};
                }
            } else {
                memberValuePairs = new MemberValuePair[]{memberValuePair};
            }
            annotation = new NormalAnnotation(typeReference, this.intStack[this.intPtr--]);
            annotation.memberValuePairs = memberValuePairs;
        }
        CompletionOnAnnotationOfType fakeType = new CompletionOnAnnotationOfType(FAKE_TYPE_NAME, this.compilationUnit.compilationResult(), annotation);
        this.currentElement.add(fakeType, 0);
        this.pendingAnnotation = fakeType;
    }

    private void buildMoreCompletionContext(Expression expression) {
        Expression statement = expression;
        int kind = this.topKnownElementKind(1536);
        if (kind != 0) {
            int info = this.topKnownElementInfo(1536);
            switch (kind) {
                case 1027: {
                    int selector = this.topKnownElementInfo(1536, 2);
                    if (selector == -1 || selector == -2) {
                        ExplicitConstructorCall call = new ExplicitConstructorCall(selector == -1 ? 3 : 2);
                        call.arguments = new Expression[]{expression};
                        call.sourceStart = expression.sourceStart;
                        call.sourceEnd = expression.sourceEnd;
                        this.assistNodeParent = call;
                        break;
                    }
                    int invocType = this.topKnownElementInfo(1536, 1);
                    int qualifierExprPtr = info;
                    int length = this.expressionLengthStack[this.expressionLengthPtr];
                    if (this.expressionPtr > 0 && this.expressionLengthPtr > 0 && length == 1) {
                        int start = (int)(this.identifierPositionStack[selector] >>> 32);
                        if (this.expressionStack[this.expressionPtr - 1] != null && this.expressionStack[this.expressionPtr - 1].sourceStart > start) {
                            length += this.expressionLengthStack[this.expressionLengthPtr - 1];
                        }
                    }
                    Expression[] arguments = null;
                    if (length != 0) {
                        arguments = new Expression[length];
                        this.expressionPtr -= length;
                        System.arraycopy(this.expressionStack, this.expressionPtr + 1, arguments, 0, length - 1);
                        arguments[length - 1] = expression;
                    }
                    if (invocType != -4 && invocType != -5) {
                        MessageSend messageSend = new MessageSend();
                        messageSend.selector = this.identifierStack[selector];
                        messageSend.arguments = arguments;
                        switch (invocType) {
                            case -1: {
                                messageSend.receiver = ThisReference.implicitThis();
                                break;
                            }
                            case -3: {
                                while (this.identifierLengthPtr >= 0 && this.identifierLengthStack[this.identifierLengthPtr] < 0) {
                                    --this.identifierLengthPtr;
                                }
                                --this.identifierPtr;
                                if (this.genericsPtr > -1 && this.genericsLengthPtr > -1 && this.genericsLengthStack[this.genericsLengthPtr] > 0) {
                                    --this.identifierLengthPtr;
                                } else {
                                    int n = this.identifierLengthPtr;
                                    this.identifierLengthStack[n] = this.identifierLengthStack[n] - 1;
                                }
                                int identifierLength = this.identifierLengthStack[this.identifierLengthPtr];
                                if (this.identifierPtr > -1 && identifierLength > 0 && this.identifierPtr + 1 >= identifierLength) {
                                    messageSend.receiver = this.getUnspecifiedReference();
                                    break;
                                }
                                messageSend = null;
                                break;
                            }
                            case -2: {
                                messageSend.receiver = new SuperReference(0, 0);
                                break;
                            }
                            case 0: {
                                messageSend.receiver = this.expressionStack[qualifierExprPtr];
                                break;
                            }
                            default: {
                                messageSend.receiver = ThisReference.implicitThis();
                            }
                        }
                        this.assistNodeParent = messageSend;
                        break;
                    }
                    if (invocType == -4) {
                        AllocationExpression allocationExpr = new AllocationExpression();
                        allocationExpr.arguments = arguments;
                        this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                        this.pushOnGenericsLengthStack(0);
                        allocationExpr.type = this.getTypeReference(0);
                        this.assistNodeParent = allocationExpr;
                        break;
                    }
                    QualifiedAllocationExpression allocationExpr = new QualifiedAllocationExpression();
                    allocationExpr.enclosingInstance = this.expressionStack[qualifierExprPtr];
                    allocationExpr.arguments = arguments;
                    this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                    this.pushOnGenericsLengthStack(0);
                    allocationExpr.type = this.getTypeReference(0);
                    this.assistNodeParent = allocationExpr;
                    break;
                }
                case 1034: {
                    if (info != this.bracketDepth) break;
                    ReturnStatement returnStatement = new ReturnStatement(expression, expression.sourceStart, expression.sourceEnd);
                    this.assistNodeParent = returnStatement;
                    break;
                }
                case 1035: {
                    Expression castType;
                    if (this.expressionPtr <= 0 || !((castType = this.expressionStack[this.expressionPtr - 1]) instanceof TypeReference)) break;
                    CastExpression cast = new CastExpression(expression, (TypeReference)castType);
                    cast.sourceStart = castType.sourceStart;
                    cast.sourceEnd = expression.sourceEnd;
                    this.assistNodeParent = cast;
                    break;
                }
                case 1039: {
                    if (this.expressionPtr <= -1) break;
                    Expression operatorExpression = null;
                    switch (info) {
                        case 32: {
                            operatorExpression = new PrefixExpression(expression, IntLiteral.One, 14, expression.sourceStart);
                            break;
                        }
                        case 33: {
                            operatorExpression = new PrefixExpression(expression, IntLiteral.One, 13, expression.sourceStart);
                            break;
                        }
                        default: {
                            operatorExpression = new UnaryExpression(expression, info);
                        }
                    }
                    this.assistNodeParent = operatorExpression;
                    break;
                }
                case 1040: {
                    if (this.expressionPtr <= -1) break;
                    BinaryExpression operatorExpression = null;
                    Expression left = null;
                    if (this.expressionPtr == 0) {
                        if (this.identifierPtr > -1) {
                            left = this.getUnspecifiedReferenceOptimized();
                        }
                    } else {
                        int start;
                        left = this.expressionStack[this.expressionPtr - 1];
                        if (this.identifierPtr > -1 && left.sourceStart < (start = (int)(this.identifierPositionStack[this.identifierPtr] >>> 32))) {
                            left = this.getUnspecifiedReferenceOptimized();
                        }
                    }
                    if (left != null) {
                        switch (info) {
                            case 0: {
                                operatorExpression = new AND_AND_Expression(left, expression, info);
                                break;
                            }
                            case 1: {
                                operatorExpression = new OR_OR_Expression(left, expression, info);
                                break;
                            }
                            case 18: 
                            case 29: {
                                operatorExpression = new EqualExpression(left, expression, info);
                                break;
                            }
                            default: {
                                operatorExpression = new BinaryExpression(left, expression, info);
                            }
                        }
                    }
                    if (operatorExpression == null) break;
                    this.assistNodeParent = operatorExpression;
                    break;
                }
                case 1037: {
                    ArrayInitializer arrayInitializer = new ArrayInitializer();
                    arrayInitializer.expressions = new Expression[]{expression};
                    this.expressionPtr -= this.expressionLengthStack[this.expressionLengthPtr--];
                    if (this.expressionLengthPtr > -1 && this.expressionPtr > -1 && this.expressionStack[this.expressionPtr] != null && this.expressionStack[this.expressionPtr].sourceStart > info) {
                        --this.expressionLengthPtr;
                    }
                    if (this.topKnownElementKind(1536, 1) == 1038) {
                        ArrayAllocationExpression allocationExpression = new ArrayAllocationExpression();
                        this.pushOnGenericsLengthStack(0);
                        this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                        allocationExpression.type = this.getTypeReference(0);
                        allocationExpression.type.bits |= 0x40000000;
                        int length = this.expressionLengthStack[this.expressionLengthPtr];
                        allocationExpression.dimensions = new Expression[length];
                        allocationExpression.initializer = arrayInitializer;
                        this.assistNodeParent = allocationExpression;
                        break;
                    }
                    if (this.currentElement instanceof RecoveredField && !(this.currentElement instanceof RecoveredInitializer)) {
                        RecoveredField recoveredField = (RecoveredField)this.currentElement;
                        if (recoveredField.fieldDeclaration.type.dimensions() == 0) {
                            Block block = new Block(0);
                            block.sourceStart = info;
                            this.currentElement = this.currentElement.add(block, 1);
                            break;
                        }
                        statement = arrayInitializer;
                        break;
                    }
                    if (this.currentElement instanceof RecoveredLocalVariable) {
                        RecoveredLocalVariable recoveredLocalVariable = (RecoveredLocalVariable)this.currentElement;
                        if (recoveredLocalVariable.localDeclaration.type.dimensions() == 0) {
                            Block block = new Block(0);
                            block.sourceStart = info;
                            this.currentElement = this.currentElement.add(block, 1);
                            break;
                        }
                        statement = arrayInitializer;
                        break;
                    }
                    statement = arrayInitializer;
                    break;
                }
                case 1038: {
                    ArrayAllocationExpression allocationExpression = new ArrayAllocationExpression();
                    allocationExpression.type = this.getTypeReference(0);
                    allocationExpression.dimensions = new Expression[]{expression};
                    this.assistNodeParent = allocationExpression;
                    break;
                }
                case 1041: {
                    if (this.expressionPtr <= 0 || this.expressionStack[this.expressionPtr - 1] == null) break;
                    Assignment assignment = info == 30 ? new Assignment(this.expressionStack[this.expressionPtr - 1], expression, expression.sourceEnd) : new CompoundAssignment(this.expressionStack[this.expressionPtr - 1], expression, info, expression.sourceEnd);
                    this.assistNodeParent = assignment;
                    break;
                }
                case 1042: {
                    if (info == 1) {
                        if (this.expressionPtr <= 0) break;
                        --this.expressionPtr;
                        --this.expressionLengthPtr;
                        this.expressionStack[this.expressionPtr] = this.expressionStack[this.expressionPtr + 1];
                        this.popElement(1042);
                        this.buildMoreCompletionContext(expression);
                        return;
                    }
                    if (this.expressionPtr <= 1) break;
                    this.expressionPtr -= 2;
                    this.expressionLengthPtr -= 2;
                    this.expressionStack[this.expressionPtr] = this.expressionStack[this.expressionPtr + 2];
                    this.popElement(1042);
                    this.buildMoreCompletionContext(expression);
                    return;
                }
                case 1052: {
                    ArrayReference arrayReference = this.identifierPtr < 0 && this.expressionPtr > 0 && this.expressionStack[this.expressionPtr] == expression ? new ArrayReference(this.expressionStack[this.expressionPtr - 1], expression) : new ArrayReference(this.getUnspecifiedReferenceOptimized(), expression);
                    this.assistNodeParent = arrayReference;
                    break;
                }
                case 1050: {
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
                    this.assistNodeParent = switchStatement;
                    break;
                }
                case 1043: {
                    IfStatement ifStatement = new IfStatement(expression, new EmptyStatement(expression.sourceEnd, expression.sourceEnd), expression.sourceStart, expression.sourceEnd);
                    this.assistNodeParent = ifStatement;
                    break;
                }
                case 1044: {
                    WhileStatement whileStatement = new WhileStatement(expression, new EmptyStatement(expression.sourceEnd, expression.sourceEnd), expression.sourceStart, expression.sourceEnd);
                    this.assistNodeParent = whileStatement;
                    break;
                }
                case 1064: {
                    ForStatement forStatement = new ForStatement(new Statement[0], expression, new Statement[0], new EmptyStatement(expression.sourceEnd, expression.sourceEnd), false, expression.sourceStart, expression.sourceEnd);
                    this.assistNodeParent = forStatement;
                    break;
                }
                case 1046: {
                    SwitchStatement switchStatement = new SwitchStatement();
                    switchStatement.expression = expression;
                    switchStatement.statements = new Statement[0];
                    this.assistNodeParent = switchStatement;
                    break;
                }
                case 1047: {
                    SynchronizedStatement synchronizedStatement = new SynchronizedStatement(expression, new Block(0), expression.sourceStart, expression.sourceEnd);
                    this.assistNodeParent = synchronizedStatement;
                    break;
                }
                case 1033: {
                    if (info != this.bracketDepth) break;
                    ThrowStatement throwStatement = new ThrowStatement(expression, expression.sourceStart, expression.sourceEnd);
                    this.assistNodeParent = throwStatement;
                    break;
                }
                case 1048: {
                    if (info != this.bracketDepth) break;
                    AssertStatement assertStatement = new AssertStatement(expression, expression.sourceStart);
                    this.assistNodeParent = assertStatement;
                    break;
                }
                case 1063: {
                    if (info != this.bracketDepth) break;
                    AssertStatement assertStatement = new AssertStatement(expression, new TrueLiteral(expression.sourceStart, expression.sourceStart), expression.sourceStart);
                    this.assistNodeParent = assertStatement;
                }
            }
        }
        if (this.assistNodeParent != null) {
            this.currentElement = this.currentElement.add(this.buildMoreCompletionEnclosingContext((Statement)this.assistNodeParent), 0);
        } else if (this.currentElement instanceof RecoveredField && !(this.currentElement instanceof RecoveredInitializer) && ((RecoveredField)this.currentElement).fieldDeclaration.initialization == null) {
            this.assistNodeParent = ((RecoveredField)this.currentElement).fieldDeclaration;
            this.currentElement = this.currentElement.add(this.buildMoreCompletionEnclosingContext(statement), 0);
        } else if (this.currentElement instanceof RecoveredLocalVariable && ((RecoveredLocalVariable)this.currentElement).localDeclaration.initialization == null) {
            this.assistNodeParent = ((RecoveredLocalVariable)this.currentElement).localDeclaration;
            this.currentElement = this.currentElement.add(this.buildMoreCompletionEnclosingContext(statement), 0);
        } else {
            this.currentElement = this.currentElement.add(this.buildMoreCompletionEnclosingContext(expression), 0);
        }
    }

    /*
     * Unable to fully structure code
     */
    private Statement buildMoreCompletionEnclosingContext(Statement statement) {
        ifStatement = null;
        blockIndex = this.lastIndexOfElement(1025);
        controlIndex = this.lastIndexOfElement(1062);
        if (controlIndex != -1) {
            index = blockIndex != -1 && controlIndex < blockIndex ? blockIndex : controlIndex;
        } else {
            instanceOfIndex = this.lastIndexOfElement(1065);
            index = blockIndex != -1 && instanceOfIndex < blockIndex ? blockIndex : instanceOfIndex;
        }
        while (index >= 0) {
            if (index != -1 && this.elementInfoStack[index] == 1 && this.elementObjectInfoStack[index] != null) {
                condition = (Expression)this.elementObjectInfoStack[index];
                if (this.currentElement instanceof RecoveredLocalVariable && this.currentElement.parent instanceof RecoveredBlock) {
                    recoveredLocalVariable = (RecoveredLocalVariable)this.currentElement;
                    if (recoveredLocalVariable.localDeclaration.initialization == null && statement instanceof Expression && condition.sourceStart < recoveredLocalVariable.localDeclaration.sourceStart) {
                        this.currentElement.add(statement, 0);
                        statement = recoveredLocalVariable.updatedStatement(0, new HashSet<E>());
                        recoveredBlock = (RecoveredBlock)recoveredLocalVariable.parent;
                        recoveredBlock.statements[--recoveredBlock.statementCount] = null;
                        this.currentElement = recoveredBlock;
                    }
                }
                if (statement instanceof AND_AND_Expression && this.assistNode instanceof Statement) {
                    statement = (Statement)this.assistNode;
                }
                ifStatement = new IfStatement(condition, statement, condition.sourceStart, statement.sourceEnd);
                --index;
                break;
            }
            --index;
        }
        if (ifStatement != null) ** GOTO lbl34
        return statement;
lbl-1000:
        // 1 sources

        {
            if (this.elementInfoStack[index] == 1 && this.elementObjectInfoStack[index] instanceof InstanceOfExpression) {
                condition = (InstanceOfExpression)this.elementObjectInfoStack[index];
                ifStatement = new IfStatement(condition, ifStatement, condition.sourceStart, ifStatement.sourceEnd);
            }
            --index;
lbl34:
            // 2 sources

            ** while (index >= 0)
        }
lbl35:
        // 1 sources

        this.enclosingNode = ifStatement;
        return ifStatement;
    }

    private void buildMoreGenericsCompletionContext(ASTNode node, boolean consumeTypeArguments) {
        int kind = this.topKnownElementKind(1536);
        if (kind != 0) {
            int info = this.topKnownElementInfo(1536);
            block0 : switch (kind) {
                case 1040: {
                    int prevKind = this.topKnownElementKind(1536, 1);
                    switch (prevKind) {
                        case 1055: {
                            if (this.invocationType != -4 && this.invocationType != -5) break block0;
                            this.currentElement = this.currentElement.add((TypeReference)node, 0);
                            break block0;
                        }
                        case 1054: {
                            if (this.topKnownElementInfo(1536, 1) != 0) break;
                            this.currentElement = this.currentElement.add((TypeReference)node, 0);
                            break block0;
                        }
                    }
                    if (info != 4 || !(node instanceof TypeReference)) break;
                    if (this.identifierLengthPtr > -1 && this.identifierLengthStack[this.identifierLengthPtr] != 0) {
                        if (consumeTypeArguments) {
                            this.consumeTypeArguments();
                        }
                        TypeReference ref = this.getTypeReference(0);
                        if (prevKind == 1056) {
                            ref = this.computeQualifiedGenericsFromRightSide(ref, 0);
                        }
                        if (this.currentElement instanceof RecoveredType) {
                            this.currentElement = this.currentElement.add(new CompletionOnFieldType(ref, false), 0);
                            break;
                        }
                        if (prevKind == 1032) {
                            AllocationExpression exp;
                            if (this.expressionPtr > -1 && this.expressionStack[this.expressionPtr] instanceof AllocationExpression) {
                                exp = new QualifiedAllocationExpression();
                                exp.type = ref;
                                ((QualifiedAllocationExpression)exp).enclosingInstance = this.expressionStack[this.expressionPtr];
                            } else {
                                exp = new AllocationExpression();
                                exp.type = ref;
                            }
                            if (this.isInsideReturn()) {
                                ReturnStatement returnStatement = new ReturnStatement(exp, exp.sourceStart, exp.sourceEnd);
                                this.enclosingNode = returnStatement;
                                this.currentElement = this.currentElement.add(returnStatement, 0);
                                break;
                            }
                            if (this.currentElement instanceof RecoveredLocalVariable) {
                                if (((RecoveredLocalVariable)this.currentElement).localDeclaration.initialization != null) break;
                                this.enclosingNode = ((RecoveredLocalVariable)this.currentElement).localDeclaration;
                                this.currentElement = this.currentElement.add(exp, 0);
                                break;
                            }
                            if (this.currentElement instanceof RecoveredField) {
                                if (((RecoveredField)this.currentElement).fieldDeclaration.initialization != null) break;
                                this.enclosingNode = ((RecoveredField)this.currentElement).fieldDeclaration;
                                this.currentElement = this.currentElement.add(exp, 0);
                                break;
                            }
                            this.currentElement = this.currentElement.add(ref, 0);
                            break;
                        }
                        this.currentElement = this.currentElement.add(ref, 0);
                        break;
                    }
                    if (this.currentElement.enclosingMethod() == null || !this.currentElement.enclosingMethod().methodDeclaration.isConstructor()) break;
                    this.currentElement = this.currentElement.add((TypeReference)node, 0);
                }
            }
        }
    }

    private void buildMoreTryStatementCompletionContext(TypeReference exceptionRef) {
        if (this.astLengthPtr > 0 && this.astPtr > 2 && this.astStack[this.astPtr - 1] instanceof Block && this.astStack[this.astPtr - 2] instanceof Argument) {
            TryStatement tryStatement = new TryStatement();
            int newAstPtr = this.astPtr - 1;
            int length = this.astLengthStack[this.astLengthPtr - 1];
            tryStatement.catchBlocks = new Block[length + 1];
            Block[] bks = tryStatement.catchBlocks;
            tryStatement.catchArguments = new Argument[length + 1];
            Argument[] args = tryStatement.catchArguments;
            if (length != 0) {
                while (length-- > 0) {
                    bks[length] = (Block)this.astStack[newAstPtr--];
                    bks[length].statements = null;
                    args[length] = (Argument)this.astStack[newAstPtr--];
                }
            }
            bks[bks.length - 1] = new Block(0);
            if (this.astStack[this.astPtr] instanceof UnionTypeReference) {
                UnionTypeReference unionTypeReference = (UnionTypeReference)this.astStack[this.astPtr];
                args[args.length - 1] = new Argument(FAKE_ARGUMENT_NAME, 0L, unionTypeReference, 0);
            } else {
                args[args.length - 1] = new Argument(FAKE_ARGUMENT_NAME, 0L, exceptionRef, 0);
            }
            tryStatement.tryBlock = (Block)this.astStack[newAstPtr--];
            this.assistNodeParent = tryStatement;
            this.currentElement.add(tryStatement, 0);
        } else if (this.astLengthPtr > -1 && this.astPtr > 0 && this.astStack[this.astPtr - 1] instanceof Block) {
            TryStatement tryStatement = new TryStatement();
            int newAstPtr = this.astPtr - 1;
            tryStatement.catchBlocks = new Block[1];
            Block[] bks = tryStatement.catchBlocks;
            tryStatement.catchArguments = new Argument[1];
            Argument[] args = tryStatement.catchArguments;
            bks[0] = new Block(0);
            if (this.astStack[this.astPtr] instanceof UnionTypeReference) {
                UnionTypeReference unionTypeReference = (UnionTypeReference)this.astStack[this.astPtr];
                args[0] = new Argument(FAKE_ARGUMENT_NAME, 0L, unionTypeReference, 0);
            } else {
                args[0] = new Argument(FAKE_ARGUMENT_NAME, 0L, exceptionRef, 0);
            }
            tryStatement.tryBlock = (Block)this.astStack[newAstPtr--];
            this.assistNodeParent = tryStatement;
            this.currentElement.add(tryStatement, 0);
        } else {
            this.currentElement = this.currentElement.add(exceptionRef, 0);
        }
    }

    public int bodyEnd(AbstractMethodDeclaration method) {
        return this.cursorLocation;
    }

    public int bodyEnd(Initializer initializer) {
        return this.cursorLocation;
    }

    protected void checkAndSetModifiers(int flag) {
        super.checkAndSetModifiers(flag);
        if (this.isInsideMethod()) {
            this.hasUnusedModifiers = true;
        }
    }

    private boolean checkClassInstanceCreation() {
        if (this.topKnownElementKind(1536) == 1032) {
            TypeReference type;
            int length = this.identifierLengthStack[this.identifierLengthPtr];
            int numberOfIdentifiers = this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr];
            if (length != numberOfIdentifiers || this.genericsLengthStack[this.genericsLengthPtr] != 0) {
                return true;
            }
            if (this.invocationType == -4) {
                AllocationExpression allocExpr = new AllocationExpression();
                if (this.topKnownElementKind(1536, 1) == 1033 && this.topKnownElementInfo(1536, 1) == this.bracketDepth) {
                    this.pushOnElementStack(1031);
                    type = this.getTypeReference(0);
                    this.popElement(1031);
                } else {
                    type = this.getTypeReference(0);
                }
                if (type instanceof CompletionOnSingleTypeReference) {
                    ((CompletionOnSingleTypeReference)type).isConstructorType = true;
                } else if (type instanceof CompletionOnQualifiedTypeReference) {
                    ((CompletionOnQualifiedTypeReference)type).isConstructorType = true;
                }
                allocExpr.type = type;
                allocExpr.sourceStart = type.sourceStart;
                allocExpr.sourceEnd = type.sourceEnd;
                this.pushOnExpressionStack(allocExpr);
                this.isOrphanCompletionNode = false;
            } else {
                QualifiedAllocationExpression allocExpr = new QualifiedAllocationExpression();
                this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                this.pushOnGenericsLengthStack(0);
                if (this.topKnownElementKind(1536, 1) == 1033 && this.topKnownElementInfo(1536, 1) == this.bracketDepth) {
                    this.pushOnElementStack(1031);
                    type = this.getTypeReference(0);
                    this.popElement(1031);
                } else {
                    type = this.getTypeReference(0);
                }
                if (type instanceof CompletionOnSingleTypeReference) {
                    ((CompletionOnSingleTypeReference)type).isConstructorType = true;
                }
                allocExpr.type = type;
                allocExpr.enclosingInstance = this.expressionStack[this.qualifier];
                allocExpr.sourceStart = this.intStack[this.intPtr--];
                allocExpr.sourceEnd = type.sourceEnd;
                this.expressionStack[this.qualifier] = allocExpr;
                this.isOrphanCompletionNode = false;
            }
            this.assistNode = type;
            this.lastCheckPoint = type.sourceEnd + 1;
            this.popElement(1032);
            return true;
        }
        return false;
    }

    private boolean checkClassLiteralAccess() {
        if (this.identifierLengthPtr >= 1 && this.previousToken == 3) {
            int length = this.identifierLengthStack[this.identifierLengthPtr - 1];
            if (length < 0) {
                int dim = this.isAfterArrayType() ? this.intStack[this.intPtr--] : 0;
                SingleTypeReference typeRef = (SingleTypeReference)TypeReference.baseTypeReference(-length, dim);
                typeRef.sourceStart = this.intStack[this.intPtr--];
                if (dim == 0) {
                    typeRef.sourceEnd = this.intStack[this.intPtr--];
                } else {
                    --this.intPtr;
                    typeRef.sourceEnd = this.endPosition;
                }
                char[] source = this.identifierStack[this.identifierPtr];
                long pos = this.identifierPositionStack[this.identifierPtr--];
                --this.identifierLengthPtr;
                CompletionOnClassLiteralAccess access = new CompletionOnClassLiteralAccess(pos, (TypeReference)typeRef);
                access.completionIdentifier = source;
                --this.identifierLengthPtr;
                this.assistNode = access;
                this.isOrphanCompletionNode = true;
                return true;
            }
            if (this.isAfterArrayType()) {
                char[] source = this.identifierStack[this.identifierPtr];
                long pos = this.identifierPositionStack[this.identifierPtr--];
                --this.identifierLengthPtr;
                this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                this.pushOnGenericsLengthStack(0);
                TypeReference typeRef = this.getTypeReference(this.intStack[this.intPtr--]);
                CompletionOnClassLiteralAccess access = new CompletionOnClassLiteralAccess(pos, typeRef);
                access.completionIdentifier = source;
                this.assistNode = access;
                this.isOrphanCompletionNode = true;
                return true;
            }
        }
        return false;
    }

    private boolean checkKeyword() {
        if (this.currentElement instanceof RecoveredUnit) {
            RecoveredUnit unit = (RecoveredUnit)this.currentElement;
            int index = -1;
            index = this.indexOfAssistIdentifier();
            if (index > -1) {
                int ptr = this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr] + index + 1;
                char[] ident = this.identifierStack[ptr];
                long pos = this.identifierPositionStack[ptr];
                char[][] keywords = new char[41][];
                int count = 0;
                if (unit.typeCount == 0 && this.lastModifiers == 0) {
                    keywords[count++] = Keywords.IMPORT;
                }
                if (unit.typeCount == 0 && unit.importCount == 0 && this.lastModifiers == 0 && this.compilationUnit.currentPackage == null) {
                    keywords[count++] = Keywords.PACKAGE;
                }
                if ((this.lastModifiers & 1) == 0) {
                    boolean hasNoPublicType = true;
                    int i = 0;
                    while (i < unit.typeCount) {
                        if ((unit.types[i].typeDeclaration.modifiers & 1) != 0) {
                            hasNoPublicType = false;
                        }
                        ++i;
                    }
                    if (hasNoPublicType) {
                        keywords[count++] = Keywords.PUBLIC;
                    }
                }
                if ((this.lastModifiers & 0x400) == 0 && (this.lastModifiers & 0x10) == 0) {
                    keywords[count++] = Keywords.ABSTRACT;
                }
                if ((this.lastModifiers & 0x400) == 0 && (this.lastModifiers & 0x10) == 0) {
                    keywords[count++] = Keywords.FINAL;
                }
                keywords[count++] = Keywords.CLASS;
                if (this.options.complianceLevel >= 0x310000L) {
                    keywords[count++] = Keywords.ENUM;
                }
                if ((this.lastModifiers & 0x10) == 0) {
                    keywords[count++] = Keywords.INTERFACE;
                }
                if (count != 0) {
                    char[][] cArrayArray = keywords;
                    keywords = new char[count][];
                    System.arraycopy(cArrayArray, 0, keywords, 0, count);
                    this.assistNode = new CompletionOnKeyword2(ident, pos, keywords);
                    this.lastCheckPoint = this.assistNode.sourceEnd + 1;
                    this.isOrphanCompletionNode = true;
                    return true;
                }
            }
        }
        return false;
    }

    private boolean checkInstanceofKeyword() {
        int ptr;
        int index;
        int kind;
        if (this.isInsideMethod() && (kind = this.topKnownElementKind(1536)) != 1025 && (index = this.indexOfAssistIdentifier()) > -1 && this.expressionPtr > -1 && this.expressionLengthStack[this.expressionPtr] == 1 && this.identifierStack[ptr = this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr] + index + 1].length > 0 && CharOperation.prefixEquals(this.identifierStack[ptr], Keywords.INSTANCEOF)) {
            this.assistNode = new CompletionOnKeyword3(this.identifierStack[ptr], this.identifierPositionStack[ptr], Keywords.INSTANCEOF);
            this.lastCheckPoint = this.assistNode.sourceEnd + 1;
            this.isOrphanCompletionNode = true;
            return true;
        }
        return false;
    }

    private boolean checkInvocation() {
        Expression topExpression = this.expressionPtr >= 0 ? this.expressionStack[this.expressionPtr] : null;
        boolean isEmptyNameCompletion = false;
        boolean isEmptyAssistIdentifier = false;
        if (this.topKnownElementKind(1536) == 1027 && ((isEmptyNameCompletion = topExpression == this.assistNode && this.isEmptyNameCompletion()) || (isEmptyAssistIdentifier = this.indexOfAssistIdentifier() >= 0 && this.identifierStack[this.identifierPtr].length == 0))) {
            if (isEmptyNameCompletion) {
                --this.expressionPtr;
                int n = this.expressionLengthPtr;
                this.expressionLengthStack[n] = this.expressionLengthStack[n] - 1;
            } else if (isEmptyAssistIdentifier) {
                --this.identifierPtr;
                --this.identifierLengthPtr;
            }
            int invocType = this.topKnownElementInfo(1536, 1);
            int qualifierExprPtr = this.topKnownElementInfo(1536);
            int numArgs = this.expressionPtr - qualifierExprPtr;
            int argStart = qualifierExprPtr + 1;
            Expression[] arguments = null;
            if (numArgs > 0) {
                arguments = new Expression[numArgs];
                System.arraycopy(this.expressionStack, argStart, arguments, 0, numArgs);
                this.expressionPtr -= numArgs;
                int count = numArgs;
                while (count > 0) {
                    count -= this.expressionLengthStack[this.expressionLengthPtr--];
                }
            }
            if (invocType != -4 && invocType != -5) {
                CompletionOnMessageSend messageSend = new CompletionOnMessageSend();
                messageSend.arguments = arguments;
                switch (invocType) {
                    case -1: {
                        messageSend.receiver = ThisReference.implicitThis();
                        break;
                    }
                    case -3: {
                        while (this.identifierLengthPtr >= 0 && this.identifierLengthStack[this.identifierLengthPtr] < 0) {
                            --this.identifierLengthPtr;
                        }
                        --this.identifierPtr;
                        if (this.genericsPtr > -1 && this.genericsLengthPtr > -1 && this.genericsLengthStack[this.genericsLengthPtr] > 0) {
                            --this.identifierLengthPtr;
                        } else {
                            int n = this.identifierLengthPtr;
                            this.identifierLengthStack[n] = this.identifierLengthStack[n] - 1;
                        }
                        messageSend.receiver = this.getUnspecifiedReference();
                        break;
                    }
                    case -2: {
                        messageSend.receiver = new SuperReference(0, 0);
                        break;
                    }
                    case 0: {
                        messageSend.receiver = this.expressionStack[qualifierExprPtr];
                    }
                }
                int selectorPtr = this.topKnownElementInfo(1536, 2);
                messageSend.selector = this.identifierStack[selectorPtr];
                if (this.identifierLengthPtr >= 0 && this.identifierLengthStack[this.identifierLengthPtr] == 1) {
                    --this.identifierPtr;
                    --this.identifierLengthPtr;
                }
                messageSend.sourceStart = (int)(this.identifierPositionStack[selectorPtr] >> 32);
                messageSend.sourceEnd = this.cursorLocation;
                this.assistNode = messageSend;
                this.lastCheckPoint = messageSend.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
            int selectorPtr = this.topKnownElementInfo(1536, 2);
            if (selectorPtr == -1 || selectorPtr == -2) {
                CompletionOnExplicitConstructorCall call = new CompletionOnExplicitConstructorCall(selectorPtr == -1 ? 3 : 2);
                call.arguments = arguments;
                if (invocType == -5) {
                    call.qualification = this.expressionStack[qualifierExprPtr];
                }
                call.sourceStart = this.cursorLocation + 1;
                call.sourceEnd = this.cursorLocation;
                this.assistNode = call;
                this.lastCheckPoint = call.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
            CompletionOnQualifiedAllocationExpression allocExpr = new CompletionOnQualifiedAllocationExpression();
            allocExpr.arguments = arguments;
            if (this.genericsLengthPtr < 0) {
                this.pushOnGenericsLengthStack(0);
                this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
            }
            allocExpr.type = super.getTypeReference(0);
            if (invocType == -5) {
                allocExpr.enclosingInstance = this.expressionStack[qualifierExprPtr];
            }
            allocExpr.sourceStart = this.cursorLocation + 1;
            allocExpr.sourceEnd = this.cursorLocation;
            this.assistNode = allocExpr;
            this.lastCheckPoint = allocExpr.sourceEnd + 1;
            this.isOrphanCompletionNode = true;
            return true;
        }
        return false;
    }

    private boolean checkLabelStatement() {
        if (this.isInsideMethod() || this.isInsideFieldInitialization()) {
            int kind = this.topKnownElementKind(1536);
            if (kind != 1058 && kind != 1059) {
                return false;
            }
            if (this.indexOfAssistIdentifier() != 0) {
                return false;
            }
            char[][] labels = new char[this.labelPtr + 1][];
            int labelCount = 0;
            int labelKind = kind;
            int index = 1;
            while (labelKind != 0 && labelKind != 515) {
                labelKind = this.topKnownElementKind(1536, index);
                if (labelKind == 1060) {
                    int ptr = this.topKnownElementInfo(1536, index);
                    labels[labelCount++] = this.labelStack[ptr];
                }
                ++index;
            }
            char[][] cArrayArray = labels;
            labels = new char[labelCount][];
            System.arraycopy(cArrayArray, 0, labels, 0, labelCount);
            long position = this.identifierPositionStack[this.identifierPtr];
            CompletionOnBranchStatementLabel statementLabel = new CompletionOnBranchStatementLabel(kind == 1058 ? 1 : 2, this.identifierStack[this.identifierPtr--], (int)(position >>> 32), (int)position, labels);
            this.assistNode = statementLabel;
            this.lastCheckPoint = this.assistNode.sourceEnd + 1;
            this.isOrphanCompletionNode = true;
            return true;
        }
        return false;
    }

    private boolean checkMemberAccess() {
        if (this.previousToken == 3 && this.qualifier > -1 && this.expressionPtr == this.qualifier) {
            if (this.identifierLengthPtr > 1 && this.identifierLengthStack[this.identifierLengthPtr - 1] < 0) {
                return false;
            }
            this.pushCompletionOnMemberAccessOnExpressionStack(false);
            return true;
        }
        return false;
    }

    private boolean checkNameCompletion() {
        this.assistNode = this.getUnspecifiedReferenceOptimized();
        this.lastCheckPoint = this.assistNode.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
        if (this.hasUnusedModifiers && this.assistNode instanceof CompletionOnSingleNameReference) {
            ((CompletionOnSingleNameReference)this.assistNode).isPrecededByModifiers = true;
        }
        return true;
    }

    private boolean checkParemeterizedMethodName() {
        if (this.topKnownElementKind(1536) == 1054 && this.topKnownElementInfo(1536) == 1 && this.identifierLengthPtr > -1 && this.genericsLengthPtr > -1 && this.genericsIdentifiersLengthPtr == -1) {
            CompletionOnMessageSendName m = null;
            switch (this.invocationType) {
                case -1: 
                case 0: {
                    if (this.expressionPtr <= -1 || this.expressionLengthStack[this.expressionLengthPtr] != 1) break;
                    char[] selector = this.identifierStack[this.identifierPtr];
                    long position = this.identifierPositionStack[this.identifierPtr--];
                    --this.identifierLengthPtr;
                    int end = (int)position;
                    int start = (int)(position >>> 32);
                    m = new CompletionOnMessageSendName(selector, start, end);
                    int length = this.genericsLengthStack[this.genericsLengthPtr--];
                    this.genericsPtr -= length;
                    m.typeArguments = new TypeReference[length];
                    System.arraycopy(this.genericsStack, this.genericsPtr + 1, m.typeArguments, 0, length);
                    --this.intPtr;
                    m.receiver = this.expressionStack[this.expressionPtr--];
                    --this.expressionLengthPtr;
                    break;
                }
                case -3: {
                    if (this.identifierPtr <= 0) break;
                    char[] selector = this.identifierStack[this.identifierPtr];
                    long position = this.identifierPositionStack[this.identifierPtr--];
                    --this.identifierLengthPtr;
                    int end = (int)position;
                    int start = (int)(position >>> 32);
                    m = new CompletionOnMessageSendName(selector, start, end);
                    int length = this.genericsLengthStack[this.genericsLengthPtr--];
                    this.genericsPtr -= length;
                    m.typeArguments = new TypeReference[length];
                    System.arraycopy(this.genericsStack, this.genericsPtr + 1, m.typeArguments, 0, length);
                    --this.intPtr;
                    m.receiver = this.getUnspecifiedReference();
                    break;
                }
                case -2: {
                    char[] selector = this.identifierStack[this.identifierPtr];
                    long position = this.identifierPositionStack[this.identifierPtr--];
                    --this.identifierLengthPtr;
                    int end = (int)position;
                    int start = (int)(position >>> 32);
                    m = new CompletionOnMessageSendName(selector, start, end);
                    int length = this.genericsLengthStack[this.genericsLengthPtr--];
                    this.genericsPtr -= length;
                    m.typeArguments = new TypeReference[length];
                    System.arraycopy(this.genericsStack, this.genericsPtr + 1, m.typeArguments, 0, length);
                    --this.intPtr;
                    m.receiver = new SuperReference(start, end);
                }
            }
            if (m != null) {
                this.pushOnExpressionStack(m);
                this.assistNode = m;
                this.lastCheckPoint = this.assistNode.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
        }
        return false;
    }

    private boolean checkParemeterizedType() {
        if (this.identifierLengthPtr > -1 && this.genericsLengthPtr > -1 && this.genericsIdentifiersLengthPtr > -1) {
            int length = this.identifierLengthStack[this.identifierLengthPtr];
            int numberOfIdentifiers = this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr];
            if (length != numberOfIdentifiers || this.genericsLengthStack[this.genericsLengthPtr] != 0) {
                --this.genericsIdentifiersLengthPtr;
                --this.identifierLengthPtr;
                this.assistNode = this.getAssistTypeReferenceForGenericType(0, length, numberOfIdentifiers);
                this.lastCheckPoint = this.assistNode.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
            if (this.genericsPtr > -1 && this.genericsStack[this.genericsPtr] instanceof TypeReference) {
                --this.genericsIdentifiersLengthPtr;
                --this.identifierLengthPtr;
                this.assistNode = this.getAssistTypeReferenceForGenericType(0, length, ++numberOfIdentifiers);
                this.lastCheckPoint = this.assistNode.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
        }
        return false;
    }

    private boolean checkRecoveredMethod() {
        if (this.currentElement instanceof RecoveredMethod) {
            if (this.indexOfAssistIdentifier() < 0) {
                return false;
            }
            if (this.lastErrorEndPosition <= this.cursorLocation && Util.getLineNumber(this.lastErrorEndPosition, this.scanner.lineEnds, 0, this.scanner.linePtr) == Util.getLineNumber(((CompletionScanner)this.scanner).completedIdentifierStart, this.scanner.lineEnds, 0, this.scanner.linePtr)) {
                return false;
            }
            RecoveredMethod recoveredMethod = (RecoveredMethod)this.currentElement;
            if (!recoveredMethod.foundOpeningBrace && this.lastIgnoredToken == -1) {
                this.assistNode = this.getTypeReference(0);
                this.lastCheckPoint = this.assistNode.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
        }
        return false;
    }

    private boolean checkMemberValueName() {
        if (this.indexOfAssistIdentifier() < 0) {
            return false;
        }
        if (this.topKnownElementKind(1536) != 1057) {
            return false;
        }
        if (this.identifierPtr > -1 && this.identifierLengthPtr > -1 && this.identifierLengthStack[this.identifierLengthPtr] == 1) {
            char[] simpleName = this.identifierStack[this.identifierPtr];
            long position = this.identifierPositionStack[this.identifierPtr--];
            --this.identifierLengthPtr;
            int end = (int)position;
            int start = (int)(position >>> 32);
            CompletionOnMemberValueName memberValueName = new CompletionOnMemberValueName(simpleName, start, end);
            this.assistNode = memberValueName;
            this.lastCheckPoint = this.assistNode.sourceEnd + 1;
            this.isOrphanCompletionNode = true;
            return true;
        }
        return false;
    }

    private boolean checkRecoveredType() {
        if (this.currentElement instanceof RecoveredType) {
            if (this.indexOfAssistIdentifier() < 0) {
                return false;
            }
            if (this.lastErrorEndPosition <= this.cursorLocation && ((RecoveredType)this.currentElement).lastMemberEnd() < this.lastErrorEndPosition && Util.getLineNumber(this.lastErrorEndPosition, this.scanner.lineEnds, 0, this.scanner.linePtr) == Util.getLineNumber(((CompletionScanner)this.scanner).completedIdentifierStart, this.scanner.lineEnds, 0, this.scanner.linePtr)) {
                return false;
            }
            RecoveredType recoveredType = (RecoveredType)this.currentElement;
            if (recoveredType.foundOpeningBrace) {
                if (this.genericsIdentifiersLengthPtr < 0 && this.identifierPtr > -1 || this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr] <= this.identifierPtr) {
                    this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                    this.pushOnGenericsLengthStack(0);
                }
                this.assistNode = this.getTypeReference(0);
                this.lastCheckPoint = this.assistNode.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
            if (recoveredType.typeDeclaration.superclass == null && this.topKnownElementKind(1536) == 1053) {
                this.consumeClassOrInterfaceName();
                this.pushOnElementStack(1029);
                this.assistNode = this.getTypeReference(0);
                this.popElement(1029);
                this.lastCheckPoint = this.assistNode.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
        }
        return false;
    }

    private void classHeaderExtendsOrImplements(boolean isInterface) {
        if (this.currentElement != null && this.currentToken == 26 && this.cursorLocation + 1 >= this.scanner.startPosition && this.cursorLocation < this.scanner.currentPosition) {
            this.pushIdentifier();
            int index = -1;
            index = this.indexOfAssistIdentifier();
            if (index > -1) {
                int ptr = this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr] + index + 1;
                RecoveredType recoveredType = (RecoveredType)this.currentElement;
                if (!recoveredType.foundOpeningBrace) {
                    TypeDeclaration type = recoveredType.typeDeclaration;
                    if (!isInterface) {
                        char[][] keywords = new char[41][];
                        int count = 0;
                        if (type.superInterfaces == null) {
                            if (type.superclass == null) {
                                keywords[count++] = Keywords.EXTENDS;
                            }
                            keywords[count++] = Keywords.IMPLEMENTS;
                        }
                        char[][] cArrayArray = keywords;
                        keywords = new char[count][];
                        System.arraycopy(cArrayArray, 0, keywords, 0, count);
                        if (count > 0) {
                            CompletionOnKeyword1 completionOnKeyword = new CompletionOnKeyword1(this.identifierStack[ptr], this.identifierPositionStack[ptr], keywords);
                            completionOnKeyword.canCompleteEmptyToken = true;
                            type.superclass = completionOnKeyword;
                            type.superclass.bits |= 0x10;
                            this.assistNode = completionOnKeyword;
                            this.lastCheckPoint = completionOnKeyword.sourceEnd + 1;
                        }
                    } else if (type.superInterfaces == null) {
                        CompletionOnKeyword1 completionOnKeyword = new CompletionOnKeyword1(this.identifierStack[ptr], this.identifierPositionStack[ptr], Keywords.EXTENDS);
                        completionOnKeyword.canCompleteEmptyToken = true;
                        type.superInterfaces = new TypeReference[]{completionOnKeyword};
                        type.superInterfaces[0].bits |= 0x10;
                        this.assistNode = completionOnKeyword;
                        this.lastCheckPoint = completionOnKeyword.sourceEnd + 1;
                    }
                }
            }
        }
    }

    public void completionIdentifierCheck() {
        if (this.checkMemberValueName()) {
            return;
        }
        if (this.checkKeyword()) {
            return;
        }
        if (this.checkRecoveredType()) {
            return;
        }
        if (this.checkRecoveredMethod()) {
            return;
        }
        if (!(this.isInsideMethod() && !this.diet || this.isIndirectlyInsideFieldInitialization() || this.isInsideAttributeValue())) {
            return;
        }
        if (this.assistIdentifier() == null && this.currentToken == 26) {
            if (this.cursorLocation < this.scanner.startPosition && this.scanner.currentPosition == this.scanner.startPosition) {
                this.pushIdentifier();
            } else if (this.cursorLocation + 1 >= this.scanner.startPosition && this.cursorLocation < this.scanner.currentPosition) {
                this.pushIdentifier();
            }
        }
        if (this.assistNode != null && (!this.isEmptyNameCompletion() || this.checkInvocation())) {
            return;
        }
        if (this.indexOfAssistIdentifier() < 0) {
            return;
        }
        if (this.checkClassInstanceCreation()) {
            return;
        }
        if (this.checkMemberAccess()) {
            return;
        }
        if (this.checkClassLiteralAccess()) {
            return;
        }
        if (this.checkInstanceofKeyword()) {
            return;
        }
        if (this.checkInvocation()) {
            return;
        }
        if (this.checkParemeterizedType()) {
            return;
        }
        if (this.checkParemeterizedMethodName()) {
            return;
        }
        if (this.checkLabelStatement()) {
            return;
        }
        if (this.checkNameCompletion()) {
            return;
        }
    }

    protected void consumeArrayCreationExpressionWithInitializer() {
        super.consumeArrayCreationExpressionWithInitializer();
        this.popElement(1038);
    }

    protected void consumeArrayCreationExpressionWithoutInitializer() {
        super.consumeArrayCreationExpressionWithoutInitializer();
        this.popElement(1038);
    }

    protected void consumeArrayCreationHeader() {
    }

    protected void consumeAssignment() {
        this.popElement(1041);
        super.consumeAssignment();
    }

    protected void consumeAssignmentOperator(int pos) {
        super.consumeAssignmentOperator(pos);
        this.pushOnElementStack(1041, pos);
    }

    protected void consumeBinaryExpression(int op) {
        super.consumeBinaryExpression(op);
        this.popElement(1040);
        if (this.expressionStack[this.expressionPtr] instanceof BinaryExpression) {
            BinaryExpression exp = (BinaryExpression)this.expressionStack[this.expressionPtr];
            if (this.assistNode != null && exp.right == this.assistNode) {
                this.assistNodeParent = exp;
            }
        }
    }

    protected void consumeBinaryExpressionWithName(int op) {
        super.consumeBinaryExpressionWithName(op);
        this.popElement(1040);
        if (this.expressionStack[this.expressionPtr] instanceof BinaryExpression) {
            BinaryExpression exp = (BinaryExpression)this.expressionStack[this.expressionPtr];
            if (this.assistNode != null && exp.right == this.assistNode) {
                this.assistNodeParent = exp;
            }
        }
    }

    protected void consumeCaseLabel() {
        super.consumeCaseLabel();
        if (this.topKnownElementKind(1536) != 1049) {
            this.pushOnElementStack(1049);
        }
    }

    protected void consumeCastExpressionWithPrimitiveType() {
        this.popElement(1035);
        --this.expressionPtr;
        --this.expressionLengthPtr;
        Expression exp = this.expressionStack[this.expressionPtr + 1];
        TypeReference castType = (TypeReference)this.expressionStack[this.expressionPtr];
        CastExpression cast = new CastExpression(exp, castType);
        this.expressionStack[this.expressionPtr] = cast;
        cast.sourceStart = castType.sourceStart - 1;
        cast.sourceEnd = exp.sourceEnd;
    }

    protected void consumeCastExpressionWithGenericsArray() {
        this.popElement(1035);
        --this.expressionPtr;
        --this.expressionLengthPtr;
        Expression exp = this.expressionStack[this.expressionPtr + 1];
        TypeReference castType = (TypeReference)this.expressionStack[this.expressionPtr];
        CastExpression cast = new CastExpression(exp, castType);
        this.expressionStack[this.expressionPtr] = cast;
        cast.sourceStart = castType.sourceStart - 1;
        cast.sourceEnd = exp.sourceEnd;
    }

    protected void consumeCastExpressionWithQualifiedGenericsArray() {
        this.popElement(1035);
        --this.expressionPtr;
        --this.expressionLengthPtr;
        Expression exp = this.expressionStack[this.expressionPtr + 1];
        TypeReference castType = (TypeReference)this.expressionStack[this.expressionPtr];
        CastExpression cast = new CastExpression(exp, castType);
        this.expressionStack[this.expressionPtr] = cast;
        cast.sourceStart = castType.sourceStart - 1;
        cast.sourceEnd = exp.sourceEnd;
    }

    protected void consumeCastExpressionWithNameArray() {
        this.popElement(1035);
        --this.expressionPtr;
        --this.expressionLengthPtr;
        Expression exp = this.expressionStack[this.expressionPtr + 1];
        TypeReference castType = (TypeReference)this.expressionStack[this.expressionPtr];
        CastExpression cast = new CastExpression(exp, castType);
        this.expressionStack[this.expressionPtr] = cast;
        cast.sourceStart = castType.sourceStart - 1;
        cast.sourceEnd = exp.sourceEnd;
    }

    protected void consumeCastExpressionLL1() {
        this.popElement(1035);
        super.consumeCastExpressionLL1();
    }

    protected void consumeCatchFormalParameter() {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeCatchFormalParameter();
            if (this.pendingAnnotation != null) {
                this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
                this.pendingAnnotation = null;
            }
        } else {
            int length;
            --this.identifierLengthPtr;
            char[] identifierName = this.identifierStack[this.identifierPtr];
            long namePositions = this.identifierPositionStack[this.identifierPtr--];
            --this.intPtr;
            TypeReference type = (TypeReference)this.astStack[this.astPtr--];
            this.intPtr -= 2;
            CompletionOnArgumentName arg = new CompletionOnArgumentName(identifierName, namePositions, type, this.intStack[this.intPtr + 1] & 0xFFEFFFFF);
            arg.bits &= 0xFFFFFFFB;
            if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                arg.annotations = new Annotation[length];
                System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, arg.annotations, 0, length);
            }
            arg.isCatchArgument = this.topKnownElementKind(1536) == 1028;
            this.pushOnAstStack(arg);
            this.assistNode = arg;
            this.lastCheckPoint = (int)namePositions;
            this.isOrphanCompletionNode = true;
            ++this.listLength;
        }
    }

    protected void consumeClassBodyDeclaration() {
        this.popElement(1025);
        super.consumeClassBodyDeclaration();
        this.pendingAnnotation = null;
    }

    protected void consumeClassBodyopt() {
        this.popElement(1027);
        this.popElement(1026);
        super.consumeClassBodyopt();
    }

    protected void consumeClassDeclaration() {
        if (this.astPtr >= 0) {
            int length = this.astLengthStack[this.astLengthPtr];
            TypeDeclaration typeDeclaration = (TypeDeclaration)this.astStack[this.astPtr - length];
            this.javadoc = null;
            CompletionJavadocParser completionJavadocParser = (CompletionJavadocParser)this.javadocParser;
            completionJavadocParser.allPossibleTags = true;
            this.checkComment();
            if (this.javadoc != null && this.cursorLocation > this.javadoc.sourceStart && this.cursorLocation < this.javadoc.sourceEnd) {
                typeDeclaration.javadoc = this.javadoc;
            }
            completionJavadocParser.allPossibleTags = false;
        }
        super.consumeClassDeclaration();
    }

    protected void consumeClassHeaderName1() {
        super.consumeClassHeaderName1();
        this.hasUnusedModifiers = false;
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
        this.classHeaderExtendsOrImplements(false);
    }

    protected void consumeClassHeaderExtends() {
        TypeDeclaration typeDecl;
        this.pushOnElementStack(1029);
        super.consumeClassHeaderExtends();
        if (this.assistNode != null && this.assistNodeParent == null && (typeDecl = (TypeDeclaration)this.astStack[this.astPtr]) != null && typeDecl.superclass == this.assistNode) {
            this.assistNodeParent = typeDecl;
        }
        this.popElement(1029);
        this.popElement(1053);
        if (this.currentElement != null && this.currentToken == 26 && this.cursorLocation + 1 >= this.scanner.startPosition && this.cursorLocation < this.scanner.currentPosition) {
            this.pushIdentifier();
            int index = -1;
            index = this.indexOfAssistIdentifier();
            if (index > -1) {
                int ptr = this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr] + index + 1;
                RecoveredType recoveredType = (RecoveredType)this.currentElement;
                if (!recoveredType.foundOpeningBrace) {
                    TypeDeclaration type = recoveredType.typeDeclaration;
                    if (type.superInterfaces == null) {
                        type.superclass = new CompletionOnKeyword1(this.identifierStack[ptr], this.identifierPositionStack[ptr], Keywords.IMPLEMENTS);
                        type.superclass.bits |= 0x10;
                        this.assistNode = type.superclass;
                        this.lastCheckPoint = type.superclass.sourceEnd + 1;
                    }
                }
            }
        }
    }

    protected void consumeClassHeaderImplements() {
        TypeDeclaration typeDecl;
        super.consumeClassHeaderImplements();
        if (this.assistNode != null && this.assistNodeParent == null && (typeDecl = (TypeDeclaration)this.astStack[this.astPtr]) != null) {
            TypeReference[] superInterfaces = typeDecl.superInterfaces;
            int length = superInterfaces == null ? 0 : superInterfaces.length;
            int i = 0;
            while (i < length) {
                if (superInterfaces[i] == this.assistNode) {
                    this.assistNodeParent = typeDecl;
                }
                ++i;
            }
        }
    }

    protected void consumeClassTypeElt() {
        this.pushOnElementStack(1031);
        super.consumeClassTypeElt();
        this.popElement(1031);
    }

    protected void consumeCompilationUnit() {
        this.javadoc = null;
        this.checkComment();
        if (this.javadoc != null && this.cursorLocation > this.javadoc.sourceStart && this.cursorLocation < this.javadoc.sourceEnd) {
            this.compilationUnit.javadoc = this.javadoc;
            if (this.compilationUnit.types == null) {
                this.compilationUnit.types = new TypeDeclaration[1];
                TypeDeclaration declaration = new TypeDeclaration(this.compilationUnit.compilationResult);
                declaration.name = FAKE_TYPE_NAME;
                declaration.modifiers = 512;
                this.compilationUnit.types[0] = declaration;
            }
        }
        super.consumeCompilationUnit();
    }

    protected void consumeConditionalExpression(int op) {
        this.popElement(1042);
        super.consumeConditionalExpression(op);
    }

    protected void consumeConditionalExpressionWithName(int op) {
        this.popElement(1042);
        super.consumeConditionalExpressionWithName(op);
    }

    protected void consumeConstructorBody() {
        this.popElement(1025);
        super.consumeConstructorBody();
    }

    protected void consumeConstructorHeader() {
        super.consumeConstructorHeader();
        this.pushOnElementStack(1025);
    }

    protected void consumeConstructorHeaderName() {
        if (this.indexOfAssistIdentifier() < 0) {
            long selectorSourcePositions = this.identifierPositionStack[this.identifierPtr];
            int selectorSourceEnd = (int)selectorSourcePositions;
            int currentAstPtr = this.astPtr;
            if (this.currentElement != null && this.lastIgnoredToken == 43) {
                super.consumeConstructorHeaderName();
            } else {
                super.consumeConstructorHeaderName();
                if (this.pendingAnnotation != null) {
                    this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
                    this.pendingAnnotation = null;
                }
            }
            if (this.sourceEnds != null && this.astPtr > currentAstPtr) {
                this.sourceEnds.put(this.astStack[this.astPtr], selectorSourceEnd);
            }
            return;
        }
        if (this.currentElement == null) {
            this.hasReportedError = true;
        }
        this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        this.pushOnGenericsLengthStack(0);
        this.restartRecovery = true;
    }

    protected void consumeConstructorHeaderNameWithTypeParameters() {
        long selectorSourcePositions = this.identifierPositionStack[this.identifierPtr];
        int selectorSourceEnd = (int)selectorSourcePositions;
        int currentAstPtr = this.astPtr;
        if (this.currentElement != null && this.lastIgnoredToken == 43) {
            super.consumeConstructorHeaderNameWithTypeParameters();
        } else {
            super.consumeConstructorHeaderNameWithTypeParameters();
            if (this.pendingAnnotation != null) {
                this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
                this.pendingAnnotation = null;
            }
        }
        if (this.sourceEnds != null && this.astPtr > currentAstPtr) {
            this.sourceEnds.put(this.astStack[this.astPtr], selectorSourceEnd);
        }
    }

    protected void consumeDefaultLabel() {
        super.consumeDefaultLabel();
        if (this.topKnownElementKind(1536) == 1049) {
            this.popElement(1049);
        }
        this.pushOnElementStack(1049, 1);
    }

    protected void consumeDimWithOrWithOutExpr() {
        this.pushOnExpressionStack(null);
    }

    protected void consumeEnhancedForStatement() {
        super.consumeEnhancedForStatement();
        if (this.topKnownElementKind(1536) == 1062) {
            this.popElement(1062);
        }
    }

    protected void consumeEnhancedForStatementHeaderInit(boolean hasModifiers) {
        super.consumeEnhancedForStatementHeaderInit(hasModifiers);
        this.hasUnusedModifiers = false;
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    protected void consumeEnterAnonymousClassBody(boolean qualified) {
        this.popElement(1027);
        this.popElement(1026);
        super.consumeEnterAnonymousClassBody(qualified);
    }

    protected void consumeEnterVariable() {
        --this.identifierPtr;
        --this.identifierLengthPtr;
        boolean isLocalDeclaration = this.nestedMethod[this.nestedType] != 0;
        int variableIndex = this.variablesCounter[this.nestedType];
        this.hasUnusedModifiers = false;
        if (isLocalDeclaration || this.indexOfAssistIdentifier() < 0 || variableIndex != 0) {
            ++this.identifierPtr;
            ++this.identifierLengthPtr;
            if (this.pendingAnnotation != null && this.assistNode != null && this.currentElement != null && this.currentElement instanceof RecoveredMethod && !this.currentElement.foundOpeningBrace && ((RecoveredMethod)this.currentElement).methodDeclaration.declarationSourceEnd == 0) {
                super.consumeEnterVariable();
                this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
                this.pendingAnnotation.isParameter = true;
                this.pendingAnnotation = null;
            } else {
                super.consumeEnterVariable();
                if (this.pendingAnnotation != null) {
                    this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
                    this.pendingAnnotation = null;
                }
            }
        } else {
            this.restartRecovery = true;
            if (!(this.currentElement == null || this.checkKeyword() || this.currentElement instanceof RecoveredUnit && ((RecoveredUnit)this.currentElement).typeCount == 0)) {
                int length;
                int nameSourceStart = (int)(this.identifierPositionStack[this.identifierPtr] >>> 32);
                --this.intPtr;
                TypeReference type = this.getTypeReference(this.intStack[this.intPtr--]);
                --this.intPtr;
                if (!(this.currentElement instanceof RecoveredType || this.currentToken != 3 && Util.getLineNumber(type.sourceStart, this.scanner.lineEnds, 0, this.scanner.linePtr) == Util.getLineNumber(nameSourceStart, this.scanner.lineEnds, 0, this.scanner.linePtr))) {
                    this.lastCheckPoint = nameSourceStart;
                    this.restartRecovery = true;
                    return;
                }
                CompletionOnFieldType completionFieldDecl = new CompletionOnFieldType(type, false);
                if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                    completionFieldDecl.annotations = new Annotation[length];
                    System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, completionFieldDecl.annotations, 0, length);
                }
                completionFieldDecl.modifiers = this.intStack[this.intPtr--];
                this.assistNode = completionFieldDecl;
                this.lastCheckPoint = type.sourceEnd + 1;
                this.currentElement = this.currentElement.add(completionFieldDecl, 0);
                this.lastIgnoredToken = -1;
            }
        }
    }

    protected void consumeEnumConstantHeaderName() {
        if (!(this.currentElement == null || (this.currentElement instanceof RecoveredType || this.currentElement instanceof RecoveredField && ((RecoveredField)this.currentElement).fieldDeclaration.type == null) && this.lastIgnoredToken != 3)) {
            super.consumeEnumConstantHeaderName();
            return;
        }
        super.consumeEnumConstantHeaderName();
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    protected void consumeEnumConstantNoClassBody() {
        super.consumeEnumConstantNoClassBody();
        if ((this.currentToken == 30 || this.currentToken == 27) && this.astStack[this.astPtr] instanceof FieldDeclaration && this.sourceEnds != null) {
            this.sourceEnds.put(this.astStack[this.astPtr], this.scanner.currentPosition - 1);
        }
    }

    protected void consumeEnumConstantWithClassBody() {
        super.consumeEnumConstantWithClassBody();
        if ((this.currentToken == 30 || this.currentToken == 27) && this.astStack[this.astPtr] instanceof FieldDeclaration && this.sourceEnds != null) {
            this.sourceEnds.put(this.astStack[this.astPtr], this.scanner.currentPosition - 1);
        }
    }

    protected void consumeEnumHeaderName() {
        super.consumeEnumHeaderName();
        this.hasUnusedModifiers = false;
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    protected void consumeEnumHeaderNameWithTypeParameters() {
        super.consumeEnumHeaderNameWithTypeParameters();
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    protected void consumeEqualityExpression(int op) {
        super.consumeEqualityExpression(op);
        this.popElement(1040);
        BinaryExpression exp = (BinaryExpression)this.expressionStack[this.expressionPtr];
        if (this.assistNode != null && exp.right == this.assistNode) {
            this.assistNodeParent = exp;
        }
    }

    protected void consumeEqualityExpressionWithName(int op) {
        super.consumeEqualityExpressionWithName(op);
        this.popElement(1040);
        BinaryExpression exp = (BinaryExpression)this.expressionStack[this.expressionPtr];
        if (this.assistNode != null && exp.right == this.assistNode) {
            this.assistNodeParent = exp;
        }
    }

    protected void consumeExitVariableWithInitialization() {
        super.consumeExitVariableWithInitialization();
        if ((this.currentToken == 30 || this.currentToken == 27) && this.astStack[this.astPtr] instanceof FieldDeclaration && this.sourceEnds != null) {
            this.sourceEnds.put(this.astStack[this.astPtr], this.scanner.currentPosition - 1);
        }
        AbstractVariableDeclaration variable = (AbstractVariableDeclaration)this.astStack[this.astPtr];
        if (this.cursorLocation + 1 < variable.initialization.sourceStart || this.cursorLocation > variable.initialization.sourceEnd) {
            variable.initialization = null;
        } else if (this.assistNode != null && this.assistNode == variable.initialization) {
            this.assistNodeParent = variable;
        }
    }

    protected void consumeExitVariableWithoutInitialization() {
        super.consumeExitVariableWithoutInitialization();
        if ((this.currentToken == 30 || this.currentToken == 27) && this.astStack[this.astPtr] instanceof FieldDeclaration && this.sourceEnds != null) {
            this.sourceEnds.put(this.astStack[this.astPtr], this.scanner.currentPosition - 1);
        }
    }

    protected void consumeExplicitConstructorInvocation(int flag, int recFlag) {
        this.popElement(1027);
        this.popElement(1026);
        super.consumeExplicitConstructorInvocation(flag, recFlag);
    }

    protected void consumeFieldAccess(boolean isSuperAccess) {
        this.invocationType = -1;
        this.qualifier = -1;
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeFieldAccess(isSuperAccess);
        } else {
            this.pushCompletionOnMemberAccessOnExpressionStack(isSuperAccess);
        }
    }

    protected void consumeForceNoDiet() {
        super.consumeForceNoDiet();
        if (this.isInsideMethod()) {
            this.pushOnElementStack(1036);
        }
    }

    protected void consumeFormalParameter(boolean isVarArgs) {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeFormalParameter(isVarArgs);
            if (this.pendingAnnotation != null) {
                this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
                this.pendingAnnotation = null;
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
            this.intPtr -= 2;
            CompletionOnArgumentName arg = new CompletionOnArgumentName(identifierName, namePositions, type, this.intStack[this.intPtr + 1] & 0xFFEFFFFF);
            if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                arg.annotations = new Annotation[length];
                System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, arg.annotations, 0, length);
            }
            arg.isCatchArgument = this.topKnownElementKind(1536) == 1028;
            this.pushOnAstStack(arg);
            this.assistNode = arg;
            this.lastCheckPoint = (int)namePositions;
            this.isOrphanCompletionNode = true;
            ++this.listLength;
        }
    }

    protected void consumeGenericTypeWithDiamond() {
        super.consumeGenericTypeWithDiamond();
        this.popElement(1040);
        this.popElement(1040);
    }

    protected void consumeStatementFor() {
        super.consumeStatementFor();
        if (this.topKnownElementKind(1536) == 1062) {
            this.popElement(1062);
        }
    }

    protected void consumeStatementIfNoElse() {
        super.consumeStatementIfNoElse();
        if (this.topKnownElementKind(1536) == 1062) {
            this.popElement(1062);
        }
    }

    protected void consumeStatementIfWithElse() {
        super.consumeStatementIfWithElse();
        if (this.topKnownElementKind(1536) == 1062) {
            this.popElement(1062);
        }
    }

    protected void consumeInsideCastExpression() {
        boolean isParameterized;
        int end = this.intStack[this.intPtr--];
        boolean bl = isParameterized = this.topKnownElementKind(1536) == 1056;
        if (isParameterized) {
            this.popElement(1056);
            if (this.identifierLengthStack[this.identifierLengthPtr] > 0) {
                this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
            }
        } else if (this.identifierLengthStack[this.identifierLengthPtr] > 0) {
            this.pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
            this.pushOnGenericsLengthStack(0);
        }
        TypeReference castType = this.getTypeReference(this.intStack[this.intPtr--]);
        if (isParameterized) {
            --this.intPtr;
        }
        castType.sourceEnd = end - 1;
        castType.sourceStart = this.intStack[this.intPtr--] + 1;
        this.pushOnExpressionStack(castType);
        this.pushOnElementStack(1035);
    }

    protected void consumeInsideCastExpressionLL1() {
        if (this.topKnownElementKind(1536) == 1056) {
            this.popElement(1056);
        }
        if (!this.record) {
            super.consumeInsideCastExpressionLL1();
        } else {
            boolean temp = this.skipRecord;
            try {
                this.skipRecord = true;
                super.consumeInsideCastExpressionLL1();
                if (this.record) {
                    Expression typeReference = this.expressionStack[this.expressionPtr];
                    if (!this.isAlreadyPotentialName(typeReference.sourceStart)) {
                        this.addPotentialName(null, typeReference.sourceStart, typeReference.sourceEnd);
                    }
                }
            }
            finally {
                this.skipRecord = temp;
            }
        }
        this.pushOnElementStack(1035);
    }

    protected void consumeInsideCastExpressionWithQualifiedGenerics() {
        this.popElement(1056);
        int end = this.intStack[this.intPtr--];
        int dim = this.intStack[this.intPtr--];
        TypeReference rightSide = this.getTypeReference(0);
        ParameterizedQualifiedTypeReference castType = this.computeQualifiedGenericsFromRightSide(rightSide, dim);
        --this.intPtr;
        castType.sourceEnd = end - 1;
        castType.sourceStart = this.intStack[this.intPtr--] + 1;
        this.pushOnExpressionStack(castType);
        this.pushOnElementStack(1035);
    }

    protected void consumeInstanceOfExpression() {
        super.consumeInstanceOfExpression();
        this.popElement(1040);
        if (this.topKnownElementKind(1536) == 1043) {
            this.pushOnElementStack(1065, 1, this.expressionStack[this.expressionPtr]);
        }
        InstanceOfExpression exp = (InstanceOfExpression)this.expressionStack[this.expressionPtr];
        if (this.assistNode != null && exp.type == this.assistNode) {
            this.assistNodeParent = exp;
        }
    }

    protected void consumeInstanceOfExpressionWithName() {
        super.consumeInstanceOfExpressionWithName();
        this.popElement(1040);
        InstanceOfExpression exp = (InstanceOfExpression)this.expressionStack[this.expressionPtr];
        if (this.assistNode != null && exp.type == this.assistNode) {
            this.assistNodeParent = exp;
        }
    }

    protected void consumeInterfaceHeaderName1() {
        super.consumeInterfaceHeaderName1();
        this.hasUnusedModifiers = false;
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
        this.classHeaderExtendsOrImplements(true);
    }

    protected void consumeInterfaceHeaderExtends() {
        super.consumeInterfaceHeaderExtends();
        this.popElement(1053);
    }

    protected void consumeInterfaceType() {
        this.pushOnElementStack(1030);
        super.consumeInterfaceType();
        this.popElement(1030);
    }

    protected void consumeMethodInvocationName() {
        this.popElement(1027);
        this.popElement(1026);
        super.consumeMethodInvocationName();
    }

    protected void consumeMethodInvocationNameWithTypeArguments() {
        this.popElement(1027);
        this.popElement(1026);
        super.consumeMethodInvocationNameWithTypeArguments();
    }

    protected void consumeMethodInvocationPrimary() {
        this.popElement(1027);
        this.popElement(1026);
        super.consumeMethodInvocationPrimary();
    }

    protected void consumeMethodInvocationPrimaryWithTypeArguments() {
        this.popElement(1027);
        this.popElement(1026);
        super.consumeMethodInvocationPrimaryWithTypeArguments();
    }

    protected void consumeMethodInvocationSuper() {
        this.popElement(1027);
        this.popElement(1026);
        super.consumeMethodInvocationSuper();
    }

    protected void consumeMethodInvocationSuperWithTypeArguments() {
        this.popElement(1027);
        this.popElement(1026);
        super.consumeMethodInvocationSuperWithTypeArguments();
    }

    protected void consumeMethodHeaderName(boolean isAnnotationMethod) {
        if (this.indexOfAssistIdentifier() < 0) {
            --this.identifierPtr;
            --this.identifierLengthPtr;
            if (this.indexOfAssistIdentifier() != 0 || this.identifierLengthStack[this.identifierLengthPtr] != this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr]) {
                ++this.identifierPtr;
                ++this.identifierLengthPtr;
                long selectorSourcePositions = this.identifierPositionStack[this.identifierPtr];
                int selectorSourceEnd = (int)selectorSourcePositions;
                int currentAstPtr = this.astPtr;
                super.consumeMethodHeaderName(isAnnotationMethod);
                if (this.sourceEnds != null && this.astPtr > currentAstPtr) {
                    this.sourceEnds.put(this.astStack[this.astPtr], selectorSourceEnd);
                }
                if (this.pendingAnnotation != null) {
                    this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
                    this.pendingAnnotation = null;
                }
            } else {
                this.restartRecovery = true;
                if (this.currentElement != null) {
                    char[] selector = this.identifierStack[this.identifierPtr + 1];
                    long selectorSource = this.identifierPositionStack[this.identifierPtr + 1];
                    TypeReference type = this.getTypeReference(this.intStack[this.intPtr--]);
                    ((CompletionOnSingleTypeReference)type).isCompletionNode = false;
                    int declarationSourceStart = this.intStack[this.intPtr--];
                    int mod = this.intStack[this.intPtr--];
                    if (Util.getLineNumber(type.sourceStart, this.scanner.lineEnds, 0, this.scanner.linePtr) != Util.getLineNumber((int)(selectorSource >>> 32), this.scanner.lineEnds, 0, this.scanner.linePtr)) {
                        int length;
                        CompletionOnFieldType completionFieldDecl = new CompletionOnFieldType(type, false);
                        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                            completionFieldDecl.annotations = new Annotation[length];
                            System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, completionFieldDecl.annotations, 0, length);
                        }
                        completionFieldDecl.modifiers = mod;
                        this.assistNode = completionFieldDecl;
                        this.lastCheckPoint = type.sourceEnd + 1;
                        this.currentElement = this.currentElement.add(completionFieldDecl, 0);
                        this.lastIgnoredToken = -1;
                    } else {
                        int length;
                        CompletionOnMethodReturnType md = new CompletionOnMethodReturnType(type, this.compilationUnit.compilationResult);
                        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                            md.annotations = new Annotation[length];
                            System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, md.annotations, 0, length);
                        }
                        md.selector = selector;
                        md.declarationSourceStart = declarationSourceStart;
                        md.modifiers = mod;
                        md.bodyStart = this.lParenPos + 1;
                        this.listLength = 0;
                        this.assistNode = md;
                        this.lastCheckPoint = md.bodyStart;
                        this.currentElement = this.currentElement.add(md, 0);
                        this.lastIgnoredToken = -1;
                        md.javadoc = this.javadoc;
                        this.javadoc = null;
                    }
                }
            }
        } else {
            int length;
            CompletionOnMethodName md = new CompletionOnMethodName(this.compilationUnit.compilationResult);
            md.selector = this.identifierStack[this.identifierPtr];
            long selectorSource = this.identifierPositionStack[this.identifierPtr--];
            --this.identifierLengthPtr;
            md.returnType = this.getTypeReference(this.intStack[this.intPtr--]);
            md.declarationSourceStart = this.intStack[this.intPtr--];
            md.modifiers = this.intStack[this.intPtr--];
            if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
                md.annotations = new Annotation[length];
                System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, md.annotations, 0, length);
            }
            md.javadoc = this.javadoc;
            this.javadoc = null;
            md.sourceStart = (int)(selectorSource >>> 32);
            md.selectorEnd = (int)selectorSource;
            this.pushOnAstStack(md);
            md.sourceEnd = this.lParenPos;
            md.bodyStart = this.lParenPos + 1;
            this.listLength = 0;
            this.assistNode = md;
            this.lastCheckPoint = md.sourceEnd;
            if (this.currentElement != null) {
                if (this.currentElement instanceof RecoveredType || Util.getLineNumber(md.returnType.sourceStart, this.scanner.lineEnds, 0, this.scanner.linePtr) == Util.getLineNumber(md.sourceStart, this.scanner.lineEnds, 0, this.scanner.linePtr)) {
                    this.lastCheckPoint = md.bodyStart;
                    this.currentElement = this.currentElement.add(md, 0);
                    this.lastIgnoredToken = -1;
                } else {
                    this.lastCheckPoint = md.sourceStart;
                    this.restartRecovery = true;
                }
            }
        }
    }

    protected void consumeMethodHeaderNameWithTypeParameters(boolean isAnnotationMethod) {
        long selectorSourcePositions = this.identifierPositionStack[this.identifierPtr];
        int selectorSourceEnd = (int)selectorSourcePositions;
        int currentAstPtr = this.astPtr;
        super.consumeMethodHeaderNameWithTypeParameters(isAnnotationMethod);
        if (this.sourceEnds != null && this.astPtr > currentAstPtr) {
            this.sourceEnds.put(this.astStack[this.astPtr], selectorSourceEnd);
        }
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    protected void consumeMethodHeaderRightParen() {
        super.consumeMethodHeaderRightParen();
        if (this.currentElement != null && this.currentToken == 26 && this.cursorLocation + 1 >= this.scanner.startPosition && this.cursorLocation < this.scanner.currentPosition) {
            this.pushIdentifier();
            int index = -1;
            index = this.indexOfAssistIdentifier();
            if (index > -1) {
                int ptr = this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr] + index + 1;
                if (this.currentElement instanceof RecoveredMethod) {
                    RecoveredMethod recoveredMethod = (RecoveredMethod)this.currentElement;
                    if (!recoveredMethod.foundOpeningBrace) {
                        AbstractMethodDeclaration method = recoveredMethod.methodDeclaration;
                        if (method.thrownExceptions == null) {
                            CompletionOnKeyword1 completionOnKeyword = new CompletionOnKeyword1(this.identifierStack[ptr], this.identifierPositionStack[ptr], Keywords.THROWS);
                            method.thrownExceptions = new TypeReference[]{completionOnKeyword};
                            recoveredMethod.foundOpeningBrace = true;
                            this.assistNode = completionOnKeyword;
                            this.lastCheckPoint = completionOnKeyword.sourceEnd + 1;
                        }
                    }
                }
            }
        }
    }

    protected void consumeMethodHeaderExtendedDims() {
        super.consumeMethodHeaderExtendedDims();
        if (this.currentElement != null && this.currentToken == 26 && this.cursorLocation + 1 >= this.scanner.startPosition && this.cursorLocation < this.scanner.currentPosition) {
            this.pushIdentifier();
            int index = -1;
            index = this.indexOfAssistIdentifier();
            if (index > -1) {
                int ptr = this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr] + index + 1;
                RecoveredMethod recoveredMethod = (RecoveredMethod)this.currentElement;
                if (!recoveredMethod.foundOpeningBrace) {
                    AbstractMethodDeclaration method = recoveredMethod.methodDeclaration;
                    if (method.thrownExceptions == null) {
                        CompletionOnKeyword1 completionOnKeyword = new CompletionOnKeyword1(this.identifierStack[ptr], this.identifierPositionStack[ptr], Keywords.THROWS);
                        method.thrownExceptions = new TypeReference[]{completionOnKeyword};
                        recoveredMethod.foundOpeningBrace = true;
                        this.assistNode = completionOnKeyword;
                        this.lastCheckPoint = completionOnKeyword.sourceEnd + 1;
                    }
                }
            }
        }
    }

    protected void consumeAnnotationAsModifier() {
        super.consumeAnnotationAsModifier();
        if (this.isInsideMethod()) {
            this.hasUnusedModifiers = true;
        }
    }

    protected void consumeAdditionalBound() {
        super.consumeAdditionalBound();
        ASTNode node = this.genericsStack[this.genericsPtr];
        if (node instanceof CompletionOnSingleTypeReference) {
            ((CompletionOnSingleTypeReference)node).setKind(2);
        } else if (node instanceof CompletionOnQualifiedTypeReference) {
            ((CompletionOnQualifiedTypeReference)node).setKind(2);
        }
    }

    protected void consumeAdditionalBound1() {
        super.consumeAdditionalBound1();
        ASTNode node = this.genericsStack[this.genericsPtr];
        if (node instanceof CompletionOnSingleTypeReference) {
            ((CompletionOnSingleTypeReference)node).setKind(2);
        } else if (node instanceof CompletionOnQualifiedTypeReference) {
            ((CompletionOnQualifiedTypeReference)node).setKind(2);
        }
    }

    protected void consumeAnnotationName() {
        int index = this.indexOfAssistIdentifier();
        if (index < 0) {
            super.consumeAnnotationName();
            this.pushOnElementStack(1057, 1);
            return;
        }
        CompletionOnMarkerAnnotationName markerAnnotation = null;
        int length = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] subset = this.identifierSubSet(index);
        --this.identifierLengthPtr;
        this.identifierPtr -= length;
        long[] positions = new long[length];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, positions, 0, length);
        TypeReference typeReference = index == 0 ? this.createSingleAssistTypeReference(this.assistIdentifier(), positions[0]) : this.createQualifiedAssistTypeReference(subset, this.assistIdentifier(), positions);
        markerAnnotation = new CompletionOnMarkerAnnotationName(typeReference, typeReference.sourceStart);
        --this.intPtr;
        markerAnnotation.declarationSourceEnd = markerAnnotation.sourceEnd;
        this.pushOnExpressionStack(markerAnnotation);
        this.assistNode = markerAnnotation;
        this.isOrphanCompletionNode = true;
        this.lastCheckPoint = markerAnnotation.sourceEnd + 1;
        this.pushOnElementStack(1057, 5);
    }

    protected void consumeAnnotationTypeDeclarationHeaderName() {
        super.consumeAnnotationTypeDeclarationHeaderName();
        this.hasUnusedModifiers = false;
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    protected void consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters() {
        super.consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters();
        this.hasUnusedModifiers = false;
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    protected void consumeLabel() {
        super.consumeLabel();
        this.pushOnLabelStack(this.identifierStack[this.identifierPtr]);
        this.pushOnElementStack(1060, this.labelPtr);
    }

    protected void consumeMarkerAnnotation() {
        if (this.topKnownElementKind(1536) == 1057 && (this.topKnownElementInfo(1536) & 4) != 0) {
            this.popElement(1057);
            this.restartRecovery = true;
        } else {
            this.popElement(1057);
            super.consumeMarkerAnnotation();
        }
    }

    protected void consumeMemberValuePair() {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeMemberValuePair();
            MemberValuePair memberValuePair = (MemberValuePair)this.astStack[this.astPtr];
            if (this.assistNode != null && memberValuePair.value == this.assistNode) {
                this.assistNodeParent = memberValuePair;
            }
            return;
        }
        char[] simpleName = this.identifierStack[this.identifierPtr];
        long position = this.identifierPositionStack[this.identifierPtr--];
        --this.identifierLengthPtr;
        int end = (int)position;
        int start = (int)(position >>> 32);
        --this.expressionPtr;
        --this.expressionLengthPtr;
        CompletionOnMemberValueName memberValueName = new CompletionOnMemberValueName(simpleName, start, end);
        this.pushOnAstStack(memberValueName);
        this.assistNode = memberValueName;
        this.lastCheckPoint = this.assistNode.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
        this.restartRecovery = true;
    }

    protected void consumeMemberValueAsName() {
        if (this.indexOfAssistIdentifier() < 0) {
            super.consumeMemberValueAsName();
        } else {
            super.consumeMemberValueAsName();
            if (this.topKnownElementKind(1536) == 1057) {
                this.restartRecovery = true;
            }
        }
    }

    protected void consumeMethodBody() {
        this.popElement(1025);
        super.consumeMethodBody();
    }

    protected void consumeMethodHeader() {
        super.consumeMethodHeader();
        this.pushOnElementStack(1025);
    }

    protected void consumeMethodDeclaration(boolean isNotAbstract) {
        if (!isNotAbstract) {
            this.popElement(1025);
        }
        super.consumeMethodDeclaration(isNotAbstract);
    }

    protected void consumeModifiers() {
        super.consumeModifiers();
        this.lastModifiersStart = this.intStack[this.intPtr];
        this.lastModifiers = this.intStack[this.intPtr - 1];
    }

    protected void consumeReferenceType() {
        if (this.identifierLengthStack[this.identifierLengthPtr] > 1) {
            this.invocationType = -1;
            this.qualifier = -1;
        }
        super.consumeReferenceType();
    }

    protected void consumeRestoreDiet() {
        super.consumeRestoreDiet();
        if (this.isInsideMethod()) {
            this.popElement(1036);
        }
    }

    protected void consumeSingleMemberAnnotation() {
        if (this.topKnownElementKind(1536) == 1057 && (this.topKnownElementInfo(1536) & 4) != 0) {
            this.popElement(1057);
            this.restartRecovery = true;
        } else {
            this.popElement(1057);
            super.consumeSingleMemberAnnotation();
        }
    }

    protected void consumeSingleStaticImportDeclarationName() {
        super.consumeSingleStaticImportDeclarationName();
        this.pendingAnnotation = null;
    }

    protected void consumeSingleTypeImportDeclarationName() {
        super.consumeSingleTypeImportDeclarationName();
        this.pendingAnnotation = null;
    }

    protected void consumeStatementBreakWithLabel() {
        super.consumeStatementBreakWithLabel();
        if (this.record) {
            ASTNode breakStatement = this.astStack[this.astPtr];
            if (!this.isAlreadyPotentialName(breakStatement.sourceStart)) {
                this.addPotentialName(null, breakStatement.sourceStart, breakStatement.sourceEnd);
            }
        }
    }

    protected void consumeStatementLabel() {
        this.popElement(1060);
        super.consumeStatementLabel();
    }

    protected void consumeStatementSwitch() {
        super.consumeStatementSwitch();
        if (this.topKnownElementKind(1536) == 1049) {
            this.popElement(1049);
            this.popElement(1025);
        }
    }

    protected void consumeStatementWhile() {
        super.consumeStatementWhile();
        if (this.topKnownElementKind(1536) == 1062) {
            this.popElement(1062);
        }
    }

    protected void consumeStaticImportOnDemandDeclarationName() {
        super.consumeStaticImportOnDemandDeclarationName();
        this.pendingAnnotation = null;
    }

    protected void consumeStaticInitializer() {
        super.consumeStaticInitializer();
        this.pendingAnnotation = null;
    }

    protected void consumeNestedMethod() {
        super.consumeNestedMethod();
        if (this.topKnownElementKind(1536) != 1025) {
            this.pushOnElementStack(1025);
        }
    }

    protected void consumeNormalAnnotation() {
        if (this.topKnownElementKind(1536) == 1057 && (this.topKnownElementInfo(1536) & 4) != 0) {
            this.popElement(1057);
            this.restartRecovery = true;
        } else {
            this.popElement(1057);
            super.consumeNormalAnnotation();
        }
    }

    protected void consumePackageDeclarationName() {
        super.consumePackageDeclarationName();
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.compilationUnit.currentPackage;
            this.pendingAnnotation = null;
        }
    }

    protected void consumePackageDeclarationNameWithModifiers() {
        super.consumePackageDeclarationNameWithModifiers();
        if (this.pendingAnnotation != null) {
            this.pendingAnnotation.potentialAnnotatedNode = this.compilationUnit.currentPackage;
            this.pendingAnnotation = null;
        }
    }

    protected void consumePrimaryNoNewArrayName() {
        this.invocationType = -1;
        this.qualifier = -1;
        super.consumePrimaryNoNewArrayName();
    }

    protected void consumePrimaryNoNewArrayNameSuper() {
        this.invocationType = -1;
        this.qualifier = -1;
        super.consumePrimaryNoNewArrayNameSuper();
    }

    protected void consumePrimaryNoNewArrayNameThis() {
        this.invocationType = -1;
        this.qualifier = -1;
        super.consumePrimaryNoNewArrayNameThis();
    }

    protected void consumePushPosition() {
        super.consumePushPosition();
        if (this.topKnownElementKind(1536) == 1040) {
            int info = this.topKnownElementInfo(1536);
            this.popElement(1040);
            this.pushOnElementStack(1039, info);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void consumeToken(int token) {
        int kind;
        if (this.isFirst) {
            super.consumeToken(token);
            return;
        }
        this.canBeExplicitConstructor = this.canBeExplicitConstructor == 1 ? 2 : 0;
        int previous = this.previousToken;
        int prevIdentifierPtr = this.previousIdentifierPtr;
        if (this.isInsideMethod() || this.isInsideFieldInitialization() || this.isInsideAnnotation()) {
            block0 : switch (token) {
                case 29: {
                    if (previous == 26 && this.topKnownElementKind(1536) == 1054) {
                        this.popElement(1054);
                        break;
                    }
                    this.popElement(1032);
                    break;
                }
                case 68: {
                    this.popElement(1032);
                    break;
                }
                case 16: {
                    if (this.topKnownElementKind(1536) != 1032) break;
                    this.popElement(1032);
                    this.pushOnElementStack(1038);
                    break;
                }
                case 31: {
                    kind = this.topKnownElementKind(1536);
                    switch (kind) {
                        case 1025: {
                            this.popElement(1025);
                            break block0;
                        }
                        case 1061: {
                            this.popElement(1061);
                            break block0;
                        }
                    }
                    this.popElement(1037);
                    break;
                }
                case 70: {
                    if (this.topKnownElementKind(1536) != 1052) break;
                    this.popElement(1052);
                }
            }
        }
        super.consumeToken(token);
        if (token == 26 && this.identifierStack[this.identifierPtr] == this.assistIdentifier() && this.currentElement == null && this.isIndirectlyInsideFieldInitialization()) {
            int n = this.scanner.eofPosition = this.cursorLocation < Integer.MAX_VALUE ? this.cursorLocation + 1 : this.cursorLocation;
        }
        if (this.isInsideMethod() || this.isInsideFieldInitialization() || this.isInsideAttributeValue()) {
            switch (token) {
                case 3: {
                    switch (previous) {
                        case 42: {
                            this.invocationType = 0;
                            return;
                        }
                        case 41: {
                            this.invocationType = -2;
                            return;
                        }
                        case 26: {
                            if (this.topKnownElementKind(1536) == 1032) return;
                            if (this.identifierPtr != prevIdentifierPtr) {
                                this.invocationType = 0;
                                return;
                            }
                            this.invocationType = -3;
                        }
                        default: {
                            return;
                        }
                    }
                }
                case 26: {
                    if (previous == 3 && this.invocationType != -2 && this.invocationType != -3 && this.invocationType != -4 && this.invocationType != -5) {
                        this.invocationType = 0;
                        this.qualifier = this.expressionPtr;
                    }
                    if (previous != 11 || this.invocationType == -2 || this.invocationType == -3 || this.invocationType == -4 || this.invocationType == -5 || this.topKnownElementKind(1536) != 1054) return;
                    this.invocationType = 0;
                    this.qualifier = this.expressionPtr;
                    return;
                }
                case 43: {
                    this.pushOnElementStack(1032);
                    this.qualifier = this.expressionPtr;
                    if (previous == 3) {
                        this.invocationType = -5;
                        return;
                    }
                    this.invocationType = -4;
                    return;
                }
                case 42: {
                    if (previous != 3) return;
                    this.invocationType = -5;
                    this.qualifier = this.expressionPtr;
                    return;
                }
                case 41: {
                    if (previous != 3) return;
                    this.invocationType = -5;
                    this.qualifier = this.expressionPtr;
                    return;
                }
                case 100: {
                    this.pushOnElementStack(1028);
                    return;
                }
                case 29: {
                    if (this.invocationType == -1 || this.invocationType == -3 || this.invocationType == -2) {
                        this.qualifier = this.expressionPtr;
                    }
                    switch (previous) {
                        case 26: {
                            int info;
                            if (this.topKnownElementKind(1536) == 513) {
                                info = 0;
                                if (this.topKnownElementKind(1536, 1) == 1057 && (info = this.topKnownElementInfo(1536, 1) & 1) != 0) {
                                    this.popElement(513);
                                    this.popElement(1057);
                                    if ((info & 4) != 0) {
                                        this.pushOnElementStack(1057, 6);
                                    } else {
                                        this.pushOnElementStack(1057, 2);
                                    }
                                } else {
                                    this.pushOnElementStack(1026, this.invocationType);
                                    this.pushOnElementStack(1027, this.qualifier);
                                }
                            }
                            this.qualifier = -1;
                            this.invocationType = -1;
                            return;
                        }
                        case 42: {
                            if (this.topKnownElementKind(1536) == 513) {
                                this.pushOnElementStack(1026, this.invocationType == -5 ? -5 : -4);
                                this.pushOnElementStack(1027, this.qualifier);
                            }
                            this.qualifier = -1;
                            this.invocationType = -1;
                            return;
                        }
                        case 41: {
                            if (this.topKnownElementKind(1536) == 513) {
                                this.pushOnElementStack(1026, this.invocationType == -5 ? -5 : -4);
                                this.pushOnElementStack(1027, this.qualifier);
                            }
                            this.qualifier = -1;
                            this.invocationType = -1;
                            return;
                        }
                        case 10: 
                        case 11: 
                        case 12: {
                            int info;
                            if (this.topKnownElementKind(1536) == 513) {
                                if (this.topKnownElementKind(1536, 1) == 1040 && ((info = this.topKnownElementInfo(1536, 1)) == 6 || info == 17 || info == 19)) {
                                    this.popElement(513);
                                } else {
                                    this.pushOnElementStack(1026, this.invocationType == -5 ? -5 : -4);
                                    this.pushOnElementStack(1027, this.qualifier);
                                }
                            }
                            this.qualifier = -1;
                            this.invocationType = -1;
                        }
                    }
                    return;
                }
                case 68: {
                    kind = this.topKnownElementKind(1536);
                    if (kind == 516 || kind == 1036 || kind == 1038) {
                        this.pushOnElementStack(1037, this.endPosition);
                        return;
                    }
                    if (kind == 1057) {
                        this.pushOnElementStack(1061, this.endPosition);
                        return;
                    }
                    if (kind == 1062) {
                        int info = this.topKnownElementInfo(1536);
                        this.popElement(1062);
                        if (info == 1) {
                            this.pushOnElementStack(1025, 1, this.expressionStack[this.expressionPtr]);
                            return;
                        }
                        this.pushOnElementStack(1025, info);
                        return;
                    }
                    switch (previous) {
                        case 28: {
                            switch (this.previousKind) {
                                case 1028: {
                                    this.pushOnElementStack(1025, 3);
                                    return;
                                }
                                case 1046: {
                                    this.pushOnElementStack(1025, 5);
                                    return;
                                }
                                case 1047: {
                                    this.pushOnElementStack(1025, 8);
                                    return;
                                }
                            }
                            this.pushOnElementStack(1025);
                            return;
                        }
                        case 83: {
                            this.pushOnElementStack(1025, 2);
                            return;
                        }
                        case 77: {
                            this.pushOnElementStack(1025, 7);
                            return;
                        }
                    }
                    this.pushOnElementStack(1025);
                    return;
                }
                case 16: {
                    if (this.topKnownElementKind(1536) != 1038) {
                        this.pushOnElementStack(1052);
                        return;
                    }
                    switch (previous) {
                        case 10: 
                        case 11: 
                        case 12: 
                        case 26: 
                        case 32: 
                        case 33: 
                        case 34: 
                        case 35: 
                        case 36: 
                        case 37: 
                        case 38: 
                        case 39: {
                            this.invocationType = -1;
                            this.qualifier = -1;
                        }
                    }
                    return;
                }
                case 28: {
                    switch (this.topKnownElementKind(1536)) {
                        case 1028: {
                            this.popElement(1028);
                            return;
                        }
                        case 1065: {
                            this.popElement(1065);
                        }
                        case 1043: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1043);
                            this.pushOnElementStack(1062, 1, this.expressionStack[this.expressionPtr]);
                            return;
                        }
                        case 1044: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1044);
                            this.pushOnElementStack(1062, 4);
                            return;
                        }
                        case 1045: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1045);
                            this.pushOnElementStack(1062, 6);
                            return;
                        }
                        case 1046: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1046);
                            return;
                        }
                        case 1047: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1047);
                        }
                        default: {
                            return;
                        }
                    }
                }
                case 82: {
                    this.pushOnElementStack(1033, this.bracketDepth);
                    return;
                }
                case 27: {
                    switch (this.topKnownElementKind(1536)) {
                        case 1033: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1033);
                            return;
                        }
                        case 1034: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1034);
                            return;
                        }
                        case 1048: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1048);
                            return;
                        }
                        case 1063: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1063);
                            this.popElement(1048);
                            return;
                        }
                        case 1058: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1058);
                            return;
                        }
                        case 1059: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth) return;
                            this.popElement(1059);
                            return;
                        }
                        case 1045: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth - 1) return;
                            this.popElement(1045);
                            this.pushOnElementStack(1064, this.bracketDepth - 1);
                            return;
                        }
                        case 1064: {
                            if (this.topKnownElementInfo(1536) != this.bracketDepth - 1) return;
                            this.popElement(1064);
                            this.pushOnElementStack(1045, this.bracketDepth - 1);
                        }
                        default: {
                            return;
                        }
                    }
                }
                case 80: {
                    this.pushOnElementStack(1034, this.bracketDepth);
                    return;
                }
                case 4: {
                    this.pushOnElementStack(1040, 15);
                    return;
                }
                case 6: {
                    this.pushOnElementStack(1040, 9);
                    return;
                }
                case 5: {
                    this.pushOnElementStack(1040, 16);
                    return;
                }
                case 1: {
                    this.pushOnElementStack(1040, 14);
                    return;
                }
                case 2: {
                    this.pushOnElementStack(1040, 13);
                    return;
                }
                case 17: {
                    this.pushOnElementStack(1040, 10);
                    return;
                }
                case 10: {
                    this.pushOnElementStack(1040, 17);
                    return;
                }
                case 12: {
                    this.pushOnElementStack(1040, 19);
                    return;
                }
                case 7: {
                    switch (previous) {
                        case 3: {
                            this.pushOnElementStack(1054);
                            break;
                        }
                        case 43: {
                            this.pushOnElementStack(1055);
                        }
                    }
                    this.pushOnElementStack(1040, 4);
                    return;
                }
                case 11: {
                    this.pushOnElementStack(1040, 6);
                    return;
                }
                case 14: {
                    this.pushOnElementStack(1040, 5);
                    return;
                }
                case 15: {
                    this.pushOnElementStack(1040, 7);
                    return;
                }
                case 20: {
                    this.pushOnElementStack(1040, 2);
                    return;
                }
                case 21: {
                    this.pushOnElementStack(1040, 8);
                    return;
                }
                case 22: {
                    if (this.topKnownElementKind(1024) == 1028) return;
                    this.pushOnElementStack(1040, 3);
                    return;
                }
                case 24: {
                    this.pushOnElementStack(1040, 0);
                    return;
                }
                case 25: {
                    this.pushOnElementStack(1040, 1);
                    return;
                }
                case 8: {
                    this.pushOnElementStack(1039, 32);
                    return;
                }
                case 9: {
                    this.pushOnElementStack(1039, 33);
                    return;
                }
                case 67: {
                    this.pushOnElementStack(1039, 12);
                    return;
                }
                case 66: {
                    this.pushOnElementStack(1039, 11);
                    return;
                }
                case 18: {
                    this.pushOnElementStack(1040, 18);
                    return;
                }
                case 19: {
                    this.pushOnElementStack(1040, 29);
                    return;
                }
                case 13: {
                    this.pushOnElementStack(1040, 31);
                    return;
                }
                case 23: {
                    if (previous == 7 || previous == 30) return;
                    this.pushOnElementStack(1042, 1);
                    return;
                }
                case 65: {
                    switch (this.topKnownElementKind(1536)) {
                        case 1042: {
                            if (this.topKnownElementInfo(1536) != 1) return;
                            this.popElement(1042);
                            this.pushOnElementStack(1042, 2);
                            return;
                        }
                        case 1050: {
                            this.popElement(1050);
                            return;
                        }
                        case 1051: {
                            this.popElement(1051);
                            return;
                        }
                        case 1048: {
                            this.pushOnElementStack(1063, this.bracketDepth);
                        }
                        default: {
                            return;
                        }
                    }
                }
                case 79: {
                    this.pushOnElementStack(1043, this.bracketDepth);
                    return;
                }
                case 104: {
                    if (this.topKnownElementKind(1536) == 1062) {
                        this.popElement(1062);
                    }
                    this.pushOnElementStack(1062);
                    return;
                }
                case 73: {
                    this.pushOnElementStack(1044, this.bracketDepth);
                    return;
                }
                case 78: {
                    this.pushOnElementStack(1045, this.bracketDepth);
                    return;
                }
                case 81: {
                    this.pushOnElementStack(1046, this.bracketDepth);
                    return;
                }
                case 55: {
                    this.pushOnElementStack(1047, this.bracketDepth);
                    return;
                }
                case 74: {
                    this.pushOnElementStack(1048, this.bracketDepth);
                    return;
                }
                case 102: {
                    this.pushOnElementStack(1050);
                    return;
                }
                case 97: {
                    this.pushOnElementStack(1051);
                    return;
                }
                case 99: {
                    this.pushOnElementStack(1053);
                    return;
                }
                case 75: {
                    this.pushOnElementStack(1058, this.bracketDepth);
                    return;
                }
                case 76: {
                    this.pushOnElementStack(1059, this.bracketDepth);
                }
                default: {
                    return;
                }
            }
        }
        if (this.isInsideAnnotation()) {
            switch (token) {
                case 68: {
                    ++this.bracketDepth;
                    kind = this.topKnownElementKind(1536);
                    if (kind != 1057) return;
                    this.pushOnElementStack(1061, this.endPosition);
                }
                default: {
                    return;
                }
            }
        } else {
            switch (token) {
                case 99: {
                    this.pushOnElementStack(1053);
                    return;
                }
                case 7: {
                    this.pushOnElementStack(1040, 4);
                    return;
                }
                case 11: {
                    this.pushOnElementStack(1040, 6);
                    return;
                }
                case 10: {
                    this.pushOnElementStack(1040, 17);
                    return;
                }
                case 12: {
                    this.pushOnElementStack(1040, 19);
                }
            }
        }
    }

    protected void consumeOnlySynchronized() {
        super.consumeOnlySynchronized();
        this.hasUnusedModifiers = false;
    }

    protected void consumeOnlyTypeArguments() {
        super.consumeOnlyTypeArguments();
        this.popElement(1040);
        if (this.topKnownElementKind(1536) == 1054) {
            this.popElement(1054);
            this.pushOnElementStack(1054, 1);
        } else {
            this.popElement(1055);
        }
    }

    protected void consumeOnlyTypeArgumentsForCastExpression() {
        super.consumeOnlyTypeArgumentsForCastExpression();
        this.pushOnElementStack(1056);
    }

    protected void consumeOpenFakeBlock() {
        super.consumeOpenFakeBlock();
        this.pushOnElementStack(1025);
    }

    protected void consumeRightParen() {
        super.consumeRightParen();
    }

    protected void consumeReferenceType1() {
        super.consumeReferenceType1();
        this.popElement(1040);
    }

    protected void consumeReferenceType2() {
        super.consumeReferenceType2();
        this.popElement(1040);
    }

    protected void consumeReferenceType3() {
        super.consumeReferenceType3();
        this.popElement(1040);
    }

    protected void consumeTypeArgumentReferenceType1() {
        super.consumeTypeArgumentReferenceType1();
        this.popElement(1040);
    }

    protected void consumeTypeArgumentReferenceType2() {
        super.consumeTypeArgumentReferenceType2();
        this.popElement(1040);
    }

    protected void consumeTypeArguments() {
        super.consumeTypeArguments();
        this.popElement(1040);
    }

    protected void consumeTypeHeaderNameWithTypeParameters() {
        super.consumeTypeHeaderNameWithTypeParameters();
        TypeDeclaration typeDecl = (TypeDeclaration)this.astStack[this.astPtr];
        this.classHeaderExtendsOrImplements((typeDecl.modifiers & 0x200) != 0);
    }

    protected void consumeTypeImportOnDemandDeclarationName() {
        super.consumeTypeImportOnDemandDeclarationName();
        this.pendingAnnotation = null;
    }

    protected void consumeTypeParameters() {
        super.consumeTypeParameters();
        this.popElement(1040);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void consumeTypeParameterHeader() {
        super.consumeTypeParameterHeader();
        TypeParameter typeParameter = (TypeParameter)this.genericsStack[this.genericsPtr];
        if (typeParameter.type != null || typeParameter.bounds != null && typeParameter.bounds.length > 0) {
            return;
        }
        if (this.assistIdentifier() != null || this.currentToken != 26) return;
        if (this.cursorLocation < this.scanner.startPosition && this.scanner.currentPosition == this.scanner.startPosition) {
            this.pushIdentifier();
        } else {
            if (this.cursorLocation + 1 < this.scanner.startPosition || this.cursorLocation >= this.scanner.currentPosition) return;
            this.pushIdentifier();
        }
        CompletionOnKeyword1 keyword = new CompletionOnKeyword1(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr], Keywords.EXTENDS);
        keyword.canCompleteEmptyToken = true;
        typeParameter.type = keyword;
        --this.identifierPtr;
        --this.identifierLengthPtr;
        this.assistNode = typeParameter.type;
        this.lastCheckPoint = typeParameter.type.sourceEnd + 1;
    }

    protected void consumeTypeParameter1() {
        super.consumeTypeParameter1();
        this.popElement(1040);
    }

    protected void consumeTypeParameterWithExtends() {
        TypeParameter typeParameter;
        super.consumeTypeParameterWithExtends();
        if (this.assistNode != null && this.assistNodeParent == null && (typeParameter = (TypeParameter)this.genericsStack[this.genericsPtr]) != null && typeParameter.type == this.assistNode) {
            this.assistNodeParent = typeParameter;
        }
        this.popElement(1053);
    }

    protected void consumeTypeParameterWithExtendsAndBounds() {
        TypeParameter typeParameter;
        super.consumeTypeParameterWithExtendsAndBounds();
        if (this.assistNode != null && this.assistNodeParent == null && (typeParameter = (TypeParameter)this.genericsStack[this.genericsPtr]) != null && typeParameter.type == this.assistNode) {
            this.assistNodeParent = typeParameter;
        }
        this.popElement(1053);
    }

    protected void consumeTypeParameter1WithExtends() {
        TypeParameter typeParameter;
        super.consumeTypeParameter1WithExtends();
        if (this.assistNode != null && this.assistNodeParent == null && (typeParameter = (TypeParameter)this.genericsStack[this.genericsPtr]) != null && typeParameter.type == this.assistNode) {
            this.assistNodeParent = typeParameter;
        }
        this.popElement(1053);
    }

    protected void consumeTypeParameter1WithExtendsAndBounds() {
        TypeParameter typeParameter;
        super.consumeTypeParameter1WithExtendsAndBounds();
        if (this.assistNode != null && this.assistNodeParent == null && (typeParameter = (TypeParameter)this.genericsStack[this.genericsPtr]) != null && typeParameter.type == this.assistNode) {
            this.assistNodeParent = typeParameter;
        }
        this.popElement(1053);
    }

    protected void consumeUnionType() {
        this.pushOnElementStack(1031);
        super.consumeUnionType();
        this.popElement(1031);
    }

    protected void consumeUnionTypeAsClassType() {
        this.pushOnElementStack(1031);
        super.consumeUnionTypeAsClassType();
        this.popElement(1031);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void consumeWildcard() {
        super.consumeWildcard();
        if (this.assistIdentifier() != null || this.currentToken != 26) return;
        if (this.cursorLocation < this.scanner.startPosition && this.scanner.currentPosition == this.scanner.startPosition) {
            this.pushIdentifier();
        } else {
            if (this.cursorLocation + 1 < this.scanner.startPosition || this.cursorLocation >= this.scanner.currentPosition) return;
            this.pushIdentifier();
        }
        Wildcard wildcard = (Wildcard)this.genericsStack[this.genericsPtr];
        CompletionOnKeyword1 keyword = new CompletionOnKeyword1(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr], new char[][]{Keywords.EXTENDS, Keywords.SUPER});
        keyword.canCompleteEmptyToken = true;
        wildcard.kind = 1;
        wildcard.bound = keyword;
        --this.identifierPtr;
        --this.identifierLengthPtr;
        this.assistNode = wildcard.bound;
        this.lastCheckPoint = wildcard.bound.sourceEnd + 1;
    }

    protected void consumeWildcard1() {
        super.consumeWildcard1();
        this.popElement(1040);
    }

    protected void consumeWildcard2() {
        super.consumeWildcard2();
        this.popElement(1040);
    }

    protected void consumeWildcard3() {
        super.consumeWildcard3();
        this.popElement(1040);
    }

    protected void consumeWildcardBoundsExtends() {
        Wildcard wildcard;
        super.consumeWildcardBoundsExtends();
        if (this.assistNode != null && this.assistNodeParent == null && (wildcard = (Wildcard)this.genericsStack[this.genericsPtr]) != null && wildcard.bound == this.assistNode) {
            this.assistNodeParent = wildcard;
        }
        this.popElement(1053);
    }

    protected void consumeWildcardBounds1Extends() {
        Wildcard wildcard;
        super.consumeWildcardBounds1Extends();
        if (this.assistNode != null && this.assistNodeParent == null && (wildcard = (Wildcard)this.genericsStack[this.genericsPtr]) != null && wildcard.bound == this.assistNode) {
            this.assistNodeParent = wildcard;
        }
        this.popElement(1053);
    }

    protected void consumeWildcardBounds2Extends() {
        Wildcard wildcard;
        super.consumeWildcardBounds2Extends();
        if (this.assistNode != null && this.assistNodeParent == null && (wildcard = (Wildcard)this.genericsStack[this.genericsPtr]) != null && wildcard.bound == this.assistNode) {
            this.assistNodeParent = wildcard;
        }
        this.popElement(1053);
    }

    protected void consumeWildcardBounds3Extends() {
        Wildcard wildcard;
        super.consumeWildcardBounds3Extends();
        if (this.assistNode != null && this.assistNodeParent == null && (wildcard = (Wildcard)this.genericsStack[this.genericsPtr]) != null && wildcard.bound == this.assistNode) {
            this.assistNodeParent = wildcard;
        }
        this.popElement(1053);
    }

    protected void consumeUnaryExpression(int op) {
        super.consumeUnaryExpression(op);
        this.popElement(1039);
        if (this.expressionStack[this.expressionPtr] instanceof UnaryExpression) {
            UnaryExpression exp = (UnaryExpression)this.expressionStack[this.expressionPtr];
            if (this.assistNode != null && exp.expression == this.assistNode) {
                this.assistNodeParent = exp;
            }
        }
    }

    protected void consumeUnaryExpression(int op, boolean post) {
        super.consumeUnaryExpression(op, post);
        this.popElement(1039);
        if (this.expressionStack[this.expressionPtr] instanceof UnaryExpression) {
            UnaryExpression exp = (UnaryExpression)this.expressionStack[this.expressionPtr];
            if (this.assistNode != null && exp.expression == this.assistNode) {
                this.assistNodeParent = exp;
            }
        }
    }

    public MethodDeclaration convertToMethodDeclaration(ConstructorDeclaration c, CompilationResult compilationResult) {
        int selectorSourceEnd;
        MethodDeclaration methodDeclaration = super.convertToMethodDeclaration(c, compilationResult);
        if (this.sourceEnds != null && (selectorSourceEnd = this.sourceEnds.removeKey(c)) != -1) {
            this.sourceEnds.put(methodDeclaration, selectorSourceEnd);
        }
        return methodDeclaration;
    }

    public ImportReference createAssistImportReference(char[][] tokens, long[] positions, int mod) {
        return new CompletionOnImportReference(tokens, positions, mod);
    }

    public ImportReference createAssistPackageReference(char[][] tokens, long[] positions) {
        return new CompletionOnPackageReference(tokens, positions);
    }

    public NameReference createQualifiedAssistNameReference(char[][] previousIdentifiers, char[] assistName, long[] positions) {
        return new CompletionOnQualifiedNameReference(previousIdentifiers, assistName, positions, this.isInsideAttributeValue());
    }

    public TypeReference createQualifiedAssistTypeReference(char[][] previousIdentifiers, char[] assistName, long[] positions) {
        switch (this.topKnownElementKind(1536)) {
            case 1031: {
                if (this.topKnownElementKind(1536, 1) == 1028) {
                    this.isOrphanCompletionNode = true;
                }
                return new CompletionOnQualifiedTypeReference(previousIdentifiers, assistName, positions, 3);
            }
            case 1029: {
                return new CompletionOnQualifiedTypeReference(previousIdentifiers, assistName, positions, 1);
            }
            case 1030: {
                return new CompletionOnQualifiedTypeReference(previousIdentifiers, assistName, positions, 2);
            }
        }
        return new CompletionOnQualifiedTypeReference(previousIdentifiers, assistName, positions);
    }

    public TypeReference createParameterizedQualifiedAssistTypeReference(char[][] previousIdentifiers, TypeReference[][] typeArguments, char[] assistName, TypeReference[] assistTypeArguments, long[] positions) {
        boolean isParameterized = false;
        int i = 0;
        while (i < typeArguments.length) {
            if (typeArguments[i] != null) {
                isParameterized = true;
            }
            ++i;
        }
        if (!isParameterized) {
            return this.createQualifiedAssistTypeReference(previousIdentifiers, assistName, positions);
        }
        switch (this.topKnownElementKind(1536)) {
            case 1031: {
                if (this.topKnownElementKind(1536, 1) == 1028) {
                    this.isOrphanCompletionNode = true;
                }
                return new CompletionOnParameterizedQualifiedTypeReference(previousIdentifiers, typeArguments, assistName, positions, 3);
            }
            case 1029: {
                return new CompletionOnParameterizedQualifiedTypeReference(previousIdentifiers, typeArguments, assistName, positions, 1);
            }
            case 1030: {
                return new CompletionOnParameterizedQualifiedTypeReference(previousIdentifiers, typeArguments, assistName, positions, 2);
            }
        }
        return new CompletionOnParameterizedQualifiedTypeReference(previousIdentifiers, typeArguments, assistName, positions);
    }

    public NameReference createSingleAssistNameReference(char[] assistName, long position) {
        int kind = this.topKnownElementKind(1536);
        if (!this.isInsideMethod()) {
            if (this.isInsideFieldInitialization()) {
                return new CompletionOnSingleNameReference(assistName, position, new char[][]{Keywords.FALSE, Keywords.TRUE}, false, this.isInsideAttributeValue());
            }
            return new CompletionOnSingleNameReference(assistName, position, this.isInsideAttributeValue());
        }
        boolean canBeExplicitConstructorCall = false;
        if (kind == 1025 && this.previousKind == 1025 && this.previousInfo == 7) {
            return new CompletionOnKeyword3(assistName, position, Keywords.WHILE);
        }
        if (kind == 1025 && this.previousKind == 1025 && this.previousInfo == 2) {
            return new CompletionOnKeyword3(assistName, position, new char[][]{Keywords.CATCH, Keywords.FINALLY});
        }
        if (kind == 1025 && this.topKnownElementInfo(1536) == 5) {
            return new CompletionOnKeyword3(assistName, position, new char[][]{Keywords.CASE, Keywords.DEFAULT});
        }
        char[][] keywords = new char[41][];
        int count = 0;
        if ((this.lastModifiers & 8) == 0) {
            keywords[count++] = Keywords.SUPER;
            keywords[count++] = Keywords.THIS;
        }
        keywords[count++] = Keywords.NEW;
        if (kind == 1025 || kind == 1062) {
            if (this.canBeExplicitConstructor == 2) {
                canBeExplicitConstructorCall = true;
            }
            if (this.options.complianceLevel >= 0x300000L) {
                keywords[count++] = Keywords.ASSERT;
            }
            keywords[count++] = Keywords.DO;
            keywords[count++] = Keywords.FOR;
            keywords[count++] = Keywords.IF;
            keywords[count++] = Keywords.RETURN;
            keywords[count++] = Keywords.SWITCH;
            keywords[count++] = Keywords.SYNCHRONIZED;
            keywords[count++] = Keywords.THROW;
            keywords[count++] = Keywords.TRY;
            keywords[count++] = Keywords.WHILE;
            keywords[count++] = Keywords.FINAL;
            keywords[count++] = Keywords.CLASS;
            if (this.previousKind == 1025) {
                switch (this.previousInfo) {
                    case 1: {
                        keywords[count++] = Keywords.ELSE;
                        break;
                    }
                    case 3: {
                        keywords[count++] = Keywords.CATCH;
                        keywords[count++] = Keywords.FINALLY;
                    }
                }
            } else if (this.previousKind == 1062 && this.previousInfo == 1) {
                keywords[count++] = Keywords.ELSE;
            }
            if (this.isInsideLoop()) {
                keywords[count++] = Keywords.CONTINUE;
            }
            if (this.isInsideBreakable()) {
                keywords[count++] = Keywords.BREAK;
            }
        } else if (kind != 1050 && kind != 1051) {
            keywords[count++] = Keywords.TRUE;
            keywords[count++] = Keywords.FALSE;
            keywords[count++] = Keywords.NULL;
            if (kind == 1049) {
                if (this.topKnownElementInfo(1536) != 1) {
                    keywords[count++] = Keywords.DEFAULT;
                }
                keywords[count++] = Keywords.BREAK;
                keywords[count++] = Keywords.CASE;
                if (this.options.complianceLevel >= 0x300000L) {
                    keywords[count++] = Keywords.ASSERT;
                }
                keywords[count++] = Keywords.DO;
                keywords[count++] = Keywords.FOR;
                keywords[count++] = Keywords.IF;
                keywords[count++] = Keywords.RETURN;
                keywords[count++] = Keywords.SWITCH;
                keywords[count++] = Keywords.SYNCHRONIZED;
                keywords[count++] = Keywords.THROW;
                keywords[count++] = Keywords.TRY;
                keywords[count++] = Keywords.WHILE;
                keywords[count++] = Keywords.FINAL;
                keywords[count++] = Keywords.CLASS;
                if (this.isInsideLoop()) {
                    keywords[count++] = Keywords.CONTINUE;
                }
            }
        }
        char[][] cArrayArray = keywords;
        keywords = new char[count][];
        System.arraycopy(cArrayArray, 0, keywords, 0, count);
        return new CompletionOnSingleNameReference(assistName, position, keywords, canBeExplicitConstructorCall, this.isInsideAttributeValue());
    }

    public TypeReference createSingleAssistTypeReference(char[] assistName, long position) {
        switch (this.topKnownElementKind(1536)) {
            case 1031: {
                if (this.topKnownElementKind(1536, 1) == 1028) {
                    this.isOrphanCompletionNode = true;
                }
                return new CompletionOnSingleTypeReference(assistName, position, 3);
            }
            case 1029: {
                return new CompletionOnSingleTypeReference(assistName, position, 1);
            }
            case 1030: {
                return new CompletionOnSingleTypeReference(assistName, position, 2);
            }
        }
        return new CompletionOnSingleTypeReference(assistName, position);
    }

    public TypeReference createParameterizedSingleAssistTypeReference(TypeReference[] typeArguments, char[] assistName, long position) {
        return this.createSingleAssistTypeReference(assistName, position);
    }

    protected StringLiteral createStringLiteral(char[] token, int start, int end, int lineNumber) {
        if (start <= this.cursorLocation && this.cursorLocation <= end) {
            char[] source = this.scanner.source;
            int contentStart = start;
            int contentEnd = end;
            int pos = contentStart;
            if (source[pos] == '\"') {
                contentStart = pos + 1;
            } else if (source[pos] == '\\' && source[pos + 1] == 'u') {
                pos += 2;
                while (source[pos] == 'u') {
                    ++pos;
                }
                if (source[pos] == '\u0000' && source[pos + 1] == '\u0000' && source[pos + 2] == '\u0002' && source[pos + 3] == '\u0002') {
                    contentStart = pos + 4;
                }
            }
            pos = contentEnd;
            if (source[pos] == '\"') {
                contentEnd = pos - 1;
            } else if (source.length > 5 && source[pos - 4] == 'u' && source[pos - 3] == '\u0000' && source[pos - 2] == '\u0000' && source[pos - 1] == '\u0002' && source[pos] == '\u0002') {
                pos -= 5;
                while (pos > -1 && source[pos] == 'u') {
                    --pos;
                }
                if (pos > -1 && source[pos] == '\\') {
                    contentEnd = pos - 1;
                }
            }
            if (contentEnd < start) {
                contentEnd = end;
            }
            if (this.cursorLocation != end || end == contentEnd) {
                CompletionOnStringLiteral stringLiteral = new CompletionOnStringLiteral(token, start, end, contentStart, contentEnd, lineNumber);
                this.assistNode = stringLiteral;
                this.restartRecovery = true;
                this.lastCheckPoint = end;
                return stringLiteral;
            }
        }
        return super.createStringLiteral(token, start, end, lineNumber);
    }

    protected TypeReference copyDims(TypeReference typeRef, int dim) {
        if (this.assistNode == typeRef) {
            return typeRef;
        }
        TypeReference result = super.copyDims(typeRef, dim);
        if (this.assistNodeParent == typeRef) {
            this.assistNodeParent = result;
        }
        return result;
    }

    public CompilationUnitDeclaration dietParse(ICompilationUnit sourceUnit, CompilationResult compilationResult, int cursorLoc) {
        this.cursorLocation = cursorLoc;
        CompletionScanner completionScanner = (CompletionScanner)this.scanner;
        completionScanner.completionIdentifier = null;
        completionScanner.cursorLocation = cursorLoc;
        return this.dietParse(sourceUnit, compilationResult);
    }

    public void flushAssistState() {
        super.flushAssistState();
        this.isOrphanCompletionNode = false;
        this.isAlreadyAttached = false;
        this.assistNodeParent = null;
        CompletionScanner completionScanner = (CompletionScanner)this.scanner;
        completionScanner.completedIdentifierStart = 0;
        completionScanner.completedIdentifierEnd = -1;
    }

    protected TypeReference getTypeReferenceForGenericType(int dim, int identifierLength, int numberOfIdentifiers) {
        TypeReference ref;
        block8: {
            ref = super.getTypeReferenceForGenericType(dim, identifierLength, numberOfIdentifiers);
            this.checkForDiamond(ref);
            if (this.assistNode == null) break block8;
            if (identifierLength == 1 && numberOfIdentifiers == 1) {
                ParameterizedSingleTypeReference singleRef = (ParameterizedSingleTypeReference)ref;
                TypeReference[] typeArguments = singleRef.typeArguments;
                int i = 0;
                while (i < typeArguments.length) {
                    if (typeArguments[i] == this.assistNode) {
                        this.assistNodeParent = ref;
                        return ref;
                    }
                    ++i;
                }
            } else {
                ParameterizedQualifiedTypeReference qualifiedRef = (ParameterizedQualifiedTypeReference)ref;
                TypeReference[][] typeArguments = qualifiedRef.typeArguments;
                int i = 0;
                while (i < typeArguments.length) {
                    if (typeArguments[i] != null) {
                        int j = 0;
                        while (j < typeArguments[i].length) {
                            if (typeArguments[i][j] == this.assistNode) {
                                this.assistNodeParent = ref;
                                return ref;
                            }
                            ++j;
                        }
                    }
                    ++i;
                }
            }
        }
        return ref;
    }

    protected NameReference getUnspecifiedReference() {
        NameReference nameReference = super.getUnspecifiedReference();
        if (this.record) {
            this.recordReference(nameReference);
        }
        return nameReference;
    }

    protected NameReference getUnspecifiedReferenceOptimized() {
        if (this.identifierLengthStack[this.identifierLengthPtr] > 1) {
            this.invocationType = -1;
            this.qualifier = -1;
        }
        NameReference nameReference = super.getUnspecifiedReferenceOptimized();
        if (this.record) {
            this.recordReference(nameReference);
        }
        return nameReference;
    }

    private boolean isAlreadyPotentialName(int identifierStart) {
        if (this.potentialVariableNamesPtr < 0) {
            return false;
        }
        return identifierStart <= this.potentialVariableNameEnds[this.potentialVariableNamesPtr];
    }

    protected int indexOfAssistIdentifier(boolean useGenericsStack) {
        if (this.record) {
            return -1;
        }
        return super.indexOfAssistIdentifier(useGenericsStack);
    }

    public void initialize() {
        super.initialize();
        this.labelPtr = -1;
        this.initializeForBlockStatements();
    }

    public void initialize(boolean initializeNLS) {
        super.initialize(initializeNLS);
        this.labelPtr = -1;
        this.initializeForBlockStatements();
    }

    private void initializeForBlockStatements() {
        this.previousToken = -1;
        this.previousIdentifierPtr = -1;
        this.invocationType = -1;
        this.qualifier = -1;
        this.popUntilElement(1049);
        if (this.topKnownElementKind(1536) != 1049) {
            if (this.topKnownElementKind(1536) == 1037) {
                this.popUntilElement(1037);
            } else {
                this.popUntilElement(1025);
            }
        }
    }

    public void initializeScanner() {
        this.scanner = new CompletionScanner(this.options.sourceLevel);
    }

    private boolean isAfterArrayType() {
        return this.intPtr > -1 && this.intStack[this.intPtr] < 11;
    }

    private boolean isEmptyNameCompletion() {
        return this.assistNode != null && this.assistNode instanceof CompletionOnSingleNameReference && ((CompletionOnSingleNameReference)this.assistNode).token.length == 0;
    }

    protected boolean isInsideAnnotation() {
        int i = this.elementPtr;
        while (i > -1) {
            if (this.elementKindStack[i] == 1057) {
                return true;
            }
            --i;
        }
        return false;
    }

    protected boolean isIndirectlyInsideBlock() {
        int i = this.elementPtr;
        while (i > -1) {
            if (this.elementKindStack[i] == 1025) {
                return true;
            }
            --i;
        }
        return false;
    }

    protected boolean isInsideBlock() {
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
                case 1025: {
                    return true;
                }
            }
            --i;
        }
        return false;
    }

    protected boolean isInsideBreakable() {
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
                case 1049: {
                    return true;
                }
                case 1025: 
                case 1062: {
                    switch (this.elementInfoStack[i]) {
                        case 4: 
                        case 6: 
                        case 7: {
                            return true;
                        }
                    }
                }
            }
            --i;
        }
        return false;
    }

    protected boolean isInsideLoop() {
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
                case 1025: 
                case 1062: {
                    switch (this.elementInfoStack[i]) {
                        case 4: 
                        case 6: 
                        case 7: {
                            return true;
                        }
                    }
                }
            }
            --i;
        }
        return false;
    }

    protected boolean isInsideReturn() {
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
                case 1025: {
                    return false;
                }
                case 1062: {
                    return false;
                }
                case 1034: {
                    return true;
                }
            }
            --i;
        }
        return false;
    }

    public CompilationUnitDeclaration parse(ICompilationUnit sourceUnit, CompilationResult compilationResult, int cursorLoc) {
        this.cursorLocation = cursorLoc;
        CompletionScanner completionScanner = (CompletionScanner)this.scanner;
        completionScanner.completionIdentifier = null;
        completionScanner.cursorLocation = cursorLoc;
        return this.parse(sourceUnit, compilationResult);
    }

    public void parseBlockStatements(ConstructorDeclaration cd, CompilationUnitDeclaration unit) {
        this.canBeExplicitConstructor = 1;
        super.parseBlockStatements(cd, unit);
    }

    public MethodDeclaration parseSomeStatements(int start, int end, int fakeBlocksCount, CompilationUnitDeclaration unit) {
        int length;
        MethodDeclaration fakeMethod;
        block7: {
            this.methodRecoveryActivated = true;
            this.initialize();
            this.goForBlockStatementsopt();
            fakeMethod = new MethodDeclaration(unit.compilationResult());
            fakeMethod.selector = FAKE_METHOD_NAME;
            fakeMethod.bodyStart = start;
            fakeMethod.bodyEnd = end;
            fakeMethod.declarationSourceStart = start;
            fakeMethod.declarationSourceEnd = end;
            fakeMethod.sourceStart = start;
            fakeMethod.sourceEnd = start;
            this.referenceContext = fakeMethod;
            this.compilationUnit = unit;
            this.diet = false;
            this.restartRecovery = true;
            this.scanner.resetTo(start, end);
            this.consumeNestedMethod();
            int i22 = 0;
            while (i22 < fakeBlocksCount) {
                this.consumeOpenFakeBlock();
                ++i22;
            }
            try {
                try {
                    this.parse();
                }
                catch (AbortCompilation abortCompilation) {
                    this.lastAct = 12446;
                    int n = this.nestedType;
                    this.nestedMethod[n] = this.nestedMethod[n] - 1;
                    break block7;
                }
            }
            catch (Throwable i22) {
                int n = this.nestedType;
                this.nestedMethod[n] = this.nestedMethod[n] - 1;
                throw i22;
            }
            int n = this.nestedType;
            this.nestedMethod[n] = this.nestedMethod[n] - 1;
        }
        if (!this.hasError && this.astLengthPtr > -1 && (length = this.astLengthStack[this.astLengthPtr--]) != 0) {
            fakeMethod.statements = new Statement[length];
            System.arraycopy(this.astStack, (this.astPtr -= length) + 1, fakeMethod.statements, 0, length);
        }
        return fakeMethod;
    }

    protected void popUntilCompletedAnnotationIfNecessary() {
        if (this.elementPtr < 0) {
            return;
        }
        int i = this.elementPtr;
        while (i > -1 && (this.elementKindStack[i] != 1057 || (this.elementInfoStack[i] & 4) == 0)) {
            --i;
        }
        if (i >= 0) {
            this.previousKind = this.elementKindStack[i];
            this.previousInfo = this.elementInfoStack[i];
            this.previousObjectInfo = this.elementObjectInfoStack[i];
            int j = i;
            while (j <= this.elementPtr) {
                this.elementObjectInfoStack[j] = null;
                ++j;
            }
            this.elementPtr = i - 1;
        }
    }

    protected void prepareForBlockStatements() {
        this.nestedType = 0;
        this.nestedMethod[0] = 1;
        this.variablesCounter[this.nestedType] = 0;
        this.realBlockPtr = 1;
        this.realBlockStack[1] = 0;
        this.initializeForBlockStatements();
    }

    protected void pushOnLabelStack(char[] label) {
        if (this.labelPtr < -1) {
            return;
        }
        int stackLength = this.labelStack.length;
        if (++this.labelPtr >= stackLength) {
            char[][] cArrayArray = new char[stackLength + 10][];
            this.labelStack = cArrayArray;
            System.arraycopy(this.labelStack, 0, cArrayArray, 0, stackLength);
        }
        this.labelStack[this.labelPtr] = label;
    }

    private void pushCompletionOnMemberAccessOnExpressionStack(boolean isSuperAccess) {
        char[] source = this.identifierStack[this.identifierPtr];
        long pos = this.identifierPositionStack[this.identifierPtr--];
        CompletionOnMemberAccess fr = new CompletionOnMemberAccess(source, pos, this.isInsideAnnotation());
        this.assistNode = fr;
        this.lastCheckPoint = fr.sourceEnd + 1;
        --this.identifierLengthPtr;
        if (isSuperAccess) {
            fr.sourceStart = this.intStack[this.intPtr--];
            fr.receiver = new SuperReference(fr.sourceStart, this.endPosition);
            this.pushOnExpressionStack(fr);
        } else {
            fr.receiver = this.expressionStack[this.expressionPtr];
            if (fr.receiver.isThis()) {
                fr.sourceStart = fr.receiver.sourceStart;
            }
            this.expressionStack[this.expressionPtr] = fr;
        }
    }

    private void recordReference(NameReference nameReference) {
        if (!this.skipRecord && this.recordFrom <= nameReference.sourceStart && nameReference.sourceEnd <= this.recordTo && !this.isAlreadyPotentialName(nameReference.sourceStart)) {
            char[] token = nameReference instanceof SingleNameReference ? ((SingleNameReference)nameReference).token : ((QualifiedNameReference)nameReference).tokens[0];
            if (Character.isUpperCase(token[0])) {
                return;
            }
            this.addPotentialName(token, nameReference.sourceStart, nameReference.sourceEnd);
        }
    }

    public void recoveryExitFromVariable() {
        if (this.currentElement != null && this.currentElement instanceof RecoveredLocalVariable) {
            RecoveredElement oldElement = this.currentElement;
            super.recoveryExitFromVariable();
            if (oldElement != this.currentElement) {
                this.popElement(1036);
            }
        } else {
            super.recoveryExitFromVariable();
        }
    }

    public void recoveryTokenCheck() {
        RecoveredElement oldElement = this.currentElement;
        switch (this.currentToken) {
            case 68: {
                if (!this.ignoreNextOpeningBrace) {
                    this.pendingAnnotation = null;
                }
                super.recoveryTokenCheck();
                break;
            }
            case 31: {
                super.recoveryTokenCheck();
                if (this.currentElement == oldElement || !(oldElement instanceof RecoveredBlock)) break;
                if (this.topKnownElementKind(1536) == 1037) {
                    this.popElement(1037);
                    break;
                }
                this.popElement(1025);
                break;
            }
            case 102: {
                super.recoveryTokenCheck();
                if (this.topKnownElementKind(1536) != 1025 || this.topKnownElementInfo(1536) != 5) break;
                this.pushOnElementStack(1049);
                break;
            }
            case 97: {
                super.recoveryTokenCheck();
                if (this.topKnownElementKind(1536) == 1025 && this.topKnownElementInfo(1536) == 5) {
                    this.pushOnElementStack(1049, 1);
                    break;
                }
                if (this.topKnownElementKind(1536) != 1049) break;
                this.popElement(1049);
                this.pushOnElementStack(1049, 1);
                break;
            }
            default: {
                super.recoveryTokenCheck();
            }
        }
    }

    public void reset() {
        super.reset();
        this.cursorLocation = 0;
        if (this.storeSourceEnds) {
            this.sourceEnds = new HashtableOfObjectToInt();
        }
    }

    public void resetAfterCompletion() {
        this.cursorLocation = 0;
        this.flushAssistState();
    }

    public void restoreAssistParser(Object parserState) {
        int[] state = (int[])parserState;
        CompletionScanner completionScanner = (CompletionScanner)this.scanner;
        this.cursorLocation = state[0];
        completionScanner.cursorLocation = state[1];
    }

    protected boolean resumeAfterRecovery() {
        this.hasUnusedModifiers = false;
        if (this.assistNode != null && this.scanner.eofPosition == this.cursorLocation + 1 && (!(this.referenceContext instanceof CompilationUnitDeclaration) || this.isIndirectlyInsideFieldInitialization() || this.assistNodeParent instanceof FieldDeclaration && !(this.assistNodeParent instanceof Initializer))) {
            if (this.currentElement instanceof RecoveredType || this.currentElement.enclosingType() != null) {
                int end;
                this.pendingAnnotation = null;
                if (this.lastCheckPoint <= this.assistNode.sourceEnd) {
                    this.lastCheckPoint = this.assistNode.sourceEnd + 1;
                }
                this.scanner.eofPosition = (end = this.currentElement.topElement().sourceEnd()) < Integer.MAX_VALUE ? end + 1 : end;
            } else {
                this.resetStacks();
                return false;
            }
        }
        return super.resumeAfterRecovery();
    }

    public void setAssistIdentifier(char[] assistIdent) {
        ((CompletionScanner)this.scanner).completionIdentifier = assistIdent;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("elementKindStack : int[] = {");
        int i = 0;
        while (i <= this.elementPtr) {
            buffer.append(String.valueOf(this.elementKindStack[i])).append(',');
            ++i;
        }
        buffer.append("}\n");
        buffer.append("elementInfoStack : int[] = {");
        i = 0;
        while (i <= this.elementPtr) {
            buffer.append(String.valueOf(this.elementInfoStack[i])).append(',');
            ++i;
        }
        buffer.append("}\n");
        buffer.append(super.toString());
        return String.valueOf(buffer);
    }

    protected void updateRecoveryState() {
        this.currentElement.updateFromParserState();
        this.completionIdentifierCheck();
        this.attachOrphanCompletionNode();
        if (this.assistNode != null && this.currentElement != null) {
            this.currentElement.preserveEnclosingBlocks();
        }
        this.recoveryTokenCheck();
        this.recoveryExitFromVariable();
    }

    protected LocalDeclaration createLocalDeclaration(char[] assistName, int sourceStart, int sourceEnd) {
        if (this.indexOfAssistIdentifier() < 0) {
            return super.createLocalDeclaration(assistName, sourceStart, sourceEnd);
        }
        CompletionOnLocalName local = new CompletionOnLocalName(assistName, sourceStart, sourceEnd);
        this.assistNode = local;
        this.lastCheckPoint = sourceEnd + 1;
        return local;
    }

    protected JavadocParser createJavadocParser() {
        return new CompletionJavadocParser(this);
    }

    protected FieldDeclaration createFieldDeclaration(char[] assistName, int sourceStart, int sourceEnd) {
        if (this.indexOfAssistIdentifier() < 0 || this.currentElement instanceof RecoveredUnit && ((RecoveredUnit)this.currentElement).typeCount == 0) {
            return super.createFieldDeclaration(assistName, sourceStart, sourceEnd);
        }
        CompletionOnFieldName field = new CompletionOnFieldName(assistName, sourceStart, sourceEnd);
        this.assistNode = field;
        this.lastCheckPoint = sourceEnd + 1;
        return field;
    }

    private boolean stackHasInstanceOfExpression(Object[] stackToSearch, int startIndex) {
        int indexInstanceOf = startIndex;
        while (indexInstanceOf >= 0) {
            if (stackToSearch[indexInstanceOf] instanceof InstanceOfExpression) {
                return true;
            }
            --indexInstanceOf;
        }
        return false;
    }
}

