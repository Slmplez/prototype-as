/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.formatter;

import java.util.ArrayList;
import java.util.Map;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.AssertStatement;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.BreakStatement;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CharLiteral;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.Clinit;
import org.eclipse.jdt.internal.compiler.ast.CombinedBinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ContinueStatement;
import org.eclipse.jdt.internal.compiler.ast.DoStatement;
import org.eclipse.jdt.internal.compiler.ast.DoubleLiteral;
import org.eclipse.jdt.internal.compiler.ast.EmptyStatement;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.FloatLiteral;
import org.eclipse.jdt.internal.compiler.ast.ForStatement;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.LabeledStatement;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LongLiteral;
import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.OR_OR_Expression;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.PostfixExpression;
import org.eclipse.jdt.internal.compiler.ast.PrefixExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedThisReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.ast.StringLiteralConcatenation;
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
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.core.util.CodeSnippetParsingUtil;
import org.eclipse.jdt.internal.formatter.AbortFormatting;
import org.eclipse.jdt.internal.formatter.BinaryExpressionFragmentBuilder;
import org.eclipse.jdt.internal.formatter.CascadingMethodInvocationFragmentBuilder;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatterOptions;
import org.eclipse.jdt.internal.formatter.Scribe;
import org.eclipse.jdt.internal.formatter.align.Alignment;
import org.eclipse.jdt.internal.formatter.align.AlignmentException;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.TextEdit;

public class CodeFormatterVisitor
extends ASTVisitor {
    public static final boolean DEBUG = false;
    private static final int NO_MODIFIERS = 0;
    private static final int[] SINGLETYPEREFERENCE_EXPECTEDTOKENS = new int[]{26, 32, 33, 34, 35, 36, 37, 38, 39, 40};
    private static final int[] CLOSING_GENERICS_EXPECTEDTOKENS = new int[]{10, 11, 12};
    public int lastLocalDeclarationSourceStart;
    int lastBinaryExpressionAlignmentBreakIndentation;
    private Scanner localScanner;
    public DefaultCodeFormatterOptions preferences;
    public Scribe scribe;
    static final long EXPRESSIONS_POS_ENTER_EQUALITY = 1L;
    static final long EXPRESSIONS_POS_ENTER_TWO = 2L;
    static final long EXPRESSIONS_POS_BETWEEN_TWO = 3L;
    static final long EXPRESSIONS_POS_MASK = 3L;
    long expressionsPos;
    int expressionsDepth = -1;
    int arrayInitializersDepth = -1;

    public CodeFormatterVisitor(DefaultCodeFormatterOptions preferences, Map settings, IRegion[] regions, CodeSnippetParsingUtil codeSnippetParsingUtil, boolean includeComments) {
        long sourceLevel = settings == null ? 0x2F0000L : CompilerOptions.versionToJdkLevel(settings.get("org.eclipse.jdt.core.compiler.source"));
        this.localScanner = new Scanner(true, false, false, sourceLevel, null, null, true);
        this.preferences = preferences;
        this.scribe = new Scribe(this, sourceLevel, regions, codeSnippetParsingUtil, includeComments);
    }

    public void acceptProblem(IProblem problem) {
        super.acceptProblem(problem);
    }

    private BinaryExpressionFragmentBuilder buildFragments(BinaryExpression binaryExpression, BlockScope scope) {
        BinaryExpressionFragmentBuilder builder = new BinaryExpressionFragmentBuilder();
        if (binaryExpression instanceof CombinedBinaryExpression) {
            binaryExpression.traverse((ASTVisitor)builder, scope);
            return builder;
        }
        switch ((binaryExpression.bits & 0xFC0) >> 6) {
            case 15: {
                binaryExpression.left.traverse((ASTVisitor)builder, scope);
                builder.operatorsList.add(new Integer(4));
                binaryExpression.right.traverse((ASTVisitor)builder, scope);
                break;
            }
            case 14: {
                binaryExpression.left.traverse((ASTVisitor)builder, scope);
                builder.operatorsList.add(new Integer(1));
                binaryExpression.right.traverse((ASTVisitor)builder, scope);
                break;
            }
            case 9: {
                binaryExpression.left.traverse((ASTVisitor)builder, scope);
                builder.operatorsList.add(new Integer(6));
                binaryExpression.right.traverse((ASTVisitor)builder, scope);
                break;
            }
            case 16: {
                binaryExpression.left.traverse((ASTVisitor)builder, scope);
                builder.operatorsList.add(new Integer(5));
                binaryExpression.right.traverse((ASTVisitor)builder, scope);
                break;
            }
            case 8: {
                binaryExpression.left.traverse((ASTVisitor)builder, scope);
                builder.operatorsList.add(new Integer(21));
                binaryExpression.right.traverse((ASTVisitor)builder, scope);
                break;
            }
            case 13: {
                binaryExpression.left.traverse((ASTVisitor)builder, scope);
                builder.operatorsList.add(new Integer(2));
                binaryExpression.right.traverse((ASTVisitor)builder, scope);
                break;
            }
            case 3: {
                binaryExpression.left.traverse((ASTVisitor)builder, scope);
                builder.operatorsList.add(new Integer(22));
                binaryExpression.right.traverse((ASTVisitor)builder, scope);
                break;
            }
            case 2: {
                binaryExpression.left.traverse((ASTVisitor)builder, scope);
                builder.operatorsList.add(new Integer(20));
                binaryExpression.right.traverse((ASTVisitor)builder, scope);
                break;
            }
            case 0: {
                binaryExpression.left.traverse((ASTVisitor)builder, scope);
                builder.operatorsList.add(new Integer(24));
                binaryExpression.right.traverse((ASTVisitor)builder, scope);
                break;
            }
            case 1: {
                binaryExpression.left.traverse((ASTVisitor)builder, scope);
                builder.operatorsList.add(new Integer(25));
                binaryExpression.right.traverse((ASTVisitor)builder, scope);
            }
        }
        return builder;
    }

    private CascadingMethodInvocationFragmentBuilder buildFragments(MessageSend messageSend, BlockScope scope) {
        CascadingMethodInvocationFragmentBuilder builder = new CascadingMethodInvocationFragmentBuilder();
        messageSend.traverse((ASTVisitor)builder, scope);
        return builder;
    }

    private boolean commentStartsBlock(int start, int end) {
        this.localScanner.resetTo(start, end);
        try {
            if (this.localScanner.getNextToken() == 68) {
                switch (this.localScanner.getNextToken()) {
                    case 1001: 
                    case 1002: 
                    case 1003: {
                        return true;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return false;
    }

    private ASTNode[] computeMergedMemberDeclarations(ASTNode[] nodes) {
        ArrayList<ASTNode> mergedNodes = new ArrayList<ASTNode>();
        int i = 0;
        int max = nodes.length;
        while (i < max) {
            ASTNode currentNode = nodes[i];
            if (currentNode instanceof FieldDeclaration) {
                FieldDeclaration currentField = (FieldDeclaration)currentNode;
                if (mergedNodes.size() == 0) {
                    mergedNodes.add(currentNode);
                } else {
                    ASTNode previousMergedNode = (ASTNode)mergedNodes.get(mergedNodes.size() - 1);
                    if (previousMergedNode instanceof MultiFieldDeclaration) {
                        MultiFieldDeclaration multiFieldDeclaration = (MultiFieldDeclaration)previousMergedNode;
                        int length = multiFieldDeclaration.declarations.length;
                        multiFieldDeclaration.declarations = new FieldDeclaration[length + 1];
                        System.arraycopy(multiFieldDeclaration.declarations, 0, multiFieldDeclaration.declarations, 0, length);
                        multiFieldDeclaration.declarations[length] = currentField;
                    } else if (previousMergedNode instanceof FieldDeclaration) {
                        FieldDeclaration previousFieldDeclaration = (FieldDeclaration)previousMergedNode;
                        if (currentField.declarationSourceStart == previousFieldDeclaration.declarationSourceStart) {
                            MultiFieldDeclaration multiFieldDeclaration = new MultiFieldDeclaration(new FieldDeclaration[]{previousFieldDeclaration, currentField});
                            multiFieldDeclaration.annotations = previousFieldDeclaration.annotations;
                            mergedNodes.set(mergedNodes.size() - 1, multiFieldDeclaration);
                        } else {
                            mergedNodes.add(currentNode);
                        }
                    } else {
                        mergedNodes.add(currentNode);
                    }
                }
            } else {
                mergedNodes.add(currentNode);
            }
            ++i;
        }
        if (mergedNodes.size() != nodes.length) {
            ASTNode[] result = new ASTNode[mergedNodes.size()];
            mergedNodes.toArray(result);
            return result;
        }
        return nodes;
    }

    private ASTNode[] computeMergedMemberDeclarations(TypeDeclaration typeDeclaration) {
        int fieldIndex = 0;
        int fieldCount = typeDeclaration.fields == null ? 0 : typeDeclaration.fields.length;
        FieldDeclaration field = fieldCount == 0 ? null : typeDeclaration.fields[fieldIndex];
        int fieldStart = field == null ? Integer.MAX_VALUE : field.declarationSourceStart;
        int methodIndex = 0;
        int methodCount = typeDeclaration.methods == null ? 0 : typeDeclaration.methods.length;
        AbstractMethodDeclaration method = methodCount == 0 ? null : typeDeclaration.methods[methodIndex];
        int methodStart = method == null ? Integer.MAX_VALUE : method.declarationSourceStart;
        int typeIndex = 0;
        int typeCount = typeDeclaration.memberTypes == null ? 0 : typeDeclaration.memberTypes.length;
        TypeDeclaration type = typeCount == 0 ? null : typeDeclaration.memberTypes[typeIndex];
        int typeStart = type == null ? Integer.MAX_VALUE : type.declarationSourceStart;
        int memberLength = fieldCount + methodCount + typeCount;
        ASTNode[] members = new ASTNode[memberLength];
        if (memberLength != 0) {
            int index = 0;
            int previousFieldStart = -1;
            do {
                if (fieldStart < methodStart && fieldStart < typeStart) {
                    if (field.getKind() == 3) {
                        previousFieldStart = fieldStart;
                        if (++fieldIndex < fieldCount) {
                            field = typeDeclaration.fields[fieldIndex];
                            fieldStart = field.declarationSourceStart;
                            continue;
                        }
                        fieldStart = Integer.MAX_VALUE;
                        continue;
                    }
                    if (fieldStart == previousFieldStart) {
                        ASTNode previousMember = members[index - 1];
                        if (previousMember instanceof MultiFieldDeclaration) {
                            MultiFieldDeclaration multiField = (MultiFieldDeclaration)previousMember;
                            int length = multiField.declarations.length;
                            multiField.declarations = new FieldDeclaration[length + 1];
                            System.arraycopy(multiField.declarations, 0, multiField.declarations, 0, length);
                            multiField.declarations[length] = field;
                        } else {
                            FieldDeclaration fieldDeclaration = (FieldDeclaration)previousMember;
                            MultiFieldDeclaration multiFieldDeclaration = new MultiFieldDeclaration(new FieldDeclaration[]{fieldDeclaration, field});
                            multiFieldDeclaration.annotations = fieldDeclaration.annotations;
                            members[index - 1] = multiFieldDeclaration;
                        }
                    } else {
                        members[index++] = field;
                    }
                    previousFieldStart = fieldStart;
                    if (++fieldIndex < fieldCount) {
                        field = typeDeclaration.fields[fieldIndex];
                        fieldStart = field.declarationSourceStart;
                        continue;
                    }
                    fieldStart = Integer.MAX_VALUE;
                    continue;
                }
                if (methodStart < fieldStart && methodStart < typeStart) {
                    if (!method.isDefaultConstructor() && !method.isClinit()) {
                        members[index++] = method;
                    }
                    if (++methodIndex < methodCount) {
                        method = typeDeclaration.methods[methodIndex];
                        methodStart = method.declarationSourceStart;
                        continue;
                    }
                    methodStart = Integer.MAX_VALUE;
                    continue;
                }
                members[index++] = type;
                if (++typeIndex < typeCount) {
                    type = typeDeclaration.memberTypes[typeIndex];
                    typeStart = type.declarationSourceStart;
                    continue;
                }
                typeStart = Integer.MAX_VALUE;
            } while (fieldIndex < fieldCount || typeIndex < typeCount || methodIndex < methodCount);
            if (members.length != index) {
                ASTNode[] aSTNodeArray = members;
                members = new ASTNode[index];
                System.arraycopy(aSTNodeArray, 0, members, 0, index);
            }
        }
        return members;
    }

    private boolean dumpBinaryExpression(BinaryExpression binaryExpression, int operator, BlockScope scope) {
        int numberOfParens = (binaryExpression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(binaryExpression, numberOfParens);
        }
        BinaryExpressionFragmentBuilder builder = this.buildFragments(binaryExpression, scope);
        int fragmentsSize = builder.size();
        if (this.expressionsDepth < 0) {
            this.expressionsDepth = 0;
        } else {
            ++this.expressionsDepth;
            this.expressionsPos <<= 2;
        }
        try {
            this.lastBinaryExpressionAlignmentBreakIndentation = 0;
            if ((builder.realFragmentsSize() > 1 || fragmentsSize > 4) && numberOfParens == 0) {
                int scribeLine = this.scribe.line;
                this.scribe.printComment();
                Alignment binaryExpressionAlignment = this.scribe.createAlignment(5, this.preferences.alignment_for_binary_expression, 1, fragmentsSize, this.scribe.scanner.currentPosition);
                this.scribe.enterAlignment(binaryExpressionAlignment);
                boolean ok = false;
                ASTNode[] fragments = builder.fragments();
                int[] operators = builder.operators();
                do {
                    try {
                        int max = fragmentsSize - 1;
                        int i = 0;
                        while (i < max) {
                            ASTNode fragment = fragments[i];
                            fragment.traverse(this, scope);
                            this.scribe.printComment(0, 256);
                            if (this.scribe.lastNumberOfNewLines == 1) {
                                this.scribe.indentationLevel = binaryExpressionAlignment.breakIndentationLevel;
                            }
                            if (this.preferences.wrap_before_binary_operator) {
                                this.scribe.alignFragment(binaryExpressionAlignment, i);
                                this.scribe.printNextToken(operators[i], this.preferences.insert_space_before_binary_operator);
                            } else {
                                this.scribe.printNextToken(operators[i], this.preferences.insert_space_before_binary_operator);
                                this.scribe.alignFragment(binaryExpressionAlignment, i);
                            }
                            if (operators[i] == 2 && this.isNextToken(2)) {
                                this.scribe.space();
                            }
                            if (this.preferences.insert_space_after_binary_operator) {
                                this.scribe.space();
                            }
                            ++i;
                        }
                        fragments[max].traverse(this, scope);
                        this.scribe.printComment(0, 256);
                        ok = true;
                    }
                    catch (AlignmentException e) {
                        this.scribe.redoAlignment(e);
                    }
                } while (!ok);
                this.scribe.exitAlignment(binaryExpressionAlignment, true);
                this.lastBinaryExpressionAlignmentBreakIndentation = this.scribe.line == scribeLine ? 0 : binaryExpressionAlignment.breakIndentationLevel;
            } else {
                this.expressionsPos |= 2L;
                binaryExpression.left.traverse((ASTVisitor)this, scope);
                this.expressionsPos &= 0xFFFFFFFFFFFFFFFCL;
                this.expressionsPos |= 3L;
                this.scribe.printNextToken(operator, this.preferences.insert_space_before_binary_operator, 6);
                if (operator == 2 && this.isNextToken(2)) {
                    this.scribe.space();
                }
                if (this.preferences.insert_space_after_binary_operator) {
                    this.scribe.space();
                }
                binaryExpression.right.traverse((ASTVisitor)this, scope);
            }
        }
        finally {
            --this.expressionsDepth;
            this.expressionsPos >>= 2;
            if (this.expressionsDepth < 0) {
                this.lastBinaryExpressionAlignmentBreakIndentation = 0;
            }
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(binaryExpression, numberOfParens);
        }
        return false;
    }

    private boolean dumpEqualityExpression(BinaryExpression binaryExpression, int operator, BlockScope scope) {
        int numberOfParens = (binaryExpression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(binaryExpression, numberOfParens);
        }
        if (this.expressionsDepth < 0) {
            this.expressionsDepth = 0;
        } else {
            ++this.expressionsDepth;
            this.expressionsPos <<= 2;
        }
        try {
            this.expressionsPos |= 1L;
            binaryExpression.left.traverse((ASTVisitor)this, scope);
            this.scribe.printNextToken(operator, this.preferences.insert_space_before_binary_operator, 7);
            if (this.preferences.insert_space_after_binary_operator) {
                this.scribe.space();
            }
            binaryExpression.right.traverse((ASTVisitor)this, scope);
        }
        finally {
            --this.expressionsDepth;
            this.expressionsPos >>= 2;
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(binaryExpression, numberOfParens);
        }
        return false;
    }

    private final TextEdit failedToFormat() {
        return null;
    }

    private void format(AbstractMethodDeclaration methodDeclaration, ClassScope scope, boolean isChunkStart, boolean isFirstClassBodyDeclaration) {
        int newLinesBeforeMethod;
        if (isFirstClassBodyDeclaration) {
            int newLinesBeforeFirstClassBodyDeclaration = this.preferences.blank_lines_before_first_class_body_declaration;
            if (newLinesBeforeFirstClassBodyDeclaration > 0) {
                this.scribe.printEmptyLines(newLinesBeforeFirstClassBodyDeclaration);
            }
        } else {
            int newLineBeforeChunk;
            int n = newLineBeforeChunk = isChunkStart ? this.preferences.blank_lines_before_new_chunk : 0;
            if (newLineBeforeChunk > 0) {
                this.scribe.printEmptyLines(newLineBeforeChunk);
            }
        }
        if ((newLinesBeforeMethod = this.preferences.blank_lines_before_method) > 0 && !isFirstClassBodyDeclaration) {
            this.scribe.printEmptyLines(newLinesBeforeMethod);
        } else if (this.scribe.line != 0 || this.scribe.column != 1) {
            this.scribe.printNewLine();
        }
        methodDeclaration.traverse((ASTVisitor)this, scope);
    }

    private void format(FieldDeclaration fieldDeclaration, ASTVisitor visitor, MethodScope scope, boolean isChunkStart, boolean isFirstClassBodyDeclaration) {
        Expression initialization;
        if (isFirstClassBodyDeclaration) {
            int newLinesBeforeFirstClassBodyDeclaration = this.preferences.blank_lines_before_first_class_body_declaration;
            if (newLinesBeforeFirstClassBodyDeclaration > 0) {
                this.scribe.printEmptyLines(newLinesBeforeFirstClassBodyDeclaration);
            }
        } else {
            int newLinesBeforeField;
            int newLineBeforeChunk;
            int n = newLineBeforeChunk = isChunkStart ? this.preferences.blank_lines_before_new_chunk : 0;
            if (newLineBeforeChunk > 0) {
                this.scribe.printEmptyLines(newLineBeforeChunk);
            }
            if ((newLinesBeforeField = this.preferences.blank_lines_before_field) > 0) {
                this.scribe.printEmptyLines(newLinesBeforeField);
            }
        }
        Alignment memberAlignment = this.scribe.getMemberAlignment();
        this.scribe.printComment();
        this.scribe.printModifiers(fieldDeclaration.annotations, this, 2);
        this.scribe.space();
        fieldDeclaration.type.traverse((ASTVisitor)this, scope);
        this.scribe.alignFragment(memberAlignment, 0);
        this.scribe.printNextToken(26, true);
        int extraDimensions = this.getDimensions();
        if (extraDimensions != 0) {
            int i = 0;
            while (i < extraDimensions) {
                this.scribe.printNextToken(16);
                this.scribe.printNextToken(70);
                ++i;
            }
        }
        if ((initialization = fieldDeclaration.initialization) != null) {
            this.scribe.alignFragment(memberAlignment, 1);
            this.scribe.printNextToken(71, this.preferences.insert_space_before_assignment_operator);
            if (this.preferences.insert_space_after_assignment_operator) {
                this.scribe.space();
            }
            Alignment assignmentAlignment = this.scribe.createAlignment(13, this.preferences.alignment_for_assignment, 2, 1, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(assignmentAlignment);
            boolean ok = false;
            do {
                try {
                    this.scribe.alignFragment(assignmentAlignment, 0);
                    initialization.traverse((ASTVisitor)this, scope);
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(assignmentAlignment, true);
        }
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        if (memberAlignment != null) {
            this.scribe.alignFragment(memberAlignment, 2);
            this.scribe.printComment(0, 256);
        } else {
            this.scribe.space();
            this.scribe.printComment(0, 256);
        }
    }

    private void format(ImportReference importRef, boolean isLast) {
        this.scribe.printNextToken(101);
        if (!isLast) {
            this.scribe.blank_lines_between_import_groups = this.preferences.blank_lines_between_import_groups;
        }
        this.scribe.space();
        if (importRef.isStatic()) {
            this.scribe.printNextToken(54);
            this.scribe.space();
        }
        if ((importRef.bits & 0x20000) != 0) {
            this.scribe.printQualifiedReference(importRef.sourceEnd, false);
            this.scribe.printNextToken(3);
            this.scribe.printNextToken(4);
            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        } else {
            this.scribe.printQualifiedReference(importRef.sourceEnd, false);
            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        }
        if (isLast) {
            this.scribe.blank_lines_between_import_groups = -1;
            this.scribe.printComment(0, 513);
        } else {
            this.scribe.printComment(0, 0);
            this.scribe.blank_lines_between_import_groups = -1;
        }
        this.scribe.printNewLine();
    }

    private void format(MultiFieldDeclaration multiFieldDeclaration, ASTVisitor visitor, MethodScope scope, boolean isChunkStart, boolean isFirstClassBodyDeclaration) {
        if (isFirstClassBodyDeclaration) {
            int newLinesBeforeFirstClassBodyDeclaration = this.preferences.blank_lines_before_first_class_body_declaration;
            if (newLinesBeforeFirstClassBodyDeclaration > 0) {
                this.scribe.printEmptyLines(newLinesBeforeFirstClassBodyDeclaration);
            }
        } else {
            int newLinesBeforeField;
            int newLineBeforeChunk;
            int n = newLineBeforeChunk = isChunkStart ? this.preferences.blank_lines_before_new_chunk : 0;
            if (newLineBeforeChunk > 0) {
                this.scribe.printEmptyLines(newLineBeforeChunk);
            }
            if ((newLinesBeforeField = this.preferences.blank_lines_before_field) > 0) {
                this.scribe.printEmptyLines(newLinesBeforeField);
            }
        }
        Alignment fieldAlignment = this.scribe.getMemberAlignment();
        this.scribe.printComment();
        this.scribe.printModifiers(multiFieldDeclaration.annotations, this, 2);
        this.scribe.space();
        multiFieldDeclaration.declarations[0].type.traverse((ASTVisitor)this, scope);
        int multipleFieldDeclarationsLength = multiFieldDeclaration.declarations.length;
        Alignment multiFieldDeclarationsAlignment = this.scribe.createAlignment(19, this.preferences.alignment_for_multiple_fields, multipleFieldDeclarationsLength - 1, this.scribe.scanner.currentPosition);
        this.scribe.enterAlignment(multiFieldDeclarationsAlignment);
        boolean ok = false;
        do {
            try {
                int i = 0;
                int length = multipleFieldDeclarationsLength;
                while (i < length) {
                    Expression initialization;
                    FieldDeclaration fieldDeclaration = multiFieldDeclaration.declarations[i];
                    if (i == 0) {
                        this.scribe.alignFragment(fieldAlignment, 0);
                        this.scribe.printNextToken(26, true);
                    } else {
                        this.scribe.printNextToken(26, false);
                    }
                    int extraDimensions = this.getDimensions();
                    if (extraDimensions != 0) {
                        int index = 0;
                        while (index < extraDimensions) {
                            this.scribe.printNextToken(16);
                            this.scribe.printNextToken(70);
                            ++index;
                        }
                    }
                    if ((initialization = fieldDeclaration.initialization) != null) {
                        if (i == 0) {
                            this.scribe.alignFragment(fieldAlignment, 1);
                        }
                        this.scribe.printNextToken(71, this.preferences.insert_space_before_assignment_operator);
                        if (this.preferences.insert_space_after_assignment_operator) {
                            this.scribe.space();
                        }
                        initialization.traverse((ASTVisitor)this, scope);
                    }
                    if (i != length - 1) {
                        this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_multiple_field_declarations);
                        this.scribe.printComment(0, 256);
                        this.scribe.alignFragment(multiFieldDeclarationsAlignment, i);
                        if (this.preferences.insert_space_after_comma_in_multiple_field_declarations) {
                            this.scribe.space();
                        }
                    } else {
                        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                        this.scribe.alignFragment(fieldAlignment, 2);
                        this.scribe.printComment(0, 256);
                    }
                    ++i;
                }
                ok = true;
            }
            catch (AlignmentException e) {
                this.scribe.redoAlignment(e);
            }
        } while (!ok);
        this.scribe.exitAlignment(multiFieldDeclarationsAlignment, true);
    }

    public TextEdit format(String string, ASTNode[] nodes) {
        this.scribe.reset();
        long startTime = 0L;
        char[] compilationUnitSource = string.toCharArray();
        this.localScanner.setSource(compilationUnitSource);
        this.scribe.resetScanner(compilationUnitSource);
        if (nodes == null) {
            return null;
        }
        this.lastLocalDeclarationSourceStart = -1;
        try {
            this.formatClassBodyDeclarations(nodes);
        }
        catch (AbortFormatting abortFormatting) {
            return this.failedToFormat();
        }
        return this.scribe.getRootEdit();
    }

    public TextEdit format(String string, CompilationUnitDeclaration compilationUnitDeclaration) {
        this.scribe.reset();
        if (compilationUnitDeclaration == null || compilationUnitDeclaration.ignoreFurtherInvestigation) {
            return this.failedToFormat();
        }
        long startTime = 0L;
        char[] compilationUnitSource = string.toCharArray();
        this.localScanner.setSource(compilationUnitSource);
        this.scribe.resetScanner(compilationUnitSource);
        this.lastLocalDeclarationSourceStart = -1;
        try {
            compilationUnitDeclaration.traverse((ASTVisitor)this, compilationUnitDeclaration.scope);
        }
        catch (AbortFormatting abortFormatting) {
            return this.failedToFormat();
        }
        return this.scribe.getRootEdit();
    }

    public TextEdit format(String string, ConstructorDeclaration constructorDeclaration) {
        this.scribe.reset();
        long startTime = 0L;
        char[] compilationUnitSource = string.toCharArray();
        this.localScanner.setSource(compilationUnitSource);
        this.scribe.resetScanner(compilationUnitSource);
        if (constructorDeclaration == null) {
            return null;
        }
        this.lastLocalDeclarationSourceStart = -1;
        try {
            Statement[] statements;
            ExplicitConstructorCall explicitConstructorCall = constructorDeclaration.constructorCall;
            if (explicitConstructorCall != null && !explicitConstructorCall.isImplicitSuper()) {
                explicitConstructorCall.traverse(this, null);
            }
            if ((statements = constructorDeclaration.statements) != null) {
                this.formatStatements(null, statements, false);
            }
            if (this.hasComments()) {
                this.scribe.printNewLine();
            }
            this.scribe.printComment();
        }
        catch (AbortFormatting abortFormatting) {
            return this.failedToFormat();
        }
        return this.scribe.getRootEdit();
    }

    public TextEdit format(String string, Expression expression) {
        this.scribe.reset();
        long startTime = 0L;
        char[] compilationUnitSource = string.toCharArray();
        this.localScanner.setSource(compilationUnitSource);
        this.scribe.resetScanner(compilationUnitSource);
        if (expression == null) {
            return null;
        }
        this.lastLocalDeclarationSourceStart = -1;
        try {
            expression.traverse((ASTVisitor)this, (BlockScope)null);
            this.scribe.printComment();
        }
        catch (AbortFormatting abortFormatting) {
            return this.failedToFormat();
        }
        return this.scribe.getRootEdit();
    }

    public void formatComment(int kind, String source, int start, int end, int indentationLevel) {
        if (source == null) {
            return;
        }
        this.scribe.printComment(kind, source, start, end, indentationLevel);
    }

    private void format(TypeDeclaration typeDeclaration) {
        boolean indent_body_declarations_compare_to_header;
        boolean space_before_opening_brace;
        String class_declaration_brace;
        TypeReference[] superInterfaces;
        TypeReference superclass;
        this.scribe.printComment();
        int line = this.scribe.line;
        this.scribe.printModifiers(typeDeclaration.annotations, this, 1);
        if (this.scribe.line > line) {
            line = this.scribe.line;
        }
        switch (TypeDeclaration.kind(typeDeclaration.modifiers)) {
            case 1: {
                this.scribe.printNextToken(72, true);
                break;
            }
            case 2: {
                this.scribe.printNextToken(95, true);
                break;
            }
            case 3: {
                this.scribe.printNextToken(98, true);
                break;
            }
            case 4: {
                this.scribe.printNextToken(53, this.preferences.insert_space_before_at_in_annotation_type_declaration);
                this.scribe.printNextToken(95, this.preferences.insert_space_after_at_in_annotation_type_declaration);
            }
        }
        this.scribe.printNextToken(26, true);
        TypeParameter[] typeParameters = typeDeclaration.typeParameters;
        if (typeParameters != null) {
            this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_type_parameters);
            if (this.preferences.insert_space_after_opening_angle_bracket_in_type_parameters) {
                this.scribe.space();
            }
            int length = typeParameters.length;
            int i = 0;
            while (i < length - 1) {
                typeParameters[i].traverse((ASTVisitor)this, typeDeclaration.scope);
                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_type_parameters);
                if (this.preferences.insert_space_after_comma_in_type_parameters) {
                    this.scribe.space();
                }
                ++i;
            }
            typeParameters[length - 1].traverse((ASTVisitor)this, typeDeclaration.scope);
            if (this.isClosingGenericToken()) {
                this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_type_parameters);
            }
            if (this.preferences.insert_space_after_closing_angle_bracket_in_type_parameters) {
                this.scribe.space();
            }
        }
        if ((superclass = typeDeclaration.superclass) != null) {
            Alignment superclassAlignment = this.scribe.createAlignment(20, this.preferences.alignment_for_superclass_in_type_declaration, 2, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(superclassAlignment);
            boolean ok = false;
            do {
                try {
                    this.scribe.alignFragment(superclassAlignment, 0);
                    this.scribe.printNextToken(99, true);
                    this.scribe.alignFragment(superclassAlignment, 1);
                    this.scribe.space();
                    superclass.traverse((ASTVisitor)this, typeDeclaration.scope);
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(superclassAlignment, true);
        }
        if ((superInterfaces = typeDeclaration.superInterfaces) != null) {
            int alignment_for_superinterfaces;
            int kind = TypeDeclaration.kind(typeDeclaration.modifiers);
            switch (kind) {
                case 3: {
                    alignment_for_superinterfaces = this.preferences.alignment_for_superinterfaces_in_enum_declaration;
                    break;
                }
                default: {
                    alignment_for_superinterfaces = this.preferences.alignment_for_superinterfaces_in_type_declaration;
                }
            }
            int superInterfaceLength = superInterfaces.length;
            Alignment interfaceAlignment = this.scribe.createAlignment(21, alignment_for_superinterfaces, superInterfaceLength + 1, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(interfaceAlignment);
            boolean ok = false;
            do {
                try {
                    this.scribe.alignFragment(interfaceAlignment, 0);
                    if (kind == 2) {
                        this.scribe.printNextToken(99, true);
                    } else {
                        this.scribe.printNextToken(106, true);
                    }
                    int i = 0;
                    while (i < superInterfaceLength) {
                        if (i > 0) {
                            this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_superinterfaces);
                            this.scribe.printComment(0, 256);
                            this.scribe.alignFragment(interfaceAlignment, i + 1);
                            if (this.preferences.insert_space_after_comma_in_superinterfaces) {
                                this.scribe.space();
                            }
                            superInterfaces[i].traverse((ASTVisitor)this, typeDeclaration.scope);
                        } else {
                            this.scribe.alignFragment(interfaceAlignment, i + 1);
                            this.scribe.space();
                            superInterfaces[i].traverse((ASTVisitor)this, typeDeclaration.scope);
                        }
                        ++i;
                    }
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(interfaceAlignment, true);
        }
        int kind = TypeDeclaration.kind(typeDeclaration.modifiers);
        switch (kind) {
            case 3: {
                class_declaration_brace = this.preferences.brace_position_for_enum_declaration;
                space_before_opening_brace = this.preferences.insert_space_before_opening_brace_in_enum_declaration;
                break;
            }
            case 4: {
                class_declaration_brace = this.preferences.brace_position_for_annotation_type_declaration;
                space_before_opening_brace = this.preferences.insert_space_before_opening_brace_in_annotation_type_declaration;
                break;
            }
            default: {
                class_declaration_brace = this.preferences.brace_position_for_type_declaration;
                space_before_opening_brace = this.preferences.insert_space_before_opening_brace_in_type_declaration;
            }
        }
        this.formatLeftCurlyBrace(line, class_declaration_brace);
        this.formatTypeOpeningBrace(class_declaration_brace, space_before_opening_brace, typeDeclaration);
        switch (kind) {
            case 3: {
                indent_body_declarations_compare_to_header = this.preferences.indent_body_declarations_compare_to_enum_declaration_header;
                break;
            }
            case 4: {
                indent_body_declarations_compare_to_header = this.preferences.indent_body_declarations_compare_to_annotation_declaration_header;
                break;
            }
            default: {
                indent_body_declarations_compare_to_header = this.preferences.indent_body_declarations_compare_to_type_header;
            }
        }
        if (indent_body_declarations_compare_to_header) {
            this.scribe.indent();
        }
        if (kind == 3) {
            FieldDeclaration[] fieldDeclarations = typeDeclaration.fields;
            boolean hasConstants = false;
            int length = fieldDeclarations != null ? fieldDeclarations.length : 0;
            int enumConstantsLength = 0;
            if (fieldDeclarations != null) {
                int i = 0;
                while (i < length) {
                    FieldDeclaration fieldDeclaration = fieldDeclarations[i];
                    if (fieldDeclaration.getKind() != 3) break;
                    ++enumConstantsLength;
                    ++i;
                }
                boolean bl = hasConstants = enumConstantsLength != 0;
                if (enumConstantsLength > 1) {
                    Alignment enumConstantsAlignment = this.scribe.createAlignment(10, this.preferences.alignment_for_enum_constants, enumConstantsLength, this.scribe.scanner.currentPosition, 0, false);
                    this.scribe.enterAlignment(enumConstantsAlignment);
                    boolean ok = false;
                    do {
                        try {
                            int i2 = 0;
                            while (i2 < enumConstantsLength) {
                                this.scribe.alignFragment(enumConstantsAlignment, i2);
                                FieldDeclaration fieldDeclaration = fieldDeclarations[i2];
                                fieldDeclaration.traverse((ASTVisitor)this, typeDeclaration.initializerScope);
                                if (this.isNextToken(30)) {
                                    this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_enum_declarations);
                                    if (this.preferences.insert_space_after_comma_in_enum_declarations) {
                                        this.scribe.space();
                                    }
                                    this.scribe.printComment(0, 256);
                                    if (fieldDeclaration.initialization instanceof QualifiedAllocationExpression) {
                                        this.scribe.printNewLine();
                                    }
                                }
                                ++i2;
                            }
                            ok = true;
                        }
                        catch (AlignmentException e) {
                            this.scribe.redoAlignment(e);
                        }
                    } while (!ok);
                    this.scribe.exitAlignment(enumConstantsAlignment, true);
                } else if (hasConstants) {
                    FieldDeclaration fieldDeclaration = fieldDeclarations[0];
                    fieldDeclaration.traverse((ASTVisitor)this, typeDeclaration.initializerScope);
                    if (this.isNextToken(30)) {
                        this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_enum_declarations);
                        if (this.preferences.insert_space_after_comma_in_enum_declarations) {
                            this.scribe.space();
                        }
                        this.scribe.printComment(0, 256);
                        if (fieldDeclaration.initialization instanceof QualifiedAllocationExpression) {
                            this.scribe.printNewLine();
                        }
                    }
                }
            }
            if (this.isNextToken(27)) {
                this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                this.scribe.printComment(0, 256);
                if (hasConstants || enumConstantsLength - length != 0 || typeDeclaration.methods != null || typeDeclaration.memberTypes != null) {
                    this.scribe.printNewLine();
                }
            } else if (hasConstants) {
                this.scribe.printComment(0, 256);
                this.scribe.printNewLine();
            }
        }
        this.formatTypeMembers(typeDeclaration);
        if (indent_body_declarations_compare_to_header) {
            this.scribe.unIndent();
        }
        switch (kind) {
            case 3: {
                if (!this.preferences.insert_new_line_in_empty_enum_declaration) break;
                this.scribe.printNewLine();
                break;
            }
            case 4: {
                if (!this.preferences.insert_new_line_in_empty_annotation_declaration) break;
                this.scribe.printNewLine();
                break;
            }
            default: {
                if (!this.preferences.insert_new_line_in_empty_type_declaration) break;
                this.scribe.printNewLine();
            }
        }
        this.scribe.printNextToken(31);
        this.scribe.printComment(0, 256);
        if (class_declaration_brace.equals("next_line_shifted")) {
            this.scribe.unIndent();
        }
        if (this.hasComments()) {
            this.scribe.printNewLine();
        }
    }

    private void format(TypeDeclaration memberTypeDeclaration, ClassScope scope, boolean isChunkStart, boolean isFirstClassBodyDeclaration) {
        if (isFirstClassBodyDeclaration) {
            int newLinesBeforeFirstClassBodyDeclaration = this.preferences.blank_lines_before_first_class_body_declaration;
            if (newLinesBeforeFirstClassBodyDeclaration > 0) {
                this.scribe.printEmptyLines(newLinesBeforeFirstClassBodyDeclaration);
            }
        } else {
            int newLinesBeforeMember;
            int newLineBeforeChunk;
            int n = newLineBeforeChunk = isChunkStart ? this.preferences.blank_lines_before_new_chunk : 0;
            if (newLineBeforeChunk > 0) {
                this.scribe.printEmptyLines(newLineBeforeChunk);
            }
            if ((newLinesBeforeMember = this.preferences.blank_lines_before_member_type) > 0) {
                this.scribe.printEmptyLines(newLinesBeforeMember);
            }
        }
        memberTypeDeclaration.traverse((ASTVisitor)this, scope);
    }

    private void formatAnonymousTypeDeclaration(TypeDeclaration typeDeclaration) {
        String anonymous_type_declaration_brace_position = this.preferences.brace_position_for_anonymous_type_declaration;
        this.formatTypeOpeningBrace(anonymous_type_declaration_brace_position, this.preferences.insert_space_before_opening_brace_in_anonymous_type_declaration, typeDeclaration);
        this.scribe.indent();
        this.formatTypeMembers(typeDeclaration);
        this.scribe.unIndent();
        if (this.preferences.insert_new_line_in_empty_anonymous_type_declaration) {
            this.scribe.printNewLine();
        }
        this.scribe.printNextToken(31);
        if (anonymous_type_declaration_brace_position.equals("next_line_shifted")) {
            this.scribe.unIndent();
        }
    }

    private void formatBlock(Block block, BlockScope scope, String block_brace_position, boolean insertSpaceBeforeOpeningBrace) {
        this.formatOpeningBrace(block_brace_position, insertSpaceBeforeOpeningBrace);
        Statement[] statements = block.statements;
        if (statements != null) {
            this.scribe.printNewLine();
            if (this.preferences.indent_statements_compare_to_block) {
                this.scribe.indent();
            }
            this.formatStatements(scope, statements, true);
            this.scribe.printComment(11);
            if (this.preferences.indent_statements_compare_to_block) {
                this.scribe.unIndent();
            }
        } else if (this.preferences.insert_new_line_in_empty_block) {
            this.scribe.printNewLine();
            if (this.preferences.indent_statements_compare_to_block) {
                this.scribe.indent();
            }
            this.scribe.printComment(11);
            if (this.preferences.indent_statements_compare_to_block) {
                this.scribe.unIndent();
            }
        } else {
            if (this.preferences.indent_statements_compare_to_block) {
                this.scribe.indent();
            }
            this.scribe.printComment(11);
            if (this.preferences.indent_statements_compare_to_block) {
                this.scribe.unIndent();
            }
        }
        this.scribe.printNextToken(31);
        this.scribe.printComment(0, 256);
        if ("next_line_shifted".equals(block_brace_position)) {
            this.scribe.unIndent();
        }
    }

    private void formatCascadingMessageSends(CascadingMethodInvocationFragmentBuilder builder, BlockScope scope) {
        int size = builder.size();
        MessageSend[] fragments = builder.fragments();
        Expression fragment = fragments[0].receiver;
        int startingPositionInCascade = 1;
        if (!fragment.isImplicitThis()) {
            fragment.traverse((ASTVisitor)this, scope);
        } else {
            MessageSend currentMessageSend = fragments[1];
            int numberOfParens = (currentMessageSend.bits & 0x1FE00000) >> 21;
            if (numberOfParens > 0) {
                this.manageOpeningParenthesizedExpression(currentMessageSend, numberOfParens);
            }
            Expression[] arguments = currentMessageSend.arguments;
            TypeReference[] typeArguments = currentMessageSend.typeArguments;
            if (typeArguments != null) {
                this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_type_arguments);
                if (this.preferences.insert_space_after_opening_angle_bracket_in_type_arguments) {
                    this.scribe.space();
                }
                int length = typeArguments.length;
                int i = 0;
                while (i < length - 1) {
                    typeArguments[i].traverse((ASTVisitor)this, scope);
                    this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_type_arguments);
                    if (this.preferences.insert_space_after_comma_in_type_arguments) {
                        this.scribe.space();
                    }
                    ++i;
                }
                typeArguments[length - 1].traverse((ASTVisitor)this, scope);
                if (this.isClosingGenericToken()) {
                    this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_type_arguments);
                }
                if (this.preferences.insert_space_after_closing_angle_bracket_in_type_arguments) {
                    this.scribe.space();
                }
            }
            this.scribe.printNextToken(26);
            this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_method_invocation);
            if (arguments != null) {
                if (this.preferences.insert_space_after_opening_paren_in_method_invocation) {
                    this.scribe.space();
                }
                int argumentLength = arguments.length;
                Alignment argumentsAlignment = this.scribe.createAlignment(15, this.preferences.alignment_for_arguments_in_method_invocation, 1, argumentLength, this.scribe.scanner.currentPosition);
                this.scribe.enterAlignment(argumentsAlignment);
                boolean okForArguments = false;
                do {
                    try {
                        int j = 0;
                        while (j < argumentLength) {
                            if (j > 0) {
                                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_method_invocation_arguments);
                                this.scribe.printComment(0, 256);
                            }
                            this.scribe.alignFragment(argumentsAlignment, j);
                            if (j > 0 && this.preferences.insert_space_after_comma_in_method_invocation_arguments) {
                                this.scribe.space();
                            }
                            ((ASTNode)arguments[j]).traverse(this, scope);
                            ++j;
                        }
                        okForArguments = true;
                    }
                    catch (AlignmentException e) {
                        this.scribe.redoAlignment(e);
                    }
                } while (!okForArguments);
                this.scribe.exitAlignment(argumentsAlignment, true);
                this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_method_invocation);
            } else {
                this.scribe.printNextToken(28, this.preferences.insert_space_between_empty_parens_in_method_invocation);
            }
            if (numberOfParens > 0) {
                this.manageClosingParenthesizedExpression(currentMessageSend, numberOfParens);
            }
            startingPositionInCascade = 2;
        }
        int tieBreakRule = this.preferences.wrap_outer_expressions_when_nested && size - startingPositionInCascade > 2 ? 1 : 2;
        Alignment cascadingMessageSendAlignment = this.scribe.createAlignment(6, this.preferences.alignment_for_selector_in_method_invocation, tieBreakRule, size, this.scribe.scanner.currentPosition);
        this.scribe.enterAlignment(cascadingMessageSendAlignment);
        boolean ok = false;
        boolean setStartingColumn = true;
        switch (this.preferences.alignment_for_arguments_in_method_invocation & 0x70) {
            case 32: 
            case 48: 
            case 64: {
                setStartingColumn = false;
            }
        }
        do {
            if (setStartingColumn) {
                cascadingMessageSendAlignment.startingColumn = this.scribe.column;
            }
            try {
                this.scribe.alignFragment(cascadingMessageSendAlignment, 0);
                this.scribe.printNextToken(3);
                int i = startingPositionInCascade;
                while (i < size) {
                    TypeReference[] typeArguments;
                    MessageSend currentMessageSend = fragments[i];
                    int numberOfParens = (currentMessageSend.bits & 0x1FE00000) >> 21;
                    if (numberOfParens > 0) {
                        this.manageOpeningParenthesizedExpression(currentMessageSend, numberOfParens);
                    }
                    if ((typeArguments = currentMessageSend.typeArguments) != null) {
                        this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_type_arguments);
                        if (this.preferences.insert_space_after_opening_angle_bracket_in_type_arguments) {
                            this.scribe.space();
                        }
                        int length = typeArguments.length;
                        int j = 0;
                        while (j < length - 1) {
                            typeArguments[j].traverse((ASTVisitor)this, scope);
                            this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_type_arguments);
                            if (this.preferences.insert_space_after_comma_in_type_arguments) {
                                this.scribe.space();
                            }
                            ++j;
                        }
                        typeArguments[length - 1].traverse((ASTVisitor)this, scope);
                        if (this.isClosingGenericToken()) {
                            this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_type_arguments);
                        }
                        if (this.preferences.insert_space_after_closing_angle_bracket_in_type_arguments) {
                            this.scribe.space();
                        }
                    }
                    Expression[] arguments = currentMessageSend.arguments;
                    this.scribe.printNextToken(26);
                    this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_method_invocation);
                    if (arguments != null) {
                        if (this.preferences.insert_space_after_opening_paren_in_method_invocation) {
                            this.scribe.space();
                        }
                        int argumentLength = arguments.length;
                        int alignmentMode = this.preferences.alignment_for_arguments_in_method_invocation;
                        Alignment argumentsAlignment = this.scribe.createAlignment(15, alignmentMode, 1, argumentLength, this.scribe.scanner.currentPosition);
                        this.scribe.enterAlignment(argumentsAlignment);
                        boolean okForArguments = false;
                        do {
                            switch (alignmentMode & 0x70) {
                                case 16: 
                                case 80: {
                                    argumentsAlignment.startingColumn = this.scribe.column;
                                }
                            }
                            try {
                                int j = 0;
                                while (j < argumentLength) {
                                    if (j > 0) {
                                        this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_method_invocation_arguments);
                                        this.scribe.printComment(0, 256);
                                    }
                                    this.scribe.alignFragment(argumentsAlignment, j);
                                    if (j == 0) {
                                        int fragmentIndentation = argumentsAlignment.fragmentIndentations[j];
                                        if ((argumentsAlignment.mode & 2) != 0 && fragmentIndentation > 0) {
                                            this.scribe.indentationLevel = fragmentIndentation;
                                        }
                                    } else if (this.preferences.insert_space_after_comma_in_method_invocation_arguments) {
                                        this.scribe.space();
                                    }
                                    ((ASTNode)arguments[j]).traverse(this, scope);
                                    argumentsAlignment.startingColumn = -1;
                                    ++j;
                                }
                                okForArguments = true;
                            }
                            catch (AlignmentException e) {
                                this.scribe.redoAlignment(e);
                            }
                        } while (!okForArguments);
                        this.scribe.exitAlignment(argumentsAlignment, true);
                        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_method_invocation);
                    } else {
                        this.scribe.printNextToken(28, this.preferences.insert_space_between_empty_parens_in_method_invocation);
                    }
                    if (numberOfParens > 0) {
                        this.manageClosingParenthesizedExpression(currentMessageSend, numberOfParens);
                    }
                    cascadingMessageSendAlignment.startingColumn = -1;
                    if (i < size - 1) {
                        this.scribe.alignFragment(cascadingMessageSendAlignment, i);
                        this.scribe.printNextToken(3);
                    }
                    ++i;
                }
                ok = true;
            }
            catch (AlignmentException e) {
                this.scribe.redoAlignment(e);
            }
        } while (!ok);
        this.scribe.exitAlignment(cascadingMessageSendAlignment, true);
    }

    private void formatClassBodyDeclarations(ASTNode[] nodes) {
        this.scribe.lastNumberOfNewLines = 1;
        ASTNode[] mergedNodes = this.computeMergedMemberDeclarations(nodes);
        Alignment memberAlignment = this.scribe.createMemberAlignment(23, this.preferences.align_type_members_on_columns ? 256 : 0, 4, this.scribe.scanner.currentPosition);
        this.scribe.enterMemberAlignment(memberAlignment);
        boolean isChunkStart = false;
        boolean ok = false;
        int startIndex = 0;
        do {
            try {
                int i = startIndex;
                int max = mergedNodes.length;
                while (i < max) {
                    ASTNode member = mergedNodes[i];
                    if (member instanceof FieldDeclaration) {
                        isChunkStart = memberAlignment.checkChunkStart(1, i, this.scribe.scanner.currentPosition);
                        if (member instanceof MultiFieldDeclaration) {
                            MultiFieldDeclaration multiField = (MultiFieldDeclaration)member;
                            this.format(multiField, (ASTVisitor)this, null, isChunkStart, i == 0);
                        } else if (member instanceof Initializer) {
                            int newLinesBeforeFirstClassBodyDeclaration;
                            int newLineBeforeChunk;
                            int n = newLineBeforeChunk = isChunkStart ? this.preferences.blank_lines_before_new_chunk : 0;
                            if (newLineBeforeChunk > 0 && i != 0) {
                                this.scribe.printEmptyLines(newLineBeforeChunk);
                            } else if (i == 0 && (newLinesBeforeFirstClassBodyDeclaration = this.preferences.blank_lines_before_first_class_body_declaration) > 0) {
                                this.scribe.printEmptyLines(newLinesBeforeFirstClassBodyDeclaration);
                            }
                            Initializer initializer = (Initializer)member;
                            initializer.traverse((ASTVisitor)this, null);
                        } else {
                            FieldDeclaration field = (FieldDeclaration)member;
                            this.format(field, (ASTVisitor)this, null, isChunkStart, i == 0);
                        }
                    } else if (member instanceof AbstractMethodDeclaration) {
                        isChunkStart = memberAlignment.checkChunkStart(2, i, this.scribe.scanner.currentPosition);
                        this.format((AbstractMethodDeclaration)member, null, isChunkStart, i == 0);
                    } else {
                        isChunkStart = memberAlignment.checkChunkStart(3, i, this.scribe.scanner.currentPosition);
                        this.format((TypeDeclaration)member, null, isChunkStart, i == 0);
                    }
                    while (this.isNextToken(27)) {
                        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                        this.scribe.printComment(0, 256);
                    }
                    if (i != max - 1) {
                        this.scribe.printNewLine();
                    }
                    ++i;
                }
                ok = true;
            }
            catch (AlignmentException e) {
                startIndex = memberAlignment.chunkStartIndex;
                this.scribe.redoMemberAlignment(e);
            }
        } while (!ok);
        this.scribe.exitMemberAlignment(memberAlignment);
        if (this.hasComments()) {
            this.scribe.printNewLine();
        }
        this.scribe.printComment();
    }

    private void formatEmptyTypeDeclaration(boolean isFirst) {
        boolean hasSemiColon = this.isNextToken(27);
        while (this.isNextToken(27)) {
            this.scribe.printComment();
            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
            this.scribe.printComment(0, 256);
        }
        if (hasSemiColon && isFirst) {
            this.scribe.printNewLine();
        }
    }

    private void formatGuardClauseBlock(Block block, BlockScope scope) {
        this.scribe.printNextToken(68, this.preferences.insert_space_before_opening_brace_in_block);
        this.scribe.space();
        Statement[] statements = block.statements;
        statements[0].traverse(this, scope);
        this.scribe.printNextToken(31, true);
        this.scribe.printComment(0, 256);
    }

    private void formatLeftCurlyBrace(int line, String bracePosition) {
        this.scribe.printComment(2);
        if ("next_line_on_wrap".equals(bracePosition) && (this.scribe.line > line || this.scribe.column >= this.preferences.page_width)) {
            this.scribe.printNewLine();
        }
    }

    private void formatLocalDeclaration(LocalDeclaration localDeclaration, BlockScope scope, boolean insertSpaceBeforeComma, boolean insertSpaceAfterComma) {
        Expression initialization;
        if (!this.isMultipleLocalDeclaration(localDeclaration)) {
            if (localDeclaration.modifiers != 0 || localDeclaration.annotations != null) {
                this.scribe.printComment();
                this.scribe.printModifiers(localDeclaration.annotations, this, 6);
                this.scribe.space();
            }
            if (localDeclaration.type != null) {
                localDeclaration.type.traverse((ASTVisitor)this, scope);
            }
            this.scribe.printNextToken(26, true);
        } else {
            this.scribe.printNextToken(26, false);
        }
        int extraDimensions = this.getDimensions();
        if (extraDimensions != 0) {
            int index = 0;
            while (index < extraDimensions) {
                this.scribe.printNextToken(16);
                this.scribe.printNextToken(70);
                ++index;
            }
        }
        if ((initialization = localDeclaration.initialization) != null) {
            this.scribe.printNextToken(71, this.preferences.insert_space_before_assignment_operator);
            if (this.preferences.insert_space_after_assignment_operator) {
                this.scribe.space();
            }
            Alignment assignmentAlignment = this.scribe.createAlignment(14, this.preferences.alignment_for_assignment, 1, 1, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(assignmentAlignment);
            boolean ok = false;
            do {
                try {
                    this.scribe.alignFragment(assignmentAlignment, 0);
                    initialization.traverse((ASTVisitor)this, scope);
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(assignmentAlignment, true);
        }
        if (this.isPartOfMultipleLocalDeclaration()) {
            this.scribe.printNextToken(30, insertSpaceBeforeComma);
            if (insertSpaceAfterComma) {
                this.scribe.space();
            }
            this.scribe.printComment(0, 256);
        }
    }

    private void formatMessageSend(MessageSend messageSend, BlockScope scope, Alignment messageAlignment) {
        TypeReference[] typeArguments;
        if (messageAlignment != null) {
            if (!this.preferences.wrap_outer_expressions_when_nested || messageAlignment.canAlign()) {
                this.scribe.alignFragment(messageAlignment, 0);
            }
            this.scribe.printNextToken(3);
        }
        if ((typeArguments = messageSend.typeArguments) != null) {
            this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_type_arguments);
            if (this.preferences.insert_space_after_opening_angle_bracket_in_type_arguments) {
                this.scribe.space();
            }
            int length = typeArguments.length;
            int i = 0;
            while (i < length - 1) {
                typeArguments[i].traverse((ASTVisitor)this, scope);
                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_type_arguments);
                if (this.preferences.insert_space_after_comma_in_type_arguments) {
                    this.scribe.space();
                }
                ++i;
            }
            typeArguments[length - 1].traverse((ASTVisitor)this, scope);
            if (this.isClosingGenericToken()) {
                this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_type_arguments);
            }
            if (this.preferences.insert_space_after_closing_angle_bracket_in_type_arguments) {
                this.scribe.space();
            }
        }
        this.scribe.printNextToken(26);
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_method_invocation);
        Expression[] arguments = messageSend.arguments;
        if (arguments != null) {
            int argumentsLength;
            if (this.preferences.insert_space_after_opening_paren_in_method_invocation) {
                this.scribe.space();
            }
            if ((argumentsLength = arguments.length) > 1) {
                int alignmentMode = this.preferences.alignment_for_arguments_in_method_invocation;
                Alignment argumentsAlignment = this.scribe.createAlignment(15, alignmentMode, argumentsLength, this.scribe.scanner.currentPosition);
                this.scribe.enterAlignment(argumentsAlignment);
                boolean ok = false;
                do {
                    switch (alignmentMode & 0x70) {
                        case 16: 
                        case 80: {
                            argumentsAlignment.startingColumn = this.scribe.column;
                        }
                    }
                    try {
                        int i = 0;
                        while (i < argumentsLength) {
                            int wrappedIndex;
                            if (i > 0) {
                                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_method_invocation_arguments);
                                this.scribe.printComment(0, 256);
                                if (this.scribe.lastNumberOfNewLines == 1) {
                                    this.scribe.indentationLevel = argumentsAlignment.breakIndentationLevel;
                                }
                            }
                            this.scribe.alignFragment(argumentsAlignment, i);
                            if (i > 0 && this.preferences.insert_space_after_comma_in_method_invocation_arguments) {
                                this.scribe.space();
                            }
                            int fragmentIndentation = 0;
                            if (i == 0 && (wrappedIndex = argumentsAlignment.wrappedIndex()) >= 0) {
                                fragmentIndentation = argumentsAlignment.fragmentIndentations[wrappedIndex];
                                if ((argumentsAlignment.mode & 2) != 0 && fragmentIndentation > 0) {
                                    this.scribe.indentationLevel = fragmentIndentation;
                                }
                            }
                            arguments[i].traverse((ASTVisitor)this, scope);
                            argumentsAlignment.startingColumn = -1;
                            ++i;
                        }
                        ok = true;
                    }
                    catch (AlignmentException e) {
                        this.scribe.redoAlignment(e);
                    }
                } while (!ok);
                this.scribe.exitAlignment(argumentsAlignment, true);
            } else {
                arguments[0].traverse((ASTVisitor)this, scope);
            }
            this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_method_invocation);
        } else {
            this.scribe.printNextToken(28, this.preferences.insert_space_between_empty_parens_in_method_invocation);
        }
    }

    private void formatTryResources(TryStatement tryStatement, boolean spaceBeforeOpenParen, boolean spaceBeforeClosingParen, boolean spaceBeforeFirstResource, boolean spaceBeforeSemicolon, boolean spaceAfterSemicolon, int tryResourcesAligment) {
        int length;
        LocalDeclaration[] resources = tryStatement.resources;
        int n = length = resources != null ? resources.length : 0;
        if (length > 0) {
            this.scribe.printNextToken(29, spaceBeforeOpenParen);
            if (spaceBeforeFirstResource) {
                this.scribe.space();
            }
            Alignment resourcesAlignment = this.scribe.createAlignment(25, tryResourcesAligment, 1, length, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(resourcesAlignment);
            boolean ok = false;
            do {
                switch (tryResourcesAligment & 0x70) {
                    case 16: 
                    case 80: {
                        resourcesAlignment.startingColumn = this.scribe.column;
                    }
                }
                try {
                    int i = 0;
                    while (i < length) {
                        if (i > 0) {
                            this.scribe.printNextToken(27, spaceBeforeSemicolon);
                            this.scribe.printComment(0, 256);
                            if (this.scribe.lastNumberOfNewLines == 1) {
                                this.scribe.indentationLevel = resourcesAlignment.breakIndentationLevel;
                            }
                        }
                        this.scribe.alignFragment(resourcesAlignment, i);
                        if (i == 0) {
                            int fragmentIndentation = resourcesAlignment.fragmentIndentations[0];
                            if ((resourcesAlignment.mode & 2) != 0 && fragmentIndentation > 0) {
                                this.scribe.indentationLevel = fragmentIndentation;
                            }
                        } else if (spaceAfterSemicolon) {
                            this.scribe.space();
                        }
                        resources[i].traverse(this, null);
                        resourcesAlignment.startingColumn = -1;
                        ++i;
                    }
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            if (this.isNextToken(27)) {
                this.scribe.printNextToken(27, spaceBeforeSemicolon);
            }
            this.scribe.exitAlignment(resourcesAlignment, true);
            this.scribe.printNextToken(28, spaceBeforeClosingParen);
        }
    }

    private void formatMethodArguments(AbstractMethodDeclaration methodDeclaration, boolean spaceBeforeOpenParen, boolean spaceBetweenEmptyParameters, boolean spaceBeforeClosingParen, boolean spaceBeforeFirstParameter, boolean spaceBeforeComma, boolean spaceAfterComma, int methodDeclarationParametersAlignment) {
        this.scribe.printNextToken(29, spaceBeforeOpenParen);
        Argument[] arguments = methodDeclaration.arguments;
        if (arguments != null) {
            if (spaceBeforeFirstParameter) {
                this.scribe.space();
            }
            int argumentLength = arguments.length;
            Alignment argumentsAlignment = this.scribe.createAlignment(17, methodDeclarationParametersAlignment, argumentLength, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(argumentsAlignment);
            boolean ok = false;
            do {
                switch (methodDeclarationParametersAlignment & 0x70) {
                    case 16: 
                    case 80: {
                        argumentsAlignment.startingColumn = this.scribe.column;
                    }
                }
                try {
                    int i = 0;
                    while (i < argumentLength) {
                        if (i > 0) {
                            this.scribe.printNextToken(30, spaceBeforeComma);
                            this.scribe.printComment(0, 256);
                            if (this.scribe.lastNumberOfNewLines == 1) {
                                this.scribe.indentationLevel = argumentsAlignment.breakIndentationLevel;
                            }
                        }
                        this.scribe.alignFragment(argumentsAlignment, i);
                        if (i == 0) {
                            int fragmentIndentation = argumentsAlignment.fragmentIndentations[0];
                            if ((argumentsAlignment.mode & 2) != 0 && fragmentIndentation > 0) {
                                this.scribe.indentationLevel = fragmentIndentation;
                            }
                        } else if (spaceAfterComma) {
                            this.scribe.space();
                        }
                        arguments[i].traverse((ASTVisitor)this, methodDeclaration.scope);
                        argumentsAlignment.startingColumn = -1;
                        ++i;
                    }
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(argumentsAlignment, true);
            this.scribe.printNextToken(28, spaceBeforeClosingParen);
        } else {
            this.scribe.printNextToken(28, spaceBetweenEmptyParameters);
        }
    }

    private void formatEnumConstantArguments(FieldDeclaration enumConstant, boolean spaceBeforeOpenParen, boolean spaceBetweenEmptyParameters, boolean spaceBeforeClosingParen, boolean spaceBeforeFirstParameter, boolean spaceBeforeComma, boolean spaceAfterComma, int methodDeclarationParametersAlignment) {
        if (!this.isNextToken(29)) {
            return;
        }
        this.scribe.printNextToken(29, spaceBeforeOpenParen);
        Expression[] arguments = ((AllocationExpression)enumConstant.initialization).arguments;
        if (arguments != null) {
            int argumentLength = arguments.length;
            Alignment argumentsAlignment = this.scribe.createAlignment(11, methodDeclarationParametersAlignment, argumentLength, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(argumentsAlignment);
            boolean ok = false;
            do {
                try {
                    if (spaceBeforeFirstParameter) {
                        this.scribe.space();
                    }
                    int i = 0;
                    while (i < argumentLength) {
                        if (i > 0) {
                            this.scribe.printNextToken(30, spaceBeforeComma);
                            this.scribe.printComment(0, 256);
                        }
                        this.scribe.alignFragment(argumentsAlignment, i);
                        if (i > 0 && spaceAfterComma) {
                            this.scribe.space();
                        }
                        arguments[i].traverse((ASTVisitor)this, (BlockScope)null);
                        ++i;
                    }
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(argumentsAlignment, true);
            this.scribe.printNextToken(28, spaceBeforeClosingParen);
        } else {
            this.scribe.printNextToken(28, spaceBetweenEmptyParameters);
        }
    }

    private void formatNecessaryEmptyStatement() {
        if (this.preferences.put_empty_statement_on_new_line) {
            this.scribe.printNewLine();
            this.scribe.indent();
            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
            this.scribe.printComment(0, 256);
            this.scribe.unIndent();
        } else {
            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
            this.scribe.printComment(0, 256);
        }
    }

    private void formatOpeningBrace(String bracePosition, boolean insertSpaceBeforeBrace) {
        if ("next_line".equals(bracePosition)) {
            this.scribe.printNewLine();
        } else if ("next_line_shifted".equals(bracePosition)) {
            this.scribe.printNewLine();
            this.scribe.indent();
        }
        this.scribe.printNextToken(68, insertSpaceBeforeBrace, 5);
        this.scribe.printComment(0, 1024);
    }

    private void formatStatements(BlockScope scope, Statement[] statements, boolean insertNewLineAfterLastStatement) {
        int statementsLength = statements.length;
        int i = 0;
        while (i < statementsLength) {
            Statement statement = statements[i];
            if (i > 0 && statements[i - 1] instanceof EmptyStatement && !(statement instanceof EmptyStatement)) {
                this.scribe.printNewLine();
            }
            statement.traverse(this, scope);
            if (statement instanceof Expression) {
                this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                this.scribe.printComment(0, 256);
                if (i != statementsLength - 1) {
                    if (!(statement instanceof EmptyStatement) && !(statements[i + 1] instanceof EmptyStatement)) {
                        this.scribe.printNewLine();
                    }
                } else if (i == statementsLength - 1 && insertNewLineAfterLastStatement) {
                    this.scribe.printNewLine();
                }
            } else if (statement instanceof LocalDeclaration) {
                LocalDeclaration currentLocal = (LocalDeclaration)statement;
                if (i < statementsLength - 1) {
                    if (statements[i + 1] instanceof LocalDeclaration) {
                        LocalDeclaration nextLocal = (LocalDeclaration)statements[i + 1];
                        if (currentLocal.declarationSourceStart != nextLocal.declarationSourceStart) {
                            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                            this.scribe.printComment(0, 256);
                            if (i != statementsLength - 1) {
                                if (!(statement instanceof EmptyStatement) && !(statements[i + 1] instanceof EmptyStatement)) {
                                    this.scribe.printNewLine();
                                }
                            } else if (i == statementsLength - 1 && insertNewLineAfterLastStatement) {
                                this.scribe.printNewLine();
                            }
                        }
                    } else {
                        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                        this.scribe.printComment(0, 256);
                        if (i != statementsLength - 1) {
                            if (!(statement instanceof EmptyStatement) && !(statements[i + 1] instanceof EmptyStatement)) {
                                this.scribe.printNewLine();
                            }
                        } else if (i == statementsLength - 1 && insertNewLineAfterLastStatement) {
                            this.scribe.printNewLine();
                        }
                    }
                } else {
                    this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                    this.scribe.printComment(0, 256);
                    if (i != statementsLength - 1) {
                        if (!(statement instanceof EmptyStatement) && !(statements[i + 1] instanceof EmptyStatement)) {
                            this.scribe.printNewLine();
                        }
                    } else if (i == statementsLength - 1 && insertNewLineAfterLastStatement) {
                        this.scribe.printNewLine();
                    }
                }
            } else if (i != statementsLength - 1) {
                if (!(statement instanceof EmptyStatement) && !(statements[i + 1] instanceof EmptyStatement)) {
                    this.scribe.printNewLine();
                }
            } else if (i == statementsLength - 1 && insertNewLineAfterLastStatement) {
                this.scribe.printNewLine();
            }
            ++i;
        }
    }

    private void formatThrowsClause(AbstractMethodDeclaration methodDeclaration, boolean spaceBeforeComma, boolean spaceAfterComma, int alignmentForThrowsClause) {
        TypeReference[] thrownExceptions = methodDeclaration.thrownExceptions;
        if (thrownExceptions != null) {
            int thrownExceptionsLength = thrownExceptions.length;
            Alignment throwsAlignment = this.scribe.createAlignment(22, alignmentForThrowsClause, thrownExceptionsLength, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(throwsAlignment);
            boolean ok = false;
            do {
                try {
                    this.scribe.alignFragment(throwsAlignment, 0);
                    this.scribe.printNextToken(105, true);
                    int i = 0;
                    while (i < thrownExceptionsLength) {
                        if (i > 0) {
                            this.scribe.printNextToken(30, spaceBeforeComma);
                            this.scribe.printComment(0, 256);
                            this.scribe.alignFragment(throwsAlignment, i);
                            if (spaceAfterComma) {
                                this.scribe.space();
                            }
                        } else {
                            this.scribe.space();
                        }
                        thrownExceptions[i].traverse((ASTVisitor)this, methodDeclaration.scope);
                        ++i;
                    }
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(throwsAlignment, true);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void formatTypeMembers(TypeDeclaration typeDeclaration) {
        Alignment memberAlignment;
        block28: {
            boolean ok;
            boolean isChunkStart;
            ASTNode[] members;
            block27: {
                memberAlignment = this.scribe.createMemberAlignment(23, this.preferences.align_type_members_on_columns ? 256 : 0, 3, this.scribe.scanner.currentPosition);
                this.scribe.enterMemberAlignment(memberAlignment);
                members = this.computeMergedMemberDeclarations(typeDeclaration);
                isChunkStart = false;
                ok = false;
                int membersLength = members.length;
                if (membersLength > 0) break block27;
                if (this.isNextToken(27)) {
                    this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                    this.scribe.printComment(0, 256);
                }
                break block28;
            }
            int startIndex = 0;
            block2: do {
                try {
                    int i = startIndex;
                    int max = members.length;
                    block3: while (true) {
                        block26: {
                            ASTNode member;
                            block23: {
                                block24: {
                                    MultiFieldDeclaration multiField;
                                    block25: {
                                        if (i >= max) {
                                            ok = true;
                                            continue block2;
                                        }
                                        while (true) {
                                            if (!this.isNextToken(27)) {
                                                this.scribe.printNewLine();
                                                member = members[i];
                                                if (!(member instanceof FieldDeclaration)) break block23;
                                                isChunkStart = memberAlignment.checkChunkStart(1, i, this.scribe.scanner.currentPosition);
                                                if (!(member instanceof MultiFieldDeclaration)) break block24;
                                                multiField = (MultiFieldDeclaration)member;
                                                if (!multiField.isStatic()) break block25;
                                            }
                                            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                                            this.scribe.printComment(0, 256);
                                        }
                                        this.format(multiField, (ASTVisitor)this, typeDeclaration.staticInitializerScope, isChunkStart, i == 0);
                                        break block26;
                                    }
                                    this.format(multiField, (ASTVisitor)this, typeDeclaration.initializerScope, isChunkStart, i == 0);
                                    break block26;
                                }
                                if (member instanceof Initializer) {
                                    int newLinesBeforeFirstClassBodyDeclaration;
                                    int newLineBeforeChunk;
                                    int n = newLineBeforeChunk = isChunkStart ? this.preferences.blank_lines_before_new_chunk : 0;
                                    if (newLineBeforeChunk > 0 && i != 0) {
                                        this.scribe.printEmptyLines(newLineBeforeChunk);
                                    } else if (i == 0 && (newLinesBeforeFirstClassBodyDeclaration = this.preferences.blank_lines_before_first_class_body_declaration) > 0) {
                                        this.scribe.printEmptyLines(newLinesBeforeFirstClassBodyDeclaration);
                                    }
                                    Initializer initializer = (Initializer)member;
                                    if (initializer.isStatic()) {
                                        initializer.traverse((ASTVisitor)this, typeDeclaration.staticInitializerScope);
                                        break block26;
                                    } else {
                                        initializer.traverse((ASTVisitor)this, typeDeclaration.initializerScope);
                                    }
                                    break block26;
                                } else {
                                    FieldDeclaration field = (FieldDeclaration)member;
                                    if (field.isStatic()) {
                                        this.format(field, (ASTVisitor)this, typeDeclaration.staticInitializerScope, isChunkStart, i == 0);
                                        break block26;
                                    } else {
                                        this.format(field, (ASTVisitor)this, typeDeclaration.initializerScope, isChunkStart, i == 0);
                                    }
                                }
                                break block26;
                            }
                            if (member instanceof AbstractMethodDeclaration) {
                                isChunkStart = memberAlignment.checkChunkStart(2, i, this.scribe.scanner.currentPosition);
                                this.format((AbstractMethodDeclaration)member, typeDeclaration.scope, isChunkStart, i == 0);
                            } else if (member instanceof TypeDeclaration) {
                                isChunkStart = memberAlignment.checkChunkStart(3, i, this.scribe.scanner.currentPosition);
                                this.format((TypeDeclaration)member, typeDeclaration.scope, isChunkStart, i == 0);
                            }
                        }
                        while (true) {
                            if (!this.isNextToken(27)) {
                                this.scribe.printNewLine();
                                if (this.scribe.memberAlignment != null) {
                                    this.scribe.indentationLevel = this.scribe.memberAlignment.originalIndentationLevel;
                                }
                                ++i;
                                continue block3;
                            }
                            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                            this.scribe.printComment(0, 256);
                        }
                        break;
                    }
                }
                catch (AlignmentException e) {
                    startIndex = memberAlignment.chunkStartIndex;
                    this.scribe.redoMemberAlignment(e);
                }
            } while (!ok);
        }
        this.scribe.printComment(-1);
        this.scribe.exitMemberAlignment(memberAlignment);
    }

    private void formatTypeOpeningBraceForEnumConstant(String bracePosition, boolean insertSpaceBeforeBrace, TypeDeclaration typeDeclaration) {
        int memberLength;
        boolean insertNewLine;
        int typeCount;
        int fieldCount = typeDeclaration.fields == null ? 0 : typeDeclaration.fields.length;
        int methodCount = typeDeclaration.methods == null ? 0 : typeDeclaration.methods.length;
        int n = typeCount = typeDeclaration.memberTypes == null ? 0 : typeDeclaration.memberTypes.length;
        if (methodCount <= 2) {
            int i = 0;
            int max = methodCount;
            while (i < max) {
                AbstractMethodDeclaration abstractMethodDeclaration = typeDeclaration.methods[i];
                if (abstractMethodDeclaration.isDefaultConstructor()) {
                    --methodCount;
                } else if (abstractMethodDeclaration.isClinit()) {
                    --methodCount;
                }
                ++i;
            }
        }
        boolean bl = insertNewLine = (memberLength = fieldCount + methodCount + typeCount) > 0;
        if (!insertNewLine && (typeDeclaration.bits & 0x200) != 0) {
            insertNewLine = this.preferences.insert_new_line_in_empty_enum_constant;
        }
        this.formatOpeningBrace(bracePosition, insertSpaceBeforeBrace);
        if (insertNewLine) {
            this.scribe.printNewLine();
        }
    }

    private void formatTypeOpeningBrace(String bracePosition, boolean insertSpaceBeforeBrace, TypeDeclaration typeDeclaration) {
        int memberLength;
        boolean insertNewLine;
        int typeCount;
        int fieldCount = typeDeclaration.fields == null ? 0 : typeDeclaration.fields.length;
        int methodCount = typeDeclaration.methods == null ? 0 : typeDeclaration.methods.length;
        int n = typeCount = typeDeclaration.memberTypes == null ? 0 : typeDeclaration.memberTypes.length;
        if (methodCount <= 2) {
            int i = 0;
            int max = methodCount;
            while (i < max) {
                AbstractMethodDeclaration abstractMethodDeclaration = typeDeclaration.methods[i];
                if (abstractMethodDeclaration.isDefaultConstructor()) {
                    --methodCount;
                } else if (abstractMethodDeclaration.isClinit()) {
                    --methodCount;
                }
                ++i;
            }
        }
        boolean bl = insertNewLine = (memberLength = fieldCount + methodCount + typeCount) > 0;
        if (!insertNewLine) {
            insertNewLine = TypeDeclaration.kind(typeDeclaration.modifiers) == 3 ? this.preferences.insert_new_line_in_empty_enum_declaration : ((typeDeclaration.bits & 0x200) != 0 ? this.preferences.insert_new_line_in_empty_anonymous_type_declaration : (TypeDeclaration.kind(typeDeclaration.modifiers) == 4 ? this.preferences.insert_new_line_in_empty_annotation_declaration : this.preferences.insert_new_line_in_empty_type_declaration));
        }
        this.formatOpeningBrace(bracePosition, insertSpaceBeforeBrace);
        if (insertNewLine) {
            this.scribe.printNewLine();
        }
    }

    private int getDimensions() {
        int balance;
        int dimensions;
        block9: {
            this.localScanner.resetTo(this.scribe.scanner.currentPosition, this.scribe.scannerEndPosition - 1);
            dimensions = 0;
            balance = 0;
            try {
                int token;
                while ((token = this.localScanner.getNextToken()) != 69) {
                    switch (token) {
                        case 70: {
                            ++dimensions;
                            --balance;
                            break;
                        }
                        case 1001: 
                        case 1002: 
                        case 1003: {
                            break;
                        }
                        case 16: {
                            ++balance;
                            break;
                        }
                        default: {
                            break block9;
                        }
                    }
                }
            }
            catch (InvalidInputException invalidInputException) {}
        }
        if (balance == 0) {
            return dimensions;
        }
        return 0;
    }

    private boolean hasComments() {
        this.localScanner.resetTo(this.scribe.scanner.startPosition, this.scribe.scannerEndPosition - 1);
        try {
            switch (this.localScanner.getNextToken()) {
                case 1001: 
                case 1002: 
                case 1003: {
                    return true;
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return false;
    }

    private boolean isNextToken(int tokenName) {
        this.localScanner.resetTo(this.scribe.scanner.currentPosition, this.scribe.scannerEndPosition - 1);
        try {
            int token = this.localScanner.getNextToken();
            block5: while (true) {
                switch (token) {
                    case 1001: 
                    case 1002: 
                    case 1003: {
                        token = this.localScanner.getNextToken();
                        continue block5;
                    }
                }
                break;
            }
            return token == tokenName;
        }
        catch (InvalidInputException invalidInputException) {
            return false;
        }
    }

    private boolean isClosingGenericToken() {
        this.localScanner.resetTo(this.scribe.scanner.currentPosition, this.scribe.scannerEndPosition - 1);
        try {
            int token = this.localScanner.getNextToken();
            block8: while (true) {
                switch (token) {
                    case 1001: 
                    case 1002: 
                    case 1003: {
                        token = this.localScanner.getNextToken();
                        continue block8;
                    }
                }
                break;
            }
            switch (token) {
                case 10: 
                case 11: 
                case 12: {
                    return true;
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return false;
    }

    private boolean isGuardClause(Block block) {
        return !this.commentStartsBlock(block.sourceStart, block.sourceEnd) && block.statements != null && block.statements.length == 1 && (block.statements[0] instanceof ReturnStatement || block.statements[0] instanceof ThrowStatement);
    }

    private boolean isMultipleLocalDeclaration(LocalDeclaration localDeclaration) {
        if (localDeclaration.declarationSourceStart == this.lastLocalDeclarationSourceStart) {
            return true;
        }
        this.lastLocalDeclarationSourceStart = localDeclaration.declarationSourceStart;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean isPartOfMultipleLocalDeclaration() {
        this.localScanner.resetTo(this.scribe.scanner.currentPosition, this.scribe.scannerEndPosition - 1);
        try {
            block6: while (true) {
                int token;
                if ((token = this.localScanner.getNextToken()) == 69) {
                    return false;
                }
                switch (token) {
                    case 30: {
                        return true;
                    }
                    case 1001: 
                    case 1002: 
                    case 1003: {
                        continue block6;
                    }
                }
                break;
            }
            return false;
        }
        catch (InvalidInputException invalidInputException) {}
        return false;
    }

    private void manageClosingParenthesizedExpression(Expression expression, int numberOfParens) {
        int i = 0;
        while (i < numberOfParens) {
            this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_parenthesized_expression);
            ++i;
        }
    }

    private void manageOpeningParenthesizedExpression(Expression expression, int numberOfParens) {
        int i = 0;
        while (i < numberOfParens) {
            this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_parenthesized_expression);
            if (this.preferences.insert_space_after_opening_paren_in_parenthesized_expression) {
                this.scribe.space();
            }
            ++i;
        }
    }

    private void printComment() {
        this.localScanner.resetTo(this.scribe.scanner.startPosition, this.scribe.scannerEndPosition - 1);
        try {
            int token = this.localScanner.getNextToken();
            switch (token) {
                case 1001: 
                case 1002: 
                case 1003: {
                    this.scribe.printComment(token, 0);
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
    }

    public boolean visit(AllocationExpression allocationExpression, BlockScope scope) {
        int numberOfParens = (allocationExpression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(allocationExpression, numberOfParens);
        }
        this.scribe.printNextToken(43);
        TypeReference[] typeArguments = allocationExpression.typeArguments;
        if (typeArguments != null) {
            this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_type_arguments);
            if (this.preferences.insert_space_after_opening_angle_bracket_in_type_arguments) {
                this.scribe.space();
            }
            int length = typeArguments.length;
            int i = 0;
            while (i < length - 1) {
                typeArguments[i].traverse((ASTVisitor)this, scope);
                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_type_arguments);
                if (this.preferences.insert_space_after_comma_in_type_arguments) {
                    this.scribe.space();
                }
                ++i;
            }
            typeArguments[length - 1].traverse((ASTVisitor)this, scope);
            if (this.isClosingGenericToken()) {
                this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_type_arguments);
            }
            if (this.preferences.insert_space_after_closing_angle_bracket_in_type_arguments) {
                this.scribe.space();
            }
        } else {
            this.scribe.space();
        }
        allocationExpression.type.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_method_invocation);
        Expression[] arguments = allocationExpression.arguments;
        if (arguments != null) {
            if (this.preferences.insert_space_after_opening_paren_in_method_invocation) {
                this.scribe.space();
            }
            int argumentLength = arguments.length;
            Alignment argumentsAlignment = this.scribe.createAlignment(1, this.preferences.alignment_for_arguments_in_allocation_expression, argumentLength, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(argumentsAlignment);
            boolean ok = false;
            do {
                try {
                    int i = 0;
                    while (i < argumentLength) {
                        if (i > 0) {
                            this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_allocation_expression);
                            this.scribe.printComment(0, 256);
                        }
                        this.scribe.alignFragment(argumentsAlignment, i);
                        if (i > 0 && this.preferences.insert_space_after_comma_in_allocation_expression) {
                            this.scribe.space();
                        }
                        arguments[i].traverse((ASTVisitor)this, scope);
                        ++i;
                    }
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(argumentsAlignment, true);
            this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_method_invocation);
        } else {
            this.scribe.printNextToken(28, this.preferences.insert_space_between_empty_parens_in_method_invocation);
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(allocationExpression, numberOfParens);
        }
        return false;
    }

    public boolean visit(AND_AND_Expression and_and_Expression, BlockScope scope) {
        return this.dumpBinaryExpression(and_and_Expression, 24, scope);
    }

    public boolean visit(AnnotationMethodDeclaration annotationTypeMemberDeclaration, ClassScope scope) {
        Expression defaultValue;
        this.scribe.printComment();
        this.scribe.printModifiers(annotationTypeMemberDeclaration.annotations, this, 3);
        this.scribe.space();
        TypeReference returnType = annotationTypeMemberDeclaration.returnType;
        MethodScope annotationTypeMemberDeclarationScope = annotationTypeMemberDeclaration.scope;
        if (returnType != null) {
            returnType.traverse((ASTVisitor)this, annotationTypeMemberDeclarationScope);
        }
        this.scribe.printNextToken(26, true);
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_annotation_type_member_declaration);
        this.scribe.printNextToken(28, this.preferences.insert_space_between_empty_parens_in_annotation_type_member_declaration);
        int extraDimensions = annotationTypeMemberDeclaration.extendedDimensions;
        if (extraDimensions != 0) {
            int i = 0;
            while (i < extraDimensions) {
                this.scribe.printNextToken(16);
                this.scribe.printNextToken(70);
                ++i;
            }
        }
        if ((defaultValue = annotationTypeMemberDeclaration.defaultValue) != null) {
            this.scribe.printNextToken(97, true);
            this.scribe.space();
            defaultValue.traverse((ASTVisitor)this, (BlockScope)null);
        }
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        this.scribe.printComment(0, 256);
        return false;
    }

    public boolean visit(Argument argument, BlockScope scope) {
        if (argument.modifiers != 0 || argument.annotations != null) {
            this.scribe.printComment();
            this.scribe.printModifiers(argument.annotations, this, 5);
            this.scribe.space();
        }
        if (argument.type != null) {
            if (argument.type instanceof UnionTypeReference) {
                this.formatMultiCatchArguments(argument, this.preferences.insert_space_before_binary_operator, this.preferences.insert_space_after_binary_operator, this.preferences.alignment_for_union_type_in_multicatch, scope);
            } else {
                argument.type.traverse((ASTVisitor)this, scope);
            }
        }
        if (argument.isVarArgs()) {
            this.scribe.printNextToken(107, this.preferences.insert_space_before_ellipsis);
            if (this.preferences.insert_space_after_ellipsis) {
                this.scribe.space();
            }
            this.scribe.printNextToken(26, false);
        } else {
            this.scribe.printNextToken(26, true);
        }
        int extraDimensions = this.getDimensions();
        if (extraDimensions != 0) {
            int i = 0;
            while (i < extraDimensions) {
                this.scribe.printNextToken(16);
                this.scribe.printNextToken(70);
                ++i;
            }
        }
        return false;
    }

    public boolean visit(ArrayAllocationExpression arrayAllocationExpression, BlockScope scope) {
        int numberOfParens = (arrayAllocationExpression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(arrayAllocationExpression, numberOfParens);
        }
        this.scribe.printNextToken(43);
        this.scribe.space();
        arrayAllocationExpression.type.traverse((ASTVisitor)this, scope);
        Expression[] dimensions = arrayAllocationExpression.dimensions;
        int dimensionsLength = dimensions.length;
        int i = 0;
        while (i < dimensionsLength) {
            if (this.preferences.insert_space_before_opening_bracket_in_array_allocation_expression) {
                this.scribe.space();
            }
            this.scribe.printNextToken(16, false);
            if (dimensions[i] != null) {
                if (this.preferences.insert_space_after_opening_bracket_in_array_allocation_expression) {
                    this.scribe.space();
                }
                dimensions[i].traverse((ASTVisitor)this, scope);
                this.scribe.printNextToken(70, this.preferences.insert_space_before_closing_bracket_in_array_allocation_expression);
            } else {
                this.scribe.printNextToken(70, this.preferences.insert_space_between_empty_brackets_in_array_allocation_expression);
            }
            ++i;
        }
        ArrayInitializer initializer = arrayAllocationExpression.initializer;
        if (initializer != null) {
            initializer.traverse((ASTVisitor)this, scope);
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(arrayAllocationExpression, numberOfParens);
        }
        return false;
    }

    public boolean visit(ArrayInitializer arrayInitializer, BlockScope scope) {
        int numberOfParens = (arrayInitializer.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(arrayInitializer, numberOfParens);
        }
        this.arrayInitializersDepth = this.arrayInitializersDepth < 0 ? 0 : ++this.arrayInitializersDepth;
        int arrayInitializerIndentationLevel = this.scribe.indentationLevel;
        try {
            Expression[] expressions = arrayInitializer.expressions;
            if (expressions != null) {
                String array_initializer_brace_position = this.preferences.brace_position_for_array_initializer;
                this.formatOpeningBrace(array_initializer_brace_position, this.preferences.insert_space_before_opening_brace_in_array_initializer);
                int expressionsLength = expressions.length;
                boolean insert_new_line_after_opening_brace = this.preferences.insert_new_line_after_opening_brace_in_array_initializer;
                boolean ok = false;
                Alignment arrayInitializerAlignment = null;
                if (expressionsLength > 1) {
                    if (insert_new_line_after_opening_brace) {
                        this.scribe.printNewLine();
                    }
                    arrayInitializerAlignment = this.scribe.createAlignment(3, this.preferences.alignment_for_expressions_in_array_initializer, 1, expressionsLength, this.scribe.scanner.currentPosition, this.preferences.continuation_indentation_for_array_initializer, true);
                    if (insert_new_line_after_opening_brace) {
                        arrayInitializerAlignment.fragmentIndentations[0] = arrayInitializerAlignment.breakIndentationLevel;
                    }
                    this.scribe.enterAlignment(arrayInitializerAlignment);
                    do {
                        try {
                            this.scribe.alignFragment(arrayInitializerAlignment, 0);
                            if (this.preferences.insert_space_after_opening_brace_in_array_initializer) {
                                this.scribe.space();
                            }
                            expressions[0].traverse((ASTVisitor)this, scope);
                            int i = 1;
                            while (i < expressionsLength) {
                                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_array_initializer);
                                this.scribe.printComment(0, 256);
                                this.scribe.alignFragment(arrayInitializerAlignment, i);
                                if (this.preferences.insert_space_after_comma_in_array_initializer) {
                                    this.scribe.space();
                                }
                                expressions[i].traverse((ASTVisitor)this, scope);
                                if (i == expressionsLength - 1 && this.isNextToken(30)) {
                                    this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_array_initializer);
                                    this.scribe.printComment(0, 256);
                                }
                                ++i;
                            }
                            ok = true;
                        }
                        catch (AlignmentException e) {
                            this.scribe.redoAlignment(e);
                        }
                    } while (!ok);
                    this.scribe.exitAlignment(arrayInitializerAlignment, true);
                } else {
                    if (this.scribe.currentAlignment == null || this.scribe.currentAlignment.kind != 15) {
                        arrayInitializerAlignment = this.scribe.createAlignment(3, this.preferences.alignment_for_expressions_in_array_initializer, 1, 0, this.scribe.scanner.currentPosition, this.preferences.continuation_indentation_for_array_initializer, true);
                        this.scribe.enterAlignment(arrayInitializerAlignment);
                    }
                    do {
                        try {
                            if (insert_new_line_after_opening_brace) {
                                this.scribe.printNewLine();
                                this.scribe.indent();
                            }
                            if (this.preferences.insert_space_after_opening_brace_in_array_initializer) {
                                this.scribe.space();
                            } else {
                                this.scribe.needSpace = false;
                            }
                            expressions[0].traverse((ASTVisitor)this, scope);
                            if (this.isNextToken(30)) {
                                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_array_initializer);
                                this.scribe.printComment(0, 256);
                            }
                            if (insert_new_line_after_opening_brace) {
                                this.scribe.unIndent();
                            }
                            ok = true;
                        }
                        catch (AlignmentException e) {
                            if (arrayInitializerAlignment == null) {
                                throw e;
                            }
                            this.scribe.redoAlignment(e);
                        }
                    } while (!ok);
                    if (arrayInitializerAlignment != null) {
                        this.scribe.exitAlignment(arrayInitializerAlignment, true);
                    }
                }
                if (this.preferences.insert_new_line_before_closing_brace_in_array_initializer) {
                    this.scribe.printNewLine();
                } else if (this.preferences.insert_space_before_closing_brace_in_array_initializer) {
                    this.scribe.space();
                }
                this.scribe.printNextToken(31, false, 4 + (arrayInitializerIndentationLevel << 16));
                if (array_initializer_brace_position.equals("next_line_shifted")) {
                    this.scribe.unIndent();
                }
            } else {
                boolean keepEmptyArrayInitializerOnTheSameLine = this.preferences.keep_empty_array_initializer_on_one_line;
                String array_initializer_brace_position = this.preferences.brace_position_for_array_initializer;
                if (keepEmptyArrayInitializerOnTheSameLine) {
                    this.scribe.printNextToken(68, this.preferences.insert_space_before_opening_brace_in_array_initializer);
                    if (this.isNextToken(30)) {
                        this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_array_initializer);
                        this.scribe.printComment(0, 256);
                    }
                    this.scribe.printNextToken(31, this.preferences.insert_space_between_empty_braces_in_array_initializer);
                } else {
                    this.formatOpeningBrace(array_initializer_brace_position, this.preferences.insert_space_before_opening_brace_in_array_initializer);
                    if (this.isNextToken(30)) {
                        this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_array_initializer);
                        this.scribe.printComment(0, 256);
                    }
                    this.scribe.printNextToken(31, this.preferences.insert_space_between_empty_braces_in_array_initializer);
                    if (array_initializer_brace_position.equals("next_line_shifted")) {
                        this.scribe.unIndent();
                    }
                }
            }
        }
        finally {
            --this.arrayInitializersDepth;
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(arrayInitializer, numberOfParens);
        }
        return false;
    }

    public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, BlockScope scope) {
        int numberOfParens = (arrayQualifiedTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(arrayQualifiedTypeReference, numberOfParens);
        }
        this.scribe.printArrayQualifiedReference(arrayQualifiedTypeReference.tokens.length, arrayQualifiedTypeReference.sourceEnd);
        int dimensions = this.getDimensions();
        if (dimensions != 0) {
            int i = 0;
            while (i < dimensions) {
                this.scribe.printNextToken(16);
                this.scribe.printNextToken(70);
                ++i;
            }
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(arrayQualifiedTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, ClassScope scope) {
        int numberOfParens = (arrayQualifiedTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(arrayQualifiedTypeReference, numberOfParens);
        }
        this.scribe.printArrayQualifiedReference(arrayQualifiedTypeReference.tokens.length, arrayQualifiedTypeReference.sourceEnd);
        int dimensions = this.getDimensions();
        if (dimensions != 0) {
            int i = 0;
            while (i < dimensions) {
                this.scribe.printNextToken(16);
                this.scribe.printNextToken(70);
                ++i;
            }
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(arrayQualifiedTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(ArrayReference arrayReference, BlockScope scope) {
        int numberOfParens = (arrayReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(arrayReference, numberOfParens);
        }
        arrayReference.receiver.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(16, this.preferences.insert_space_before_opening_bracket_in_array_reference);
        if (this.preferences.insert_space_after_opening_bracket_in_array_reference) {
            this.scribe.space();
        }
        arrayReference.position.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(70, this.preferences.insert_space_before_closing_bracket_in_array_reference);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(arrayReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(ArrayTypeReference arrayTypeReference, BlockScope scope) {
        int numberOfParens = (arrayTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(arrayTypeReference, numberOfParens);
        }
        this.scribe.printNextToken(SINGLETYPEREFERENCE_EXPECTEDTOKENS);
        int dimensions = this.getDimensions();
        if (dimensions != 0) {
            if (this.preferences.insert_space_before_opening_bracket_in_array_type_reference) {
                this.scribe.space();
            }
            int i = 0;
            while (i < dimensions) {
                this.scribe.printNextToken(16);
                if (this.preferences.insert_space_between_brackets_in_array_type_reference) {
                    this.scribe.space();
                }
                this.scribe.printNextToken(70);
                ++i;
            }
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(arrayTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(ArrayTypeReference arrayTypeReference, ClassScope scope) {
        int numberOfParens = (arrayTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(arrayTypeReference, numberOfParens);
        }
        this.scribe.printNextToken(SINGLETYPEREFERENCE_EXPECTEDTOKENS);
        int dimensions = this.getDimensions();
        if (dimensions != 0) {
            if (this.preferences.insert_space_before_opening_bracket_in_array_type_reference) {
                this.scribe.space();
            }
            int i = 0;
            while (i < dimensions) {
                this.scribe.printNextToken(16);
                if (this.preferences.insert_space_between_brackets_in_array_type_reference) {
                    this.scribe.space();
                }
                this.scribe.printNextToken(70);
                ++i;
            }
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(arrayTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(AssertStatement assertStatement, BlockScope scope) {
        this.scribe.printNextToken(74);
        this.scribe.space();
        assertStatement.assertExpression.traverse((ASTVisitor)this, scope);
        if (assertStatement.exceptionArgument != null) {
            this.scribe.printNextToken(65, this.preferences.insert_space_before_colon_in_assert);
            if (this.preferences.insert_space_after_colon_in_assert) {
                this.scribe.space();
            }
            assertStatement.exceptionArgument.traverse((ASTVisitor)this, scope);
        }
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        this.scribe.printComment(0, 256);
        return false;
    }

    public boolean visit(Assignment assignment, BlockScope scope) {
        int numberOfParens = (assignment.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(assignment, numberOfParens);
        }
        assignment.lhs.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(71, this.preferences.insert_space_before_assignment_operator);
        if (this.preferences.insert_space_after_assignment_operator) {
            this.scribe.space();
        }
        Alignment assignmentAlignment = this.scribe.createAlignment(4, this.preferences.alignment_for_assignment, 1, 1, this.scribe.scanner.currentPosition);
        this.scribe.enterAlignment(assignmentAlignment);
        boolean ok = false;
        do {
            try {
                this.scribe.alignFragment(assignmentAlignment, 0);
                assignment.expression.traverse((ASTVisitor)this, scope);
                ok = true;
            }
            catch (AlignmentException e) {
                this.scribe.redoAlignment(e);
            }
        } while (!ok);
        this.scribe.exitAlignment(assignmentAlignment, true);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(assignment, numberOfParens);
        }
        return false;
    }

    public boolean visit(BinaryExpression binaryExpression, BlockScope scope) {
        switch ((binaryExpression.bits & 0xFC0) >> 6) {
            case 2: {
                return this.dumpBinaryExpression(binaryExpression, 20, scope);
            }
            case 9: {
                return this.dumpBinaryExpression(binaryExpression, 6, scope);
            }
            case 6: {
                return this.dumpBinaryExpression(binaryExpression, 11, scope);
            }
            case 7: {
                return this.dumpBinaryExpression(binaryExpression, 15, scope);
            }
            case 10: {
                return this.dumpBinaryExpression(binaryExpression, 17, scope);
            }
            case 4: {
                return this.dumpBinaryExpression(binaryExpression, 7, scope);
            }
            case 5: {
                return this.dumpBinaryExpression(binaryExpression, 14, scope);
            }
            case 13: {
                return this.dumpBinaryExpression(binaryExpression, 2, scope);
            }
            case 15: {
                return this.dumpBinaryExpression(binaryExpression, 4, scope);
            }
            case 3: {
                return this.dumpBinaryExpression(binaryExpression, 22, scope);
            }
            case 14: {
                return this.dumpBinaryExpression(binaryExpression, 1, scope);
            }
            case 16: {
                return this.dumpBinaryExpression(binaryExpression, 5, scope);
            }
            case 17: {
                return this.dumpBinaryExpression(binaryExpression, 10, scope);
            }
            case 19: {
                return this.dumpBinaryExpression(binaryExpression, 12, scope);
            }
            case 8: {
                return this.dumpBinaryExpression(binaryExpression, 21, scope);
            }
        }
        throw new IllegalStateException();
    }

    public boolean visit(Block block, BlockScope scope) {
        this.formatBlock(block, scope, this.preferences.brace_position_for_block, this.preferences.insert_space_before_opening_brace_in_block);
        return false;
    }

    public boolean visit(BreakStatement breakStatement, BlockScope scope) {
        this.scribe.printNextToken(75);
        if (breakStatement.label != null) {
            this.scribe.printNextToken(26, true);
        }
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        this.scribe.printComment(0, 256);
        return false;
    }

    public boolean visit(CaseStatement caseStatement, BlockScope scope) {
        if (caseStatement.constantExpression == null) {
            this.scribe.printNextToken(97);
            this.scribe.printNextToken(65, this.preferences.insert_space_before_colon_in_default);
        } else {
            this.scribe.printNextToken(102);
            this.scribe.space();
            caseStatement.constantExpression.traverse((ASTVisitor)this, scope);
            this.scribe.printNextToken(65, this.preferences.insert_space_before_colon_in_case);
        }
        return false;
    }

    public boolean visit(CastExpression castExpression, BlockScope scope) {
        int numberOfParens = (castExpression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(castExpression, numberOfParens);
        }
        this.scribe.printNextToken(29);
        if (this.preferences.insert_space_after_opening_paren_in_cast) {
            this.scribe.space();
        }
        castExpression.type.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_cast);
        if (this.preferences.insert_space_after_closing_paren_in_cast) {
            this.scribe.space();
        }
        castExpression.expression.traverse((ASTVisitor)this, scope);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(castExpression, numberOfParens);
        }
        return false;
    }

    public boolean visit(CharLiteral charLiteral, BlockScope scope) {
        int numberOfParens = (charLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(charLiteral, numberOfParens);
        }
        this.scribe.printNextToken(51);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(charLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(ClassLiteralAccess classLiteral, BlockScope scope) {
        int numberOfParens = (classLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(classLiteral, numberOfParens);
        }
        classLiteral.type.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(3);
        this.scribe.printNextToken(72);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(classLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(Clinit clinit, ClassScope scope) {
        return false;
    }

    public boolean visit(CompilationUnitDeclaration compilationUnitDeclaration, CompilationUnitScope scope) {
        boolean hasPackage;
        this.scribe.lastNumberOfNewLines = 1;
        TypeDeclaration[] types = compilationUnitDeclaration.types;
        int headerEndPosition = types == null ? compilationUnitDeclaration.sourceEnd : types[0].declarationSourceStart;
        this.scribe.setHeaderComment(headerEndPosition);
        ImportReference currentPackage = compilationUnitDeclaration.currentPackage;
        boolean bl = hasPackage = currentPackage != null;
        if (hasPackage) {
            this.printComment();
            int blankLinesBeforePackage = this.preferences.blank_lines_before_package;
            if (blankLinesBeforePackage > 0) {
                this.scribe.printEmptyLines(blankLinesBeforePackage);
            }
            this.scribe.printModifiers(currentPackage.annotations, this, 4);
            this.scribe.space();
            this.scribe.printNextToken(96);
            this.scribe.space();
            this.scribe.printQualifiedReference(compilationUnitDeclaration.currentPackage.sourceEnd, false);
            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
            this.scribe.printComment(0, 256);
            int blankLinesAfterPackage = this.preferences.blank_lines_after_package;
            if (blankLinesAfterPackage > 0) {
                this.scribe.printEmptyLines(blankLinesAfterPackage);
            } else {
                this.scribe.printNewLine();
            }
        } else {
            this.scribe.printComment();
        }
        ImportReference[] imports = compilationUnitDeclaration.imports;
        if (imports != null) {
            int importLength;
            int blankLinesBeforeImports;
            if (hasPackage && (blankLinesBeforeImports = this.preferences.blank_lines_before_imports) > 0) {
                this.scribe.printEmptyLines(blankLinesBeforeImports);
            }
            if ((importLength = imports.length) != 1) {
                this.format(imports[0], false);
                int i = 1;
                while (i < importLength - 1) {
                    this.format(imports[i], false);
                    ++i;
                }
                this.format(imports[importLength - 1], true);
            } else {
                this.format(imports[0], true);
            }
            int blankLinesAfterImports = this.preferences.blank_lines_after_imports;
            if (blankLinesAfterImports > 0) {
                this.scribe.printEmptyLines(blankLinesAfterImports);
            }
        }
        this.formatEmptyTypeDeclaration(true);
        int blankLineBetweenTypeDeclarations = this.preferences.blank_lines_between_type_declarations;
        if (types != null) {
            int typesLength = types.length;
            int i = 0;
            while (i < typesLength - 1) {
                types[i].traverse((ASTVisitor)this, scope);
                this.formatEmptyTypeDeclaration(false);
                if (blankLineBetweenTypeDeclarations != 0) {
                    this.scribe.printEmptyLines(blankLineBetweenTypeDeclarations);
                } else {
                    this.scribe.printNewLine();
                }
                ++i;
            }
            types[typesLength - 1].traverse((ASTVisitor)this, scope);
        }
        this.scribe.printEndOfCompilationUnit();
        return false;
    }

    public boolean visit(CompoundAssignment compoundAssignment, BlockScope scope) {
        int operator;
        int numberOfParens = (compoundAssignment.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(compoundAssignment, numberOfParens);
        }
        compoundAssignment.lhs.traverse((ASTVisitor)this, scope);
        switch (compoundAssignment.operator) {
            case 14: {
                operator = 84;
                break;
            }
            case 13: {
                operator = 85;
                break;
            }
            case 15: {
                operator = 86;
                break;
            }
            case 9: {
                operator = 87;
                break;
            }
            case 2: {
                operator = 88;
                break;
            }
            case 3: {
                operator = 89;
                break;
            }
            case 8: {
                operator = 90;
                break;
            }
            case 16: {
                operator = 91;
                break;
            }
            case 10: {
                operator = 92;
                break;
            }
            case 17: {
                operator = 93;
                break;
            }
            default: {
                operator = 94;
            }
        }
        this.scribe.printNextToken(operator, this.preferences.insert_space_before_assignment_operator);
        if (this.preferences.insert_space_after_assignment_operator) {
            this.scribe.space();
        }
        Alignment assignmentAlignment = this.scribe.createAlignment(8, this.preferences.alignment_for_assignment, 1, 1, this.scribe.scanner.currentPosition);
        this.scribe.enterAlignment(assignmentAlignment);
        boolean ok = false;
        do {
            try {
                this.scribe.alignFragment(assignmentAlignment, 0);
                compoundAssignment.expression.traverse((ASTVisitor)this, scope);
                ok = true;
            }
            catch (AlignmentException e) {
                this.scribe.redoAlignment(e);
            }
        } while (!ok);
        this.scribe.exitAlignment(assignmentAlignment, true);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(compoundAssignment, numberOfParens);
        }
        return false;
    }

    public boolean visit(ConditionalExpression conditionalExpression, BlockScope scope) {
        int numberOfParens = (conditionalExpression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(conditionalExpression, numberOfParens);
        }
        conditionalExpression.condition.traverse((ASTVisitor)this, scope);
        Alignment conditionalExpressionAlignment = this.scribe.createAlignment(9, this.preferences.alignment_for_conditional_expression, 2, this.scribe.scanner.currentPosition);
        this.scribe.enterAlignment(conditionalExpressionAlignment);
        boolean ok = false;
        do {
            try {
                this.scribe.alignFragment(conditionalExpressionAlignment, 0);
                this.scribe.printNextToken(23, this.preferences.insert_space_before_question_in_conditional);
                if (this.preferences.insert_space_after_question_in_conditional) {
                    this.scribe.space();
                }
                conditionalExpression.valueIfTrue.traverse((ASTVisitor)this, scope);
                this.scribe.printComment(0, 256);
                this.scribe.alignFragment(conditionalExpressionAlignment, 1);
                this.scribe.printNextToken(65, this.preferences.insert_space_before_colon_in_conditional);
                if (this.preferences.insert_space_after_colon_in_conditional) {
                    this.scribe.space();
                }
                conditionalExpression.valueIfFalse.traverse((ASTVisitor)this, scope);
                ok = true;
            }
            catch (AlignmentException e) {
                this.scribe.redoAlignment(e);
            }
        } while (!ok);
        this.scribe.exitAlignment(conditionalExpressionAlignment, true);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(conditionalExpression, numberOfParens);
        }
        return false;
    }

    public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope scope) {
        if (constructorDeclaration.ignoreFurtherInvestigation) {
            this.scribe.printComment();
            if (this.scribe.indentationLevel != 0) {
                this.scribe.printIndentationIfNecessary();
            }
            this.scribe.scanner.resetTo(constructorDeclaration.declarationSourceEnd + 1, this.scribe.scannerEndPosition - 1);
            this.scribe.printComment(0, 256);
            switch (this.scribe.scanner.source[this.scribe.scanner.currentPosition]) {
                case '\n': {
                    ++this.scribe.scanner.currentPosition;
                    this.scribe.lastNumberOfNewLines = 1;
                    break;
                }
                case '\r': {
                    ++this.scribe.scanner.currentPosition;
                    if (this.scribe.scanner.source[this.scribe.scanner.currentPosition] == '\n') {
                        ++this.scribe.scanner.currentPosition;
                    }
                    this.scribe.lastNumberOfNewLines = 1;
                }
            }
            return false;
        }
        this.scribe.printComment();
        int line = this.scribe.line;
        this.scribe.printModifiers(constructorDeclaration.annotations, this, 3);
        if (this.scribe.line > line) {
            line = this.scribe.line;
        }
        this.scribe.space();
        TypeParameter[] typeParameters = constructorDeclaration.typeParameters;
        if (typeParameters != null) {
            this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_type_parameters);
            if (this.preferences.insert_space_after_opening_angle_bracket_in_type_parameters) {
                this.scribe.space();
            }
            int length = typeParameters.length;
            int i = 0;
            while (i < length - 1) {
                typeParameters[i].traverse((ASTVisitor)this, constructorDeclaration.scope);
                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_type_parameters);
                if (this.preferences.insert_space_after_comma_in_type_parameters) {
                    this.scribe.space();
                }
                ++i;
            }
            typeParameters[length - 1].traverse((ASTVisitor)this, constructorDeclaration.scope);
            if (this.isClosingGenericToken()) {
                this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_type_parameters);
            }
            if (this.preferences.insert_space_after_closing_angle_bracket_in_type_parameters) {
                this.scribe.space();
            }
        }
        this.scribe.printNextToken(26, true);
        this.formatMethodArguments(constructorDeclaration, this.preferences.insert_space_before_opening_paren_in_constructor_declaration, this.preferences.insert_space_between_empty_parens_in_constructor_declaration, this.preferences.insert_space_before_closing_paren_in_constructor_declaration, this.preferences.insert_space_after_opening_paren_in_constructor_declaration, this.preferences.insert_space_before_comma_in_constructor_declaration_parameters, this.preferences.insert_space_after_comma_in_constructor_declaration_parameters, this.preferences.alignment_for_parameters_in_constructor_declaration);
        this.formatThrowsClause(constructorDeclaration, this.preferences.insert_space_before_comma_in_constructor_declaration_throws, this.preferences.insert_space_after_comma_in_constructor_declaration_throws, this.preferences.alignment_for_throws_clause_in_constructor_declaration);
        if (!constructorDeclaration.isNative() && !constructorDeclaration.isAbstract()) {
            Statement[] statements;
            String constructor_declaration_brace = this.preferences.brace_position_for_constructor_declaration;
            this.formatLeftCurlyBrace(line, constructor_declaration_brace);
            this.formatOpeningBrace(constructor_declaration_brace, this.preferences.insert_space_before_opening_brace_in_constructor_declaration);
            int numberOfBlankLinesAtBeginningOfMethodBody = this.preferences.blank_lines_at_beginning_of_method_body;
            if (numberOfBlankLinesAtBeginningOfMethodBody > 0) {
                this.scribe.printEmptyLines(numberOfBlankLinesAtBeginningOfMethodBody);
            }
            if (constructorDeclaration.constructorCall != null && !constructorDeclaration.constructorCall.isImplicitSuper()) {
                this.scribe.printNewLine();
                if (this.preferences.indent_statements_compare_to_body) {
                    this.scribe.indent();
                }
                constructorDeclaration.constructorCall.traverse(this, constructorDeclaration.scope);
                if (this.preferences.indent_statements_compare_to_body) {
                    this.scribe.unIndent();
                }
            }
            if ((statements = constructorDeclaration.statements) != null) {
                this.scribe.printNewLine();
                if (this.preferences.indent_statements_compare_to_body) {
                    this.scribe.indent();
                }
                this.formatStatements(constructorDeclaration.scope, statements, true);
                this.scribe.printComment();
                if (this.preferences.indent_statements_compare_to_body) {
                    this.scribe.unIndent();
                }
            } else {
                if (this.preferences.insert_new_line_in_empty_method_body) {
                    this.scribe.printNewLine();
                }
                if (this.preferences.indent_statements_compare_to_body) {
                    this.scribe.indent();
                }
                this.scribe.printComment();
                if (this.preferences.indent_statements_compare_to_body) {
                    this.scribe.unIndent();
                }
            }
            this.scribe.printNextToken(31);
            this.scribe.printComment(0, 256);
            if (constructor_declaration_brace.equals("next_line_shifted")) {
                this.scribe.unIndent();
            }
        } else {
            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
            this.scribe.printComment(0, 256);
        }
        return false;
    }

    public boolean visit(ContinueStatement continueStatement, BlockScope scope) {
        this.scribe.printNextToken(76);
        if (continueStatement.label != null) {
            this.scribe.printNextToken(26, true);
        }
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        this.scribe.printComment(0, 256);
        return false;
    }

    public boolean visit(DoStatement doStatement, BlockScope scope) {
        this.scribe.printNextToken(77);
        int line = this.scribe.line;
        Statement action = doStatement.action;
        if (action != null) {
            if (action instanceof Block) {
                this.formatLeftCurlyBrace(line, this.preferences.brace_position_for_block);
                action.traverse(this, scope);
            } else if (action instanceof EmptyStatement) {
                this.formatNecessaryEmptyStatement();
            } else {
                this.scribe.printNewLine();
                this.scribe.indent();
                action.traverse(this, scope);
                if (action instanceof Expression) {
                    this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                    this.scribe.printComment(0, 256);
                }
                this.scribe.printNewLine();
                this.scribe.unIndent();
            }
        } else {
            this.formatNecessaryEmptyStatement();
        }
        if (this.preferences.insert_new_line_before_while_in_do_statement) {
            this.scribe.printNewLine();
        }
        this.scribe.printNextToken(73, this.preferences.insert_space_after_closing_brace_in_block);
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_while);
        if (this.preferences.insert_space_after_opening_paren_in_while) {
            this.scribe.space();
        }
        doStatement.condition.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_while);
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        this.scribe.printComment(0, 256);
        return false;
    }

    public boolean visit(DoubleLiteral doubleLiteral, BlockScope scope) {
        Constant constant;
        int numberOfParens = (doubleLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(doubleLiteral, numberOfParens);
        }
        if ((constant = doubleLiteral.constant) != null && constant.doubleValue() < 0.0) {
            this.scribe.printNextToken(2);
        }
        this.scribe.printNextToken(50);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(doubleLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(EmptyStatement statement, BlockScope scope) {
        if (this.preferences.put_empty_statement_on_new_line) {
            this.scribe.printNewLine();
        }
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        this.scribe.printComment(0, 256);
        return false;
    }

    public boolean visit(FieldDeclaration enumConstant, MethodScope scope) {
        this.scribe.printComment();
        int line = this.scribe.line;
        this.scribe.printModifiers(enumConstant.annotations, this, 2);
        this.scribe.printNextToken(26, false);
        this.formatEnumConstantArguments(enumConstant, this.preferences.insert_space_before_opening_paren_in_enum_constant, this.preferences.insert_space_between_empty_parens_in_enum_constant, this.preferences.insert_space_before_closing_paren_in_enum_constant, this.preferences.insert_space_after_opening_paren_in_enum_constant, this.preferences.insert_space_before_comma_in_enum_constant_arguments, this.preferences.insert_space_after_comma_in_enum_constant_arguments, this.preferences.alignment_for_arguments_in_enum_constant);
        Expression initialization = enumConstant.initialization;
        if (initialization instanceof QualifiedAllocationExpression) {
            TypeDeclaration typeDeclaration = ((QualifiedAllocationExpression)initialization).anonymousType;
            int fieldsCount = typeDeclaration.fields == null ? 0 : typeDeclaration.fields.length;
            int methodsCount = typeDeclaration.methods == null ? 0 : typeDeclaration.methods.length;
            int membersCount = typeDeclaration.memberTypes == null ? 0 : typeDeclaration.memberTypes.length;
            String enum_constant_brace = this.preferences.brace_position_for_enum_constant;
            this.formatLeftCurlyBrace(line, enum_constant_brace);
            this.formatTypeOpeningBraceForEnumConstant(enum_constant_brace, this.preferences.insert_space_before_opening_brace_in_enum_constant, typeDeclaration);
            if (this.preferences.indent_body_declarations_compare_to_enum_constant_header) {
                this.scribe.indent();
            }
            if (fieldsCount != 0 || methodsCount != 0 || membersCount != 0) {
                this.formatTypeMembers(typeDeclaration);
            }
            if (this.preferences.indent_body_declarations_compare_to_enum_constant_header) {
                this.scribe.unIndent();
            }
            if (this.preferences.insert_new_line_in_empty_enum_constant) {
                this.scribe.printNewLine();
            }
            this.scribe.printNextToken(31);
            this.scribe.printComment(0, 256);
            if (enum_constant_brace.equals("next_line_shifted")) {
                this.scribe.unIndent();
            }
            if (this.hasComments()) {
                this.scribe.printNewLine();
            }
        }
        return false;
    }

    public boolean visit(EqualExpression equalExpression, BlockScope scope) {
        if ((equalExpression.bits & 0xFC0) >> 6 == 18) {
            return this.dumpEqualityExpression(equalExpression, 18, scope);
        }
        return this.dumpEqualityExpression(equalExpression, 19, scope);
    }

    public boolean visit(ExplicitConstructorCall explicitConstructor, BlockScope scope) {
        TypeReference[] typeArguments;
        if (explicitConstructor.isImplicitSuper()) {
            return false;
        }
        Expression qualification = explicitConstructor.qualification;
        if (qualification != null) {
            qualification.traverse((ASTVisitor)this, scope);
            this.scribe.printNextToken(3);
        }
        if ((typeArguments = explicitConstructor.typeArguments) != null) {
            this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_type_arguments);
            if (this.preferences.insert_space_after_opening_angle_bracket_in_type_arguments) {
                this.scribe.space();
            }
            int length = typeArguments.length;
            int i = 0;
            while (i < length - 1) {
                typeArguments[i].traverse((ASTVisitor)this, scope);
                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_type_arguments);
                if (this.preferences.insert_space_after_comma_in_type_arguments) {
                    this.scribe.space();
                }
                ++i;
            }
            typeArguments[length - 1].traverse((ASTVisitor)this, scope);
            if (this.isClosingGenericToken()) {
                this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_type_arguments);
            }
            if (this.preferences.insert_space_after_closing_angle_bracket_in_type_arguments) {
                this.scribe.space();
            }
        }
        if (explicitConstructor.isSuperAccess()) {
            this.scribe.printNextToken(41);
        } else {
            this.scribe.printNextToken(42);
        }
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_method_invocation);
        Expression[] arguments = explicitConstructor.arguments;
        if (arguments != null) {
            if (this.preferences.insert_space_after_opening_paren_in_method_invocation) {
                this.scribe.space();
            }
            int argumentLength = arguments.length;
            Alignment argumentsAlignment = this.scribe.createAlignment(12, this.preferences.alignment_for_arguments_in_explicit_constructor_call, argumentLength, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(argumentsAlignment);
            boolean ok = false;
            do {
                try {
                    int i = 0;
                    while (i < argumentLength) {
                        if (i > 0) {
                            this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_explicit_constructor_call_arguments);
                            this.scribe.printComment(0, 256);
                        }
                        this.scribe.alignFragment(argumentsAlignment, i);
                        if (i > 0 && this.preferences.insert_space_after_comma_in_explicit_constructor_call_arguments) {
                            this.scribe.space();
                        }
                        arguments[i].traverse((ASTVisitor)this, scope);
                        ++i;
                    }
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(argumentsAlignment, true);
            this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_method_invocation);
        } else {
            this.scribe.printNextToken(28, this.preferences.insert_space_between_empty_parens_in_method_invocation);
        }
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        this.scribe.printComment(0, 256);
        return false;
    }

    public boolean visit(FalseLiteral falseLiteral, BlockScope scope) {
        int numberOfParens = (falseLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(falseLiteral, numberOfParens);
        }
        this.scribe.printNextToken(44);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(falseLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(FieldReference fieldReference, BlockScope scope) {
        int numberOfParens = (fieldReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(fieldReference, numberOfParens);
        }
        fieldReference.receiver.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(3);
        this.scribe.printNextToken(26);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(fieldReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(FloatLiteral floatLiteral, BlockScope scope) {
        Constant constant;
        int numberOfParens = (floatLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(floatLiteral, numberOfParens);
        }
        if ((constant = floatLiteral.constant) != null && floatLiteral.constant.floatValue() < 0.0f) {
            this.scribe.printNextToken(2);
        }
        this.scribe.printNextToken(49);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(floatLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(ForeachStatement forStatement, BlockScope scope) {
        this.scribe.printNextToken(78);
        int line = this.scribe.line;
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_for);
        if (this.preferences.insert_space_after_opening_paren_in_for) {
            this.scribe.space();
        }
        this.formatLocalDeclaration(forStatement.elementVariable, scope, false, false);
        this.scribe.printNextToken(65, this.preferences.insert_space_before_colon_in_for);
        if (this.preferences.insert_space_after_colon_in_for) {
            this.scribe.space();
        }
        forStatement.collection.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_for);
        Statement action = forStatement.action;
        if (action != null) {
            if (action instanceof Block) {
                this.formatLeftCurlyBrace(line, this.preferences.brace_position_for_block);
                action.traverse(this, scope);
            } else if (action instanceof EmptyStatement) {
                this.formatNecessaryEmptyStatement();
            } else {
                this.scribe.indent();
                this.scribe.printNewLine();
                action.traverse(this, scope);
                this.scribe.unIndent();
            }
            if (action instanceof Expression) {
                this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                this.scribe.printComment(0, 256);
            }
        } else {
            this.formatNecessaryEmptyStatement();
        }
        return false;
    }

    public boolean visit(ForStatement forStatement, BlockScope scope) {
        Statement[] initializations;
        this.scribe.printNextToken(78);
        int line = this.scribe.line;
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_for);
        if (this.preferences.insert_space_after_opening_paren_in_for) {
            this.scribe.space();
        }
        if ((initializations = forStatement.initializations) != null) {
            int length = initializations.length;
            int i = 0;
            while (i < length) {
                if (initializations[i] instanceof LocalDeclaration) {
                    this.formatLocalDeclaration((LocalDeclaration)initializations[i], scope, this.preferences.insert_space_before_comma_in_for_inits, this.preferences.insert_space_after_comma_in_for_inits);
                } else {
                    initializations[i].traverse(this, scope);
                    if (i >= 0 && i < length - 1) {
                        this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_for_inits);
                        if (this.preferences.insert_space_after_comma_in_for_inits) {
                            this.scribe.space();
                        }
                        this.scribe.printComment(0, 256);
                    }
                }
                ++i;
            }
        }
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon_in_for);
        Expression condition = forStatement.condition;
        if (condition != null) {
            if (this.preferences.insert_space_after_semicolon_in_for) {
                this.scribe.space();
            }
            condition.traverse((ASTVisitor)this, scope);
        }
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon_in_for);
        Statement[] increments = forStatement.increments;
        if (increments != null) {
            if (this.preferences.insert_space_after_semicolon_in_for) {
                this.scribe.space();
            }
            int i = 0;
            int length = increments.length;
            while (i < length) {
                increments[i].traverse(this, scope);
                if (i != length - 1) {
                    this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_for_increments);
                    if (this.preferences.insert_space_after_comma_in_for_increments) {
                        this.scribe.space();
                    }
                    this.scribe.printComment(0, 256);
                }
                ++i;
            }
        }
        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_for);
        Statement action = forStatement.action;
        if (action != null) {
            if (action instanceof Block) {
                this.formatLeftCurlyBrace(line, this.preferences.brace_position_for_block);
                action.traverse(this, scope);
            } else if (action instanceof EmptyStatement) {
                this.formatNecessaryEmptyStatement();
            } else {
                this.scribe.indent();
                this.scribe.printNewLine();
                action.traverse(this, scope);
                this.scribe.unIndent();
            }
            if (action instanceof Expression) {
                this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                this.scribe.printComment(0, 256);
            }
        } else {
            this.formatNecessaryEmptyStatement();
        }
        return false;
    }

    public boolean visit(IfStatement ifStatement, BlockScope scope) {
        this.scribe.printNextToken(79);
        int line = this.scribe.line;
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_if);
        if (this.preferences.insert_space_after_opening_paren_in_if) {
            this.scribe.space();
        }
        ifStatement.condition.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_if);
        Statement thenStatement = ifStatement.thenStatement;
        Statement elseStatement = ifStatement.elseStatement;
        boolean thenStatementIsBlock = false;
        if (thenStatement != null) {
            if (thenStatement instanceof Block) {
                thenStatementIsBlock = true;
                if (this.isGuardClause((Block)thenStatement) && elseStatement == null && this.preferences.keep_guardian_clause_on_one_line) {
                    this.formatGuardClauseBlock((Block)thenStatement, scope);
                } else {
                    this.formatLeftCurlyBrace(line, this.preferences.brace_position_for_block);
                    thenStatement.traverse(this, scope);
                    if (elseStatement != null && this.preferences.insert_new_line_before_else_in_if_statement) {
                        this.scribe.printNewLine();
                    }
                }
            } else if (elseStatement == null && this.preferences.keep_simple_if_on_one_line) {
                Alignment compactIfAlignment = this.scribe.createAlignment(7, this.preferences.alignment_for_compact_if, 1, 1, this.scribe.scanner.currentPosition, 1, false);
                this.scribe.enterAlignment(compactIfAlignment);
                boolean ok = false;
                do {
                    try {
                        this.scribe.alignFragment(compactIfAlignment, 0);
                        this.scribe.space();
                        thenStatement.traverse(this, scope);
                        if (thenStatement instanceof Expression) {
                            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                            this.scribe.printComment(0, 256);
                        }
                        ok = true;
                    }
                    catch (AlignmentException e) {
                        this.scribe.redoAlignment(e);
                    }
                } while (!ok);
                this.scribe.exitAlignment(compactIfAlignment, true);
            } else if (this.preferences.keep_then_statement_on_same_line) {
                this.scribe.space();
                thenStatement.traverse(this, scope);
                if (thenStatement instanceof Expression) {
                    this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                    this.scribe.printComment(0, 256);
                }
                if (elseStatement != null) {
                    this.scribe.printNewLine();
                }
            } else {
                this.scribe.printComment(0, 256);
                this.scribe.printNewLine();
                this.scribe.indent();
                thenStatement.traverse(this, scope);
                if (thenStatement instanceof Expression) {
                    this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                    this.scribe.printComment(0, 256);
                }
                if (elseStatement != null) {
                    this.scribe.printNewLine();
                }
                this.scribe.unIndent();
            }
        }
        if (elseStatement != null) {
            if (thenStatementIsBlock) {
                this.scribe.printNextToken(104, this.preferences.insert_space_after_closing_brace_in_block, 8);
            } else {
                this.scribe.printNextToken(104, true, 8);
            }
            if (elseStatement instanceof Block) {
                elseStatement.traverse(this, scope);
            } else if (elseStatement instanceof IfStatement) {
                if (!this.preferences.compact_else_if) {
                    this.scribe.printNewLine();
                    this.scribe.indent();
                }
                this.scribe.space();
                elseStatement.traverse(this, scope);
                if (!this.preferences.compact_else_if) {
                    this.scribe.unIndent();
                }
            } else if (this.preferences.keep_else_statement_on_same_line) {
                this.scribe.space();
                elseStatement.traverse(this, scope);
                if (elseStatement instanceof Expression) {
                    this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                    this.scribe.printComment(0, 256);
                }
            } else {
                this.scribe.printNewLine();
                this.scribe.indent();
                elseStatement.traverse(this, scope);
                if (elseStatement instanceof Expression) {
                    this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                    this.scribe.printComment(0, 256);
                }
                this.scribe.unIndent();
            }
        }
        return false;
    }

    public boolean visit(Initializer initializer, MethodScope scope) {
        if (initializer.isStatic()) {
            this.scribe.printNextToken(54);
        }
        initializer.block.traverse(this, scope);
        return false;
    }

    public boolean visit(InstanceOfExpression instanceOfExpression, BlockScope scope) {
        int numberOfParens = (instanceOfExpression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(instanceOfExpression, numberOfParens);
        }
        instanceOfExpression.expression.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(13, true);
        this.scribe.space();
        instanceOfExpression.type.traverse((ASTVisitor)this, scope);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(instanceOfExpression, numberOfParens);
        }
        return false;
    }

    public boolean visit(IntLiteral intLiteral, BlockScope scope) {
        Constant constant;
        int numberOfParens = (intLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(intLiteral, numberOfParens);
        }
        if ((constant = intLiteral.constant) != null && constant.intValue() < 0) {
            this.scribe.printNextToken(2);
        }
        this.scribe.printNextToken(47);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(intLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(LabeledStatement labeledStatement, BlockScope scope) {
        this.scribe.printNextToken(26);
        this.scribe.printNextToken(65, this.preferences.insert_space_before_colon_in_labeled_statement);
        if (this.preferences.insert_space_after_colon_in_labeled_statement) {
            this.scribe.space();
        }
        if (this.preferences.insert_new_line_after_label) {
            this.scribe.printNewLine();
        }
        Statement statement = labeledStatement.statement;
        statement.traverse(this, scope);
        if (statement instanceof Expression) {
            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
            this.scribe.printComment(0, 256);
        }
        return false;
    }

    public boolean visit(LocalDeclaration localDeclaration, BlockScope scope) {
        this.formatLocalDeclaration(localDeclaration, scope, this.preferences.insert_space_before_comma_in_multiple_local_declarations, this.preferences.insert_space_after_comma_in_multiple_local_declarations);
        return false;
    }

    public boolean visit(LongLiteral longLiteral, BlockScope scope) {
        Constant constant;
        int numberOfParens = (longLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(longLiteral, numberOfParens);
        }
        if ((constant = longLiteral.constant) != null && constant.longValue() < 0L) {
            this.scribe.printNextToken(2);
        }
        this.scribe.printNextToken(48);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(longLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(MarkerAnnotation annotation, BlockScope scope) {
        this.scribe.printNextToken(53);
        if (this.preferences.insert_space_after_at_in_annotation) {
            this.scribe.space();
        }
        this.scribe.printQualifiedReference(annotation.sourceEnd, false);
        return false;
    }

    public boolean visit(MarkerAnnotation annotation, ClassScope scope) {
        this.scribe.printNextToken(53);
        if (this.preferences.insert_space_after_at_in_annotation) {
            this.scribe.space();
        }
        this.scribe.printQualifiedReference(annotation.sourceEnd, false);
        return false;
    }

    public boolean visit(MemberValuePair pair, BlockScope scope) {
        this.scribe.printNextToken(26);
        this.scribe.printNextToken(71, this.preferences.insert_space_before_assignment_operator);
        if (this.preferences.insert_space_after_assignment_operator) {
            this.scribe.space();
        }
        pair.value.traverse((ASTVisitor)this, scope);
        return false;
    }

    public boolean visit(MessageSend messageSend, BlockScope scope) {
        CascadingMethodInvocationFragmentBuilder builder;
        int numberOfParens = (messageSend.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(messageSend, numberOfParens);
        }
        if ((builder = this.buildFragments(messageSend, scope)).size() >= 3 && numberOfParens == 0) {
            this.formatCascadingMessageSends(builder, scope);
        } else {
            Alignment messageAlignment = null;
            if (!messageSend.receiver.isImplicitThis()) {
                messageSend.receiver.traverse((ASTVisitor)this, scope);
                int alignmentMode = this.preferences.alignment_for_selector_in_method_invocation;
                messageAlignment = this.scribe.createAlignment(16, alignmentMode, 1, this.scribe.scanner.currentPosition);
                this.scribe.enterAlignment(messageAlignment);
                boolean ok = false;
                do {
                    switch (alignmentMode & 0x70) {
                        case 16: 
                        case 80: {
                            messageAlignment.startingColumn = this.scribe.column;
                        }
                    }
                    try {
                        this.formatMessageSend(messageSend, scope, messageAlignment);
                        ok = true;
                    }
                    catch (AlignmentException e) {
                        this.scribe.redoAlignment(e);
                    }
                } while (!ok);
                this.scribe.exitAlignment(messageAlignment, true);
            } else {
                this.formatMessageSend(messageSend, scope, null);
            }
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(messageSend, numberOfParens);
        }
        return false;
    }

    public boolean visit(MethodDeclaration methodDeclaration, ClassScope scope) {
        if (methodDeclaration.ignoreFurtherInvestigation) {
            this.scribe.printComment();
            if (this.scribe.indentationLevel != 0) {
                this.scribe.printIndentationIfNecessary();
            }
            this.scribe.scanner.resetTo(methodDeclaration.declarationSourceEnd + 1, this.scribe.scannerEndPosition - 1);
            this.scribe.printComment(0, 256);
            if (!this.scribe.scanner.atEnd()) {
                switch (this.scribe.scanner.source[this.scribe.scanner.currentPosition]) {
                    case '\n': {
                        ++this.scribe.scanner.currentPosition;
                        this.scribe.lastNumberOfNewLines = 1;
                        break;
                    }
                    case '\r': {
                        ++this.scribe.scanner.currentPosition;
                        if (this.scribe.scanner.source[this.scribe.scanner.currentPosition] == '\n') {
                            ++this.scribe.scanner.currentPosition;
                        }
                        this.scribe.lastNumberOfNewLines = 1;
                    }
                }
            }
            return false;
        }
        this.scribe.printComment();
        int line = this.scribe.line;
        Alignment methodDeclAlignment = this.scribe.createAlignment(18, this.preferences.alignment_for_method_declaration, 2, 3, this.scribe.scanner.currentPosition);
        this.scribe.enterAlignment(methodDeclAlignment);
        boolean ok = false;
        MethodScope methodDeclarationScope = methodDeclaration.scope;
        do {
            try {
                TypeReference returnType;
                this.scribe.printModifiers(methodDeclaration.annotations, this, 3);
                int fragmentIndex = 0;
                this.scribe.alignFragment(methodDeclAlignment, fragmentIndex);
                if (this.scribe.line > line) {
                    line = this.scribe.line;
                }
                this.scribe.space();
                TypeParameter[] typeParameters = methodDeclaration.typeParameters;
                if (typeParameters != null) {
                    this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_type_parameters);
                    if (this.preferences.insert_space_after_opening_angle_bracket_in_type_parameters) {
                        this.scribe.space();
                    }
                    int length = typeParameters.length;
                    int i = 0;
                    while (i < length - 1) {
                        typeParameters[i].traverse((ASTVisitor)this, methodDeclaration.scope);
                        this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_type_parameters);
                        if (this.preferences.insert_space_after_comma_in_type_parameters) {
                            this.scribe.space();
                        }
                        ++i;
                    }
                    typeParameters[length - 1].traverse((ASTVisitor)this, methodDeclaration.scope);
                    if (this.isClosingGenericToken()) {
                        this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_type_parameters);
                    }
                    if (this.preferences.insert_space_after_closing_angle_bracket_in_type_parameters) {
                        this.scribe.space();
                    }
                    this.scribe.alignFragment(methodDeclAlignment, ++fragmentIndex);
                }
                if ((returnType = methodDeclaration.returnType) != null) {
                    returnType.traverse((ASTVisitor)this, methodDeclarationScope);
                }
                this.scribe.alignFragment(methodDeclAlignment, ++fragmentIndex);
                this.scribe.printNextToken(26, true);
                this.formatMethodArguments(methodDeclaration, this.preferences.insert_space_before_opening_paren_in_method_declaration, this.preferences.insert_space_between_empty_parens_in_method_declaration, this.preferences.insert_space_before_closing_paren_in_method_declaration, this.preferences.insert_space_after_opening_paren_in_method_declaration, this.preferences.insert_space_before_comma_in_method_declaration_parameters, this.preferences.insert_space_after_comma_in_method_declaration_parameters, this.preferences.alignment_for_parameters_in_method_declaration);
                int extraDimensions = this.getDimensions();
                if (extraDimensions != 0) {
                    int i = 0;
                    while (i < extraDimensions) {
                        this.scribe.printNextToken(16);
                        this.scribe.printNextToken(70);
                        ++i;
                    }
                }
                this.formatThrowsClause(methodDeclaration, this.preferences.insert_space_before_comma_in_method_declaration_throws, this.preferences.insert_space_after_comma_in_method_declaration_throws, this.preferences.alignment_for_throws_clause_in_method_declaration);
                ok = true;
            }
            catch (AlignmentException e) {
                this.scribe.redoAlignment(e);
            }
        } while (!ok);
        this.scribe.exitAlignment(methodDeclAlignment, true);
        if (!methodDeclaration.isNative() && !methodDeclaration.isAbstract() && (methodDeclaration.modifiers & 0x1000000) == 0) {
            Statement[] statements;
            String method_declaration_brace = this.preferences.brace_position_for_method_declaration;
            this.formatLeftCurlyBrace(line, method_declaration_brace);
            this.formatOpeningBrace(method_declaration_brace, this.preferences.insert_space_before_opening_brace_in_method_declaration);
            int numberOfBlankLinesAtBeginningOfMethodBody = this.preferences.blank_lines_at_beginning_of_method_body;
            if (numberOfBlankLinesAtBeginningOfMethodBody > 0) {
                this.scribe.printEmptyLines(numberOfBlankLinesAtBeginningOfMethodBody);
            }
            if ((statements = methodDeclaration.statements) != null) {
                this.scribe.printNewLine();
                if (this.preferences.indent_statements_compare_to_body) {
                    this.scribe.indent();
                }
                this.formatStatements(methodDeclarationScope, statements, true);
                this.scribe.printComment(10);
                if (this.preferences.indent_statements_compare_to_body) {
                    this.scribe.unIndent();
                }
            } else {
                if (this.preferences.insert_new_line_in_empty_method_body) {
                    this.scribe.printNewLine();
                }
                if (this.preferences.indent_statements_compare_to_body) {
                    this.scribe.indent();
                }
                this.scribe.printComment(10);
                if (this.preferences.indent_statements_compare_to_body) {
                    this.scribe.unIndent();
                }
            }
            this.scribe.printNextToken(31);
            this.scribe.printComment(0, 256);
            if (method_declaration_brace.equals("next_line_shifted")) {
                this.scribe.unIndent();
            }
        } else {
            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
            this.scribe.printComment(0, 512);
        }
        return false;
    }

    public boolean visit(NormalAnnotation annotation, BlockScope scope) {
        MemberValuePair[] memberValuePairs;
        this.scribe.printNextToken(53);
        if (this.preferences.insert_space_after_at_in_annotation) {
            this.scribe.space();
        }
        this.scribe.printQualifiedReference(annotation.sourceEnd, false);
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_annotation);
        if (this.preferences.insert_space_after_opening_paren_in_annotation) {
            this.scribe.space();
        }
        if ((memberValuePairs = annotation.memberValuePairs) != null) {
            int length = memberValuePairs.length;
            Alignment annotationAlignment = this.scribe.createAlignment(2, this.preferences.alignment_for_arguments_in_annotation, length, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(annotationAlignment);
            boolean ok = false;
            do {
                try {
                    int i = 0;
                    while (i < length) {
                        if (i > 0) {
                            this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_annotation);
                            this.scribe.printComment(0, 256);
                        }
                        this.scribe.alignFragment(annotationAlignment, i);
                        if (i > 0 && this.preferences.insert_space_after_comma_in_annotation) {
                            this.scribe.space();
                        }
                        memberValuePairs[i].traverse(this, scope);
                        ++i;
                    }
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(annotationAlignment, true);
        }
        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_annotation);
        return false;
    }

    public boolean visit(NullLiteral nullLiteral, BlockScope scope) {
        int numberOfParens = (nullLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(nullLiteral, numberOfParens);
        }
        this.scribe.printNextToken(45);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(nullLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(OR_OR_Expression or_or_Expression, BlockScope scope) {
        return this.dumpBinaryExpression(or_or_Expression, 25, scope);
    }

    public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, BlockScope scope) {
        int numberOfParens = (parameterizedQualifiedTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(parameterizedQualifiedTypeReference, numberOfParens);
        }
        TypeReference[][] typeArguments = parameterizedQualifiedTypeReference.typeArguments;
        int length = typeArguments.length;
        int i = 0;
        while (i < length) {
            this.scribe.printNextToken(26);
            TypeReference[] typeArgument = typeArguments[i];
            if (typeArgument != null) {
                int typeArgumentLength = typeArgument.length;
                if (typeArgumentLength > 0) {
                    this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_parameterized_type_reference);
                    if (this.preferences.insert_space_after_opening_angle_bracket_in_parameterized_type_reference) {
                        this.scribe.space();
                    }
                    int j = 0;
                    while (j < typeArgumentLength - 1) {
                        typeArgument[j].traverse((ASTVisitor)this, scope);
                        this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_parameterized_type_reference);
                        if (this.preferences.insert_space_after_comma_in_parameterized_type_reference) {
                            this.scribe.space();
                        }
                        ++j;
                    }
                    typeArgument[typeArgumentLength - 1].traverse((ASTVisitor)this, scope);
                    if (this.isClosingGenericToken()) {
                        this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_parameterized_type_reference);
                    }
                } else {
                    this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_parameterized_type_reference);
                    this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS);
                }
            }
            if (i < length - 1) {
                this.scribe.printNextToken(3);
            }
            ++i;
        }
        int dimensions = this.getDimensions();
        if (dimensions != 0 && dimensions <= parameterizedQualifiedTypeReference.dimensions()) {
            if (this.preferences.insert_space_before_opening_bracket_in_array_type_reference) {
                this.scribe.space();
            }
            int i2 = 0;
            while (i2 < dimensions) {
                this.scribe.printNextToken(16);
                if (this.preferences.insert_space_between_brackets_in_array_type_reference) {
                    this.scribe.space();
                }
                this.scribe.printNextToken(70);
                ++i2;
            }
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(parameterizedQualifiedTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, ClassScope scope) {
        int numberOfParens = (parameterizedQualifiedTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(parameterizedQualifiedTypeReference, numberOfParens);
        }
        TypeReference[][] typeArguments = parameterizedQualifiedTypeReference.typeArguments;
        int length = typeArguments.length;
        int i = 0;
        while (i < length) {
            this.scribe.printNextToken(26);
            TypeReference[] typeArgument = typeArguments[i];
            if (typeArgument != null) {
                int typeArgumentLength = typeArgument.length;
                if (typeArgumentLength > 0) {
                    this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_parameterized_type_reference);
                    if (this.preferences.insert_space_after_opening_angle_bracket_in_parameterized_type_reference) {
                        this.scribe.space();
                    }
                    int j = 0;
                    while (j < typeArgumentLength - 1) {
                        typeArgument[j].traverse((ASTVisitor)this, scope);
                        this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_parameterized_type_reference);
                        if (this.preferences.insert_space_after_comma_in_parameterized_type_reference) {
                            this.scribe.space();
                        }
                        ++j;
                    }
                    typeArgument[typeArgumentLength - 1].traverse((ASTVisitor)this, scope);
                    if (this.isClosingGenericToken()) {
                        this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_parameterized_type_reference);
                    }
                } else {
                    this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_parameterized_type_reference);
                    this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS);
                }
            }
            if (i < length - 1) {
                this.scribe.printNextToken(3);
            }
            ++i;
        }
        int dimensions = this.getDimensions();
        if (dimensions != 0 && dimensions <= parameterizedQualifiedTypeReference.dimensions()) {
            if (this.preferences.insert_space_before_opening_bracket_in_array_type_reference) {
                this.scribe.space();
            }
            int i2 = 0;
            while (i2 < dimensions) {
                this.scribe.printNextToken(16);
                if (this.preferences.insert_space_between_brackets_in_array_type_reference) {
                    this.scribe.space();
                }
                this.scribe.printNextToken(70);
                ++i2;
            }
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(parameterizedQualifiedTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, BlockScope scope) {
        int dimensions;
        int numberOfParens = (parameterizedSingleTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(parameterizedSingleTypeReference, numberOfParens);
        }
        this.scribe.printNextToken(26);
        TypeReference[] typeArguments = parameterizedSingleTypeReference.typeArguments;
        int typeArgumentsLength = typeArguments.length;
        if (typeArgumentsLength > 0) {
            this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_parameterized_type_reference);
            if (this.preferences.insert_space_after_opening_angle_bracket_in_parameterized_type_reference) {
                this.scribe.space();
            }
            int i = 0;
            while (i < typeArgumentsLength - 1) {
                typeArguments[i].traverse((ASTVisitor)this, scope);
                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_parameterized_type_reference);
                if (this.preferences.insert_space_after_comma_in_parameterized_type_reference) {
                    this.scribe.space();
                }
                ++i;
            }
            typeArguments[typeArgumentsLength - 1].traverse((ASTVisitor)this, scope);
            if (this.isClosingGenericToken()) {
                this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_parameterized_type_reference);
            }
        } else {
            this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_parameterized_type_reference);
            this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS);
        }
        if ((dimensions = this.getDimensions()) != 0 && dimensions <= parameterizedSingleTypeReference.dimensions()) {
            if (this.preferences.insert_space_before_opening_bracket_in_array_type_reference) {
                this.scribe.space();
            }
            int i = 0;
            while (i < dimensions) {
                this.scribe.printNextToken(16);
                if (this.preferences.insert_space_between_brackets_in_array_type_reference) {
                    this.scribe.space();
                }
                this.scribe.printNextToken(70);
                ++i;
            }
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(parameterizedSingleTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, ClassScope scope) {
        int dimensions;
        int numberOfParens = (parameterizedSingleTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(parameterizedSingleTypeReference, numberOfParens);
        }
        this.scribe.printNextToken(26);
        TypeReference[] typeArguments = parameterizedSingleTypeReference.typeArguments;
        int typeArgumentsLength = typeArguments.length;
        if (typeArgumentsLength > 0) {
            this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_parameterized_type_reference);
            if (this.preferences.insert_space_after_opening_angle_bracket_in_parameterized_type_reference) {
                this.scribe.space();
            }
            int i = 0;
            while (i < typeArgumentsLength - 1) {
                typeArguments[i].traverse((ASTVisitor)this, scope);
                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_parameterized_type_reference);
                if (this.preferences.insert_space_after_comma_in_parameterized_type_reference) {
                    this.scribe.space();
                }
                ++i;
            }
            typeArguments[typeArgumentsLength - 1].traverse((ASTVisitor)this, scope);
            if (this.isClosingGenericToken()) {
                this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_parameterized_type_reference);
            }
        } else {
            this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_parameterized_type_reference);
            this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS);
        }
        if ((dimensions = this.getDimensions()) != 0 && dimensions <= parameterizedSingleTypeReference.dimensions()) {
            if (this.preferences.insert_space_before_opening_bracket_in_array_type_reference) {
                this.scribe.space();
            }
            int i = 0;
            while (i < dimensions) {
                this.scribe.printNextToken(16);
                if (this.preferences.insert_space_between_brackets_in_array_type_reference) {
                    this.scribe.space();
                }
                this.scribe.printNextToken(70);
                ++i;
            }
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(parameterizedSingleTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(PostfixExpression postfixExpression, BlockScope scope) {
        int numberOfParens = (postfixExpression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(postfixExpression, numberOfParens);
        }
        postfixExpression.lhs.traverse((ASTVisitor)this, scope);
        int operator = postfixExpression.operator == 14 ? 8 : 9;
        this.scribe.printNextToken(operator, this.preferences.insert_space_before_postfix_operator);
        if (this.preferences.insert_space_after_postfix_operator) {
            this.scribe.space();
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(postfixExpression, numberOfParens);
        }
        return false;
    }

    public boolean visit(PrefixExpression prefixExpression, BlockScope scope) {
        int numberOfParens = (prefixExpression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(prefixExpression, numberOfParens);
        }
        int operator = prefixExpression.operator == 14 ? 8 : 9;
        this.scribe.printNextToken(operator, this.preferences.insert_space_before_prefix_operator);
        if (this.preferences.insert_space_after_prefix_operator) {
            this.scribe.space();
        }
        prefixExpression.lhs.traverse((ASTVisitor)this, scope);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(prefixExpression, numberOfParens);
        }
        return false;
    }

    public boolean visit(QualifiedAllocationExpression qualifiedAllocationExpression, BlockScope scope) {
        Expression enclosingInstance;
        int numberOfParens = (qualifiedAllocationExpression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(qualifiedAllocationExpression, numberOfParens);
        }
        if ((enclosingInstance = qualifiedAllocationExpression.enclosingInstance) != null) {
            enclosingInstance.traverse((ASTVisitor)this, scope);
            this.scribe.printNextToken(3);
        }
        this.scribe.printNextToken(43);
        TypeReference[] typeArguments = qualifiedAllocationExpression.typeArguments;
        if (typeArguments != null) {
            this.scribe.printNextToken(7, this.preferences.insert_space_before_opening_angle_bracket_in_type_arguments);
            if (this.preferences.insert_space_after_opening_angle_bracket_in_type_arguments) {
                this.scribe.space();
            }
            int length = typeArguments.length;
            int i = 0;
            while (i < length - 1) {
                typeArguments[i].traverse((ASTVisitor)this, scope);
                this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_type_arguments);
                if (this.preferences.insert_space_after_comma_in_type_arguments) {
                    this.scribe.space();
                }
                ++i;
            }
            typeArguments[length - 1].traverse((ASTVisitor)this, scope);
            if (this.isClosingGenericToken()) {
                this.scribe.printNextToken(CLOSING_GENERICS_EXPECTEDTOKENS, this.preferences.insert_space_before_closing_angle_bracket_in_type_arguments);
            }
            if (this.preferences.insert_space_after_closing_angle_bracket_in_type_arguments) {
                this.scribe.space();
            }
        } else {
            this.scribe.space();
        }
        int line = this.scribe.line;
        qualifiedAllocationExpression.type.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_method_invocation);
        Expression[] arguments = qualifiedAllocationExpression.arguments;
        if (arguments != null) {
            if (this.preferences.insert_space_after_opening_paren_in_method_invocation) {
                this.scribe.space();
            }
            int argumentLength = arguments.length;
            Alignment argumentsAlignment = this.scribe.createAlignment(1, this.preferences.alignment_for_arguments_in_qualified_allocation_expression, argumentLength, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(argumentsAlignment);
            boolean ok = false;
            do {
                try {
                    int i = 0;
                    while (i < argumentLength) {
                        if (i > 0) {
                            this.scribe.printNextToken(30, this.preferences.insert_space_before_comma_in_allocation_expression);
                            this.scribe.printComment(0, 256);
                        }
                        this.scribe.alignFragment(argumentsAlignment, i);
                        if (i > 0 && this.preferences.insert_space_after_comma_in_allocation_expression) {
                            this.scribe.space();
                        }
                        arguments[i].traverse((ASTVisitor)this, scope);
                        ++i;
                    }
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(argumentsAlignment, true);
            this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_method_invocation);
        } else {
            this.scribe.printNextToken(28, this.preferences.insert_space_between_empty_parens_in_method_invocation);
        }
        TypeDeclaration anonymousType = qualifiedAllocationExpression.anonymousType;
        if (anonymousType != null) {
            this.formatLeftCurlyBrace(line, this.preferences.brace_position_for_anonymous_type_declaration);
            this.formatAnonymousTypeDeclaration(anonymousType);
        }
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(qualifiedAllocationExpression, numberOfParens);
        }
        return false;
    }

    public boolean visit(QualifiedNameReference qualifiedNameReference, BlockScope scope) {
        int numberOfParens = (qualifiedNameReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(qualifiedNameReference, numberOfParens);
        }
        this.scribe.printQualifiedReference(qualifiedNameReference.sourceEnd, numberOfParens >= 0);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(qualifiedNameReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(QualifiedSuperReference qualifiedSuperReference, BlockScope scope) {
        int numberOfParens = (qualifiedSuperReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(qualifiedSuperReference, numberOfParens);
        }
        qualifiedSuperReference.qualification.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(3);
        this.scribe.printNextToken(41);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(qualifiedSuperReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(QualifiedThisReference qualifiedThisReference, BlockScope scope) {
        int numberOfParens = (qualifiedThisReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(qualifiedThisReference, numberOfParens);
        }
        qualifiedThisReference.qualification.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(3);
        this.scribe.printNextToken(42);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(qualifiedThisReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(QualifiedTypeReference qualifiedTypeReference, BlockScope scope) {
        int numberOfParens = (qualifiedTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(qualifiedTypeReference, numberOfParens);
        }
        this.scribe.printQualifiedReference(qualifiedTypeReference.sourceEnd, numberOfParens >= 0);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(qualifiedTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(QualifiedTypeReference qualifiedTypeReference, ClassScope scope) {
        int numberOfParens = (qualifiedTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(qualifiedTypeReference, numberOfParens);
        }
        this.scribe.printQualifiedReference(qualifiedTypeReference.sourceEnd, numberOfParens >= 0);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(qualifiedTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(ReturnStatement returnStatement, BlockScope scope) {
        this.scribe.printNextToken(80);
        Expression expression = returnStatement.expression;
        if (expression != null) {
            int numberOfParens = (expression.bits & 0x1FE00000) >> 21;
            if (numberOfParens != 0 && this.preferences.insert_space_before_parenthesized_expression_in_return || numberOfParens == 0) {
                this.scribe.space();
            }
            expression.traverse((ASTVisitor)this, scope);
        }
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        this.scribe.printComment(0, 256);
        return false;
    }

    public boolean visit(SingleMemberAnnotation annotation, BlockScope scope) {
        this.scribe.printNextToken(53);
        if (this.preferences.insert_space_after_at_in_annotation) {
            this.scribe.space();
        }
        this.scribe.printQualifiedReference(annotation.sourceEnd, false);
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_annotation);
        if (this.preferences.insert_space_after_opening_paren_in_annotation) {
            this.scribe.space();
        }
        annotation.memberValue.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_annotation);
        return false;
    }

    public boolean visit(SingleNameReference singleNameReference, BlockScope scope) {
        int numberOfParens = (singleNameReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(singleNameReference, numberOfParens);
        }
        this.scribe.printNextToken(SINGLETYPEREFERENCE_EXPECTEDTOKENS);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(singleNameReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(SingleTypeReference singleTypeReference, BlockScope scope) {
        int numberOfParens = (singleTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(singleTypeReference, numberOfParens);
        }
        this.scribe.printNextToken(SINGLETYPEREFERENCE_EXPECTEDTOKENS);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(singleTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(SingleTypeReference singleTypeReference, ClassScope scope) {
        int numberOfParens = (singleTypeReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(singleTypeReference, numberOfParens);
        }
        this.scribe.printNextToken(SINGLETYPEREFERENCE_EXPECTEDTOKENS);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(singleTypeReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(StringLiteral stringLiteral, BlockScope scope) {
        int numberOfParens = (stringLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(stringLiteral, numberOfParens);
        }
        this.scribe.checkNLSTag(stringLiteral.sourceStart);
        this.scribe.printNextToken(52);
        this.scribe.printComment(0, 256);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(stringLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(StringLiteralConcatenation stringLiteral, BlockScope scope) {
        int numberOfParens = (stringLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(stringLiteral, numberOfParens);
        }
        this.scribe.printComment(3);
        Expression[] fragments = stringLiteral.literals;
        int fragmentsSize = stringLiteral.counter;
        Alignment binaryExpressionAlignment = this.scribe.createAlignment(24, this.preferences.alignment_for_binary_expression, 1, fragmentsSize, this.scribe.scanner.currentPosition);
        this.scribe.enterAlignment(binaryExpressionAlignment);
        boolean ok = false;
        do {
            try {
                int i = 0;
                while (i < fragmentsSize - 1) {
                    Expression fragment = fragments[i];
                    ((ASTNode)fragment).traverse(this, scope);
                    this.scribe.printComment(0, 256);
                    if (this.scribe.lastNumberOfNewLines == 1) {
                        this.scribe.indentationLevel = binaryExpressionAlignment.breakIndentationLevel;
                    }
                    this.scribe.alignFragment(binaryExpressionAlignment, i);
                    this.scribe.printNextToken(1, this.preferences.insert_space_before_binary_operator);
                    if (this.preferences.insert_space_after_binary_operator) {
                        this.scribe.space();
                    }
                    ++i;
                }
                ((ASTNode)fragments[fragmentsSize - 1]).traverse(this, scope);
                this.scribe.printComment(0, 256);
                ok = true;
            }
            catch (AlignmentException e) {
                this.scribe.redoAlignment(e);
            }
        } while (!ok);
        this.scribe.exitAlignment(binaryExpressionAlignment, true);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(stringLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(SuperReference superReference, BlockScope scope) {
        int numberOfParens = (superReference.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(superReference, numberOfParens);
        }
        this.scribe.printNextToken(41);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(superReference, numberOfParens);
        }
        return false;
    }

    public boolean visit(SwitchStatement switchStatement, BlockScope scope) {
        this.scribe.printNextToken(81);
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_switch);
        if (this.preferences.insert_space_after_opening_paren_in_switch) {
            this.scribe.space();
        }
        switchStatement.expression.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_switch);
        String switch_brace = this.preferences.brace_position_for_switch;
        this.formatOpeningBrace(switch_brace, this.preferences.insert_space_before_opening_brace_in_switch);
        this.scribe.printNewLine();
        Statement[] statements = switchStatement.statements;
        int switchIndentationLevel = this.scribe.indentationLevel;
        int caseIndentation = 0;
        int statementIndentation = 0;
        int breakIndentation = 0;
        if (this.preferences.indent_switchstatements_compare_to_switch) {
            ++caseIndentation;
            ++statementIndentation;
            ++breakIndentation;
        }
        if (this.preferences.indent_switchstatements_compare_to_cases) {
            ++statementIndentation;
        }
        if (this.preferences.indent_breaks_compare_to_cases) {
            ++breakIndentation;
        }
        boolean wasACase = false;
        boolean wasABreak = false;
        if (statements != null) {
            int statementsLength = statements.length;
            int i = 0;
            while (i < statementsLength) {
                Statement statement = statements[i];
                if (statement instanceof CaseStatement) {
                    if (wasABreak) {
                        this.scribe.setIndentation(switchIndentationLevel, caseIndentation);
                        this.scribe.printComment();
                    } else {
                        if (wasACase) {
                            this.scribe.printComment(9);
                        } else {
                            this.scribe.printComment();
                        }
                        this.scribe.setIndentation(switchIndentationLevel, caseIndentation);
                    }
                    if (wasACase) {
                        this.scribe.printNewLine();
                    }
                    statement.traverse(this, scope);
                    this.scribe.setIndentation(switchIndentationLevel, statementIndentation);
                    this.scribe.printComment(0, 512);
                    wasACase = true;
                    wasABreak = false;
                } else if (statement instanceof BreakStatement) {
                    this.scribe.setIndentation(switchIndentationLevel, breakIndentation);
                    if (wasACase) {
                        this.scribe.printNewLine();
                    }
                    this.scribe.printComment();
                    statement.traverse(this, scope);
                    wasACase = false;
                    wasABreak = true;
                } else if (statement instanceof Block) {
                    this.scribe.setIndentation(switchIndentationLevel, wasACase ? caseIndentation : statementIndentation);
                    this.scribe.printComment();
                    String bracePosition = wasACase ? this.preferences.brace_position_for_block_in_case : this.preferences.brace_position_for_block;
                    this.formatBlock((Block)statement, scope, bracePosition, this.preferences.insert_space_before_opening_brace_in_block);
                    wasACase = false;
                    wasABreak = false;
                } else {
                    this.scribe.setIndentation(switchIndentationLevel, statementIndentation);
                    this.scribe.printNewLine();
                    this.scribe.printComment();
                    statement.traverse(this, scope);
                    wasACase = false;
                    wasABreak = false;
                }
                if (statement instanceof Expression) {
                    this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                    this.scribe.printComment(0, 256);
                    this.scribe.printNewLine();
                } else if (statement instanceof LocalDeclaration) {
                    LocalDeclaration currentLocal = (LocalDeclaration)statement;
                    if (i < statementsLength - 1) {
                        if (statements[i + 1] instanceof LocalDeclaration) {
                            LocalDeclaration nextLocal = (LocalDeclaration)statements[i + 1];
                            if (currentLocal.declarationSourceStart != nextLocal.declarationSourceStart) {
                                this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                                this.scribe.printComment(0, 256);
                                this.scribe.printNewLine();
                            }
                        } else {
                            this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                            this.scribe.printComment(0, 256);
                            this.scribe.printNewLine();
                        }
                    } else {
                        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                        this.scribe.printComment(0, 256);
                        this.scribe.printNewLine();
                    }
                } else if (!wasACase) {
                    this.scribe.printNewLine();
                }
                ++i;
            }
        }
        this.scribe.printNewLine();
        if (wasABreak) {
            this.scribe.setIndentation(switchIndentationLevel, 0);
            this.scribe.printComment();
        } else {
            this.scribe.printComment();
            this.scribe.setIndentation(switchIndentationLevel, 0);
        }
        this.scribe.printNextToken(31);
        this.scribe.printComment(0, 256);
        if (switch_brace.equals("next_line_shifted")) {
            this.scribe.unIndent();
        }
        return false;
    }

    public boolean visit(SynchronizedStatement synchronizedStatement, BlockScope scope) {
        this.scribe.printNextToken(55);
        int line = this.scribe.line;
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_synchronized);
        if (this.preferences.insert_space_after_opening_paren_in_synchronized) {
            this.scribe.space();
        }
        synchronizedStatement.expression.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_synchronized);
        this.formatLeftCurlyBrace(line, this.preferences.brace_position_for_block);
        synchronizedStatement.block.traverse(this, scope);
        return false;
    }

    public boolean visit(ThisReference thisReference, BlockScope scope) {
        if (!thisReference.isImplicitThis()) {
            int numberOfParens = (thisReference.bits & 0x1FE00000) >> 21;
            if (numberOfParens > 0) {
                this.manageOpeningParenthesizedExpression(thisReference, numberOfParens);
            }
            this.scribe.printNextToken(42);
            if (numberOfParens > 0) {
                this.manageClosingParenthesizedExpression(thisReference, numberOfParens);
            }
        }
        return false;
    }

    public boolean visit(ThrowStatement throwStatement, BlockScope scope) {
        this.scribe.printNextToken(82);
        Expression expression = throwStatement.exception;
        int numberOfParens = (expression.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0 && this.preferences.insert_space_before_parenthesized_expression_in_throw || numberOfParens == 0) {
            this.scribe.space();
        }
        expression.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
        this.scribe.printComment(0, 256);
        return false;
    }

    public boolean visit(TrueLiteral trueLiteral, BlockScope scope) {
        int numberOfParens = (trueLiteral.bits & 0x1FE00000) >> 21;
        if (numberOfParens > 0) {
            this.manageOpeningParenthesizedExpression(trueLiteral, numberOfParens);
        }
        this.scribe.printNextToken(46);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(trueLiteral, numberOfParens);
        }
        return false;
    }

    public boolean visit(TryStatement tryStatement, BlockScope scope) {
        this.scribe.printNextToken(83);
        this.formatTryResources(tryStatement, this.preferences.insert_space_before_opening_paren_in_try, this.preferences.insert_space_before_closing_paren_in_try, this.preferences.insert_space_after_opening_paren_in_try, this.preferences.insert_space_before_semicolon_in_try_resources, this.preferences.insert_space_after_semicolon_in_try_resources, this.preferences.alignment_for_resources_in_try);
        tryStatement.tryBlock.traverse(this, scope);
        if (tryStatement.catchArguments != null) {
            int i = 0;
            int max = tryStatement.catchBlocks.length;
            while (i < max) {
                if (this.preferences.insert_new_line_before_catch_in_try_statement) {
                    this.scribe.printNewLine();
                }
                this.scribe.printNextToken(100, this.preferences.insert_space_after_closing_brace_in_block);
                int line = this.scribe.line;
                this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_catch);
                if (this.preferences.insert_space_after_opening_paren_in_catch) {
                    this.scribe.space();
                }
                tryStatement.catchArguments[i].traverse((ASTVisitor)this, scope);
                this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_catch);
                this.formatLeftCurlyBrace(line, this.preferences.brace_position_for_block);
                tryStatement.catchBlocks[i].traverse(this, scope);
                ++i;
            }
        }
        if (tryStatement.finallyBlock != null) {
            if (this.preferences.insert_new_line_before_finally_in_try_statement) {
                this.scribe.printNewLine();
            }
            this.scribe.printNextToken(103, this.preferences.insert_space_after_closing_brace_in_block);
            tryStatement.finallyBlock.traverse(this, scope);
        }
        return false;
    }

    private void formatMultiCatchArguments(Argument argument, boolean spaceBeforePipe, boolean spaceAfterPipe, int multiCatchAlignment, BlockScope scope) {
        int length;
        UnionTypeReference unionType = (UnionTypeReference)argument.type;
        int n = length = unionType.typeReferences != null ? unionType.typeReferences.length : 0;
        if (length > 0) {
            Alignment argumentsAlignment = this.scribe.createAlignment(26, multiCatchAlignment, length, this.scribe.scanner.currentPosition);
            this.scribe.enterAlignment(argumentsAlignment);
            boolean ok = false;
            do {
                switch (multiCatchAlignment & 0x70) {
                    case 16: 
                    case 80: {
                        argumentsAlignment.startingColumn = this.scribe.column;
                    }
                }
                try {
                    int i = 0;
                    while (i < length) {
                        if (i > 0) {
                            if (this.preferences.wrap_before_or_operator_multicatch) {
                                this.scribe.alignFragment(argumentsAlignment, i);
                            }
                            this.scribe.printNextToken(22, spaceBeforePipe);
                            this.scribe.printComment(0, 256);
                            if (this.scribe.lastNumberOfNewLines == 1) {
                                this.scribe.indentationLevel = argumentsAlignment.breakIndentationLevel;
                            }
                            if (!this.preferences.wrap_before_or_operator_multicatch) {
                                this.scribe.alignFragment(argumentsAlignment, i);
                            }
                        }
                        if (i == 0) {
                            this.scribe.alignFragment(argumentsAlignment, i);
                            int fragmentIndentation = argumentsAlignment.fragmentIndentations[0];
                            if ((argumentsAlignment.mode & 2) != 0 && fragmentIndentation > 0) {
                                this.scribe.indentationLevel = fragmentIndentation;
                            }
                        } else if (spaceAfterPipe) {
                            this.scribe.space();
                        }
                        unionType.typeReferences[i].traverse((ASTVisitor)this, scope);
                        argumentsAlignment.startingColumn = -1;
                        ++i;
                    }
                    ok = true;
                }
                catch (AlignmentException e) {
                    this.scribe.redoAlignment(e);
                }
            } while (!ok);
            this.scribe.exitAlignment(argumentsAlignment, true);
        }
    }

    public boolean visit(TypeDeclaration localTypeDeclaration, BlockScope scope) {
        this.format(localTypeDeclaration);
        return false;
    }

    public boolean visit(TypeDeclaration memberTypeDeclaration, ClassScope scope) {
        this.format(memberTypeDeclaration);
        return false;
    }

    public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope scope) {
        this.format(typeDeclaration);
        return false;
    }

    public boolean visit(TypeParameter typeParameter, BlockScope scope) {
        TypeReference[] bounds;
        this.scribe.printNextToken(26);
        if (typeParameter.type != null) {
            this.scribe.space();
            this.scribe.printNextToken(99, true);
            this.scribe.space();
            typeParameter.type.traverse((ASTVisitor)this, scope);
        }
        if ((bounds = typeParameter.bounds) != null) {
            this.scribe.printNextToken(20, this.preferences.insert_space_before_and_in_type_parameter);
            if (this.preferences.insert_space_after_and_in_type_parameter) {
                this.scribe.space();
            }
            int boundsLength = bounds.length;
            int i = 0;
            while (i < boundsLength - 1) {
                bounds[i].traverse((ASTVisitor)this, scope);
                this.scribe.printNextToken(20, this.preferences.insert_space_before_and_in_type_parameter);
                if (this.preferences.insert_space_after_and_in_type_parameter) {
                    this.scribe.space();
                }
                ++i;
            }
            bounds[boundsLength - 1].traverse((ASTVisitor)this, scope);
        }
        return false;
    }

    public boolean visit(TypeParameter typeParameter, ClassScope scope) {
        TypeReference[] bounds;
        this.scribe.printNextToken(26);
        if (typeParameter.type != null) {
            this.scribe.space();
            this.scribe.printNextToken(99, true);
            this.scribe.space();
            typeParameter.type.traverse((ASTVisitor)this, scope);
        }
        if ((bounds = typeParameter.bounds) != null) {
            this.scribe.printNextToken(20, this.preferences.insert_space_before_and_in_type_parameter);
            if (this.preferences.insert_space_after_and_in_type_parameter) {
                this.scribe.space();
            }
            int boundsLength = bounds.length;
            int i = 0;
            while (i < boundsLength - 1) {
                bounds[i].traverse((ASTVisitor)this, scope);
                this.scribe.printNextToken(20, this.preferences.insert_space_before_and_in_type_parameter);
                if (this.preferences.insert_space_after_and_in_type_parameter) {
                    this.scribe.space();
                }
                ++i;
            }
            bounds[boundsLength - 1].traverse((ASTVisitor)this, scope);
        }
        return false;
    }

    public boolean visit(UnaryExpression unaryExpression, BlockScope scope) {
        Expression expression;
        int numberOfParens;
        block23: {
            int operatorValue;
            block22: {
                int operator;
                numberOfParens = (unaryExpression.bits & 0x1FE00000) >> 21;
                if (numberOfParens > 0) {
                    this.manageOpeningParenthesizedExpression(unaryExpression, numberOfParens);
                }
                operatorValue = (unaryExpression.bits & 0xFC0) >> 6;
                switch (operatorValue) {
                    case 14: {
                        operator = 1;
                        break;
                    }
                    case 13: {
                        operator = 2;
                        break;
                    }
                    case 12: {
                        operator = 67;
                        break;
                    }
                    default: {
                        operator = 66;
                    }
                }
                this.scribe.printNextToken(operator, this.preferences.insert_space_before_unary_operator);
                if (this.preferences.insert_space_after_unary_operator) {
                    this.scribe.space();
                }
                if (!((expression = unaryExpression.expression) instanceof PrefixExpression)) break block22;
                PrefixExpression prefixExpression = (PrefixExpression)expression;
                int numberOfParensForExpression = (prefixExpression.bits & 0x1FE00000) >> 21;
                if (numberOfParensForExpression != 0) break block23;
                switch (operatorValue) {
                    case 14: {
                        if (prefixExpression.operator == 14) {
                            this.scribe.space();
                            break;
                        }
                        break block23;
                    }
                    case 13: {
                        if (prefixExpression.operator != 13) break block23;
                        this.scribe.space();
                    }
                    default: {
                        break;
                    }
                    {
                        break block23;
                    }
                }
                break block23;
            }
            if (expression instanceof UnaryExpression) {
                UnaryExpression unaryExpression2 = (UnaryExpression)expression;
                int numberOfParensForExpression = (unaryExpression2.bits & 0x1FE00000) >> 21;
                if (numberOfParensForExpression == 0) {
                    int operatorValue2 = (unaryExpression2.bits & 0xFC0) >> 6;
                    switch (operatorValue) {
                        case 14: {
                            if (operatorValue2 != 14) break;
                            this.scribe.space();
                            break;
                        }
                        case 13: {
                            if (operatorValue2 != 13) break;
                            this.scribe.space();
                        }
                    }
                }
            }
        }
        expression.traverse((ASTVisitor)this, scope);
        if (numberOfParens > 0) {
            this.manageClosingParenthesizedExpression(unaryExpression, numberOfParens);
        }
        return false;
    }

    public boolean visit(UnionTypeReference unionTypeReference, BlockScope scope) {
        TypeReference[] typeReferences = unionTypeReference.typeReferences;
        int i = 0;
        int max = typeReferences.length;
        while (i < max) {
            if (i != 0) {
                this.scribe.printNextToken(22, true);
                this.scribe.space();
            }
            typeReferences[i].traverse((ASTVisitor)this, scope);
            ++i;
        }
        return false;
    }

    public boolean visit(UnionTypeReference unionTypeReference, ClassScope scope) {
        TypeReference[] typeReferences = unionTypeReference.typeReferences;
        int i = 0;
        int max = typeReferences.length;
        while (i < max) {
            if (i != 0) {
                this.scribe.printNextToken(22, true);
                this.scribe.space();
            }
            typeReferences[i].traverse((ASTVisitor)this, scope);
            ++i;
        }
        return false;
    }

    public boolean visit(WhileStatement whileStatement, BlockScope scope) {
        this.scribe.printNextToken(73);
        int line = this.scribe.line;
        this.scribe.printNextToken(29, this.preferences.insert_space_before_opening_paren_in_while);
        if (this.preferences.insert_space_after_opening_paren_in_while) {
            this.scribe.space();
        }
        whileStatement.condition.traverse((ASTVisitor)this, scope);
        this.scribe.printNextToken(28, this.preferences.insert_space_before_closing_paren_in_while);
        Statement action = whileStatement.action;
        if (action != null) {
            if (action instanceof Block) {
                this.formatLeftCurlyBrace(line, this.preferences.brace_position_for_block);
                action.traverse(this, scope);
            } else if (action instanceof EmptyStatement) {
                this.formatNecessaryEmptyStatement();
            } else {
                this.scribe.printNewLine();
                this.scribe.indent();
                action.traverse(this, scope);
                if (action instanceof Expression) {
                    this.scribe.printNextToken(27, this.preferences.insert_space_before_semicolon);
                    this.scribe.printComment(0, 256);
                }
                this.scribe.unIndent();
            }
        } else {
            this.formatNecessaryEmptyStatement();
        }
        return false;
    }

    public boolean visit(Wildcard wildcard, BlockScope scope) {
        this.scribe.printNextToken(23, this.preferences.insert_space_before_question_in_wilcard);
        switch (wildcard.kind) {
            case 2: {
                this.scribe.printNextToken(41, true);
                this.scribe.space();
                wildcard.bound.traverse((ASTVisitor)this, scope);
                break;
            }
            case 1: {
                this.scribe.printNextToken(99, true);
                this.scribe.space();
                wildcard.bound.traverse((ASTVisitor)this, scope);
                break;
            }
            case 0: {
                if (!this.preferences.insert_space_after_question_in_wilcard) break;
                this.scribe.space();
            }
        }
        return false;
    }

    public boolean visit(Wildcard wildcard, ClassScope scope) {
        this.scribe.printNextToken(23, this.preferences.insert_space_before_question_in_wilcard);
        switch (wildcard.kind) {
            case 2: {
                this.scribe.printNextToken(41, true);
                this.scribe.space();
                wildcard.bound.traverse((ASTVisitor)this, scope);
                break;
            }
            case 1: {
                this.scribe.printNextToken(99, true);
                this.scribe.space();
                wildcard.bound.traverse((ASTVisitor)this, scope);
                break;
            }
            case 0: {
                if (!this.preferences.insert_space_after_question_in_wilcard) break;
                this.scribe.space();
            }
        }
        return false;
    }

    public static class MultiFieldDeclaration
    extends FieldDeclaration {
        FieldDeclaration[] declarations;

        MultiFieldDeclaration(FieldDeclaration[] declarations) {
            this.declarations = declarations;
            this.modifiers = declarations[0].modifiers;
        }
    }
}

