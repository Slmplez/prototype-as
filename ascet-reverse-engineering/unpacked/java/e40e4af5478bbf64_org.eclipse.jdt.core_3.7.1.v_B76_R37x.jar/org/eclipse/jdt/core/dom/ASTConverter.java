/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.core.dom;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTRecoveryPropagator;
import org.eclipse.jdt.core.dom.ASTSyntaxErrorPropagator;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayAccess;
import org.eclipse.jdt.core.dom.ArrayCreation;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.AssertStatement;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BlockComment;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.BooleanLiteral;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.CharacterLiteral;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.Comment;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.ContinueStatement;
import org.eclipse.jdt.core.dom.DefaultCommentMapper;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.DocCommentParser;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.FieldAccess;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.InstanceofExpression;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.LabeledStatement;
import org.eclipse.jdt.core.dom.LineComment;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MemberRef;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.MethodRefParameter;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.NullLiteral;
import org.eclipse.jdt.core.dom.NumberLiteral;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.ParenthesizedExpression;
import org.eclipse.jdt.core.dom.PostfixExpression;
import org.eclipse.jdt.core.dom.PrefixExpression;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.StringLiteral;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SwitchCase;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.SynchronizedStatement;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.dom.ThisExpression;
import org.eclipse.jdt.core.dom.ThrowStatement;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclarationStatement;
import org.eclipse.jdt.core.dom.TypeLiteral;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.UnionType;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CharLiteral;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.DoubleLiteral;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.ExtendedStringLiteral;
import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.FloatLiteral;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.IntLiteralMinValue;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArgumentExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LongLiteral;
import org.eclipse.jdt.internal.compiler.ast.LongLiteralMinValue;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.OR_OR_Expression;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedThisReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.StringLiteralConcatenation;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.core.util.Util;

class ASTConverter {
    protected AST ast;
    protected Comment[] commentsTable;
    char[] compilationUnitSource;
    int compilationUnitSourceLength;
    protected DocCommentParser docParser;
    protected boolean insideComments;
    protected IProgressMonitor monitor;
    protected Set pendingNameScopeResolution;
    protected Set pendingThisExpressionScopeResolution;
    protected boolean resolveBindings;
    Scanner scanner;
    private DefaultCommentMapper commentMapper;

    public ASTConverter(Map options, boolean resolveBindings, IProgressMonitor monitor) {
        this.resolveBindings = resolveBindings;
        Object sourceModeSetting = options.get("org.eclipse.jdt.core.compiler.source");
        long sourceLevel = CompilerOptions.versionToJdkLevel(sourceModeSetting);
        if (sourceLevel == 0L) {
            sourceLevel = 0x2F0000L;
        }
        this.scanner = new Scanner(true, false, false, sourceLevel, null, null, true);
        this.monitor = monitor;
        this.insideComments = "enabled".equals(options.get("org.eclipse.jdt.core.compiler.doc.comment.support"));
    }

    protected void adjustSourcePositionsForParent(org.eclipse.jdt.internal.compiler.ast.Expression expression) {
        int start = expression.sourceStart;
        int end = expression.sourceEnd;
        int leftParentCount = 1;
        int rightParentCount = 0;
        this.scanner.resetTo(start, end);
        try {
            int token = this.scanner.getNextToken();
            expression.sourceStart = this.scanner.currentPosition;
            boolean stop = false;
            while (!stop && (token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 29: {
                        ++leftParentCount;
                        break;
                    }
                    case 28: {
                        if (++rightParentCount != leftParentCount) break;
                        stop = true;
                    }
                }
            }
            expression.sourceEnd = this.scanner.startPosition - 1;
        }
        catch (InvalidInputException invalidInputException) {}
    }

    protected void buildBodyDeclarations(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration, AbstractTypeDeclaration typeDecl, boolean isInterface) {
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] members = typeDeclaration.memberTypes;
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration[] fields = typeDeclaration.fields;
        AbstractMethodDeclaration[] methods = typeDeclaration.methods;
        int fieldsLength = fields == null ? 0 : fields.length;
        int methodsLength = methods == null ? 0 : methods.length;
        int membersLength = members == null ? 0 : members.length;
        int fieldsIndex = 0;
        int methodsIndex = 0;
        int membersIndex = 0;
        block5: while (fieldsIndex < fieldsLength || membersIndex < membersLength || methodsIndex < methodsLength) {
            org.eclipse.jdt.internal.compiler.ast.FieldDeclaration nextFieldDeclaration = null;
            AbstractMethodDeclaration nextMethodDeclaration = null;
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration nextMemberDeclaration = null;
            int position = Integer.MAX_VALUE;
            int nextDeclarationType = -1;
            if (fieldsIndex < fieldsLength) {
                nextFieldDeclaration = fields[fieldsIndex];
                if (nextFieldDeclaration.declarationSourceStart < position) {
                    position = nextFieldDeclaration.declarationSourceStart;
                    nextDeclarationType = 0;
                }
            }
            if (methodsIndex < methodsLength) {
                nextMethodDeclaration = methods[methodsIndex];
                if (nextMethodDeclaration.declarationSourceStart < position) {
                    position = nextMethodDeclaration.declarationSourceStart;
                    nextDeclarationType = 1;
                }
            }
            if (membersIndex < membersLength) {
                nextMemberDeclaration = members[membersIndex];
                if (nextMemberDeclaration.declarationSourceStart < position) {
                    position = nextMemberDeclaration.declarationSourceStart;
                    nextDeclarationType = 2;
                }
            }
            switch (nextDeclarationType) {
                case 0: {
                    if (nextFieldDeclaration.getKind() == 3) {
                        typeDecl.bodyDeclarations().add(this.convert(nextFieldDeclaration));
                    } else {
                        this.checkAndAddMultipleFieldDeclaration(fields, fieldsIndex, typeDecl.bodyDeclarations());
                    }
                    ++fieldsIndex;
                    break;
                }
                case 1: {
                    ++methodsIndex;
                    if (nextMethodDeclaration.isDefaultConstructor() || nextMethodDeclaration.isClinit()) continue block5;
                    typeDecl.bodyDeclarations().add(this.convert(isInterface, nextMethodDeclaration));
                    break;
                }
                case 2: {
                    ++membersIndex;
                    ASTNode node = this.convert(nextMemberDeclaration);
                    if (node == null) {
                        typeDecl.setFlags(typeDecl.getFlags() | 1);
                        break;
                    }
                    typeDecl.bodyDeclarations().add(node);
                }
            }
        }
        this.convert(typeDeclaration.javadoc, typeDecl);
    }

    protected void buildBodyDeclarations(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration enumDeclaration2, EnumDeclaration enumDeclaration) {
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] members = enumDeclaration2.memberTypes;
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration[] fields = enumDeclaration2.fields;
        AbstractMethodDeclaration[] methods = enumDeclaration2.methods;
        int fieldsLength = fields == null ? 0 : fields.length;
        int methodsLength = methods == null ? 0 : methods.length;
        int membersLength = members == null ? 0 : members.length;
        int fieldsIndex = 0;
        int methodsIndex = 0;
        int membersIndex = 0;
        block5: while (fieldsIndex < fieldsLength || membersIndex < membersLength || methodsIndex < methodsLength) {
            org.eclipse.jdt.internal.compiler.ast.FieldDeclaration nextFieldDeclaration = null;
            AbstractMethodDeclaration nextMethodDeclaration = null;
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration nextMemberDeclaration = null;
            int position = Integer.MAX_VALUE;
            int nextDeclarationType = -1;
            if (fieldsIndex < fieldsLength) {
                nextFieldDeclaration = fields[fieldsIndex];
                if (nextFieldDeclaration.declarationSourceStart < position) {
                    position = nextFieldDeclaration.declarationSourceStart;
                    nextDeclarationType = 0;
                }
            }
            if (methodsIndex < methodsLength) {
                nextMethodDeclaration = methods[methodsIndex];
                if (nextMethodDeclaration.declarationSourceStart < position) {
                    position = nextMethodDeclaration.declarationSourceStart;
                    nextDeclarationType = 1;
                }
            }
            if (membersIndex < membersLength) {
                nextMemberDeclaration = members[membersIndex];
                if (nextMemberDeclaration.declarationSourceStart < position) {
                    position = nextMemberDeclaration.declarationSourceStart;
                    nextDeclarationType = 2;
                }
            }
            switch (nextDeclarationType) {
                case 0: {
                    if (nextFieldDeclaration.getKind() == 3) {
                        enumDeclaration.enumConstants().add(this.convert(nextFieldDeclaration));
                    } else {
                        this.checkAndAddMultipleFieldDeclaration(fields, fieldsIndex, enumDeclaration.bodyDeclarations());
                    }
                    ++fieldsIndex;
                    break;
                }
                case 1: {
                    ++methodsIndex;
                    if (nextMethodDeclaration.isDefaultConstructor() || nextMethodDeclaration.isClinit()) continue block5;
                    enumDeclaration.bodyDeclarations().add(this.convert(false, nextMethodDeclaration));
                    break;
                }
                case 2: {
                    ++membersIndex;
                    enumDeclaration.bodyDeclarations().add(this.convert(nextMemberDeclaration));
                }
            }
        }
        this.convert(enumDeclaration2.javadoc, enumDeclaration);
    }

    protected void buildBodyDeclarations(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration expression, AnonymousClassDeclaration anonymousClassDeclaration) {
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] members = expression.memberTypes;
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration[] fields = expression.fields;
        AbstractMethodDeclaration[] methods = expression.methods;
        int fieldsLength = fields == null ? 0 : fields.length;
        int methodsLength = methods == null ? 0 : methods.length;
        int membersLength = members == null ? 0 : members.length;
        int fieldsIndex = 0;
        int methodsIndex = 0;
        int membersIndex = 0;
        block5: while (fieldsIndex < fieldsLength || membersIndex < membersLength || methodsIndex < methodsLength) {
            org.eclipse.jdt.internal.compiler.ast.FieldDeclaration nextFieldDeclaration = null;
            AbstractMethodDeclaration nextMethodDeclaration = null;
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration nextMemberDeclaration = null;
            int position = Integer.MAX_VALUE;
            int nextDeclarationType = -1;
            if (fieldsIndex < fieldsLength) {
                nextFieldDeclaration = fields[fieldsIndex];
                if (nextFieldDeclaration.declarationSourceStart < position) {
                    position = nextFieldDeclaration.declarationSourceStart;
                    nextDeclarationType = 0;
                }
            }
            if (methodsIndex < methodsLength) {
                nextMethodDeclaration = methods[methodsIndex];
                if (nextMethodDeclaration.declarationSourceStart < position) {
                    position = nextMethodDeclaration.declarationSourceStart;
                    nextDeclarationType = 1;
                }
            }
            if (membersIndex < membersLength) {
                nextMemberDeclaration = members[membersIndex];
                if (nextMemberDeclaration.declarationSourceStart < position) {
                    position = nextMemberDeclaration.declarationSourceStart;
                    nextDeclarationType = 2;
                }
            }
            switch (nextDeclarationType) {
                case 0: {
                    if (nextFieldDeclaration.getKind() == 3) {
                        anonymousClassDeclaration.bodyDeclarations().add(this.convert(nextFieldDeclaration));
                    } else {
                        this.checkAndAddMultipleFieldDeclaration(fields, fieldsIndex, anonymousClassDeclaration.bodyDeclarations());
                    }
                    ++fieldsIndex;
                    break;
                }
                case 1: {
                    ++methodsIndex;
                    if (nextMethodDeclaration.isDefaultConstructor() || nextMethodDeclaration.isClinit()) continue block5;
                    anonymousClassDeclaration.bodyDeclarations().add(this.convert(false, nextMethodDeclaration));
                    break;
                }
                case 2: {
                    ++membersIndex;
                    ASTNode node = this.convert(nextMemberDeclaration);
                    if (node == null) {
                        anonymousClassDeclaration.setFlags(anonymousClassDeclaration.getFlags() | 1);
                        break;
                    }
                    anonymousClassDeclaration.bodyDeclarations().add(node);
                }
            }
        }
    }

    void buildCommentsTable(CompilationUnit compilationUnit, int[][] comments) {
        this.commentsTable = new Comment[comments.length];
        int nbr = 0;
        int i = 0;
        while (i < comments.length) {
            Comment comment = this.createComment(comments[i]);
            if (comment != null) {
                comment.setAlternateRoot(compilationUnit);
                this.commentsTable[nbr++] = comment;
            }
            ++i;
        }
        if (nbr < comments.length) {
            Comment[] newCommentsTable = new Comment[nbr];
            System.arraycopy(this.commentsTable, 0, newCommentsTable, 0, nbr);
            this.commentsTable = newCommentsTable;
        }
        compilationUnit.setCommentTable(this.commentsTable);
    }

    protected void checkAndAddMultipleFieldDeclaration(org.eclipse.jdt.internal.compiler.ast.FieldDeclaration[] fields, int index, List bodyDeclarations) {
        if (fields[index] instanceof org.eclipse.jdt.internal.compiler.ast.Initializer) {
            org.eclipse.jdt.internal.compiler.ast.Initializer oldInitializer = (org.eclipse.jdt.internal.compiler.ast.Initializer)fields[index];
            Initializer initializer = new Initializer(this.ast);
            initializer.setBody(this.convert(oldInitializer.block));
            this.setModifiers(initializer, oldInitializer);
            initializer.setSourceRange(oldInitializer.declarationSourceStart, oldInitializer.sourceEnd - oldInitializer.declarationSourceStart + 1);
            this.convert(oldInitializer.javadoc, initializer);
            bodyDeclarations.add(initializer);
            return;
        }
        if (index > 0 && fields[index - 1].declarationSourceStart == fields[index].declarationSourceStart) {
            FieldDeclaration fieldDeclaration = (FieldDeclaration)bodyDeclarations.get(bodyDeclarations.size() - 1);
            fieldDeclaration.fragments().add(this.convertToVariableDeclarationFragment(fields[index]));
        } else {
            bodyDeclarations.add(this.convertToFieldDeclaration(fields[index]));
        }
    }

    protected void checkAndAddMultipleLocalDeclaration(org.eclipse.jdt.internal.compiler.ast.Statement[] stmts, int index, List blockStatements) {
        if (index > 0 && stmts[index - 1] instanceof LocalDeclaration) {
            LocalDeclaration local1 = (LocalDeclaration)stmts[index - 1];
            LocalDeclaration local2 = (LocalDeclaration)stmts[index];
            if (local1.declarationSourceStart == local2.declarationSourceStart) {
                VariableDeclarationStatement variableDeclarationStatement = (VariableDeclarationStatement)blockStatements.get(blockStatements.size() - 1);
                variableDeclarationStatement.fragments().add(this.convertToVariableDeclarationFragment((LocalDeclaration)stmts[index]));
            } else {
                blockStatements.add(this.convertToVariableDeclarationStatement((LocalDeclaration)stmts[index]));
            }
        } else {
            blockStatements.add(this.convertToVariableDeclarationStatement((LocalDeclaration)stmts[index]));
        }
    }

    protected void checkCanceled() {
        if (this.monitor != null && this.monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    protected void completeRecord(ArrayType arrayType, org.eclipse.jdt.internal.compiler.ast.ASTNode astNode) {
        ArrayType array = arrayType;
        int dimensions = array.getDimensions();
        int i = 0;
        while (i < dimensions) {
            Type componentType = array.getComponentType();
            this.recordNodes(componentType, astNode);
            if (componentType.isArrayType()) {
                array = (ArrayType)componentType;
            }
            ++i;
        }
    }

    public ASTNode convert(boolean isInterface, AbstractMethodDeclaration methodDeclaration) {
        org.eclipse.jdt.internal.compiler.ast.TypeParameter[] typeParameters;
        Argument[] parameters;
        int parametersLength;
        int thrownExceptionsLength;
        this.checkCanceled();
        if (methodDeclaration instanceof AnnotationMethodDeclaration) {
            return this.convert((AnnotationMethodDeclaration)methodDeclaration);
        }
        MethodDeclaration methodDecl = new MethodDeclaration(this.ast);
        this.setModifiers(methodDecl, methodDeclaration);
        boolean isConstructor = methodDeclaration.isConstructor();
        methodDecl.setConstructor(isConstructor);
        SimpleName methodName = new SimpleName(this.ast);
        methodName.internalSetIdentifier(new String(methodDeclaration.selector));
        int start = methodDeclaration.sourceStart;
        int end = this.retrieveIdentifierEndPosition(start, methodDeclaration.sourceEnd);
        methodName.setSourceRange(start, end - start + 1);
        methodDecl.setName(methodName);
        TypeReference[] thrownExceptions = methodDeclaration.thrownExceptions;
        int methodHeaderEnd = methodDeclaration.sourceEnd;
        int n = thrownExceptionsLength = thrownExceptions == null ? 0 : thrownExceptions.length;
        if (thrownExceptionsLength > 0) {
            Name thrownException;
            int i = 0;
            do {
                thrownException = this.convert(thrownExceptions[i++]);
                methodDecl.thrownExceptions().add(thrownException);
            } while (i < thrownExceptionsLength);
            methodHeaderEnd = thrownException.getStartPosition() + thrownException.getLength();
        }
        int n2 = parametersLength = (parameters = methodDeclaration.arguments) == null ? 0 : parameters.length;
        if (parametersLength > 0) {
            SingleVariableDeclaration parameter;
            int i = 0;
            do {
                parameter = this.convert(parameters[i++]);
                methodDecl.parameters().add(parameter);
            } while (i < parametersLength);
            if (thrownExceptionsLength == 0) {
                methodHeaderEnd = parameter.getStartPosition() + parameter.getLength();
            }
        }
        ExplicitConstructorCall explicitConstructorCall = null;
        if (isConstructor) {
            if (isInterface) {
                methodDecl.setFlags(methodDecl.getFlags() | 1);
            }
            ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration)methodDeclaration;
            explicitConstructorCall = constructorDeclaration.constructorCall;
            switch (this.ast.apiLevel) {
                case 2: {
                    PrimitiveType returnType = new PrimitiveType(this.ast);
                    returnType.setPrimitiveTypeCode(PrimitiveType.VOID);
                    returnType.setSourceRange(methodDeclaration.sourceStart, 0);
                    methodDecl.internalSetReturnType(returnType);
                    break;
                }
                default: {
                    methodDecl.setReturnType2(null);
                    break;
                }
            }
        } else if (methodDeclaration instanceof org.eclipse.jdt.internal.compiler.ast.MethodDeclaration) {
            org.eclipse.jdt.internal.compiler.ast.MethodDeclaration method = (org.eclipse.jdt.internal.compiler.ast.MethodDeclaration)methodDeclaration;
            TypeReference typeReference = method.returnType;
            if (typeReference != null) {
                Type returnType = this.convertType(typeReference);
                int rightParenthesisPosition = this.retrieveEndOfRightParenthesisPosition(end, method.bodyEnd);
                int extraDimensions = this.retrieveExtraDimension(rightParenthesisPosition, method.bodyEnd);
                methodDecl.setExtraDimensions(extraDimensions);
                this.setTypeForMethodDeclaration(methodDecl, returnType, extraDimensions);
            } else {
                methodDecl.setFlags(methodDecl.getFlags() | 1);
                switch (this.ast.apiLevel) {
                    case 2: {
                        break;
                    }
                    default: {
                        methodDecl.setReturnType2(null);
                    }
                }
            }
        }
        int declarationSourceStart = methodDeclaration.declarationSourceStart;
        int bodyEnd = methodDeclaration.bodyEnd;
        methodDecl.setSourceRange(declarationSourceStart, bodyEnd - declarationSourceStart + 1);
        int declarationSourceEnd = methodDeclaration.declarationSourceEnd;
        int rightBraceOrSemiColonPositionStart = bodyEnd == declarationSourceEnd ? bodyEnd : bodyEnd + 1;
        int closingPosition = this.retrieveRightBraceOrSemiColonPosition(rightBraceOrSemiColonPositionStart, declarationSourceEnd);
        if (closingPosition != -1) {
            int startPosition = methodDecl.getStartPosition();
            methodDecl.setSourceRange(startPosition, closingPosition - startPosition + 1);
            org.eclipse.jdt.internal.compiler.ast.Statement[] statements = methodDeclaration.statements;
            start = this.retrieveStartBlockPosition(methodHeaderEnd, methodDeclaration.bodyStart);
            if (start == -1) {
                start = methodDeclaration.bodyStart;
            }
            end = this.retrieveRightBrace(methodDeclaration.bodyEnd, declarationSourceEnd);
            Block block = null;
            if (start != -1 && end != -1) {
                block = new Block(this.ast);
                block.setSourceRange(start, closingPosition - start + 1);
                methodDecl.setBody(block);
            }
            if (block != null && (statements != null || explicitConstructorCall != null)) {
                if (explicitConstructorCall != null && explicitConstructorCall.accessMode != 1) {
                    block.statements().add(this.convert(explicitConstructorCall));
                }
                int statementsLength = statements == null ? 0 : statements.length;
                int i = 0;
                while (i < statementsLength) {
                    if (statements[i] instanceof LocalDeclaration) {
                        this.checkAndAddMultipleLocalDeclaration(statements, i, block.statements());
                    } else {
                        Statement statement = this.convert(statements[i]);
                        if (statement != null) {
                            block.statements().add(statement);
                        }
                    }
                    ++i;
                }
            }
            if (block != null && (Modifier.isAbstract(methodDecl.getModifiers()) || Modifier.isNative(methodDecl.getModifiers()) || isInterface)) {
                methodDecl.setFlags(methodDecl.getFlags() | 1);
            }
        } else {
            methodDecl.setFlags(methodDecl.getFlags() | 1);
            if (!methodDeclaration.isNative() && !methodDeclaration.isAbstract()) {
                start = this.retrieveStartBlockPosition(methodHeaderEnd, bodyEnd);
                if (start == -1) {
                    start = methodDeclaration.bodyStart;
                }
                end = methodDeclaration.bodyEnd;
                CategorizedProblem[] problems = methodDeclaration.compilationResult().problems;
                if (problems != null) {
                    int i = 0;
                    int max = methodDeclaration.compilationResult().problemCount;
                    while (i < max) {
                        CategorizedProblem currentProblem = problems[i];
                        if (currentProblem.getSourceStart() == start && currentProblem.getID() == 0x600000F0) {
                            end = currentProblem.getSourceEnd();
                            break;
                        }
                        ++i;
                    }
                }
                int startPosition = methodDecl.getStartPosition();
                methodDecl.setSourceRange(startPosition, end - startPosition + 1);
                if (start != -1 && end != -1) {
                    Block block = new Block(this.ast);
                    block.setSourceRange(start, end - start + 1);
                    methodDecl.setBody(block);
                }
            }
        }
        if ((typeParameters = methodDeclaration.typeParameters()) != null) {
            switch (this.ast.apiLevel) {
                case 2: {
                    methodDecl.setFlags(methodDecl.getFlags() | 1);
                    break;
                }
                default: {
                    int i = 0;
                    int max = typeParameters.length;
                    while (i < max) {
                        methodDecl.typeParameters().add(this.convert(typeParameters[i]));
                        ++i;
                    }
                    break block6;
                }
            }
        }
        this.convert(methodDeclaration.javadoc, methodDecl);
        if (this.resolveBindings) {
            this.recordNodes(methodDecl, methodDeclaration);
            this.recordNodes(methodName, methodDeclaration);
            methodDecl.resolveBinding();
        }
        return methodDecl;
    }

    public ClassInstanceCreation convert(AllocationExpression expression) {
        ClassInstanceCreation classInstanceCreation = new ClassInstanceCreation(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(classInstanceCreation, expression);
        }
        if (expression.typeArguments != null) {
            switch (this.ast.apiLevel) {
                case 2: {
                    classInstanceCreation.setFlags(classInstanceCreation.getFlags() | 1);
                    break;
                }
                default: {
                    int i = 0;
                    int max = expression.typeArguments.length;
                    while (i < max) {
                        classInstanceCreation.typeArguments().add(this.convertType(expression.typeArguments[i]));
                        ++i;
                    }
                    break block0;
                }
            }
        }
        switch (this.ast.apiLevel) {
            case 2: {
                classInstanceCreation.internalSetName(this.convert(expression.type));
                break;
            }
            default: {
                classInstanceCreation.setType(this.convertType(expression.type));
            }
        }
        classInstanceCreation.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        org.eclipse.jdt.internal.compiler.ast.Expression[] arguments = expression.arguments;
        if (arguments != null) {
            int length = arguments.length;
            int i = 0;
            while (i < length) {
                classInstanceCreation.arguments().add(this.convert(arguments[i]));
                ++i;
            }
        }
        this.removeTrailingCommentFromExpressionEndingWithAParen(classInstanceCreation);
        return classInstanceCreation;
    }

    public Expression convert(AND_AND_Expression expression) {
        InfixExpression infixExpression = new InfixExpression(this.ast);
        infixExpression.setOperator(InfixExpression.Operator.CONDITIONAL_AND);
        if (this.resolveBindings) {
            this.recordNodes(infixExpression, expression);
        }
        int expressionOperatorID = (expression.bits & 0xFC0) >> 6;
        if (expression.left instanceof BinaryExpression && (expression.left.bits & 0x1FE00000) == 0) {
            infixExpression.extendedOperands().add(this.convert(expression.right));
            org.eclipse.jdt.internal.compiler.ast.Expression leftOperand = expression.left;
            org.eclipse.jdt.internal.compiler.ast.Expression rightOperand = null;
            do {
                rightOperand = ((BinaryExpression)leftOperand).right;
                if ((leftOperand.bits & 0xFC0) >> 6 != expressionOperatorID && (leftOperand.bits & 0x1FE00000) == 0 || rightOperand instanceof BinaryExpression && (rightOperand.bits & 0xFC0) >> 6 != expressionOperatorID && (rightOperand.bits & 0x1FE00000) == 0) {
                    List extendedOperands = infixExpression.extendedOperands();
                    InfixExpression temp = new InfixExpression(this.ast);
                    if (this.resolveBindings) {
                        this.recordNodes(temp, expression);
                    }
                    temp.setOperator(this.getOperatorFor(expressionOperatorID));
                    Expression leftSide = this.convert(leftOperand);
                    temp.setLeftOperand(leftSide);
                    temp.setSourceRange(leftSide.getStartPosition(), leftSide.getLength());
                    int size = extendedOperands.size();
                    int i = 0;
                    while (i < size - 1) {
                        InfixExpression expr = temp;
                        temp = new InfixExpression(this.ast);
                        if (this.resolveBindings) {
                            this.recordNodes(temp, expression);
                        }
                        temp.setLeftOperand(expr);
                        temp.setOperator(this.getOperatorFor(expressionOperatorID));
                        temp.setSourceRange(expr.getStartPosition(), expr.getLength());
                        ++i;
                    }
                    infixExpression = temp;
                    i = 0;
                    while (i < size) {
                        Expression extendedOperand = (Expression)extendedOperands.remove(size - 1 - i);
                        temp.setRightOperand(extendedOperand);
                        int startPosition = temp.getLeftOperand().getStartPosition();
                        temp.setSourceRange(startPosition, extendedOperand.getStartPosition() + extendedOperand.getLength() - startPosition);
                        if (temp.getLeftOperand().getNodeType() == 27) {
                            temp = (InfixExpression)temp.getLeftOperand();
                        }
                        ++i;
                    }
                    int startPosition = infixExpression.getLeftOperand().getStartPosition();
                    infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
                    if (this.resolveBindings) {
                        this.recordNodes(infixExpression, expression);
                    }
                    return infixExpression;
                }
                infixExpression.extendedOperands().add(0, this.convert(rightOperand));
            } while ((leftOperand = ((BinaryExpression)leftOperand).left) instanceof BinaryExpression && (leftOperand.bits & 0x1FE00000) == 0);
            Expression leftExpression = this.convert(leftOperand);
            infixExpression.setLeftOperand(leftExpression);
            infixExpression.setRightOperand((Expression)infixExpression.extendedOperands().remove(0));
            int startPosition = leftExpression.getStartPosition();
            infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
            return infixExpression;
        }
        Expression leftExpression = this.convert(expression.left);
        infixExpression.setLeftOperand(leftExpression);
        infixExpression.setRightOperand(this.convert(expression.right));
        infixExpression.setOperator(InfixExpression.Operator.CONDITIONAL_AND);
        int startPosition = leftExpression.getStartPosition();
        infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
        return infixExpression;
    }

    private AnnotationTypeDeclaration convertToAnnotationDeclaration(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        this.checkCanceled();
        if (this.scanner.sourceLevel < 0x310000L) {
            return null;
        }
        AnnotationTypeDeclaration typeDecl = this.ast.newAnnotationTypeDeclaration();
        this.setModifiers(typeDecl, typeDeclaration);
        SimpleName typeName = new SimpleName(this.ast);
        typeName.internalSetIdentifier(new String(typeDeclaration.name));
        typeName.setSourceRange(typeDeclaration.sourceStart, typeDeclaration.sourceEnd - typeDeclaration.sourceStart + 1);
        typeDecl.setName(typeName);
        typeDecl.setSourceRange(typeDeclaration.declarationSourceStart, typeDeclaration.bodyEnd - typeDeclaration.declarationSourceStart + 1);
        this.buildBodyDeclarations(typeDeclaration, typeDecl, false);
        if (this.resolveBindings) {
            this.recordNodes(typeDecl, typeDeclaration);
            this.recordNodes(typeName, typeDeclaration);
            typeDecl.resolveBinding();
        }
        return typeDecl;
    }

    public ASTNode convert(AnnotationMethodDeclaration annotationTypeMemberDeclaration) {
        this.checkCanceled();
        if (this.ast.apiLevel == 2) {
            return null;
        }
        AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration2 = new AnnotationTypeMemberDeclaration(this.ast);
        this.setModifiers(annotationTypeMemberDeclaration2, annotationTypeMemberDeclaration);
        SimpleName methodName = new SimpleName(this.ast);
        methodName.internalSetIdentifier(new String(annotationTypeMemberDeclaration.selector));
        int start = annotationTypeMemberDeclaration.sourceStart;
        int end = this.retrieveIdentifierEndPosition(start, annotationTypeMemberDeclaration.sourceEnd);
        methodName.setSourceRange(start, end - start + 1);
        annotationTypeMemberDeclaration2.setName(methodName);
        TypeReference typeReference = annotationTypeMemberDeclaration.returnType;
        if (typeReference != null) {
            Type returnType = this.convertType(typeReference);
            this.setTypeForMethodDeclaration(annotationTypeMemberDeclaration2, returnType, 0);
        }
        int declarationSourceStart = annotationTypeMemberDeclaration.declarationSourceStart;
        int declarationSourceEnd = annotationTypeMemberDeclaration.bodyEnd;
        annotationTypeMemberDeclaration2.setSourceRange(declarationSourceStart, declarationSourceEnd - declarationSourceStart + 1);
        this.convert(annotationTypeMemberDeclaration.javadoc, annotationTypeMemberDeclaration2);
        org.eclipse.jdt.internal.compiler.ast.Expression memberValue = annotationTypeMemberDeclaration.defaultValue;
        if (memberValue != null) {
            annotationTypeMemberDeclaration2.setDefault(this.convert(memberValue));
        }
        if (this.resolveBindings) {
            this.recordNodes(annotationTypeMemberDeclaration2, annotationTypeMemberDeclaration);
            this.recordNodes(methodName, annotationTypeMemberDeclaration);
            annotationTypeMemberDeclaration2.resolveBinding();
        }
        return annotationTypeMemberDeclaration2;
    }

    public SingleVariableDeclaration convert(Argument argument) {
        SingleVariableDeclaration variableDecl = new SingleVariableDeclaration(this.ast);
        this.setModifiers(variableDecl, argument);
        SimpleName name = new SimpleName(this.ast);
        name.internalSetIdentifier(new String(argument.name));
        int start = argument.sourceStart;
        int nameEnd = argument.sourceEnd;
        name.setSourceRange(start, nameEnd - start + 1);
        variableDecl.setName(name);
        int typeSourceEnd = argument.type.sourceEnd;
        int extraDimensions = this.retrieveExtraDimension(nameEnd + 1, typeSourceEnd);
        variableDecl.setExtraDimensions(extraDimensions);
        boolean isVarArgs = argument.isVarArgs();
        if (isVarArgs && extraDimensions == 0) {
            argument.type.sourceEnd = this.retrieveEllipsisStartPosition(argument.type.sourceStart, typeSourceEnd);
        }
        Type type = this.convertType(argument.type);
        int typeEnd = type.getStartPosition() + type.getLength() - 1;
        int rightEnd = Math.max(typeEnd, argument.declarationSourceEnd);
        if (isVarArgs) {
            this.setTypeForSingleVariableDeclaration(variableDecl, type, extraDimensions + 1);
            if (extraDimensions != 0) {
                variableDecl.setFlags(variableDecl.getFlags() | 1);
            }
        } else {
            this.setTypeForSingleVariableDeclaration(variableDecl, type, extraDimensions);
        }
        variableDecl.setSourceRange(argument.declarationSourceStart, rightEnd - argument.declarationSourceStart + 1);
        if (isVarArgs) {
            switch (this.ast.apiLevel) {
                case 2: {
                    variableDecl.setFlags(variableDecl.getFlags() | 1);
                    break;
                }
                default: {
                    variableDecl.setVarargs(true);
                }
            }
        }
        if (this.resolveBindings) {
            this.recordNodes(name, argument);
            this.recordNodes(variableDecl, argument);
            variableDecl.resolveBinding();
        }
        return variableDecl;
    }

    public Annotation convert(org.eclipse.jdt.internal.compiler.ast.Annotation annotation) {
        if (annotation instanceof org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation)annotation);
        }
        if (annotation instanceof org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation)annotation);
        }
        return this.convert((org.eclipse.jdt.internal.compiler.ast.NormalAnnotation)annotation);
    }

    public ArrayCreation convert(ArrayAllocationExpression expression) {
        ArrayCreation arrayCreation = new ArrayCreation(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(arrayCreation, expression);
        }
        arrayCreation.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        org.eclipse.jdt.internal.compiler.ast.Expression[] dimensions = expression.dimensions;
        int dimensionsLength = dimensions.length;
        int i = 0;
        while (i < dimensionsLength) {
            if (dimensions[i] != null) {
                Expression dimension = this.convert(dimensions[i]);
                if (this.resolveBindings) {
                    this.recordNodes(dimension, dimensions[i]);
                }
                arrayCreation.dimensions().add(dimension);
            }
            ++i;
        }
        Type type = this.convertType(expression.type);
        if (this.resolveBindings) {
            this.recordNodes(type, expression.type);
        }
        ArrayType arrayType = null;
        if (type.isArrayType()) {
            arrayType = (ArrayType)type;
        } else {
            arrayType = this.ast.newArrayType(type, dimensionsLength);
            if (this.resolveBindings) {
                this.completeRecord(arrayType, expression);
            }
            int start = type.getStartPosition();
            int end = type.getStartPosition() + type.getLength();
            int previousSearchStart = end - 1;
            ArrayType componentType = (ArrayType)type.getParent();
            int i2 = 0;
            while (i2 < dimensionsLength) {
                previousSearchStart = this.retrieveRightBracketPosition(previousSearchStart + 1, this.compilationUnitSourceLength);
                componentType.setSourceRange(start, previousSearchStart - start + 1);
                componentType = (ArrayType)componentType.getParent();
                ++i2;
            }
        }
        arrayCreation.setType(arrayType);
        if (this.resolveBindings) {
            this.recordNodes(arrayType, expression);
        }
        if (expression.initializer != null) {
            arrayCreation.setInitializer(this.convert(expression.initializer));
        }
        return arrayCreation;
    }

    public ArrayInitializer convert(org.eclipse.jdt.internal.compiler.ast.ArrayInitializer expression) {
        ArrayInitializer arrayInitializer = new ArrayInitializer(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(arrayInitializer, expression);
        }
        arrayInitializer.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        org.eclipse.jdt.internal.compiler.ast.Expression[] expressions = expression.expressions;
        if (expressions != null) {
            int length = expressions.length;
            int i = 0;
            while (i < length) {
                Expression expr = this.convert(expressions[i]);
                if (this.resolveBindings) {
                    this.recordNodes(expr, expressions[i]);
                }
                arrayInitializer.expressions().add(expr);
                ++i;
            }
        }
        return arrayInitializer;
    }

    public ArrayAccess convert(ArrayReference reference) {
        ArrayAccess arrayAccess = new ArrayAccess(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(arrayAccess, reference);
        }
        arrayAccess.setSourceRange(reference.sourceStart, reference.sourceEnd - reference.sourceStart + 1);
        arrayAccess.setArray(this.convert(reference.receiver));
        arrayAccess.setIndex(this.convert(reference.position));
        return arrayAccess;
    }

    public AssertStatement convert(org.eclipse.jdt.internal.compiler.ast.AssertStatement statement) {
        Expression assertExpression;
        AssertStatement assertStatement = new AssertStatement(this.ast);
        Expression searchingNode = assertExpression = this.convert(statement.assertExpression);
        assertStatement.setExpression(assertExpression);
        org.eclipse.jdt.internal.compiler.ast.Expression exceptionArgument = statement.exceptionArgument;
        if (exceptionArgument != null) {
            Expression exceptionMessage = this.convert(exceptionArgument);
            assertStatement.setMessage(exceptionMessage);
            searchingNode = exceptionMessage;
        }
        int start = statement.sourceStart;
        int sourceEnd = this.retrieveSemiColonPosition(searchingNode);
        if (sourceEnd == -1) {
            sourceEnd = searchingNode.getStartPosition() + searchingNode.getLength() - 1;
            assertStatement.setSourceRange(start, sourceEnd - start + 1);
        } else {
            assertStatement.setSourceRange(start, sourceEnd - start + 1);
        }
        return assertStatement;
    }

    public Assignment convert(org.eclipse.jdt.internal.compiler.ast.Assignment expression) {
        Assignment assignment = new Assignment(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(assignment, expression);
        }
        Expression lhs = this.convert(expression.lhs);
        assignment.setLeftHandSide(lhs);
        assignment.setOperator(Assignment.Operator.ASSIGN);
        Expression rightHandSide = this.convert(expression.expression);
        assignment.setRightHandSide(rightHandSide);
        int start = lhs.getStartPosition();
        int end = rightHandSide.getStartPosition() + rightHandSide.getLength() - 1;
        assignment.setSourceRange(start, end - start + 1);
        return assignment;
    }

    public TypeDeclaration convert(org.eclipse.jdt.internal.compiler.ast.ASTNode[] nodes) {
        TypeDeclaration typeDecl = new TypeDeclaration(this.ast);
        typeDecl.setInterface(false);
        int nodesLength = nodes.length;
        int i = 0;
        while (i < nodesLength) {
            org.eclipse.jdt.internal.compiler.ast.ASTNode node = nodes[i];
            if (node instanceof org.eclipse.jdt.internal.compiler.ast.Initializer) {
                org.eclipse.jdt.internal.compiler.ast.Initializer oldInitializer = (org.eclipse.jdt.internal.compiler.ast.Initializer)node;
                Initializer initializer = new Initializer(this.ast);
                initializer.setBody(this.convert(oldInitializer.block));
                this.setModifiers(initializer, oldInitializer);
                initializer.setSourceRange(oldInitializer.declarationSourceStart, oldInitializer.sourceEnd - oldInitializer.declarationSourceStart + 1);
                this.convert(oldInitializer.javadoc, initializer);
                typeDecl.bodyDeclarations().add(initializer);
            } else if (node instanceof org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) {
                org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration = (org.eclipse.jdt.internal.compiler.ast.FieldDeclaration)node;
                if (i > 0 && nodes[i - 1] instanceof org.eclipse.jdt.internal.compiler.ast.FieldDeclaration && ((org.eclipse.jdt.internal.compiler.ast.FieldDeclaration)nodes[i - 1]).declarationSourceStart == fieldDeclaration.declarationSourceStart) {
                    FieldDeclaration currentFieldDeclaration = (FieldDeclaration)typeDecl.bodyDeclarations().get(typeDecl.bodyDeclarations().size() - 1);
                    currentFieldDeclaration.fragments().add(this.convertToVariableDeclarationFragment(fieldDeclaration));
                } else {
                    typeDecl.bodyDeclarations().add(this.convertToFieldDeclaration(fieldDeclaration));
                }
            } else if (node instanceof AbstractMethodDeclaration) {
                AbstractMethodDeclaration nextMethodDeclaration = (AbstractMethodDeclaration)node;
                if (!nextMethodDeclaration.isDefaultConstructor() && !nextMethodDeclaration.isClinit()) {
                    typeDecl.bodyDeclarations().add(this.convert(false, nextMethodDeclaration));
                }
            } else if (node instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration nextMemberDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)node;
                ASTNode nextMemberDeclarationNode = this.convert(nextMemberDeclaration);
                if (nextMemberDeclarationNode == null) {
                    typeDecl.setFlags(typeDecl.getFlags() | 1);
                } else {
                    typeDecl.bodyDeclarations().add(nextMemberDeclarationNode);
                }
            }
            ++i;
        }
        return typeDecl;
    }

    public Expression convert(BinaryExpression expression) {
        InfixExpression infixExpression = new InfixExpression(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(infixExpression, expression);
        }
        int expressionOperatorID = (expression.bits & 0xFC0) >> 6;
        infixExpression.setOperator(this.getOperatorFor(expressionOperatorID));
        if (expression.left instanceof BinaryExpression && (expression.left.bits & 0x1FE00000) == 0) {
            infixExpression.extendedOperands().add(this.convert(expression.right));
            org.eclipse.jdt.internal.compiler.ast.Expression leftOperand = expression.left;
            org.eclipse.jdt.internal.compiler.ast.Expression rightOperand = null;
            do {
                rightOperand = ((BinaryExpression)leftOperand).right;
                if ((leftOperand.bits & 0xFC0) >> 6 != expressionOperatorID && (leftOperand.bits & 0x1FE00000) == 0 || rightOperand instanceof BinaryExpression && (rightOperand.bits & 0xFC0) >> 6 != expressionOperatorID && (rightOperand.bits & 0x1FE00000) == 0) {
                    List extendedOperands = infixExpression.extendedOperands();
                    InfixExpression temp = new InfixExpression(this.ast);
                    if (this.resolveBindings) {
                        this.recordNodes(temp, expression);
                    }
                    temp.setOperator(this.getOperatorFor(expressionOperatorID));
                    Expression leftSide = this.convert(leftOperand);
                    temp.setLeftOperand(leftSide);
                    temp.setSourceRange(leftSide.getStartPosition(), leftSide.getLength());
                    int size = extendedOperands.size();
                    int i = 0;
                    while (i < size - 1) {
                        InfixExpression expr = temp;
                        temp = new InfixExpression(this.ast);
                        if (this.resolveBindings) {
                            this.recordNodes(temp, expression);
                        }
                        temp.setLeftOperand(expr);
                        temp.setOperator(this.getOperatorFor(expressionOperatorID));
                        temp.setSourceRange(expr.getStartPosition(), expr.getLength());
                        ++i;
                    }
                    infixExpression = temp;
                    i = 0;
                    while (i < size) {
                        Expression extendedOperand = (Expression)extendedOperands.remove(size - 1 - i);
                        temp.setRightOperand(extendedOperand);
                        int startPosition = temp.getLeftOperand().getStartPosition();
                        temp.setSourceRange(startPosition, extendedOperand.getStartPosition() + extendedOperand.getLength() - startPosition);
                        if (temp.getLeftOperand().getNodeType() == 27) {
                            temp = (InfixExpression)temp.getLeftOperand();
                        }
                        ++i;
                    }
                    int startPosition = infixExpression.getLeftOperand().getStartPosition();
                    infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
                    if (this.resolveBindings) {
                        this.recordNodes(infixExpression, expression);
                    }
                    return infixExpression;
                }
                infixExpression.extendedOperands().add(0, this.convert(rightOperand));
            } while ((leftOperand = ((BinaryExpression)leftOperand).left) instanceof BinaryExpression && (leftOperand.bits & 0x1FE00000) == 0);
            Expression leftExpression = this.convert(leftOperand);
            infixExpression.setLeftOperand(leftExpression);
            infixExpression.setRightOperand((Expression)infixExpression.extendedOperands().remove(0));
            int startPosition = leftExpression.getStartPosition();
            infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
            return infixExpression;
        }
        if (expression.left instanceof StringLiteralConcatenation && (expression.left.bits & 0x1FE00000) == 0 && 14 == expressionOperatorID) {
            StringLiteralConcatenation literal = (StringLiteralConcatenation)expression.left;
            org.eclipse.jdt.internal.compiler.ast.Expression[] stringLiterals = literal.literals;
            infixExpression.setLeftOperand(this.convert(stringLiterals[0]));
            infixExpression.setRightOperand(this.convert(stringLiterals[1]));
            int i = 2;
            while (i < literal.counter) {
                infixExpression.extendedOperands().add(this.convert(stringLiterals[i]));
                ++i;
            }
            infixExpression.extendedOperands().add(this.convert(expression.right));
            int startPosition = literal.sourceStart;
            infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
            return infixExpression;
        }
        Expression leftExpression = this.convert(expression.left);
        infixExpression.setLeftOperand(leftExpression);
        infixExpression.setRightOperand(this.convert(expression.right));
        int startPosition = leftExpression.getStartPosition();
        infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
        return infixExpression;
    }

    public Block convert(org.eclipse.jdt.internal.compiler.ast.Block statement) {
        org.eclipse.jdt.internal.compiler.ast.Statement[] statements;
        Block block = new Block(this.ast);
        if (statement.sourceEnd > 0) {
            block.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        }
        if ((statements = statement.statements) != null) {
            int statementsLength = statements.length;
            int i = 0;
            while (i < statementsLength) {
                if (statements[i] instanceof LocalDeclaration) {
                    this.checkAndAddMultipleLocalDeclaration(statements, i, block.statements());
                } else {
                    Statement statement2 = this.convert(statements[i]);
                    if (statement2 != null) {
                        block.statements().add(statement2);
                    }
                }
                ++i;
            }
        }
        return block;
    }

    public BreakStatement convert(org.eclipse.jdt.internal.compiler.ast.BreakStatement statement) {
        BreakStatement breakStatement = new BreakStatement(this.ast);
        breakStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        if (statement.label != null) {
            SimpleName name = new SimpleName(this.ast);
            name.internalSetIdentifier(new String(statement.label));
            this.retrieveIdentifierAndSetPositions(statement.sourceStart, statement.sourceEnd, name);
            breakStatement.setLabel(name);
        }
        return breakStatement;
    }

    public SwitchCase convert(CaseStatement statement) {
        SwitchCase switchCase = new SwitchCase(this.ast);
        org.eclipse.jdt.internal.compiler.ast.Expression constantExpression = statement.constantExpression;
        if (constantExpression == null) {
            switchCase.setExpression(null);
        } else {
            switchCase.setExpression(this.convert(constantExpression));
        }
        switchCase.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        this.retrieveColonPosition(switchCase);
        return switchCase;
    }

    public CastExpression convert(org.eclipse.jdt.internal.compiler.ast.CastExpression expression) {
        CastExpression castExpression = new CastExpression(this.ast);
        castExpression.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        TypeReference type = expression.type;
        this.trimWhiteSpacesAndComments(type);
        castExpression.setType(this.convertType(type));
        castExpression.setExpression(this.convert(expression.expression));
        if (this.resolveBindings) {
            this.recordNodes(castExpression, expression);
        }
        return castExpression;
    }

    public CharacterLiteral convert(CharLiteral expression) {
        int length = expression.sourceEnd - expression.sourceStart + 1;
        int sourceStart = expression.sourceStart;
        CharacterLiteral literal = new CharacterLiteral(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.internalSetEscapedValue(new String(this.compilationUnitSource, sourceStart, length));
        literal.setSourceRange(sourceStart, length);
        this.removeLeadingAndTrailingCommentsFromLiteral(literal);
        return literal;
    }

    public Expression convert(ClassLiteralAccess expression) {
        TypeLiteral typeLiteral = new TypeLiteral(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(typeLiteral, expression);
        }
        typeLiteral.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        typeLiteral.setType(this.convertType(expression.type));
        return typeLiteral;
    }

    public CompilationUnit convert(CompilationUnitDeclaration unit, char[] source) {
        try {
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] types;
            ImportReference[] imports;
            if (unit.compilationResult.recoveryScannerData != null) {
                RecoveryScanner recoveryScanner = new RecoveryScanner(this.scanner, unit.compilationResult.recoveryScannerData.removeUnused());
                this.docParser.scanner = this.scanner = recoveryScanner;
            }
            this.compilationUnitSource = source;
            this.compilationUnitSourceLength = source.length;
            this.scanner.setSource(source, unit.compilationResult);
            CompilationUnit compilationUnit = new CompilationUnit(this.ast);
            compilationUnit.setStatementsRecoveryData(unit.compilationResult.recoveryScannerData);
            int[][] comments = unit.comments;
            if (comments != null) {
                this.buildCommentsTable(compilationUnit, comments);
            }
            if (this.resolveBindings) {
                this.recordNodes(compilationUnit, unit);
            }
            if (unit.currentPackage != null) {
                PackageDeclaration packageDeclaration = this.convertPackage(unit);
                compilationUnit.setPackage(packageDeclaration);
            }
            if ((imports = unit.imports) != null) {
                int importLength = imports.length;
                int i = 0;
                while (i < importLength) {
                    compilationUnit.imports().add(this.convertImport(imports[i]));
                    ++i;
                }
            }
            if ((types = unit.types) != null) {
                int typesLength = types.length;
                int i = 0;
                while (i < typesLength) {
                    org.eclipse.jdt.internal.compiler.ast.TypeDeclaration declaration = types[i];
                    if (!CharOperation.equals(declaration.name, TypeConstants.PACKAGE_INFO_NAME)) {
                        ASTNode type = this.convert(declaration);
                        if (type == null) {
                            compilationUnit.setFlags(compilationUnit.getFlags() | 1);
                        } else {
                            compilationUnit.types().add(type);
                        }
                    }
                    ++i;
                }
            }
            compilationUnit.setSourceRange(unit.sourceStart, unit.sourceEnd - unit.sourceStart + 1);
            int problemLength = unit.compilationResult.problemCount;
            if (problemLength != 0) {
                IProblem[] resizedProblems = null;
                CategorizedProblem[] problems = unit.compilationResult.getProblems();
                int realProblemLength = problems.length;
                if (realProblemLength == problemLength) {
                    resizedProblems = problems;
                } else {
                    resizedProblems = new CategorizedProblem[realProblemLength];
                    System.arraycopy(problems, 0, resizedProblems, 0, realProblemLength);
                }
                ASTSyntaxErrorPropagator syntaxErrorPropagator = new ASTSyntaxErrorPropagator((CategorizedProblem[])resizedProblems);
                compilationUnit.accept(syntaxErrorPropagator);
                ASTRecoveryPropagator recoveryPropagator = new ASTRecoveryPropagator((CategorizedProblem[])resizedProblems, unit.compilationResult.recoveryScannerData);
                compilationUnit.accept(recoveryPropagator);
                compilationUnit.setProblems(resizedProblems);
            }
            if (this.resolveBindings) {
                this.lookupForScopes();
            }
            compilationUnit.initCommentMapper(this.scanner);
            return compilationUnit;
        }
        catch (IllegalArgumentException e) {
            StringBuffer message = new StringBuffer("Exception occurred during compilation unit conversion:");
            String lineDelimiter = Util.findLineSeparator(source);
            if (lineDelimiter == null) {
                lineDelimiter = System.getProperty("line.separator");
            }
            message.append(lineDelimiter);
            message.append("----------------------------------- SOURCE BEGIN -------------------------------------");
            message.append(lineDelimiter);
            message.append(source);
            message.append(lineDelimiter);
            message.append("----------------------------------- SOURCE END -------------------------------------");
            Util.log(e, message.toString());
            throw e;
        }
    }

    public Assignment convert(CompoundAssignment expression) {
        Assignment assignment = new Assignment(this.ast);
        Expression lhs = this.convert(expression.lhs);
        assignment.setLeftHandSide(lhs);
        int start = lhs.getStartPosition();
        assignment.setSourceRange(start, expression.sourceEnd - start + 1);
        switch (expression.operator) {
            case 14: {
                assignment.setOperator(Assignment.Operator.PLUS_ASSIGN);
                break;
            }
            case 13: {
                assignment.setOperator(Assignment.Operator.MINUS_ASSIGN);
                break;
            }
            case 15: {
                assignment.setOperator(Assignment.Operator.TIMES_ASSIGN);
                break;
            }
            case 9: {
                assignment.setOperator(Assignment.Operator.DIVIDE_ASSIGN);
                break;
            }
            case 2: {
                assignment.setOperator(Assignment.Operator.BIT_AND_ASSIGN);
                break;
            }
            case 3: {
                assignment.setOperator(Assignment.Operator.BIT_OR_ASSIGN);
                break;
            }
            case 8: {
                assignment.setOperator(Assignment.Operator.BIT_XOR_ASSIGN);
                break;
            }
            case 16: {
                assignment.setOperator(Assignment.Operator.REMAINDER_ASSIGN);
                break;
            }
            case 10: {
                assignment.setOperator(Assignment.Operator.LEFT_SHIFT_ASSIGN);
                break;
            }
            case 17: {
                assignment.setOperator(Assignment.Operator.RIGHT_SHIFT_SIGNED_ASSIGN);
                break;
            }
            case 19: {
                assignment.setOperator(Assignment.Operator.RIGHT_SHIFT_UNSIGNED_ASSIGN);
            }
        }
        assignment.setRightHandSide(this.convert(expression.expression));
        if (this.resolveBindings) {
            this.recordNodes(assignment, expression);
        }
        return assignment;
    }

    public ConditionalExpression convert(org.eclipse.jdt.internal.compiler.ast.ConditionalExpression expression) {
        ConditionalExpression conditionalExpression = new ConditionalExpression(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(conditionalExpression, expression);
        }
        conditionalExpression.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        conditionalExpression.setExpression(this.convert(expression.condition));
        conditionalExpression.setThenExpression(this.convert(expression.valueIfTrue));
        conditionalExpression.setElseExpression(this.convert(expression.valueIfFalse));
        return conditionalExpression;
    }

    public ContinueStatement convert(org.eclipse.jdt.internal.compiler.ast.ContinueStatement statement) {
        ContinueStatement continueStatement = new ContinueStatement(this.ast);
        continueStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        if (statement.label != null) {
            SimpleName name = new SimpleName(this.ast);
            name.internalSetIdentifier(new String(statement.label));
            this.retrieveIdentifierAndSetPositions(statement.sourceStart, statement.sourceEnd, name);
            continueStatement.setLabel(name);
        }
        return continueStatement;
    }

    public DoStatement convert(org.eclipse.jdt.internal.compiler.ast.DoStatement statement) {
        DoStatement doStatement = new DoStatement(this.ast);
        doStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        doStatement.setExpression(this.convert(statement.condition));
        Statement action = this.convert(statement.action);
        if (action == null) {
            return null;
        }
        doStatement.setBody(action);
        return doStatement;
    }

    public NumberLiteral convert(DoubleLiteral expression) {
        int length = expression.sourceEnd - expression.sourceStart + 1;
        int sourceStart = expression.sourceStart;
        NumberLiteral literal = new NumberLiteral(this.ast);
        literal.internalSetToken(new String(this.compilationUnitSource, sourceStart, length));
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.setSourceRange(sourceStart, length);
        this.removeLeadingAndTrailingCommentsFromLiteral(literal);
        return literal;
    }

    public EmptyStatement convert(org.eclipse.jdt.internal.compiler.ast.EmptyStatement statement) {
        EmptyStatement emptyStatement = new EmptyStatement(this.ast);
        emptyStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        return emptyStatement;
    }

    public EnumConstantDeclaration convert(org.eclipse.jdt.internal.compiler.ast.FieldDeclaration enumConstant) {
        this.checkCanceled();
        EnumConstantDeclaration enumConstantDeclaration = new EnumConstantDeclaration(this.ast);
        SimpleName typeName = new SimpleName(this.ast);
        typeName.internalSetIdentifier(new String(enumConstant.name));
        typeName.setSourceRange(enumConstant.sourceStart, enumConstant.sourceEnd - enumConstant.sourceStart + 1);
        enumConstantDeclaration.setName(typeName);
        int declarationSourceStart = enumConstant.declarationSourceStart;
        int declarationSourceEnd = enumConstant.declarationSourceEnd;
        org.eclipse.jdt.internal.compiler.ast.Expression initialization = enumConstant.initialization;
        if (initialization != null) {
            org.eclipse.jdt.internal.compiler.ast.Expression[] arguments;
            if (initialization instanceof QualifiedAllocationExpression) {
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration anonymousType = ((QualifiedAllocationExpression)initialization).anonymousType;
                if (anonymousType != null) {
                    AnonymousClassDeclaration anonymousClassDeclaration = new AnonymousClassDeclaration(this.ast);
                    int start = this.retrieveStartBlockPosition(anonymousType.sourceEnd, anonymousType.bodyEnd);
                    int end = this.retrieveRightBrace(anonymousType.bodyEnd, declarationSourceEnd);
                    if (end == -1) {
                        end = anonymousType.bodyEnd;
                    }
                    anonymousClassDeclaration.setSourceRange(start, end - start + 1);
                    enumConstantDeclaration.setAnonymousClassDeclaration(anonymousClassDeclaration);
                    this.buildBodyDeclarations(anonymousType, anonymousClassDeclaration);
                    if (this.resolveBindings) {
                        this.recordNodes(anonymousClassDeclaration, anonymousType);
                        anonymousClassDeclaration.resolveBinding();
                    }
                    enumConstantDeclaration.setSourceRange(declarationSourceStart, end - declarationSourceStart + 1);
                }
            } else {
                enumConstantDeclaration.setSourceRange(declarationSourceStart, declarationSourceEnd - declarationSourceStart + 1);
            }
            if ((arguments = ((AllocationExpression)initialization).arguments) != null) {
                int i = 0;
                int max = arguments.length;
                while (i < max) {
                    enumConstantDeclaration.arguments().add(this.convert(arguments[i]));
                    ++i;
                }
            }
        } else {
            enumConstantDeclaration.setSourceRange(declarationSourceStart, declarationSourceEnd - declarationSourceStart + 1);
        }
        this.setModifiers(enumConstantDeclaration, enumConstant);
        if (this.resolveBindings) {
            this.recordNodes(enumConstantDeclaration, enumConstant);
            this.recordNodes(typeName, enumConstant);
            enumConstantDeclaration.resolveVariable();
        }
        this.convert(enumConstant.javadoc, enumConstantDeclaration);
        return enumConstantDeclaration;
    }

    public Expression convert(EqualExpression expression) {
        InfixExpression infixExpression = new InfixExpression(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(infixExpression, expression);
        }
        Expression leftExpression = this.convert(expression.left);
        infixExpression.setLeftOperand(leftExpression);
        infixExpression.setRightOperand(this.convert(expression.right));
        int startPosition = leftExpression.getStartPosition();
        infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
        switch ((expression.bits & 0xFC0) >> 6) {
            case 18: {
                infixExpression.setOperator(InfixExpression.Operator.EQUALS);
                break;
            }
            case 29: {
                infixExpression.setOperator(InfixExpression.Operator.NOT_EQUALS);
            }
        }
        return infixExpression;
    }

    public Statement convert(ExplicitConstructorCall statement) {
        Statement newStatement;
        int sourceStart = statement.sourceStart;
        if (statement.isSuperAccess() || statement.isSuper()) {
            org.eclipse.jdt.internal.compiler.ast.Expression[] arguments;
            SuperConstructorInvocation superConstructorInvocation = new SuperConstructorInvocation(this.ast);
            if (statement.qualification != null) {
                superConstructorInvocation.setExpression(this.convert(statement.qualification));
            }
            if ((arguments = statement.arguments) != null) {
                int length = arguments.length;
                int i = 0;
                while (i < length) {
                    superConstructorInvocation.arguments().add(this.convert(arguments[i]));
                    ++i;
                }
            }
            if (statement.typeArguments != null) {
                if (sourceStart > statement.typeArgumentsSourceStart) {
                    sourceStart = statement.typeArgumentsSourceStart;
                }
                switch (this.ast.apiLevel) {
                    case 2: {
                        superConstructorInvocation.setFlags(superConstructorInvocation.getFlags() | 1);
                        break;
                    }
                    default: {
                        int i = 0;
                        int max = statement.typeArguments.length;
                        while (i < max) {
                            superConstructorInvocation.typeArguments().add(this.convertType(statement.typeArguments[i]));
                            ++i;
                        }
                        break block0;
                    }
                }
            }
            newStatement = superConstructorInvocation;
        } else {
            ConstructorInvocation constructorInvocation = new ConstructorInvocation(this.ast);
            org.eclipse.jdt.internal.compiler.ast.Expression[] arguments = statement.arguments;
            if (arguments != null) {
                int length = arguments.length;
                int i = 0;
                while (i < length) {
                    constructorInvocation.arguments().add(this.convert(arguments[i]));
                    ++i;
                }
            }
            if (statement.typeArguments != null) {
                if (sourceStart > statement.typeArgumentsSourceStart) {
                    sourceStart = statement.typeArgumentsSourceStart;
                }
                switch (this.ast.apiLevel) {
                    case 2: {
                        constructorInvocation.setFlags(constructorInvocation.getFlags() | 1);
                        break;
                    }
                    default: {
                        int i = 0;
                        int max = statement.typeArguments.length;
                        while (i < max) {
                            constructorInvocation.typeArguments().add(this.convertType(statement.typeArguments[i]));
                            ++i;
                        }
                        break block3;
                    }
                }
            }
            if (statement.qualification != null) {
                constructorInvocation.setFlags(constructorInvocation.getFlags() | 1);
            }
            newStatement = constructorInvocation;
        }
        newStatement.setSourceRange(sourceStart, statement.sourceEnd - sourceStart + 1);
        if (this.resolveBindings) {
            this.recordNodes(newStatement, statement);
        }
        return newStatement;
    }

    public Expression convert(org.eclipse.jdt.internal.compiler.ast.Expression expression) {
        if ((expression.bits & 0x1FE00000) != 0) {
            return this.convertToParenthesizedExpression(expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.Annotation) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.Annotation)expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.CastExpression) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.CastExpression)expression);
        }
        if (expression instanceof ArrayAllocationExpression) {
            return this.convert((ArrayAllocationExpression)expression);
        }
        if (expression instanceof QualifiedAllocationExpression) {
            return this.convert((QualifiedAllocationExpression)expression);
        }
        if (expression instanceof AllocationExpression) {
            return this.convert((AllocationExpression)expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.ArrayInitializer) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.ArrayInitializer)expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.PrefixExpression) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.PrefixExpression)expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.PostfixExpression) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.PostfixExpression)expression);
        }
        if (expression instanceof CompoundAssignment) {
            return this.convert((CompoundAssignment)expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.Assignment) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.Assignment)expression);
        }
        if (expression instanceof ClassLiteralAccess) {
            return this.convert((ClassLiteralAccess)expression);
        }
        if (expression instanceof FalseLiteral) {
            return this.convert((FalseLiteral)expression);
        }
        if (expression instanceof TrueLiteral) {
            return this.convert((TrueLiteral)expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.NullLiteral) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.NullLiteral)expression);
        }
        if (expression instanceof CharLiteral) {
            return this.convert((CharLiteral)expression);
        }
        if (expression instanceof DoubleLiteral) {
            return this.convert((DoubleLiteral)expression);
        }
        if (expression instanceof FloatLiteral) {
            return this.convert((FloatLiteral)expression);
        }
        if (expression instanceof IntLiteralMinValue) {
            return this.convert((IntLiteralMinValue)expression);
        }
        if (expression instanceof IntLiteral) {
            return this.convert((IntLiteral)expression);
        }
        if (expression instanceof LongLiteralMinValue) {
            return this.convert((LongLiteralMinValue)expression);
        }
        if (expression instanceof LongLiteral) {
            return this.convert((LongLiteral)expression);
        }
        if (expression instanceof StringLiteralConcatenation) {
            return this.convert((StringLiteralConcatenation)expression);
        }
        if (expression instanceof ExtendedStringLiteral) {
            return this.convert((ExtendedStringLiteral)expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.StringLiteral) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.StringLiteral)expression);
        }
        if (expression instanceof AND_AND_Expression) {
            return this.convert((AND_AND_Expression)expression);
        }
        if (expression instanceof OR_OR_Expression) {
            return this.convert((OR_OR_Expression)expression);
        }
        if (expression instanceof EqualExpression) {
            return this.convert((EqualExpression)expression);
        }
        if (expression instanceof BinaryExpression) {
            return this.convert((BinaryExpression)expression);
        }
        if (expression instanceof InstanceOfExpression) {
            return this.convert((InstanceOfExpression)expression);
        }
        if (expression instanceof UnaryExpression) {
            return this.convert((UnaryExpression)expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.ConditionalExpression) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.ConditionalExpression)expression);
        }
        if (expression instanceof MessageSend) {
            return this.convert((MessageSend)expression);
        }
        if (expression instanceof Reference) {
            return this.convert((Reference)expression);
        }
        if (expression instanceof TypeReference) {
            return this.convert((TypeReference)expression);
        }
        return null;
    }

    public StringLiteral convert(ExtendedStringLiteral expression) {
        expression.computeConstant();
        StringLiteral literal = new StringLiteral(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.setLiteralValue(expression.constant.stringValue());
        literal.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        return literal;
    }

    public BooleanLiteral convert(FalseLiteral expression) {
        BooleanLiteral literal = new BooleanLiteral(this.ast);
        literal.setBooleanValue(false);
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        return literal;
    }

    public Expression convert(FieldReference reference) {
        if (reference.receiver.isSuper()) {
            SuperFieldAccess superFieldAccess = new SuperFieldAccess(this.ast);
            if (this.resolveBindings) {
                this.recordNodes(superFieldAccess, reference);
            }
            if (reference.receiver instanceof QualifiedSuperReference) {
                Name qualifier = this.convert((QualifiedSuperReference)reference.receiver);
                superFieldAccess.setQualifier(qualifier);
                if (this.resolveBindings) {
                    this.recordNodes(qualifier, reference.receiver);
                }
            }
            SimpleName simpleName = new SimpleName(this.ast);
            simpleName.internalSetIdentifier(new String(reference.token));
            int sourceStart = (int)(reference.nameSourcePosition >>> 32);
            int length = (int)(reference.nameSourcePosition & 0xFFFFFFFFFFFFFFFFL) - sourceStart + 1;
            simpleName.setSourceRange(sourceStart, length);
            superFieldAccess.setName(simpleName);
            if (this.resolveBindings) {
                this.recordNodes(simpleName, reference);
            }
            superFieldAccess.setSourceRange(reference.receiver.sourceStart, reference.sourceEnd - reference.receiver.sourceStart + 1);
            return superFieldAccess;
        }
        FieldAccess fieldAccess = new FieldAccess(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(fieldAccess, reference);
        }
        Expression receiver = this.convert(reference.receiver);
        fieldAccess.setExpression(receiver);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(reference.token));
        int sourceStart = (int)(reference.nameSourcePosition >>> 32);
        int length = (int)(reference.nameSourcePosition & 0xFFFFFFFFFFFFFFFFL) - sourceStart + 1;
        simpleName.setSourceRange(sourceStart, length);
        fieldAccess.setName(simpleName);
        if (this.resolveBindings) {
            this.recordNodes(simpleName, reference);
        }
        fieldAccess.setSourceRange(receiver.getStartPosition(), reference.sourceEnd - receiver.getStartPosition() + 1);
        return fieldAccess;
    }

    public NumberLiteral convert(FloatLiteral expression) {
        int length = expression.sourceEnd - expression.sourceStart + 1;
        int sourceStart = expression.sourceStart;
        NumberLiteral literal = new NumberLiteral(this.ast);
        literal.internalSetToken(new String(this.compilationUnitSource, sourceStart, length));
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.setSourceRange(sourceStart, length);
        this.removeLeadingAndTrailingCommentsFromLiteral(literal);
        return literal;
    }

    public Statement convert(ForeachStatement statement) {
        switch (this.ast.apiLevel) {
            case 2: {
                return this.createFakeEmptyStatement(statement);
            }
        }
        EnhancedForStatement enhancedForStatement = new EnhancedForStatement(this.ast);
        enhancedForStatement.setParameter(this.convertToSingleVariableDeclaration(statement.elementVariable));
        org.eclipse.jdt.internal.compiler.ast.Expression collection = statement.collection;
        if (collection == null) {
            return null;
        }
        enhancedForStatement.setExpression(this.convert(collection));
        Statement action = this.convert(statement.action);
        if (action == null) {
            return null;
        }
        enhancedForStatement.setBody(action);
        int start = statement.sourceStart;
        int end = statement.sourceEnd;
        enhancedForStatement.setSourceRange(start, end - start + 1);
        return enhancedForStatement;
    }

    public ForStatement convert(org.eclipse.jdt.internal.compiler.ast.ForStatement statement) {
        Statement action;
        org.eclipse.jdt.internal.compiler.ast.Statement[] increments;
        ForStatement forStatement = new ForStatement(this.ast);
        forStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        org.eclipse.jdt.internal.compiler.ast.Statement[] initializations = statement.initializations;
        if (initializations != null) {
            if (initializations[0] instanceof LocalDeclaration) {
                LocalDeclaration initialization = (LocalDeclaration)initializations[0];
                VariableDeclarationExpression variableDeclarationExpression = this.convertToVariableDeclarationExpression(initialization);
                int initializationsLength = initializations.length;
                int i = 1;
                while (i < initializationsLength) {
                    initialization = (LocalDeclaration)initializations[i];
                    variableDeclarationExpression.fragments().add(this.convertToVariableDeclarationFragment(initialization));
                    ++i;
                }
                if (initializationsLength != 1) {
                    int start = variableDeclarationExpression.getStartPosition();
                    int end = ((LocalDeclaration)initializations[initializationsLength - 1]).declarationSourceEnd;
                    variableDeclarationExpression.setSourceRange(start, end - start + 1);
                }
                forStatement.initializers().add(variableDeclarationExpression);
            } else {
                int initializationsLength = initializations.length;
                int i = 0;
                while (i < initializationsLength) {
                    Expression initializer = this.convertToExpression(initializations[i]);
                    if (initializer != null) {
                        forStatement.initializers().add(initializer);
                    } else {
                        forStatement.setFlags(forStatement.getFlags() | 1);
                    }
                    ++i;
                }
            }
        }
        if (statement.condition != null) {
            forStatement.setExpression(this.convert(statement.condition));
        }
        if ((increments = statement.increments) != null) {
            int incrementsLength = increments.length;
            int i = 0;
            while (i < incrementsLength) {
                forStatement.updaters().add(this.convertToExpression(increments[i]));
                ++i;
            }
        }
        if ((action = this.convert(statement.action)) == null) {
            return null;
        }
        forStatement.setBody(action);
        return forStatement;
    }

    public IfStatement convert(org.eclipse.jdt.internal.compiler.ast.IfStatement statement) {
        Statement elseStatement;
        IfStatement ifStatement = new IfStatement(this.ast);
        ifStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        ifStatement.setExpression(this.convert(statement.condition));
        Statement thenStatement = this.convert(statement.thenStatement);
        if (thenStatement == null) {
            return null;
        }
        ifStatement.setThenStatement(thenStatement);
        org.eclipse.jdt.internal.compiler.ast.Statement statement2 = statement.elseStatement;
        if (statement2 != null && (elseStatement = this.convert(statement2)) != null) {
            ifStatement.setElseStatement(elseStatement);
        }
        return ifStatement;
    }

    public InstanceofExpression convert(InstanceOfExpression expression) {
        InstanceofExpression instanceOfExpression = new InstanceofExpression(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(instanceOfExpression, expression);
        }
        Expression leftExpression = this.convert(expression.expression);
        instanceOfExpression.setLeftOperand(leftExpression);
        Type convertType = this.convertType(expression.type);
        instanceOfExpression.setRightOperand(convertType);
        int startPosition = leftExpression.getStartPosition();
        int sourceEnd = convertType.getStartPosition() + convertType.getLength() - 1;
        instanceOfExpression.setSourceRange(startPosition, sourceEnd - startPosition + 1);
        return instanceOfExpression;
    }

    public NumberLiteral convert(IntLiteral expression) {
        int length = expression.sourceEnd - expression.sourceStart + 1;
        int sourceStart = expression.sourceStart;
        NumberLiteral literal = new NumberLiteral(this.ast);
        literal.internalSetToken(new String(this.compilationUnitSource, sourceStart, length));
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.setSourceRange(sourceStart, length);
        this.removeLeadingAndTrailingCommentsFromLiteral(literal);
        return literal;
    }

    public NumberLiteral convert(IntLiteralMinValue expression) {
        int length = expression.sourceEnd - expression.sourceStart + 1;
        int sourceStart = expression.sourceStart;
        NumberLiteral literal = new NumberLiteral(this.ast);
        literal.internalSetToken(new String(this.compilationUnitSource, sourceStart, length));
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.setSourceRange(sourceStart, length);
        this.removeLeadingAndTrailingCommentsFromLiteral(literal);
        return literal;
    }

    public void convert(org.eclipse.jdt.internal.compiler.ast.Javadoc javadoc, BodyDeclaration bodyDeclaration) {
        if (bodyDeclaration.getJavadoc() == null && javadoc != null) {
            Comment comment;
            if (this.commentMapper == null || !this.commentMapper.hasSameTable(this.commentsTable)) {
                this.commentMapper = new DefaultCommentMapper(this.commentsTable);
            }
            if ((comment = this.commentMapper.getComment(javadoc.sourceStart)) != null && comment.isDocComment() && comment.getParent() == null) {
                Javadoc docComment = (Javadoc)comment;
                if (this.resolveBindings) {
                    this.recordNodes(docComment, javadoc);
                    ListIterator tags = docComment.tags().listIterator();
                    while (tags.hasNext()) {
                        this.recordNodes(javadoc, (TagElement)tags.next());
                    }
                }
                bodyDeclaration.setJavadoc(docComment);
            }
        }
    }

    public void convert(org.eclipse.jdt.internal.compiler.ast.Javadoc javadoc, PackageDeclaration packageDeclaration) {
        switch (this.ast.apiLevel) {
            case 2: {
                return;
            }
        }
        if (packageDeclaration.getJavadoc() == null && javadoc != null) {
            Comment comment;
            if (this.commentMapper == null || !this.commentMapper.hasSameTable(this.commentsTable)) {
                this.commentMapper = new DefaultCommentMapper(this.commentsTable);
            }
            if ((comment = this.commentMapper.getComment(javadoc.sourceStart)) != null && comment.isDocComment() && comment.getParent() == null) {
                Javadoc docComment = (Javadoc)comment;
                if (this.resolveBindings) {
                    this.recordNodes(docComment, javadoc);
                    ListIterator tags = docComment.tags().listIterator();
                    while (tags.hasNext()) {
                        this.recordNodes(javadoc, (TagElement)tags.next());
                    }
                }
                packageDeclaration.setJavadoc(docComment);
            }
        }
    }

    public LabeledStatement convert(org.eclipse.jdt.internal.compiler.ast.LabeledStatement statement) {
        LabeledStatement labeledStatement = new LabeledStatement(this.ast);
        int sourceStart = statement.sourceStart;
        labeledStatement.setSourceRange(sourceStart, statement.sourceEnd - sourceStart + 1);
        Statement body = this.convert(statement.statement);
        if (body == null) {
            return null;
        }
        labeledStatement.setBody(body);
        SimpleName name = new SimpleName(this.ast);
        name.internalSetIdentifier(new String(statement.label));
        name.setSourceRange(sourceStart, statement.labelEnd - sourceStart + 1);
        labeledStatement.setLabel(name);
        return labeledStatement;
    }

    public NumberLiteral convert(LongLiteral expression) {
        int length = expression.sourceEnd - expression.sourceStart + 1;
        int sourceStart = expression.sourceStart;
        NumberLiteral literal = new NumberLiteral(this.ast);
        literal.internalSetToken(new String(this.compilationUnitSource, sourceStart, length));
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.setSourceRange(sourceStart, length);
        this.removeLeadingAndTrailingCommentsFromLiteral(literal);
        return literal;
    }

    public NumberLiteral convert(LongLiteralMinValue expression) {
        int length = expression.sourceEnd - expression.sourceStart + 1;
        int sourceStart = expression.sourceStart;
        NumberLiteral literal = new NumberLiteral(this.ast);
        literal.internalSetToken(new String(this.compilationUnitSource, sourceStart, length));
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.setSourceRange(sourceStart, length);
        this.removeLeadingAndTrailingCommentsFromLiteral(literal);
        return literal;
    }

    public Expression convert(MessageSend expression) {
        Expression expr;
        int sourceStart = expression.sourceStart;
        if (expression.isSuperAccess()) {
            TypeReference[] typeArguments;
            int i;
            org.eclipse.jdt.internal.compiler.ast.Expression[] arguments;
            SuperMethodInvocation superMethodInvocation = new SuperMethodInvocation(this.ast);
            if (this.resolveBindings) {
                this.recordNodes(superMethodInvocation, expression);
            }
            SimpleName name = new SimpleName(this.ast);
            name.internalSetIdentifier(new String(expression.selector));
            int nameSourceStart = (int)(expression.nameSourcePosition >>> 32);
            int nameSourceLength = (int)expression.nameSourcePosition - nameSourceStart + 1;
            name.setSourceRange(nameSourceStart, nameSourceLength);
            if (this.resolveBindings) {
                this.recordNodes(name, expression);
            }
            superMethodInvocation.setName(name);
            if (expression.receiver instanceof QualifiedSuperReference) {
                Name qualifier = this.convert((QualifiedSuperReference)expression.receiver);
                superMethodInvocation.setQualifier(qualifier);
                if (this.resolveBindings) {
                    this.recordNodes(qualifier, expression.receiver);
                }
                if (qualifier != null) {
                    sourceStart = qualifier.getStartPosition();
                }
            }
            if ((arguments = expression.arguments) != null) {
                int argumentsLength = arguments.length;
                i = 0;
                while (i < argumentsLength) {
                    Expression expri = this.convert(arguments[i]);
                    if (this.resolveBindings) {
                        this.recordNodes(expri, arguments[i]);
                    }
                    superMethodInvocation.arguments().add(expri);
                    ++i;
                }
            }
            if ((typeArguments = expression.typeArguments) != null) {
                switch (this.ast.apiLevel) {
                    case 2: {
                        superMethodInvocation.setFlags(superMethodInvocation.getFlags() | 1);
                        break;
                    }
                    default: {
                        i = 0;
                        int max = typeArguments.length;
                        while (i < max) {
                            superMethodInvocation.typeArguments().add(this.convertType(typeArguments[i]));
                            ++i;
                        }
                        break block0;
                    }
                }
            }
            expr = superMethodInvocation;
        } else {
            TypeReference[] typeArguments;
            org.eclipse.jdt.internal.compiler.ast.Expression[] arguments;
            MethodInvocation methodInvocation = new MethodInvocation(this.ast);
            if (this.resolveBindings) {
                this.recordNodes(methodInvocation, expression);
            }
            SimpleName name = new SimpleName(this.ast);
            name.internalSetIdentifier(new String(expression.selector));
            int nameSourceStart = (int)(expression.nameSourcePosition >>> 32);
            int nameSourceLength = (int)expression.nameSourcePosition - nameSourceStart + 1;
            name.setSourceRange(nameSourceStart, nameSourceLength);
            methodInvocation.setName(name);
            if (this.resolveBindings) {
                this.recordNodes(name, expression);
            }
            if ((arguments = expression.arguments) != null) {
                int argumentsLength = arguments.length;
                int i = 0;
                while (i < argumentsLength) {
                    Expression expri = this.convert(arguments[i]);
                    if (this.resolveBindings) {
                        this.recordNodes(expri, arguments[i]);
                    }
                    methodInvocation.arguments().add(expri);
                    ++i;
                }
            }
            Expression qualifier = null;
            org.eclipse.jdt.internal.compiler.ast.Expression receiver = expression.receiver;
            qualifier = receiver instanceof MessageSend ? ((receiver.bits & 0x1FE00000) != 0 ? this.convertToParenthesizedExpression(receiver) : this.convert((MessageSend)receiver)) : this.convert(receiver);
            if (qualifier instanceof Name && this.resolveBindings) {
                this.recordNodes(qualifier, receiver);
            }
            methodInvocation.setExpression(qualifier);
            if (qualifier != null) {
                sourceStart = qualifier.getStartPosition();
            }
            if ((typeArguments = expression.typeArguments) != null) {
                switch (this.ast.apiLevel) {
                    case 2: {
                        methodInvocation.setFlags(methodInvocation.getFlags() | 1);
                        break;
                    }
                    default: {
                        int i = 0;
                        int max = typeArguments.length;
                        while (i < max) {
                            methodInvocation.typeArguments().add(this.convertType(typeArguments[i]));
                            ++i;
                        }
                        break block3;
                    }
                }
            }
            expr = methodInvocation;
        }
        expr.setSourceRange(sourceStart, expression.sourceEnd - sourceStart + 1);
        this.removeTrailingCommentFromExpressionEndingWithAParen(expr);
        return expr;
    }

    public MarkerAnnotation convert(org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation annotation) {
        MarkerAnnotation markerAnnotation = new MarkerAnnotation(this.ast);
        this.setTypeNameForAnnotation(annotation, markerAnnotation);
        int start = annotation.sourceStart;
        int end = annotation.declarationSourceEnd;
        markerAnnotation.setSourceRange(start, end - start + 1);
        if (this.resolveBindings) {
            this.recordNodes(markerAnnotation, annotation);
            markerAnnotation.resolveAnnotationBinding();
        }
        return markerAnnotation;
    }

    public MemberValuePair convert(org.eclipse.jdt.internal.compiler.ast.MemberValuePair memberValuePair) {
        MemberValuePair pair = new MemberValuePair(this.ast);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(memberValuePair.name));
        int start = memberValuePair.sourceStart;
        int end = memberValuePair.sourceEnd;
        simpleName.setSourceRange(start, end - start + 1);
        pair.setName(simpleName);
        Expression value = this.convert(memberValuePair.value);
        pair.setValue(value);
        start = memberValuePair.sourceStart;
        end = value.getStartPosition() + value.getLength() - 1;
        pair.setSourceRange(start, end - start + 1);
        if (memberValuePair.value instanceof SingleNameReference && ((SingleNameReference)memberValuePair.value).token == RecoveryScanner.FAKE_IDENTIFIER) {
            pair.setFlags(pair.getFlags() | 8);
        }
        if (this.resolveBindings) {
            this.recordNodes(simpleName, memberValuePair);
            this.recordNodes(pair, memberValuePair);
        }
        return pair;
    }

    public Name convert(NameReference reference) {
        if (reference instanceof QualifiedNameReference) {
            return this.convert((QualifiedNameReference)reference);
        }
        return this.convert((SingleNameReference)reference);
    }

    public InfixExpression convert(StringLiteralConcatenation expression) {
        expression.computeConstant();
        InfixExpression infixExpression = new InfixExpression(this.ast);
        infixExpression.setOperator(InfixExpression.Operator.PLUS);
        org.eclipse.jdt.internal.compiler.ast.Expression[] stringLiterals = expression.literals;
        infixExpression.setLeftOperand(this.convert(stringLiterals[0]));
        infixExpression.setRightOperand(this.convert(stringLiterals[1]));
        int i = 2;
        while (i < expression.counter) {
            infixExpression.extendedOperands().add(this.convert(stringLiterals[i]));
            ++i;
        }
        if (this.resolveBindings) {
            this.recordNodes(infixExpression, expression);
        }
        infixExpression.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        return infixExpression;
    }

    public NormalAnnotation convert(org.eclipse.jdt.internal.compiler.ast.NormalAnnotation annotation) {
        NormalAnnotation normalAnnotation = new NormalAnnotation(this.ast);
        this.setTypeNameForAnnotation(annotation, normalAnnotation);
        int start = annotation.sourceStart;
        int end = annotation.declarationSourceEnd;
        org.eclipse.jdt.internal.compiler.ast.MemberValuePair[] memberValuePairs = annotation.memberValuePairs;
        if (memberValuePairs != null) {
            int i = 0;
            int max = memberValuePairs.length;
            while (i < max) {
                MemberValuePair memberValuePair = this.convert(memberValuePairs[i]);
                int memberValuePairEnd = memberValuePair.getStartPosition() + memberValuePair.getLength() - 1;
                if (end == memberValuePairEnd) {
                    normalAnnotation.setFlags(normalAnnotation.getFlags() | 8);
                }
                normalAnnotation.values().add(memberValuePair);
                ++i;
            }
        }
        normalAnnotation.setSourceRange(start, end - start + 1);
        if (this.resolveBindings) {
            this.recordNodes(normalAnnotation, annotation);
            normalAnnotation.resolveAnnotationBinding();
        }
        return normalAnnotation;
    }

    public NullLiteral convert(org.eclipse.jdt.internal.compiler.ast.NullLiteral expression) {
        NullLiteral literal = new NullLiteral(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        return literal;
    }

    public Expression convert(OR_OR_Expression expression) {
        InfixExpression infixExpression = new InfixExpression(this.ast);
        infixExpression.setOperator(InfixExpression.Operator.CONDITIONAL_OR);
        if (this.resolveBindings) {
            this.recordNodes(infixExpression, expression);
        }
        int expressionOperatorID = (expression.bits & 0xFC0) >> 6;
        if (expression.left instanceof BinaryExpression && (expression.left.bits & 0x1FE00000) == 0) {
            infixExpression.extendedOperands().add(this.convert(expression.right));
            org.eclipse.jdt.internal.compiler.ast.Expression leftOperand = expression.left;
            org.eclipse.jdt.internal.compiler.ast.Expression rightOperand = null;
            do {
                rightOperand = ((BinaryExpression)leftOperand).right;
                if ((leftOperand.bits & 0xFC0) >> 6 != expressionOperatorID && (leftOperand.bits & 0x1FE00000) == 0 || rightOperand instanceof BinaryExpression && (rightOperand.bits & 0xFC0) >> 6 != expressionOperatorID && (rightOperand.bits & 0x1FE00000) == 0) {
                    List extendedOperands = infixExpression.extendedOperands();
                    InfixExpression temp = new InfixExpression(this.ast);
                    if (this.resolveBindings) {
                        this.recordNodes(temp, expression);
                    }
                    temp.setOperator(this.getOperatorFor(expressionOperatorID));
                    Expression leftSide = this.convert(leftOperand);
                    temp.setLeftOperand(leftSide);
                    temp.setSourceRange(leftSide.getStartPosition(), leftSide.getLength());
                    int size = extendedOperands.size();
                    int i = 0;
                    while (i < size - 1) {
                        InfixExpression expr = temp;
                        temp = new InfixExpression(this.ast);
                        if (this.resolveBindings) {
                            this.recordNodes(temp, expression);
                        }
                        temp.setLeftOperand(expr);
                        temp.setOperator(this.getOperatorFor(expressionOperatorID));
                        temp.setSourceRange(expr.getStartPosition(), expr.getLength());
                        ++i;
                    }
                    infixExpression = temp;
                    i = 0;
                    while (i < size) {
                        Expression extendedOperand = (Expression)extendedOperands.remove(size - 1 - i);
                        temp.setRightOperand(extendedOperand);
                        int startPosition = temp.getLeftOperand().getStartPosition();
                        temp.setSourceRange(startPosition, extendedOperand.getStartPosition() + extendedOperand.getLength() - startPosition);
                        if (temp.getLeftOperand().getNodeType() == 27) {
                            temp = (InfixExpression)temp.getLeftOperand();
                        }
                        ++i;
                    }
                    int startPosition = infixExpression.getLeftOperand().getStartPosition();
                    infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
                    if (this.resolveBindings) {
                        this.recordNodes(infixExpression, expression);
                    }
                    return infixExpression;
                }
                infixExpression.extendedOperands().add(0, this.convert(rightOperand));
            } while ((leftOperand = ((BinaryExpression)leftOperand).left) instanceof BinaryExpression && (leftOperand.bits & 0x1FE00000) == 0);
            Expression leftExpression = this.convert(leftOperand);
            infixExpression.setLeftOperand(leftExpression);
            infixExpression.setRightOperand((Expression)infixExpression.extendedOperands().remove(0));
            int startPosition = leftExpression.getStartPosition();
            infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
            return infixExpression;
        }
        Expression leftExpression = this.convert(expression.left);
        infixExpression.setLeftOperand(leftExpression);
        infixExpression.setRightOperand(this.convert(expression.right));
        infixExpression.setOperator(InfixExpression.Operator.CONDITIONAL_OR);
        int startPosition = leftExpression.getStartPosition();
        infixExpression.setSourceRange(startPosition, expression.sourceEnd - startPosition + 1);
        return infixExpression;
    }

    public PostfixExpression convert(org.eclipse.jdt.internal.compiler.ast.PostfixExpression expression) {
        PostfixExpression postfixExpression = new PostfixExpression(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(postfixExpression, expression);
        }
        postfixExpression.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        postfixExpression.setOperand(this.convert(expression.lhs));
        switch (expression.operator) {
            case 14: {
                postfixExpression.setOperator(PostfixExpression.Operator.INCREMENT);
                break;
            }
            case 13: {
                postfixExpression.setOperator(PostfixExpression.Operator.DECREMENT);
            }
        }
        return postfixExpression;
    }

    public PrefixExpression convert(org.eclipse.jdt.internal.compiler.ast.PrefixExpression expression) {
        PrefixExpression prefixExpression = new PrefixExpression(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(prefixExpression, expression);
        }
        prefixExpression.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        prefixExpression.setOperand(this.convert(expression.lhs));
        switch (expression.operator) {
            case 14: {
                prefixExpression.setOperator(PrefixExpression.Operator.INCREMENT);
                break;
            }
            case 13: {
                prefixExpression.setOperator(PrefixExpression.Operator.DECREMENT);
            }
        }
        return prefixExpression;
    }

    public Expression convert(QualifiedAllocationExpression allocation) {
        ClassInstanceCreation classInstanceCreation = new ClassInstanceCreation(this.ast);
        if (allocation.enclosingInstance != null) {
            classInstanceCreation.setExpression(this.convert(allocation.enclosingInstance));
        }
        switch (this.ast.apiLevel) {
            case 2: {
                classInstanceCreation.internalSetName(this.convert(allocation.type));
                break;
            }
            default: {
                classInstanceCreation.setType(this.convertType(allocation.type));
            }
        }
        org.eclipse.jdt.internal.compiler.ast.Expression[] arguments = allocation.arguments;
        if (arguments != null) {
            int length = arguments.length;
            int i = 0;
            while (i < length) {
                Expression argument = this.convert(arguments[i]);
                if (this.resolveBindings) {
                    this.recordNodes(argument, arguments[i]);
                }
                classInstanceCreation.arguments().add(argument);
                ++i;
            }
        }
        if (allocation.typeArguments != null) {
            switch (this.ast.apiLevel) {
                case 2: {
                    classInstanceCreation.setFlags(classInstanceCreation.getFlags() | 1);
                    break;
                }
                default: {
                    int i = 0;
                    int max = allocation.typeArguments.length;
                    while (i < max) {
                        classInstanceCreation.typeArguments().add(this.convertType(allocation.typeArguments[i]));
                        ++i;
                    }
                    break block3;
                }
            }
        }
        if (allocation.anonymousType != null) {
            int declarationSourceStart = allocation.sourceStart;
            classInstanceCreation.setSourceRange(declarationSourceStart, allocation.anonymousType.bodyEnd - declarationSourceStart + 1);
            AnonymousClassDeclaration anonymousClassDeclaration = new AnonymousClassDeclaration(this.ast);
            int start = this.retrieveStartBlockPosition(allocation.anonymousType.sourceEnd, allocation.anonymousType.bodyEnd);
            anonymousClassDeclaration.setSourceRange(start, allocation.anonymousType.bodyEnd - start + 1);
            classInstanceCreation.setAnonymousClassDeclaration(anonymousClassDeclaration);
            this.buildBodyDeclarations(allocation.anonymousType, anonymousClassDeclaration);
            if (this.resolveBindings) {
                this.recordNodes(classInstanceCreation, allocation.anonymousType);
                this.recordNodes(anonymousClassDeclaration, allocation.anonymousType);
                anonymousClassDeclaration.resolveBinding();
            }
            return classInstanceCreation;
        }
        int start = allocation.sourceStart;
        classInstanceCreation.setSourceRange(start, allocation.sourceEnd - start + 1);
        if (this.resolveBindings) {
            this.recordNodes(classInstanceCreation, allocation);
        }
        this.removeTrailingCommentFromExpressionEndingWithAParen(classInstanceCreation);
        return classInstanceCreation;
    }

    public Name convert(QualifiedNameReference nameReference) {
        return this.setQualifiedNameNameAndSourceRanges(nameReference.tokens, nameReference.sourcePositions, nameReference);
    }

    public Name convert(QualifiedSuperReference reference) {
        return this.convert(reference.qualification);
    }

    public ThisExpression convert(QualifiedThisReference reference) {
        ThisExpression thisExpression = new ThisExpression(this.ast);
        thisExpression.setSourceRange(reference.sourceStart, reference.sourceEnd - reference.sourceStart + 1);
        thisExpression.setQualifier(this.convert(reference.qualification));
        if (this.resolveBindings) {
            this.recordNodes(thisExpression, reference);
            this.recordPendingThisExpressionScopeResolution(thisExpression);
        }
        return thisExpression;
    }

    public Expression convert(Reference reference) {
        if (reference instanceof NameReference) {
            return this.convert((NameReference)reference);
        }
        if (reference instanceof ThisReference) {
            return this.convert((ThisReference)reference);
        }
        if (reference instanceof ArrayReference) {
            return this.convert((ArrayReference)reference);
        }
        if (reference instanceof FieldReference) {
            return this.convert((FieldReference)reference);
        }
        return null;
    }

    public ReturnStatement convert(org.eclipse.jdt.internal.compiler.ast.ReturnStatement statement) {
        ReturnStatement returnStatement = new ReturnStatement(this.ast);
        returnStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        if (statement.expression != null) {
            returnStatement.setExpression(this.convert(statement.expression));
        }
        return returnStatement;
    }

    public SingleMemberAnnotation convert(org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation annotation) {
        SingleMemberAnnotation singleMemberAnnotation = new SingleMemberAnnotation(this.ast);
        this.setTypeNameForAnnotation(annotation, singleMemberAnnotation);
        singleMemberAnnotation.setValue(this.convert(annotation.memberValue));
        int start = annotation.sourceStart;
        int end = annotation.declarationSourceEnd;
        singleMemberAnnotation.setSourceRange(start, end - start + 1);
        if (this.resolveBindings) {
            this.recordNodes(singleMemberAnnotation, annotation);
            singleMemberAnnotation.resolveAnnotationBinding();
        }
        return singleMemberAnnotation;
    }

    public SimpleName convert(SingleNameReference nameReference) {
        SimpleName name = new SimpleName(this.ast);
        name.internalSetIdentifier(new String(nameReference.token));
        if (this.resolveBindings) {
            this.recordNodes(name, nameReference);
        }
        name.setSourceRange(nameReference.sourceStart, nameReference.sourceEnd - nameReference.sourceStart + 1);
        return name;
    }

    public Statement convert(org.eclipse.jdt.internal.compiler.ast.Statement statement) {
        if (statement instanceof ForeachStatement) {
            return this.convert((ForeachStatement)statement);
        }
        if (statement instanceof LocalDeclaration) {
            LocalDeclaration localDeclaration = (LocalDeclaration)statement;
            return this.convertToVariableDeclarationStatement(localDeclaration);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.AssertStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.AssertStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.Block) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.Block)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.BreakStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.BreakStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.ContinueStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.ContinueStatement)statement);
        }
        if (statement instanceof CaseStatement) {
            return this.convert((CaseStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.DoStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.DoStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.EmptyStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.EmptyStatement)statement);
        }
        if (statement instanceof ExplicitConstructorCall) {
            return this.convert((ExplicitConstructorCall)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.ForStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.ForStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.IfStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.IfStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.LabeledStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.LabeledStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.ReturnStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.ReturnStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.SwitchStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.SwitchStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.ThrowStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.ThrowStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.TryStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.TryStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
            ASTNode result = this.convert((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)statement);
            if (result == null) {
                return this.createFakeEmptyStatement(statement);
            }
            TypeDeclaration typeDeclaration = (TypeDeclaration)result;
            TypeDeclarationStatement typeDeclarationStatement = new TypeDeclarationStatement(this.ast);
            typeDeclarationStatement.setDeclaration(typeDeclaration);
            switch (this.ast.apiLevel) {
                case 2: {
                    TypeDeclaration typeDecl = typeDeclarationStatement.internalGetTypeDeclaration();
                    typeDeclarationStatement.setSourceRange(typeDecl.getStartPosition(), typeDecl.getLength());
                    break;
                }
                default: {
                    AbstractTypeDeclaration typeDeclAST3 = typeDeclarationStatement.getDeclaration();
                    typeDeclarationStatement.setSourceRange(typeDeclAST3.getStartPosition(), typeDeclAST3.getLength());
                }
            }
            return typeDeclarationStatement;
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.WhileStatement) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.WhileStatement)statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.Expression) {
            org.eclipse.jdt.internal.compiler.ast.Expression statement2 = (org.eclipse.jdt.internal.compiler.ast.Expression)statement;
            Expression expr = this.convert(statement2);
            ExpressionStatement stmt = new ExpressionStatement(this.ast);
            stmt.setExpression(expr);
            int sourceStart = expr.getStartPosition();
            int sourceEnd = statement2.statementEnd;
            stmt.setSourceRange(sourceStart, sourceEnd - sourceStart + 1);
            return stmt;
        }
        return this.createFakeEmptyStatement(statement);
    }

    public Expression convert(org.eclipse.jdt.internal.compiler.ast.StringLiteral expression) {
        if (expression instanceof StringLiteralConcatenation) {
            return this.convert((StringLiteralConcatenation)expression);
        }
        int length = expression.sourceEnd - expression.sourceStart + 1;
        int sourceStart = expression.sourceStart;
        StringLiteral literal = new StringLiteral(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.internalSetEscapedValue(new String(this.compilationUnitSource, sourceStart, length));
        literal.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        return literal;
    }

    public SwitchStatement convert(org.eclipse.jdt.internal.compiler.ast.SwitchStatement statement) {
        SwitchStatement switchStatement = new SwitchStatement(this.ast);
        switchStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        switchStatement.setExpression(this.convert(statement.expression));
        org.eclipse.jdt.internal.compiler.ast.Statement[] statements = statement.statements;
        if (statements != null) {
            int statementsLength = statements.length;
            int i = 0;
            while (i < statementsLength) {
                if (statements[i] instanceof LocalDeclaration) {
                    this.checkAndAddMultipleLocalDeclaration(statements, i, switchStatement.statements());
                } else {
                    Statement currentStatement = this.convert(statements[i]);
                    if (currentStatement != null) {
                        switchStatement.statements().add(currentStatement);
                    }
                }
                ++i;
            }
        }
        return switchStatement;
    }

    public SynchronizedStatement convert(org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement statement) {
        SynchronizedStatement synchronizedStatement = new SynchronizedStatement(this.ast);
        synchronizedStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        synchronizedStatement.setBody(this.convert(statement.block));
        synchronizedStatement.setExpression(this.convert(statement.expression));
        return synchronizedStatement;
    }

    public Expression convert(ThisReference reference) {
        if (reference.isImplicitThis()) {
            return null;
        }
        if (reference instanceof QualifiedSuperReference) {
            return this.convert((QualifiedSuperReference)reference);
        }
        if (reference instanceof QualifiedThisReference) {
            return this.convert((QualifiedThisReference)reference);
        }
        ThisExpression thisExpression = new ThisExpression(this.ast);
        thisExpression.setSourceRange(reference.sourceStart, reference.sourceEnd - reference.sourceStart + 1);
        if (this.resolveBindings) {
            this.recordNodes(thisExpression, reference);
            this.recordPendingThisExpressionScopeResolution(thisExpression);
        }
        return thisExpression;
    }

    public ThrowStatement convert(org.eclipse.jdt.internal.compiler.ast.ThrowStatement statement) {
        ThrowStatement throwStatement = new ThrowStatement(this.ast);
        throwStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        throwStatement.setExpression(this.convert(statement.exception));
        return throwStatement;
    }

    public BooleanLiteral convert(TrueLiteral expression) {
        BooleanLiteral literal = new BooleanLiteral(this.ast);
        literal.setBooleanValue(true);
        if (this.resolveBindings) {
            this.recordNodes(literal, expression);
        }
        literal.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        return literal;
    }

    public TryStatement convert(org.eclipse.jdt.internal.compiler.ast.TryStatement statement) {
        int start;
        TryStatement tryStatement = new TryStatement(this.ast);
        tryStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        LocalDeclaration[] localDeclarations = statement.resources;
        int resourcesLength = localDeclarations.length;
        if (resourcesLength > 0) {
            switch (this.ast.apiLevel) {
                case 2: 
                case 3: {
                    tryStatement.setFlags(tryStatement.getFlags() | 1);
                    break;
                }
                default: {
                    int i = 0;
                    while (i < resourcesLength) {
                        LocalDeclaration localDeclaration = localDeclarations[i];
                        VariableDeclarationExpression variableDeclarationExpression = this.convertToVariableDeclarationExpression(localDeclaration);
                        start = variableDeclarationExpression.getStartPosition();
                        int end = localDeclaration.declarationEnd;
                        variableDeclarationExpression.setSourceRange(start, end - start + 1);
                        tryStatement.resources().add(variableDeclarationExpression);
                        ++i;
                    }
                    break block0;
                }
            }
        }
        tryStatement.setBody(this.convert(statement.tryBlock));
        Argument[] catchArguments = statement.catchArguments;
        if (catchArguments != null) {
            int catchArgumentsLength = catchArguments.length;
            org.eclipse.jdt.internal.compiler.ast.Block[] catchBlocks = statement.catchBlocks;
            start = statement.tryBlock.sourceEnd;
            int i = 0;
            while (i < catchArgumentsLength) {
                CatchClause catchClause = new CatchClause(this.ast);
                int catchClauseSourceStart = this.retrieveStartingCatchPosition(start, catchArguments[i].sourceStart);
                catchClause.setSourceRange(catchClauseSourceStart, catchBlocks[i].sourceEnd - catchClauseSourceStart + 1);
                catchClause.setBody(this.convert(catchBlocks[i]));
                catchClause.setException(this.convert(catchArguments[i]));
                tryStatement.catchClauses().add(catchClause);
                start = catchBlocks[i].sourceEnd;
                ++i;
            }
        }
        if (statement.finallyBlock != null) {
            tryStatement.setFinally(this.convert(statement.finallyBlock));
        }
        return tryStatement;
    }

    public ASTNode convert(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        org.eclipse.jdt.internal.compiler.ast.TypeParameter[] typeParameters;
        TypeReference[] superInterfaces;
        int kind = org.eclipse.jdt.internal.compiler.ast.TypeDeclaration.kind(typeDeclaration.modifiers);
        switch (kind) {
            case 3: {
                if (this.ast.apiLevel == 2) {
                    return null;
                }
                return this.convertToEnumDeclaration(typeDeclaration);
            }
            case 4: {
                if (this.ast.apiLevel == 2) {
                    return null;
                }
                return this.convertToAnnotationDeclaration(typeDeclaration);
            }
        }
        this.checkCanceled();
        TypeDeclaration typeDecl = new TypeDeclaration(this.ast);
        if (typeDeclaration.modifiersSourceStart != -1) {
            this.setModifiers(typeDecl, typeDeclaration);
        }
        boolean isInterface = kind == 2;
        typeDecl.setInterface(isInterface);
        SimpleName typeName = new SimpleName(this.ast);
        typeName.internalSetIdentifier(new String(typeDeclaration.name));
        typeName.setSourceRange(typeDeclaration.sourceStart, typeDeclaration.sourceEnd - typeDeclaration.sourceStart + 1);
        typeDecl.setName(typeName);
        typeDecl.setSourceRange(typeDeclaration.declarationSourceStart, typeDeclaration.bodyEnd - typeDeclaration.declarationSourceStart + 1);
        if (typeDeclaration.superclass != null) {
            switch (this.ast.apiLevel) {
                case 2: {
                    typeDecl.internalSetSuperclass(this.convert(typeDeclaration.superclass));
                    break;
                }
                default: {
                    typeDecl.setSuperclassType(this.convertType(typeDeclaration.superclass));
                }
            }
        }
        if ((superInterfaces = typeDeclaration.superInterfaces) != null) {
            switch (this.ast.apiLevel) {
                case 2: {
                    int index = 0;
                    int length = superInterfaces.length;
                    while (index < length) {
                        typeDecl.internalSuperInterfaces().add(this.convert(superInterfaces[index]));
                        ++index;
                    }
                    break;
                }
                default: {
                    int index = 0;
                    int length = superInterfaces.length;
                    while (index < length) {
                        typeDecl.superInterfaceTypes().add(this.convertType(superInterfaces[index]));
                        ++index;
                    }
                    break block7;
                }
            }
        }
        if ((typeParameters = typeDeclaration.typeParameters) != null) {
            switch (this.ast.apiLevel) {
                case 2: {
                    typeDecl.setFlags(typeDecl.getFlags() | 1);
                    break;
                }
                default: {
                    int index = 0;
                    int length = typeParameters.length;
                    while (index < length) {
                        typeDecl.typeParameters().add(this.convert(typeParameters[index]));
                        ++index;
                    }
                    break block10;
                }
            }
        }
        this.buildBodyDeclarations(typeDeclaration, typeDecl, isInterface);
        if (this.resolveBindings) {
            this.recordNodes(typeDecl, typeDeclaration);
            this.recordNodes(typeName, typeDeclaration);
            typeDecl.resolveBinding();
        }
        return typeDecl;
    }

    public TypeParameter convert(org.eclipse.jdt.internal.compiler.ast.TypeParameter typeParameter) {
        TypeReference[] bounds;
        TypeParameter typeParameter2 = new TypeParameter(this.ast);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(typeParameter.name));
        int start = typeParameter.sourceStart;
        int end = typeParameter.sourceEnd;
        simpleName.setSourceRange(start, end - start + 1);
        typeParameter2.setName(simpleName);
        TypeReference superType = typeParameter.type;
        end = typeParameter.declarationSourceEnd;
        if (superType != null) {
            Type type = this.convertType(superType);
            typeParameter2.typeBounds().add(type);
            end = type.getStartPosition() + type.getLength() - 1;
        }
        if ((bounds = typeParameter.bounds) != null) {
            Type type = null;
            int index = 0;
            int length = bounds.length;
            while (index < length) {
                type = this.convertType(bounds[index]);
                typeParameter2.typeBounds().add(type);
                end = type.getStartPosition() + type.getLength() - 1;
                ++index;
            }
        }
        start = typeParameter.declarationSourceStart;
        end = this.retrieveClosingAngleBracketPosition(end);
        typeParameter2.setSourceRange(start, end - start + 1);
        if (this.resolveBindings) {
            this.recordName(simpleName, typeParameter);
            this.recordNodes(typeParameter2, typeParameter);
            typeParameter2.resolveBinding();
        }
        return typeParameter2;
    }

    public Name convert(TypeReference typeReference) {
        char[][] typeName = typeReference.getTypeName();
        int length = typeName.length;
        if (length > 1) {
            QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference)typeReference;
            long[] positions = qualifiedTypeReference.sourcePositions;
            return this.setQualifiedNameNameAndSourceRanges(typeName, positions, typeReference);
        }
        SimpleName name = new SimpleName(this.ast);
        name.internalSetIdentifier(new String(typeName[0]));
        name.setSourceRange(typeReference.sourceStart, typeReference.sourceEnd - typeReference.sourceStart + 1);
        name.index = 1;
        if (this.resolveBindings) {
            this.recordNodes(name, typeReference);
        }
        return name;
    }

    public PrefixExpression convert(UnaryExpression expression) {
        PrefixExpression prefixExpression = new PrefixExpression(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(prefixExpression, expression);
        }
        prefixExpression.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        prefixExpression.setOperand(this.convert(expression.expression));
        switch ((expression.bits & 0xFC0) >> 6) {
            case 14: {
                prefixExpression.setOperator(PrefixExpression.Operator.PLUS);
                break;
            }
            case 13: {
                prefixExpression.setOperator(PrefixExpression.Operator.MINUS);
                break;
            }
            case 11: {
                prefixExpression.setOperator(PrefixExpression.Operator.NOT);
                break;
            }
            case 12: {
                prefixExpression.setOperator(PrefixExpression.Operator.COMPLEMENT);
            }
        }
        return prefixExpression;
    }

    public WhileStatement convert(org.eclipse.jdt.internal.compiler.ast.WhileStatement statement) {
        WhileStatement whileStatement = new WhileStatement(this.ast);
        whileStatement.setSourceRange(statement.sourceStart, statement.sourceEnd - statement.sourceStart + 1);
        whileStatement.setExpression(this.convert(statement.condition));
        Statement action = this.convert(statement.action);
        if (action == null) {
            return null;
        }
        whileStatement.setBody(action);
        return whileStatement;
    }

    public ImportDeclaration convertImport(ImportReference importReference) {
        ImportDeclaration importDeclaration = new ImportDeclaration(this.ast);
        boolean onDemand = (importReference.bits & 0x20000) != 0;
        char[][] tokens = importReference.tokens;
        int length = importReference.tokens.length;
        long[] positions = importReference.sourcePositions;
        if (length > 1) {
            importDeclaration.setName(this.setQualifiedNameNameAndSourceRanges(tokens, positions, importReference));
        } else {
            SimpleName name = new SimpleName(this.ast);
            name.internalSetIdentifier(new String(tokens[0]));
            int start = (int)(positions[0] >>> 32);
            int end = (int)(positions[0] & 0xFFFFFFFFFFFFFFFFL);
            name.setSourceRange(start, end - start + 1);
            name.index = 1;
            importDeclaration.setName(name);
            if (this.resolveBindings) {
                this.recordNodes(name, importReference);
            }
        }
        importDeclaration.setSourceRange(importReference.declarationSourceStart, importReference.declarationEnd - importReference.declarationSourceStart + 1);
        importDeclaration.setOnDemand(onDemand);
        int modifiers = importReference.modifiers;
        if (modifiers != 0) {
            switch (this.ast.apiLevel) {
                case 2: {
                    importDeclaration.setFlags(importDeclaration.getFlags() | 1);
                    break;
                }
                default: {
                    if (modifiers == 8) {
                        importDeclaration.setStatic(true);
                        break;
                    }
                    importDeclaration.setFlags(importDeclaration.getFlags() | 1);
                }
            }
        }
        if (this.resolveBindings) {
            this.recordNodes(importDeclaration, importReference);
        }
        return importDeclaration;
    }

    public PackageDeclaration convertPackage(CompilationUnitDeclaration compilationUnitDeclaration) {
        ImportReference importReference = compilationUnitDeclaration.currentPackage;
        PackageDeclaration packageDeclaration = new PackageDeclaration(this.ast);
        char[][] tokens = importReference.tokens;
        int length = importReference.tokens.length;
        long[] positions = importReference.sourcePositions;
        if (length > 1) {
            packageDeclaration.setName(this.setQualifiedNameNameAndSourceRanges(tokens, positions, importReference));
        } else {
            SimpleName name = new SimpleName(this.ast);
            name.internalSetIdentifier(new String(tokens[0]));
            int start = (int)(positions[0] >>> 32);
            int end = (int)(positions[length - 1] & 0xFFFFFFFFFFFFFFFFL);
            name.setSourceRange(start, end - start + 1);
            name.index = 1;
            packageDeclaration.setName(name);
            if (this.resolveBindings) {
                this.recordNodes(name, compilationUnitDeclaration);
            }
        }
        packageDeclaration.setSourceRange(importReference.declarationSourceStart, importReference.declarationEnd - importReference.declarationSourceStart + 1);
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotations = importReference.annotations;
        if (annotations != null) {
            switch (this.ast.apiLevel) {
                case 2: {
                    packageDeclaration.setFlags(packageDeclaration.getFlags() & 1);
                    break;
                }
                default: {
                    int i = 0;
                    int max = annotations.length;
                    while (i < max) {
                        packageDeclaration.annotations().add(this.convert(annotations[i]));
                        ++i;
                    }
                    break block0;
                }
            }
        }
        if (this.resolveBindings) {
            this.recordNodes(packageDeclaration, importReference);
        }
        this.convert(compilationUnitDeclaration.javadoc, packageDeclaration);
        return packageDeclaration;
    }

    private EnumDeclaration convertToEnumDeclaration(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        this.checkCanceled();
        EnumDeclaration enumDeclaration2 = new EnumDeclaration(this.ast);
        this.setModifiers(enumDeclaration2, typeDeclaration);
        SimpleName typeName = new SimpleName(this.ast);
        typeName.internalSetIdentifier(new String(typeDeclaration.name));
        typeName.setSourceRange(typeDeclaration.sourceStart, typeDeclaration.sourceEnd - typeDeclaration.sourceStart + 1);
        enumDeclaration2.setName(typeName);
        enumDeclaration2.setSourceRange(typeDeclaration.declarationSourceStart, typeDeclaration.bodyEnd - typeDeclaration.declarationSourceStart + 1);
        TypeReference[] superInterfaces = typeDeclaration.superInterfaces;
        if (superInterfaces != null) {
            int index = 0;
            int length = superInterfaces.length;
            while (index < length) {
                enumDeclaration2.superInterfaceTypes().add(this.convertType(superInterfaces[index]));
                ++index;
            }
        }
        this.buildBodyDeclarations(typeDeclaration, enumDeclaration2);
        if (this.resolveBindings) {
            this.recordNodes(enumDeclaration2, typeDeclaration);
            this.recordNodes(typeName, typeDeclaration);
            enumDeclaration2.resolveBinding();
        }
        return enumDeclaration2;
    }

    public Expression convertToExpression(org.eclipse.jdt.internal.compiler.ast.Statement statement) {
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.Expression) {
            return this.convert((org.eclipse.jdt.internal.compiler.ast.Expression)statement);
        }
        return null;
    }

    protected FieldDeclaration convertToFieldDeclaration(org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDecl) {
        VariableDeclarationFragment variableDeclarationFragment = this.convertToVariableDeclarationFragment(fieldDecl);
        FieldDeclaration fieldDeclaration = new FieldDeclaration(this.ast);
        fieldDeclaration.fragments().add(variableDeclarationFragment);
        if (this.resolveBindings) {
            this.recordNodes(variableDeclarationFragment, fieldDecl);
            variableDeclarationFragment.resolveBinding();
        }
        fieldDeclaration.setSourceRange(fieldDecl.declarationSourceStart, fieldDecl.declarationEnd - fieldDecl.declarationSourceStart + 1);
        Type type = this.convertType(fieldDecl.type);
        this.setTypeForField(fieldDeclaration, type, variableDeclarationFragment.getExtraDimensions());
        this.setModifiers(fieldDeclaration, fieldDecl);
        this.convert(fieldDecl.javadoc, fieldDeclaration);
        return fieldDeclaration;
    }

    public ParenthesizedExpression convertToParenthesizedExpression(org.eclipse.jdt.internal.compiler.ast.Expression expression) {
        ParenthesizedExpression parenthesizedExpression = new ParenthesizedExpression(this.ast);
        if (this.resolveBindings) {
            this.recordNodes(parenthesizedExpression, expression);
        }
        parenthesizedExpression.setSourceRange(expression.sourceStart, expression.sourceEnd - expression.sourceStart + 1);
        this.adjustSourcePositionsForParent(expression);
        this.trimWhiteSpacesAndComments(expression);
        int numberOfParenthesis = (expression.bits & 0x1FE00000) >> 21;
        expression.bits &= 0xE01FFFFF;
        expression.bits |= numberOfParenthesis - 1 << 21;
        parenthesizedExpression.setExpression(this.convert(expression));
        return parenthesizedExpression;
    }

    protected VariableDeclarationExpression convertToVariableDeclarationExpression(LocalDeclaration localDeclaration) {
        VariableDeclarationFragment variableDeclarationFragment = this.convertToVariableDeclarationFragment(localDeclaration);
        VariableDeclarationExpression variableDeclarationExpression = new VariableDeclarationExpression(this.ast);
        variableDeclarationExpression.fragments().add(variableDeclarationFragment);
        if (this.resolveBindings) {
            this.recordNodes(variableDeclarationFragment, localDeclaration);
        }
        variableDeclarationExpression.setSourceRange(localDeclaration.declarationSourceStart, localDeclaration.declarationSourceEnd - localDeclaration.declarationSourceStart + 1);
        Type type = this.convertType(localDeclaration.type);
        this.setTypeForVariableDeclarationExpression(variableDeclarationExpression, type, variableDeclarationFragment.getExtraDimensions());
        if (localDeclaration.modifiersSourceStart != -1) {
            this.setModifiers(variableDeclarationExpression, localDeclaration);
        }
        return variableDeclarationExpression;
    }

    protected SingleVariableDeclaration convertToSingleVariableDeclaration(LocalDeclaration localDeclaration) {
        SingleVariableDeclaration variableDecl = new SingleVariableDeclaration(this.ast);
        this.setModifiers(variableDecl, localDeclaration);
        SimpleName name = new SimpleName(this.ast);
        name.internalSetIdentifier(new String(localDeclaration.name));
        int start = localDeclaration.sourceStart;
        int nameEnd = localDeclaration.sourceEnd;
        name.setSourceRange(start, nameEnd - start + 1);
        variableDecl.setName(name);
        int extraDimensions = this.retrieveExtraDimension(nameEnd + 1, localDeclaration.type.sourceEnd);
        variableDecl.setExtraDimensions(extraDimensions);
        Type type = this.convertType(localDeclaration.type);
        int typeEnd = type.getStartPosition() + type.getLength() - 1;
        int rightEnd = Math.max(typeEnd, localDeclaration.declarationSourceEnd);
        this.setTypeForSingleVariableDeclaration(variableDecl, type, extraDimensions);
        variableDecl.setSourceRange(localDeclaration.declarationSourceStart, rightEnd - localDeclaration.declarationSourceStart + 1);
        if (this.resolveBindings) {
            this.recordNodes(name, localDeclaration);
            this.recordNodes(variableDecl, localDeclaration);
            variableDecl.resolveBinding();
        }
        return variableDecl;
    }

    protected VariableDeclarationFragment convertToVariableDeclarationFragment(org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration) {
        int start;
        VariableDeclarationFragment variableDeclarationFragment = new VariableDeclarationFragment(this.ast);
        SimpleName name = new SimpleName(this.ast);
        name.internalSetIdentifier(new String(fieldDeclaration.name));
        name.setSourceRange(fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd - fieldDeclaration.sourceStart + 1);
        variableDeclarationFragment.setName(name);
        int end = start = fieldDeclaration.sourceEnd;
        int extraDimensions = this.retrieveExtraDimension(fieldDeclaration.sourceEnd + 1, fieldDeclaration.declarationSourceEnd);
        variableDeclarationFragment.setExtraDimensions(extraDimensions);
        if (fieldDeclaration.initialization != null) {
            Expression expression = this.convert(fieldDeclaration.initialization);
            variableDeclarationFragment.setInitializer(expression);
            start = expression.getStartPosition() + expression.getLength();
            end = start - 1;
        } else {
            int possibleEnd = this.retrieveEndOfPotentialExtendedDimensions(start + 1, fieldDeclaration.sourceEnd, fieldDeclaration.declarationSourceEnd);
            if (possibleEnd == Integer.MIN_VALUE) {
                end = fieldDeclaration.declarationSourceEnd;
                variableDeclarationFragment.setFlags(variableDeclarationFragment.getFlags() | 1);
            }
            if (possibleEnd < 0) {
                end = -possibleEnd;
                variableDeclarationFragment.setFlags(variableDeclarationFragment.getFlags() | 1);
            } else {
                end = possibleEnd;
            }
        }
        variableDeclarationFragment.setSourceRange(fieldDeclaration.sourceStart, end - fieldDeclaration.sourceStart + 1);
        if (this.resolveBindings) {
            this.recordNodes(name, fieldDeclaration);
            this.recordNodes(variableDeclarationFragment, fieldDeclaration);
            variableDeclarationFragment.resolveBinding();
        }
        return variableDeclarationFragment;
    }

    protected VariableDeclarationFragment convertToVariableDeclarationFragment(LocalDeclaration localDeclaration) {
        int end;
        boolean hasInitialization;
        VariableDeclarationFragment variableDeclarationFragment = new VariableDeclarationFragment(this.ast);
        SimpleName name = new SimpleName(this.ast);
        name.internalSetIdentifier(new String(localDeclaration.name));
        name.setSourceRange(localDeclaration.sourceStart, localDeclaration.sourceEnd - localDeclaration.sourceStart + 1);
        variableDeclarationFragment.setName(name);
        int start = localDeclaration.sourceEnd;
        org.eclipse.jdt.internal.compiler.ast.Expression initialization = localDeclaration.initialization;
        int extraDimension = this.retrieveExtraDimension(localDeclaration.sourceEnd + 1, this.compilationUnitSourceLength);
        variableDeclarationFragment.setExtraDimensions(extraDimension);
        boolean bl = hasInitialization = initialization != null;
        if (hasInitialization) {
            Expression expression = this.convert(initialization);
            variableDeclarationFragment.setInitializer(expression);
            start = expression.getStartPosition() + expression.getLength();
            end = start - 1;
        } else {
            int possibleEnd = this.retrieveEndOfPotentialExtendedDimensions(start + 1, localDeclaration.sourceEnd, localDeclaration.declarationSourceEnd);
            if (possibleEnd == Integer.MIN_VALUE) {
                end = start;
                variableDeclarationFragment.setFlags(variableDeclarationFragment.getFlags() | 1);
            } else if (possibleEnd < 0) {
                end = -possibleEnd;
                variableDeclarationFragment.setFlags(variableDeclarationFragment.getFlags() | 1);
            } else {
                end = possibleEnd;
            }
        }
        variableDeclarationFragment.setSourceRange(localDeclaration.sourceStart, end - localDeclaration.sourceStart + 1);
        if (this.resolveBindings) {
            this.recordNodes(variableDeclarationFragment, localDeclaration);
            this.recordNodes(name, localDeclaration);
            variableDeclarationFragment.resolveBinding();
        }
        return variableDeclarationFragment;
    }

    protected VariableDeclarationStatement convertToVariableDeclarationStatement(LocalDeclaration localDeclaration) {
        VariableDeclarationFragment variableDeclarationFragment = this.convertToVariableDeclarationFragment(localDeclaration);
        VariableDeclarationStatement variableDeclarationStatement = new VariableDeclarationStatement(this.ast);
        variableDeclarationStatement.fragments().add(variableDeclarationFragment);
        if (this.resolveBindings) {
            this.recordNodes(variableDeclarationFragment, localDeclaration);
        }
        variableDeclarationStatement.setSourceRange(localDeclaration.declarationSourceStart, localDeclaration.declarationSourceEnd - localDeclaration.declarationSourceStart + 1);
        Type type = this.convertType(localDeclaration.type);
        this.setTypeForVariableDeclarationStatement(variableDeclarationStatement, type, variableDeclarationFragment.getExtraDimensions());
        if (localDeclaration.modifiersSourceStart != -1) {
            this.setModifiers(variableDeclarationStatement, localDeclaration);
        }
        return variableDeclarationStatement;
    }

    public Type convertType(TypeReference typeReference) {
        Type type;
        block63: {
            int dimensions;
            int length;
            int sourceStart;
            block65: {
                block64: {
                    block59: {
                        block61: {
                            char[] name;
                            block62: {
                                block60: {
                                    if (typeReference instanceof Wildcard) {
                                        Wildcard wildcard = (Wildcard)typeReference;
                                        WildcardType wildcardType = new WildcardType(this.ast);
                                        if (wildcard.bound != null) {
                                            Type bound = this.convertType(wildcard.bound);
                                            wildcardType.setBound(bound, wildcard.kind == 1);
                                            int start = wildcard.sourceStart;
                                            wildcardType.setSourceRange(start, bound.getStartPosition() + bound.getLength() - start);
                                        } else {
                                            int start = wildcard.sourceStart;
                                            int end = wildcard.sourceEnd;
                                            wildcardType.setSourceRange(start, end - start + 1);
                                        }
                                        if (this.resolveBindings) {
                                            this.recordNodes(wildcardType, typeReference);
                                        }
                                        return wildcardType;
                                    }
                                    type = null;
                                    sourceStart = -1;
                                    length = 0;
                                    dimensions = typeReference.dimensions();
                                    if (!(typeReference instanceof SingleTypeReference)) break block59;
                                    name = ((SingleTypeReference)typeReference).getTypeName()[0];
                                    sourceStart = typeReference.sourceStart;
                                    length = typeReference.sourceEnd - typeReference.sourceStart + 1;
                                    if (!this.isPrimitiveType(name)) break block60;
                                    int end = this.retrieveEndOfElementTypeNamePosition(sourceStart, sourceStart + length);
                                    if (end == -1) {
                                        end = sourceStart + length - 1;
                                    }
                                    PrimitiveType primitiveType = new PrimitiveType(this.ast);
                                    primitiveType.setPrimitiveTypeCode(this.getPrimitiveTypeCode(name));
                                    primitiveType.setSourceRange(sourceStart, end - sourceStart + 1);
                                    type = primitiveType;
                                    break block61;
                                }
                                if (!(typeReference instanceof ParameterizedSingleTypeReference)) break block62;
                                ParameterizedSingleTypeReference parameterizedSingleTypeReference = (ParameterizedSingleTypeReference)typeReference;
                                SimpleName simpleName = new SimpleName(this.ast);
                                simpleName.internalSetIdentifier(new String(name));
                                int end = this.retrieveEndOfElementTypeNamePosition(sourceStart, sourceStart + length);
                                if (end == -1) {
                                    end = sourceStart + length - 1;
                                }
                                simpleName.setSourceRange(sourceStart, end - sourceStart + 1);
                                switch (this.ast.apiLevel) {
                                    case 2: {
                                        SimpleType simpleType = new SimpleType(this.ast);
                                        simpleType.setName(simpleName);
                                        simpleType.setFlags(simpleType.getFlags() | 1);
                                        simpleType.setSourceRange(sourceStart, end - sourceStart + 1);
                                        type = simpleType;
                                        if (this.resolveBindings) {
                                            this.recordNodes(simpleName, typeReference);
                                            break;
                                        }
                                        break block61;
                                    }
                                    default: {
                                        SimpleType simpleType = new SimpleType(this.ast);
                                        simpleType.setName(simpleName);
                                        simpleType.setSourceRange(simpleName.getStartPosition(), simpleName.getLength());
                                        ParameterizedType parameterizedType = new ParameterizedType(this.ast);
                                        parameterizedType.setType(simpleType);
                                        type = parameterizedType;
                                        TypeReference[] typeArguments = parameterizedSingleTypeReference.typeArguments;
                                        if (typeArguments != null) {
                                            Type type2 = null;
                                            int i = 0;
                                            int max = typeArguments.length;
                                            while (i < max) {
                                                type2 = this.convertType(typeArguments[i]);
                                                ((ParameterizedType)type).typeArguments().add(type2);
                                                end = type2.getStartPosition() + type2.getLength() - 1;
                                                ++i;
                                            }
                                            end = this.retrieveClosingAngleBracketPosition(end + 1);
                                            type.setSourceRange(sourceStart, end - sourceStart + 1);
                                        } else {
                                            type.setSourceRange(sourceStart, end - sourceStart + 1);
                                        }
                                        if (this.resolveBindings) {
                                            this.recordNodes(simpleName, typeReference);
                                            this.recordNodes(simpleType, typeReference);
                                            break;
                                        }
                                        break block61;
                                    }
                                }
                                break block61;
                            }
                            SimpleName simpleName = new SimpleName(this.ast);
                            simpleName.internalSetIdentifier(new String(name));
                            int end = this.retrieveEndOfElementTypeNamePosition(sourceStart, sourceStart + length);
                            if (end == -1) {
                                end = sourceStart + length - 1;
                            }
                            simpleName.setSourceRange(sourceStart, end - sourceStart + 1);
                            SimpleType simpleType = new SimpleType(this.ast);
                            simpleType.setName(simpleName);
                            type = simpleType;
                            type.setSourceRange(sourceStart, end - sourceStart + 1);
                            type = simpleType;
                            if (this.resolveBindings) {
                                this.recordNodes(simpleName, typeReference);
                            }
                        }
                        if (dimensions == 0) break block63;
                        type = this.ast.newArrayType(type, dimensions);
                        type.setSourceRange(sourceStart, length);
                        ArrayType subarrayType = (ArrayType)type;
                        int index = dimensions - 1;
                        while (index > 0) {
                            subarrayType = (ArrayType)subarrayType.getComponentType();
                            int end = this.retrieveProperRightBracketPosition(index, sourceStart);
                            subarrayType.setSourceRange(sourceStart, end - sourceStart + 1);
                            --index;
                        }
                        if (!this.resolveBindings) break block63;
                        this.completeRecord((ArrayType)type, typeReference);
                        break block63;
                    }
                    if (!(typeReference instanceof ParameterizedQualifiedTypeReference)) break block64;
                    ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference)typeReference;
                    char[][] tokens = parameterizedQualifiedTypeReference.tokens;
                    TypeReference[][] typeArguments = parameterizedQualifiedTypeReference.typeArguments;
                    long[] positions = parameterizedQualifiedTypeReference.sourcePositions;
                    sourceStart = (int)(positions[0] >>> 32);
                    switch (this.ast.apiLevel) {
                        case 2: {
                            char[][] name = ((QualifiedTypeReference)typeReference).getTypeName();
                            int nameLength = name.length;
                            sourceStart = (int)(positions[0] >>> 32);
                            length = (int)(positions[nameLength - 1] & 0xFFFFFFFFFFFFFFFFL) - sourceStart + 1;
                            QualifiedName qualifiedName = this.setQualifiedNameNameAndSourceRanges(name, positions, typeReference);
                            SimpleType simpleType = new SimpleType(this.ast);
                            simpleType.setName(qualifiedName);
                            simpleType.setSourceRange(sourceStart, length);
                            type = simpleType;
                            break;
                        }
                        default: {
                            if (typeArguments != null) {
                                int indexOfEnclosingType;
                                int end;
                                int start;
                                int numberOfEnclosingType = 0;
                                int startingIndex = 0;
                                int endingIndex = 0;
                                int i = 0;
                                int max = typeArguments.length;
                                while (i < max) {
                                    if (typeArguments[i] != null) {
                                        ++numberOfEnclosingType;
                                    } else if (numberOfEnclosingType == 0) {
                                        ++endingIndex;
                                    }
                                    ++i;
                                }
                                Name name = null;
                                if (endingIndex - startingIndex == 0) {
                                    SimpleName simpleName = new SimpleName(this.ast);
                                    simpleName.internalSetIdentifier(new String(tokens[startingIndex]));
                                    this.recordPendingNameScopeResolution(simpleName);
                                    start = (int)(positions[startingIndex] >>> 32);
                                    end = (int)positions[startingIndex];
                                    simpleName.setSourceRange(start, end - start + 1);
                                    simpleName.index = 1;
                                    name = simpleName;
                                    if (this.resolveBindings) {
                                        this.recordNodes(simpleName, typeReference);
                                    }
                                } else {
                                    name = this.setQualifiedNameNameAndSourceRanges(tokens, positions, endingIndex, typeReference);
                                }
                                SimpleType simpleType = new SimpleType(this.ast);
                                simpleType.setName(name);
                                start = (int)(positions[startingIndex] >>> 32);
                                end = (int)positions[endingIndex];
                                simpleType.setSourceRange(start, end - start + 1);
                                ParameterizedType parameterizedType = new ParameterizedType(this.ast);
                                parameterizedType.setType(simpleType);
                                if (this.resolveBindings) {
                                    this.recordNodes(simpleType, typeReference);
                                    this.recordNodes(parameterizedType, typeReference);
                                }
                                start = simpleType.getStartPosition();
                                end = start + simpleType.getLength() - 1;
                                int i2 = 0;
                                int max2 = typeArguments[endingIndex].length;
                                while (i2 < max2) {
                                    Type type2 = this.convertType(typeArguments[endingIndex][i2]);
                                    parameterizedType.typeArguments().add(type2);
                                    end = type2.getStartPosition() + type2.getLength() - 1;
                                    ++i2;
                                }
                                parameterizedType.index = indexOfEnclosingType = 1;
                                end = this.retrieveClosingAngleBracketPosition(end + 1);
                                length = end + 1;
                                parameterizedType.setSourceRange(start, end - start + 1);
                                startingIndex = endingIndex + 1;
                                Type currentType = parameterizedType;
                                while (startingIndex < typeArguments.length) {
                                    SimpleName simpleName = new SimpleName(this.ast);
                                    simpleName.internalSetIdentifier(new String(tokens[startingIndex]));
                                    simpleName.index = startingIndex + 1;
                                    start = (int)(positions[startingIndex] >>> 32);
                                    end = (int)positions[startingIndex];
                                    simpleName.setSourceRange(start, end - start + 1);
                                    this.recordPendingNameScopeResolution(simpleName);
                                    QualifiedType qualifiedType = new QualifiedType(this.ast);
                                    qualifiedType.setQualifier(currentType);
                                    qualifiedType.setName(simpleName);
                                    if (this.resolveBindings) {
                                        this.recordNodes(simpleName, typeReference);
                                        this.recordNodes(qualifiedType, typeReference);
                                    }
                                    start = currentType.getStartPosition();
                                    end = simpleName.getStartPosition() + simpleName.getLength() - 1;
                                    qualifiedType.setSourceRange(start, end - start + 1);
                                    ++indexOfEnclosingType;
                                    if (typeArguments[startingIndex] != null) {
                                        qualifiedType.index = indexOfEnclosingType;
                                        ParameterizedType parameterizedType2 = new ParameterizedType(this.ast);
                                        parameterizedType2.setType(qualifiedType);
                                        parameterizedType2.index = indexOfEnclosingType;
                                        if (this.resolveBindings) {
                                            this.recordNodes(parameterizedType2, typeReference);
                                        }
                                        int i3 = 0;
                                        int max3 = typeArguments[startingIndex].length;
                                        while (i3 < max3) {
                                            Type type2 = this.convertType(typeArguments[startingIndex][i3]);
                                            parameterizedType2.typeArguments().add(type2);
                                            end = type2.getStartPosition() + type2.getLength() - 1;
                                            ++i3;
                                        }
                                        end = this.retrieveClosingAngleBracketPosition(end + 1);
                                        length = end + 1;
                                        parameterizedType2.setSourceRange(start, end - start + 1);
                                        currentType = parameterizedType2;
                                    } else {
                                        currentType = qualifiedType;
                                        qualifiedType.index = indexOfEnclosingType;
                                    }
                                    ++startingIndex;
                                }
                                if (this.resolveBindings) {
                                    this.recordNodes(currentType, typeReference);
                                }
                                type = currentType;
                                length -= sourceStart;
                                break;
                            } else {
                                break;
                            }
                        }
                    }
                    break block65;
                }
                if (typeReference instanceof QualifiedTypeReference) {
                    char[][] name = ((QualifiedTypeReference)typeReference).getTypeName();
                    int nameLength = name.length;
                    long[] positions = ((QualifiedTypeReference)typeReference).sourcePositions;
                    sourceStart = (int)(positions[0] >>> 32);
                    length = (int)(positions[nameLength - 1] & 0xFFFFFFFFFFFFFFFFL) - sourceStart + 1;
                    QualifiedName qualifiedName = this.setQualifiedNameNameAndSourceRanges(name, positions, typeReference);
                    SimpleType simpleType = new SimpleType(this.ast);
                    simpleType.setName(qualifiedName);
                    type = simpleType;
                    type.setSourceRange(sourceStart, length);
                } else {
                    TypeReference[] typeReferences = ((UnionTypeReference)typeReference).typeReferences;
                    switch (this.ast.apiLevel) {
                        case 2: 
                        case 3: {
                            type = this.convertType(typeReferences[0]);
                            int start = typeReference.sourceStart;
                            int endPosition = typeReference.sourceEnd;
                            length = endPosition - start + 1;
                            type.setSourceRange(start, length);
                            type.setFlags(type.getFlags() | 1);
                            break;
                        }
                        default: {
                            UnionType unionType = new UnionType(this.ast);
                            int i = 0;
                            int max = typeReferences.length;
                            while (i < max) {
                                unionType.types().add(this.convertType(typeReferences[i]));
                                ++i;
                            }
                            type = unionType;
                            List types = unionType.types();
                            int size = types.size();
                            int start = ((Type)types.get(0)).getStartPosition();
                            Type lastType = (Type)types.get(size - 1);
                            int endPosition = lastType.getStartPosition() + lastType.getLength();
                            length = endPosition - start;
                            type.setSourceRange(start, length);
                        }
                    }
                }
            }
            length = typeReference.sourceEnd - sourceStart + 1;
            if (dimensions != 0) {
                int end;
                type = this.ast.newArrayType(type, dimensions);
                if (this.resolveBindings) {
                    this.completeRecord((ArrayType)type, typeReference);
                }
                if ((end = this.retrieveEndOfDimensionsPosition(sourceStart + length, this.compilationUnitSourceLength)) != -1) {
                    type.setSourceRange(sourceStart, end - sourceStart + 1);
                } else {
                    type.setSourceRange(sourceStart, length);
                }
                ArrayType subarrayType = (ArrayType)type;
                int index = dimensions - 1;
                while (index > 0) {
                    subarrayType = (ArrayType)subarrayType.getComponentType();
                    end = this.retrieveProperRightBracketPosition(index, sourceStart);
                    subarrayType.setSourceRange(sourceStart, end - sourceStart + 1);
                    --index;
                }
            }
        }
        if (this.resolveBindings) {
            this.recordNodes(type, typeReference);
        }
        boolean sawDiamond = false;
        if (typeReference instanceof ParameterizedSingleTypeReference) {
            ParameterizedSingleTypeReference pstr = (ParameterizedSingleTypeReference)typeReference;
            if (pstr.typeArguments == TypeReference.NO_TYPE_ARGUMENTS) {
                sawDiamond = true;
            }
        } else if (typeReference instanceof ParameterizedQualifiedTypeReference) {
            ParameterizedQualifiedTypeReference pqtr = (ParameterizedQualifiedTypeReference)typeReference;
            int i = 0;
            int len = pqtr.typeArguments.length;
            while (i < len) {
                if (pqtr.typeArguments[i] == TypeReference.NO_TYPE_ARGUMENTS) {
                    sawDiamond = true;
                    break;
                }
                ++i;
            }
        }
        if (sawDiamond) {
            switch (this.ast.apiLevel) {
                case 2: 
                case 3: {
                    type.setFlags(type.getFlags() | 1);
                }
            }
        }
        return type;
    }

    protected Comment createComment(int[] positions) {
        Comment comment = null;
        int start = positions[0];
        int end = positions[1];
        if (positions[1] > 0) {
            Javadoc docComment = this.docParser.parse(positions);
            if (docComment == null) {
                return null;
            }
            comment = docComment;
        } else {
            end = -end;
            if (positions[0] == 0) {
                comment = this.docParser.scanner.source[1] == '/' ? new LineComment(this.ast) : new BlockComment(this.ast);
            } else if (positions[0] > 0) {
                comment = new BlockComment(this.ast);
            } else {
                start = -start;
                comment = new LineComment(this.ast);
            }
            comment.setSourceRange(start, end - start);
        }
        return comment;
    }

    protected Statement createFakeEmptyStatement(org.eclipse.jdt.internal.compiler.ast.Statement statement) {
        if (statement == null) {
            return null;
        }
        EmptyStatement emptyStatement = new EmptyStatement(this.ast);
        emptyStatement.setFlags(emptyStatement.getFlags() | 1);
        int start = statement.sourceStart;
        int end = statement.sourceEnd;
        emptyStatement.setSourceRange(start, end - start + 1);
        return emptyStatement;
    }

    private Modifier createModifier(Modifier.ModifierKeyword keyword) {
        Modifier modifier = new Modifier(this.ast);
        modifier.setKeyword(keyword);
        int start = this.scanner.getCurrentTokenStartPosition();
        int end = this.scanner.getCurrentTokenEndPosition();
        modifier.setSourceRange(start, end - start + 1);
        return modifier;
    }

    protected InfixExpression.Operator getOperatorFor(int operatorID) {
        switch (operatorID) {
            case 18: {
                return InfixExpression.Operator.EQUALS;
            }
            case 5: {
                return InfixExpression.Operator.LESS_EQUALS;
            }
            case 7: {
                return InfixExpression.Operator.GREATER_EQUALS;
            }
            case 29: {
                return InfixExpression.Operator.NOT_EQUALS;
            }
            case 10: {
                return InfixExpression.Operator.LEFT_SHIFT;
            }
            case 17: {
                return InfixExpression.Operator.RIGHT_SHIFT_SIGNED;
            }
            case 19: {
                return InfixExpression.Operator.RIGHT_SHIFT_UNSIGNED;
            }
            case 1: {
                return InfixExpression.Operator.CONDITIONAL_OR;
            }
            case 0: {
                return InfixExpression.Operator.CONDITIONAL_AND;
            }
            case 14: {
                return InfixExpression.Operator.PLUS;
            }
            case 13: {
                return InfixExpression.Operator.MINUS;
            }
            case 16: {
                return InfixExpression.Operator.REMAINDER;
            }
            case 8: {
                return InfixExpression.Operator.XOR;
            }
            case 2: {
                return InfixExpression.Operator.AND;
            }
            case 15: {
                return InfixExpression.Operator.TIMES;
            }
            case 3: {
                return InfixExpression.Operator.OR;
            }
            case 9: {
                return InfixExpression.Operator.DIVIDE;
            }
            case 6: {
                return InfixExpression.Operator.GREATER;
            }
            case 4: {
                return InfixExpression.Operator.LESS;
            }
        }
        return null;
    }

    protected PrimitiveType.Code getPrimitiveTypeCode(char[] name) {
        switch (name[0]) {
            case 'i': {
                if (name.length != 3 || name[1] != 'n' || name[2] != 't') break;
                return PrimitiveType.INT;
            }
            case 'l': {
                if (name.length != 4 || name[1] != 'o' || name[2] != 'n' || name[3] != 'g') break;
                return PrimitiveType.LONG;
            }
            case 'd': {
                if (name.length != 6 || name[1] != 'o' || name[2] != 'u' || name[3] != 'b' || name[4] != 'l' || name[5] != 'e') break;
                return PrimitiveType.DOUBLE;
            }
            case 'f': {
                if (name.length != 5 || name[1] != 'l' || name[2] != 'o' || name[3] != 'a' || name[4] != 't') break;
                return PrimitiveType.FLOAT;
            }
            case 'b': {
                if (name.length == 4 && name[1] == 'y' && name[2] == 't' && name[3] == 'e') {
                    return PrimitiveType.BYTE;
                }
                if (name.length != 7 || name[1] != 'o' || name[2] != 'o' || name[3] != 'l' || name[4] != 'e' || name[5] != 'a' || name[6] != 'n') break;
                return PrimitiveType.BOOLEAN;
            }
            case 'c': {
                if (name.length != 4 || name[1] != 'h' || name[2] != 'a' || name[3] != 'r') break;
                return PrimitiveType.CHAR;
            }
            case 's': {
                if (name.length != 5 || name[1] != 'h' || name[2] != 'o' || name[3] != 'r' || name[4] != 't') break;
                return PrimitiveType.SHORT;
            }
            case 'v': {
                if (name.length != 4 || name[1] != 'o' || name[2] != 'i' || name[3] != 'd') break;
                return PrimitiveType.VOID;
            }
        }
        return null;
    }

    protected boolean isPrimitiveType(char[] name) {
        switch (name[0]) {
            case 'i': {
                return name.length == 3 && name[1] == 'n' && name[2] == 't';
            }
            case 'l': {
                return name.length == 4 && name[1] == 'o' && name[2] == 'n' && name[3] == 'g';
            }
            case 'd': {
                return name.length == 6 && name[1] == 'o' && name[2] == 'u' && name[3] == 'b' && name[4] == 'l' && name[5] == 'e';
            }
            case 'f': {
                return name.length == 5 && name[1] == 'l' && name[2] == 'o' && name[3] == 'a' && name[4] == 't';
            }
            case 'b': {
                if (name.length == 4 && name[1] == 'y' && name[2] == 't' && name[3] == 'e') {
                    return true;
                }
                return name.length == 7 && name[1] == 'o' && name[2] == 'o' && name[3] == 'l' && name[4] == 'e' && name[5] == 'a' && name[6] == 'n';
            }
            case 'c': {
                return name.length == 4 && name[1] == 'h' && name[2] == 'a' && name[3] == 'r';
            }
            case 's': {
                return name.length == 5 && name[1] == 'h' && name[2] == 'o' && name[3] == 'r' && name[4] == 't';
            }
            case 'v': {
                return name.length == 4 && name[1] == 'o' && name[2] == 'i' && name[3] == 'd';
            }
        }
        return false;
    }

    private void lookupForScopes() {
        Iterator iterator;
        if (this.pendingNameScopeResolution != null) {
            iterator = this.pendingNameScopeResolution.iterator();
            while (iterator.hasNext()) {
                Name name = (Name)iterator.next();
                this.ast.getBindingResolver().recordScope(name, this.lookupScope(name));
            }
        }
        if (this.pendingThisExpressionScopeResolution != null) {
            iterator = this.pendingThisExpressionScopeResolution.iterator();
            while (iterator.hasNext()) {
                ThisExpression thisExpression = (ThisExpression)iterator.next();
                this.ast.getBindingResolver().recordScope(thisExpression, this.lookupScope(thisExpression));
            }
        }
    }

    private BlockScope lookupScope(ASTNode node) {
        ASTNode currentNode = node;
        while (!(currentNode == null || currentNode instanceof MethodDeclaration || currentNode instanceof Initializer || currentNode instanceof FieldDeclaration || currentNode instanceof AbstractTypeDeclaration)) {
            currentNode = currentNode.getParent();
        }
        if (currentNode == null) {
            return null;
        }
        if (currentNode instanceof Initializer) {
            Initializer initializer = (Initializer)currentNode;
            while (!(currentNode instanceof AbstractTypeDeclaration)) {
                currentNode = currentNode.getParent();
            }
            if (currentNode instanceof TypeDeclaration || currentNode instanceof EnumDeclaration || currentNode instanceof AnnotationTypeDeclaration) {
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDecl = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)this.ast.getBindingResolver().getCorrespondingNode(currentNode);
                if ((initializer.getModifiers() & 8) != 0) {
                    return typeDecl.staticInitializerScope;
                }
                return typeDecl.initializerScope;
            }
        } else {
            if (currentNode instanceof FieldDeclaration) {
                FieldDeclaration fieldDeclaration = (FieldDeclaration)currentNode;
                while (!(currentNode instanceof AbstractTypeDeclaration)) {
                    currentNode = currentNode.getParent();
                }
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDecl = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)this.ast.getBindingResolver().getCorrespondingNode(currentNode);
                if ((fieldDeclaration.getModifiers() & 8) != 0) {
                    return typeDecl.staticInitializerScope;
                }
                return typeDecl.initializerScope;
            }
            if (currentNode instanceof AbstractTypeDeclaration) {
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDecl = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)this.ast.getBindingResolver().getCorrespondingNode(currentNode);
                return typeDecl.initializerScope;
            }
        }
        AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration)this.ast.getBindingResolver().getCorrespondingNode(currentNode);
        return abstractMethodDeclaration.scope;
    }

    protected void recordName(Name name, org.eclipse.jdt.internal.compiler.ast.ASTNode compilerNode) {
        if (compilerNode != null) {
            this.recordNodes(name, compilerNode);
            if (compilerNode instanceof TypeReference) {
                TypeReference typeRef = (TypeReference)compilerNode;
                if (name.isQualifiedName()) {
                    SimpleName simpleName = null;
                    while (name.isQualifiedName()) {
                        simpleName = ((QualifiedName)name).getName();
                        this.recordNodes(simpleName, typeRef);
                        name = ((QualifiedName)name).getQualifier();
                        this.recordNodes(name, typeRef);
                    }
                }
            }
        }
    }

    protected void recordNodes(ASTNode node, org.eclipse.jdt.internal.compiler.ast.ASTNode oldASTNode) {
        this.ast.getBindingResolver().store(node, oldASTNode);
    }

    protected void recordNodes(org.eclipse.jdt.internal.compiler.ast.Javadoc javadoc, TagElement tagElement) {
        ListIterator fragments = tagElement.fragments().listIterator();
        while (fragments.hasNext()) {
            int start;
            SimpleName name;
            ASTNode node = (ASTNode)fragments.next();
            if (node.getNodeType() == 67) {
                org.eclipse.jdt.internal.compiler.ast.Expression expression;
                MemberRef memberRef = (MemberRef)node;
                name = memberRef.getName();
                start = name.getStartPosition();
                org.eclipse.jdt.internal.compiler.ast.ASTNode compilerNode = javadoc.getNodeStartingAt(start);
                if (compilerNode != null) {
                    this.recordNodes(name, compilerNode);
                    this.recordNodes(node, compilerNode);
                }
                if (memberRef.getQualifier() == null) continue;
                TypeReference typeRef = null;
                if (compilerNode instanceof JavadocFieldReference) {
                    expression = ((JavadocFieldReference)compilerNode).receiver;
                    if (expression instanceof TypeReference) {
                        typeRef = (TypeReference)expression;
                    }
                } else if (compilerNode instanceof JavadocMessageSend && (expression = ((JavadocMessageSend)compilerNode).receiver) instanceof TypeReference) {
                    typeRef = (TypeReference)expression;
                }
                if (typeRef == null) continue;
                this.recordName(memberRef.getQualifier(), typeRef);
                continue;
            }
            if (node.getNodeType() == 68) {
                MethodRef methodRef = (MethodRef)node;
                name = methodRef.getName();
                start = methodRef.getStartPosition();
                this.scanner.resetTo(start, start + name.getStartPosition() + name.getLength());
                try {
                    int token;
                    while ((token = this.scanner.getNextToken()) != 69 && token != 29) {
                        if (token != 110 || this.scanner.currentCharacter != '#') continue;
                        start = this.scanner.getCurrentTokenEndPosition() + 1;
                        break;
                    }
                }
                catch (InvalidInputException invalidInputException) {}
                org.eclipse.jdt.internal.compiler.ast.ASTNode compilerNode = javadoc.getNodeStartingAt(start);
                if (compilerNode != null) {
                    this.recordNodes(methodRef, compilerNode);
                    TypeReference typeRef = null;
                    if (compilerNode instanceof JavadocAllocationExpression) {
                        typeRef = ((JavadocAllocationExpression)compilerNode).type;
                        if (typeRef != null) {
                            this.recordNodes(name, compilerNode);
                        }
                    } else if (compilerNode instanceof JavadocMessageSend) {
                        org.eclipse.jdt.internal.compiler.ast.Expression expression = ((JavadocMessageSend)compilerNode).receiver;
                        if (expression instanceof TypeReference) {
                            typeRef = (TypeReference)expression;
                        }
                        this.recordNodes(name, compilerNode);
                    }
                    if (typeRef != null && methodRef.getQualifier() != null) {
                        this.recordName(methodRef.getQualifier(), typeRef);
                    }
                }
                ListIterator parameters = methodRef.parameters().listIterator();
                while (parameters.hasNext()) {
                    MethodRefParameter param = (MethodRefParameter)parameters.next();
                    org.eclipse.jdt.internal.compiler.ast.Expression expression = (org.eclipse.jdt.internal.compiler.ast.Expression)javadoc.getNodeStartingAt(param.getStartPosition());
                    if (expression == null) continue;
                    this.recordNodes(param, expression);
                    if (!(expression instanceof JavadocArgumentExpression)) continue;
                    JavadocArgumentExpression argExpr = (JavadocArgumentExpression)expression;
                    TypeReference typeRef = argExpr.argument.type;
                    if (this.ast.apiLevel >= 3) {
                        param.setVarargs(argExpr.argument.isVarArgs());
                    }
                    this.recordNodes(param.getType(), typeRef);
                    if (param.getType().isSimpleType()) {
                        this.recordName(((SimpleType)param.getType()).getName(), typeRef);
                        continue;
                    }
                    if (!param.getType().isArrayType()) continue;
                    Type type = ((ArrayType)param.getType()).getElementType();
                    this.recordNodes(type, typeRef);
                    if (!type.isSimpleType()) continue;
                    this.recordName(((SimpleType)type).getName(), typeRef);
                }
                continue;
            }
            if (node.getNodeType() == 42 || node.getNodeType() == 40) {
                org.eclipse.jdt.internal.compiler.ast.ASTNode compilerNode = javadoc.getNodeStartingAt(node.getStartPosition());
                this.recordName((Name)node, compilerNode);
                continue;
            }
            if (node.getNodeType() != 65) continue;
            this.recordNodes(javadoc, (TagElement)node);
        }
    }

    protected void recordPendingNameScopeResolution(Name name) {
        if (this.pendingNameScopeResolution == null) {
            this.pendingNameScopeResolution = new HashSet();
        }
        this.pendingNameScopeResolution.add(name);
    }

    protected void recordPendingThisExpressionScopeResolution(ThisExpression thisExpression) {
        if (this.pendingThisExpressionScopeResolution == null) {
            this.pendingThisExpressionScopeResolution = new HashSet();
        }
        this.pendingThisExpressionScopeResolution.add(thisExpression);
    }

    private void trimWhiteSpacesAndComments(org.eclipse.jdt.internal.compiler.ast.Expression expression) {
        int start = expression.sourceStart;
        int end = expression.sourceEnd;
        int trimLeftPosition = expression.sourceStart;
        int trimRightPosition = expression.sourceEnd;
        boolean first = true;
        Scanner removeBlankScanner = this.ast.scanner;
        try {
            removeBlankScanner.setSource(this.compilationUnitSource);
            removeBlankScanner.resetTo(start, end);
            block7: while (true) {
                int token = removeBlankScanner.getNextToken();
                switch (token) {
                    case 1001: 
                    case 1002: 
                    case 1003: {
                        if (!first) continue block7;
                        trimLeftPosition = removeBlankScanner.currentPosition;
                        continue block7;
                    }
                    case 1000: {
                        if (!first) continue block7;
                        trimLeftPosition = removeBlankScanner.currentPosition;
                        continue block7;
                    }
                    case 69: {
                        expression.sourceStart = trimLeftPosition;
                        expression.sourceEnd = trimRightPosition;
                        return;
                    }
                }
                trimRightPosition = removeBlankScanner.currentPosition - 1;
                first = false;
            }
        }
        catch (InvalidInputException invalidInputException) {
            return;
        }
    }

    protected void removeLeadingAndTrailingCommentsFromLiteral(ASTNode node) {
        int start = node.getStartPosition();
        this.scanner.resetTo(start, start + node.getLength());
        int startPosition = -1;
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 47: 
                    case 48: 
                    case 49: 
                    case 50: 
                    case 51: {
                        if (startPosition == -1) {
                            startPosition = this.scanner.startPosition;
                        }
                        int end = this.scanner.currentPosition;
                        node.setSourceRange(startPosition, end - startPosition);
                        return;
                    }
                    case 2: {
                        startPosition = this.scanner.startPosition;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
    }

    protected void removeTrailingCommentFromExpressionEndingWithAParen(ASTNode node) {
        int start = node.getStartPosition();
        this.scanner.resetTo(start, start + node.getLength());
        int parenCounter = 0;
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 29: {
                        ++parenCounter;
                        break;
                    }
                    case 28: {
                        if (--parenCounter != 0) break;
                        int end = this.scanner.currentPosition - 1;
                        node.setSourceRange(start, end - start + 1);
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
    }

    protected int retrieveClosingAngleBracketPosition(int start) {
        this.scanner.resetTo(start, this.compilationUnitSourceLength);
        this.scanner.returnOnlyGreater = true;
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 11: {
                        return this.scanner.currentPosition - 1;
                    }
                    case 7: {
                        break;
                    }
                    default: {
                        return start;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        this.scanner.returnOnlyGreater = false;
        return start;
    }

    protected void retrieveColonPosition(ASTNode node) {
        int start = node.getStartPosition();
        int length = node.getLength();
        int end = start + length;
        this.scanner.resetTo(end, this.compilationUnitSourceLength);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 65: {
                        node.setSourceRange(start, this.scanner.currentPosition - start);
                        return;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
    }

    protected int retrieveEllipsisStartPosition(int start, int end) {
        this.scanner.resetTo(start, end);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 107: {
                        return this.scanner.startPosition - 1;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveEndBlockPosition(int start, int end) {
        this.scanner.resetTo(start, end);
        int count = 0;
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 68: {
                        ++count;
                        break;
                    }
                    case 31: {
                        if (--count != 0) break;
                        return this.scanner.currentPosition - 1;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveSemiColonPosition(Expression node) {
        int start = node.getStartPosition();
        int length = node.getLength();
        int end = start + length;
        this.scanner.resetTo(end, this.compilationUnitSourceLength);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 27: {
                        return this.scanner.currentPosition - 1;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveEndOfDimensionsPosition(int start, int end) {
        this.scanner.resetTo(start, end);
        int foundPosition = -1;
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 16: 
                    case 1001: 
                    case 1002: 
                    case 1003: {
                        break;
                    }
                    case 70: {
                        foundPosition = this.scanner.currentPosition - 1;
                        break;
                    }
                    default: {
                        return foundPosition;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return foundPosition;
    }

    protected int retrieveEndOfElementTypeNamePosition(int start, int end) {
        this.scanner.resetTo(start, end);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 26: 
                    case 32: 
                    case 33: 
                    case 34: 
                    case 35: 
                    case 36: 
                    case 37: 
                    case 38: 
                    case 39: {
                        return this.scanner.currentPosition - 1;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveEndOfRightParenthesisPosition(int start, int end) {
        this.scanner.resetTo(start, end);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 28: {
                        return this.scanner.currentPosition;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveExtraDimension(int start, int end) {
        this.scanner.resetTo(start, end);
        int dimensions = 0;
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 16: 
                    case 1001: 
                    case 1002: 
                    case 1003: {
                        break;
                    }
                    case 70: {
                        ++dimensions;
                        break;
                    }
                    default: {
                        return dimensions;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return dimensions;
    }

    protected void retrieveIdentifierAndSetPositions(int start, int end, Name name) {
        this.scanner.resetTo(start, end);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                if (token != 26) continue;
                int startName = this.scanner.startPosition;
                int endName = this.scanner.currentPosition - 1;
                name.setSourceRange(startName, endName - startName + 1);
                return;
            }
        }
        catch (InvalidInputException invalidInputException) {}
    }

    protected int retrieveIdentifierEndPosition(int start, int end) {
        this.scanner.resetTo(start, end);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 26: {
                        return this.scanner.getCurrentTokenEndPosition();
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveEndOfPotentialExtendedDimensions(int initializerEnd, int nameEnd, int end) {
        this.scanner.resetTo(initializerEnd, end);
        boolean hasTokens = false;
        int balance = 0;
        int pos = initializerEnd > nameEnd ? initializerEnd - 1 : nameEnd;
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                hasTokens = true;
                switch (token) {
                    case 16: 
                    case 68: {
                        ++balance;
                        break;
                    }
                    case 31: 
                    case 70: {
                        --balance;
                        pos = this.scanner.currentPosition - 1;
                        break;
                    }
                    case 30: {
                        if (balance == 0) {
                            return pos;
                        }
                        pos = this.scanner.currentPosition - 1;
                        break;
                    }
                    case 27: {
                        if (balance == 0) {
                            return pos;
                        }
                        return -pos;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return hasTokens ? Integer.MIN_VALUE : pos;
    }

    protected int retrieveProperRightBracketPosition(int bracketNumber, int start) {
        this.scanner.resetTo(start, this.compilationUnitSourceLength);
        try {
            int token;
            int count = 0;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 70: {
                        if (++count != bracketNumber) break;
                        return this.scanner.currentPosition - 1;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveRightBraceOrSemiColonPosition(int start, int end) {
        this.scanner.resetTo(start, end);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 31: {
                        return this.scanner.currentPosition - 1;
                    }
                    case 27: {
                        return this.scanner.currentPosition - 1;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveRightBrace(int start, int end) {
        this.scanner.resetTo(start, end);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 31: {
                        return this.scanner.currentPosition - 1;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveRightBracketPosition(int start, int end) {
        this.scanner.resetTo(start, end);
        try {
            int token;
            int balance = 0;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 16: {
                        ++balance;
                        break;
                    }
                    case 70: {
                        if (--balance != 0) break;
                        return this.scanner.currentPosition - 1;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveStartBlockPosition(int start, int end) {
        this.scanner.resetTo(start, end);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 68: {
                        return this.scanner.startPosition;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    protected int retrieveStartingCatchPosition(int start, int end) {
        this.scanner.resetTo(start, end);
        try {
            int token;
            while ((token = this.scanner.getNextToken()) != 69) {
                switch (token) {
                    case 100: {
                        return this.scanner.startPosition;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return -1;
    }

    public void setAST(AST ast) {
        this.ast = ast;
        this.docParser = new DocCommentParser(this.ast, this.scanner, this.insideComments);
    }

    protected void setModifiers(AnnotationTypeDeclaration typeDecl, org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        this.scanner.resetTo(typeDeclaration.declarationSourceStart, typeDeclaration.sourceStart);
        this.setModifiers(typeDecl, typeDeclaration.annotations, typeDeclaration.sourceStart);
    }

    protected void setModifiers(AnnotationTypeMemberDeclaration annotationTypeMemberDecl, AnnotationMethodDeclaration annotationTypeMemberDeclaration) {
        this.scanner.resetTo(annotationTypeMemberDeclaration.declarationSourceStart, annotationTypeMemberDeclaration.sourceStart);
        this.setModifiers(annotationTypeMemberDecl, annotationTypeMemberDeclaration.annotations, annotationTypeMemberDeclaration.sourceStart);
    }

    protected void setModifiers(BodyDeclaration bodyDeclaration, org.eclipse.jdt.internal.compiler.ast.Annotation[] annotations, int modifiersEnd) {
        this.scanner.tokenizeWhiteSpace = false;
        try {
            int token;
            int indexInAnnotations = 0;
            while ((token = this.scanner.getNextToken()) != 69) {
                ASTNode modifier = null;
                switch (token) {
                    case 56: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                        break;
                    }
                    case 61: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD);
                        break;
                    }
                    case 54: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.STATIC_KEYWORD);
                        break;
                    }
                    case 60: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD);
                        break;
                    }
                    case 59: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD);
                        break;
                    }
                    case 57: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.FINAL_KEYWORD);
                        break;
                    }
                    case 58: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD);
                        break;
                    }
                    case 55: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD);
                        break;
                    }
                    case 63: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD);
                        break;
                    }
                    case 64: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD);
                        break;
                    }
                    case 62: {
                        modifier = this.createModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD);
                        break;
                    }
                    case 53: {
                        if (annotations == null || indexInAnnotations >= annotations.length) break;
                        org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotations[indexInAnnotations++];
                        modifier = this.convert(annotation);
                        this.scanner.resetTo(annotation.declarationSourceEnd + 1, modifiersEnd);
                        break;
                    }
                    case 1001: 
                    case 1002: 
                    case 1003: {
                        break;
                    }
                }
                if (modifier == null) continue;
                bodyDeclaration.modifiers().add(modifier);
            }
        }
        catch (InvalidInputException invalidInputException) {}
    }

    protected void setModifiers(EnumDeclaration enumDeclaration, org.eclipse.jdt.internal.compiler.ast.TypeDeclaration enumDeclaration2) {
        this.scanner.resetTo(enumDeclaration2.declarationSourceStart, enumDeclaration2.sourceStart);
        this.setModifiers(enumDeclaration, enumDeclaration2.annotations, enumDeclaration2.sourceStart);
    }

    protected void setModifiers(EnumConstantDeclaration enumConstantDeclaration, org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration) {
        switch (this.ast.apiLevel) {
            case 2: {
                enumConstantDeclaration.internalSetModifiers(fieldDeclaration.modifiers & 0xFFFF);
                if (fieldDeclaration.annotations == null) break;
                enumConstantDeclaration.setFlags(enumConstantDeclaration.getFlags() | 1);
                break;
            }
            default: {
                this.scanner.resetTo(fieldDeclaration.declarationSourceStart, fieldDeclaration.sourceStart);
                this.setModifiers(enumConstantDeclaration, fieldDeclaration.annotations, fieldDeclaration.sourceStart);
            }
        }
    }

    protected void setModifiers(FieldDeclaration fieldDeclaration, org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDecl) {
        switch (this.ast.apiLevel) {
            case 2: {
                fieldDeclaration.internalSetModifiers(fieldDecl.modifiers & 0xFFFF);
                if (fieldDecl.annotations == null) break;
                fieldDeclaration.setFlags(fieldDeclaration.getFlags() | 1);
                break;
            }
            default: {
                this.scanner.resetTo(fieldDecl.declarationSourceStart, fieldDecl.sourceStart);
                this.setModifiers(fieldDeclaration, fieldDecl.annotations, fieldDecl.sourceStart);
            }
        }
    }

    protected void setModifiers(Initializer initializer, org.eclipse.jdt.internal.compiler.ast.Initializer oldInitializer) {
        switch (this.ast.apiLevel) {
            case 2: {
                initializer.internalSetModifiers(oldInitializer.modifiers & 0xFFFF);
                if (oldInitializer.annotations == null) break;
                initializer.setFlags(initializer.getFlags() | 1);
                break;
            }
            default: {
                this.scanner.resetTo(oldInitializer.declarationSourceStart, oldInitializer.bodyStart);
                this.setModifiers(initializer, oldInitializer.annotations, oldInitializer.bodyStart);
            }
        }
    }

    protected void setModifiers(MethodDeclaration methodDecl, AbstractMethodDeclaration methodDeclaration) {
        switch (this.ast.apiLevel) {
            case 2: {
                methodDecl.internalSetModifiers(methodDeclaration.modifiers & 0xFFFF);
                if (methodDeclaration.annotations == null) break;
                methodDecl.setFlags(methodDecl.getFlags() | 1);
                break;
            }
            default: {
                this.scanner.resetTo(methodDeclaration.declarationSourceStart, methodDeclaration.sourceStart);
                this.setModifiers(methodDecl, methodDeclaration.annotations, methodDeclaration.sourceStart);
            }
        }
    }

    protected void setModifiers(SingleVariableDeclaration variableDecl, Argument argument) {
        switch (this.ast.apiLevel) {
            case 2: {
                variableDecl.internalSetModifiers(argument.modifiers & 0xFFFF);
                if (argument.annotations == null) break;
                variableDecl.setFlags(variableDecl.getFlags() | 1);
                break;
            }
            default: {
                this.scanner.resetTo(argument.declarationSourceStart, argument.sourceStart);
                org.eclipse.jdt.internal.compiler.ast.Annotation[] annotations = argument.annotations;
                int indexInAnnotations = 0;
                try {
                    int token;
                    while ((token = this.scanner.getNextToken()) != 69) {
                        ASTNode modifier = null;
                        switch (token) {
                            case 56: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                                break;
                            }
                            case 61: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD);
                                break;
                            }
                            case 54: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.STATIC_KEYWORD);
                                break;
                            }
                            case 60: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD);
                                break;
                            }
                            case 59: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD);
                                break;
                            }
                            case 57: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.FINAL_KEYWORD);
                                break;
                            }
                            case 58: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD);
                                break;
                            }
                            case 55: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD);
                                break;
                            }
                            case 63: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD);
                                break;
                            }
                            case 64: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD);
                                break;
                            }
                            case 62: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD);
                                break;
                            }
                            case 53: {
                                if (annotations == null || indexInAnnotations >= annotations.length) break;
                                org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotations[indexInAnnotations++];
                                modifier = this.convert(annotation);
                                this.scanner.resetTo(annotation.declarationSourceEnd + 1, this.compilationUnitSourceLength);
                                break;
                            }
                            case 1001: 
                            case 1002: 
                            case 1003: {
                                break;
                            }
                            default: {
                                return;
                            }
                        }
                        if (modifier == null) continue;
                        variableDecl.modifiers().add(modifier);
                    }
                    break;
                }
                catch (InvalidInputException invalidInputException) {}
            }
        }
    }

    protected void setModifiers(SingleVariableDeclaration variableDecl, LocalDeclaration localDeclaration) {
        switch (this.ast.apiLevel) {
            case 2: {
                variableDecl.internalSetModifiers(localDeclaration.modifiers & 0xFFFF);
                if (localDeclaration.annotations == null) break;
                variableDecl.setFlags(variableDecl.getFlags() | 1);
                break;
            }
            default: {
                this.scanner.resetTo(localDeclaration.declarationSourceStart, localDeclaration.sourceStart);
                org.eclipse.jdt.internal.compiler.ast.Annotation[] annotations = localDeclaration.annotations;
                int indexInAnnotations = 0;
                try {
                    int token;
                    while ((token = this.scanner.getNextToken()) != 69) {
                        ASTNode modifier = null;
                        switch (token) {
                            case 56: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                                break;
                            }
                            case 61: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD);
                                break;
                            }
                            case 54: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.STATIC_KEYWORD);
                                break;
                            }
                            case 60: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD);
                                break;
                            }
                            case 59: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD);
                                break;
                            }
                            case 57: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.FINAL_KEYWORD);
                                break;
                            }
                            case 58: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD);
                                break;
                            }
                            case 55: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD);
                                break;
                            }
                            case 63: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD);
                                break;
                            }
                            case 64: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD);
                                break;
                            }
                            case 62: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD);
                                break;
                            }
                            case 53: {
                                if (annotations == null || indexInAnnotations >= annotations.length) break;
                                org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotations[indexInAnnotations++];
                                modifier = this.convert(annotation);
                                this.scanner.resetTo(annotation.declarationSourceEnd + 1, this.compilationUnitSourceLength);
                                break;
                            }
                            case 1001: 
                            case 1002: 
                            case 1003: {
                                break;
                            }
                            default: {
                                return;
                            }
                        }
                        if (modifier == null) continue;
                        variableDecl.modifiers().add(modifier);
                    }
                    break;
                }
                catch (InvalidInputException invalidInputException) {}
            }
        }
    }

    protected void setModifiers(TypeDeclaration typeDecl, org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        switch (this.ast.apiLevel) {
            case 2: {
                int modifiers = typeDeclaration.modifiers;
                modifiers &= 0xFFFFFDFF;
                typeDecl.internalSetModifiers(modifiers &= 0xFFFF);
                if (typeDeclaration.annotations == null) break;
                typeDecl.setFlags(typeDecl.getFlags() | 1);
                break;
            }
            default: {
                this.scanner.resetTo(typeDeclaration.declarationSourceStart, typeDeclaration.sourceStart);
                this.setModifiers(typeDecl, typeDeclaration.annotations, typeDeclaration.sourceStart);
            }
        }
    }

    protected void setModifiers(VariableDeclarationExpression variableDeclarationExpression, LocalDeclaration localDeclaration) {
        switch (this.ast.apiLevel) {
            case 2: {
                int modifiers = localDeclaration.modifiers & 0xFFFF;
                variableDeclarationExpression.internalSetModifiers(modifiers &= 0xFBFFFFFF);
                if (localDeclaration.annotations == null) break;
                variableDeclarationExpression.setFlags(variableDeclarationExpression.getFlags() | 1);
                break;
            }
            default: {
                this.scanner.resetTo(localDeclaration.declarationSourceStart, localDeclaration.sourceStart);
                org.eclipse.jdt.internal.compiler.ast.Annotation[] annotations = localDeclaration.annotations;
                int indexInAnnotations = 0;
                try {
                    int token;
                    while ((token = this.scanner.getNextToken()) != 69) {
                        ASTNode modifier = null;
                        switch (token) {
                            case 56: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                                break;
                            }
                            case 61: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD);
                                break;
                            }
                            case 54: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.STATIC_KEYWORD);
                                break;
                            }
                            case 60: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD);
                                break;
                            }
                            case 59: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD);
                                break;
                            }
                            case 57: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.FINAL_KEYWORD);
                                break;
                            }
                            case 58: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD);
                                break;
                            }
                            case 55: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD);
                                break;
                            }
                            case 63: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD);
                                break;
                            }
                            case 64: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD);
                                break;
                            }
                            case 62: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD);
                                break;
                            }
                            case 53: {
                                if (annotations == null || indexInAnnotations >= annotations.length) break;
                                org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotations[indexInAnnotations++];
                                modifier = this.convert(annotation);
                                this.scanner.resetTo(annotation.declarationSourceEnd + 1, this.compilationUnitSourceLength);
                                break;
                            }
                            case 1001: 
                            case 1002: 
                            case 1003: {
                                break;
                            }
                            default: {
                                return;
                            }
                        }
                        if (modifier == null) continue;
                        variableDeclarationExpression.modifiers().add(modifier);
                    }
                    break;
                }
                catch (InvalidInputException invalidInputException) {}
            }
        }
    }

    protected void setModifiers(VariableDeclarationStatement variableDeclarationStatement, LocalDeclaration localDeclaration) {
        switch (this.ast.apiLevel) {
            case 2: {
                int modifiers = localDeclaration.modifiers & 0xFFFF;
                variableDeclarationStatement.internalSetModifiers(modifiers &= 0xFBFFFFFF);
                if (localDeclaration.annotations == null) break;
                variableDeclarationStatement.setFlags(variableDeclarationStatement.getFlags() | 1);
                break;
            }
            default: {
                this.scanner.resetTo(localDeclaration.declarationSourceStart, localDeclaration.sourceStart);
                org.eclipse.jdt.internal.compiler.ast.Annotation[] annotations = localDeclaration.annotations;
                int indexInAnnotations = 0;
                try {
                    int token;
                    while ((token = this.scanner.getNextToken()) != 69) {
                        ASTNode modifier = null;
                        switch (token) {
                            case 56: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                                break;
                            }
                            case 61: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD);
                                break;
                            }
                            case 54: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.STATIC_KEYWORD);
                                break;
                            }
                            case 60: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD);
                                break;
                            }
                            case 59: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD);
                                break;
                            }
                            case 57: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.FINAL_KEYWORD);
                                break;
                            }
                            case 58: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD);
                                break;
                            }
                            case 55: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD);
                                break;
                            }
                            case 63: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD);
                                break;
                            }
                            case 64: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD);
                                break;
                            }
                            case 62: {
                                modifier = this.createModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD);
                                break;
                            }
                            case 53: {
                                if (annotations == null || indexInAnnotations >= annotations.length) break;
                                org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotations[indexInAnnotations++];
                                modifier = this.convert(annotation);
                                this.scanner.resetTo(annotation.declarationSourceEnd + 1, this.compilationUnitSourceLength);
                                break;
                            }
                            case 1001: 
                            case 1002: 
                            case 1003: {
                                break;
                            }
                            default: {
                                return;
                            }
                        }
                        if (modifier == null) continue;
                        variableDeclarationStatement.modifiers().add(modifier);
                    }
                    break;
                }
                catch (InvalidInputException invalidInputException) {}
            }
        }
    }

    protected QualifiedName setQualifiedNameNameAndSourceRanges(char[][] typeName, long[] positions, org.eclipse.jdt.internal.compiler.ast.ASTNode node) {
        int start0;
        int length = typeName.length;
        SimpleName firstToken = new SimpleName(this.ast);
        firstToken.internalSetIdentifier(new String(typeName[0]));
        firstToken.index = 1;
        int start = start0 = (int)(positions[0] >>> 32);
        int end = (int)(positions[0] & 0xFFFFFFFFFFFFFFFFL);
        firstToken.setSourceRange(start, end - start + 1);
        SimpleName secondToken = new SimpleName(this.ast);
        secondToken.internalSetIdentifier(new String(typeName[1]));
        secondToken.index = 2;
        start = (int)(positions[1] >>> 32);
        end = (int)(positions[1] & 0xFFFFFFFFFFFFFFFFL);
        secondToken.setSourceRange(start, end - start + 1);
        QualifiedName qualifiedName = new QualifiedName(this.ast);
        qualifiedName.setQualifier(firstToken);
        qualifiedName.setName(secondToken);
        if (this.resolveBindings) {
            this.recordNodes(qualifiedName, node);
            this.recordPendingNameScopeResolution(qualifiedName);
            this.recordNodes(firstToken, node);
            this.recordNodes(secondToken, node);
            this.recordPendingNameScopeResolution(firstToken);
            this.recordPendingNameScopeResolution(secondToken);
        }
        qualifiedName.index = 2;
        qualifiedName.setSourceRange(start0, end - start0 + 1);
        SimpleName newPart = null;
        int i = 2;
        while (i < length) {
            newPart = new SimpleName(this.ast);
            newPart.internalSetIdentifier(new String(typeName[i]));
            newPart.index = i + 1;
            start = (int)(positions[i] >>> 32);
            end = (int)(positions[i] & 0xFFFFFFFFFFFFFFFFL);
            newPart.setSourceRange(start, end - start + 1);
            QualifiedName qualifiedName2 = new QualifiedName(this.ast);
            qualifiedName2.setQualifier(qualifiedName);
            qualifiedName2.setName(newPart);
            qualifiedName = qualifiedName2;
            qualifiedName.index = newPart.index;
            qualifiedName.setSourceRange(start0, end - start0 + 1);
            if (this.resolveBindings) {
                this.recordNodes(qualifiedName, node);
                this.recordNodes(newPart, node);
                this.recordPendingNameScopeResolution(qualifiedName);
                this.recordPendingNameScopeResolution(newPart);
            }
            ++i;
        }
        QualifiedName name = qualifiedName;
        if (this.resolveBindings) {
            this.recordNodes(name, node);
            this.recordPendingNameScopeResolution(name);
        }
        return name;
    }

    protected QualifiedName setQualifiedNameNameAndSourceRanges(char[][] typeName, long[] positions, int endingIndex, org.eclipse.jdt.internal.compiler.ast.ASTNode node) {
        int start0;
        int length = endingIndex + 1;
        SimpleName firstToken = new SimpleName(this.ast);
        firstToken.internalSetIdentifier(new String(typeName[0]));
        firstToken.index = 1;
        int start = start0 = (int)(positions[0] >>> 32);
        int end = (int)positions[0];
        firstToken.setSourceRange(start, end - start + 1);
        SimpleName secondToken = new SimpleName(this.ast);
        secondToken.internalSetIdentifier(new String(typeName[1]));
        secondToken.index = 2;
        start = (int)(positions[1] >>> 32);
        end = (int)positions[1];
        secondToken.setSourceRange(start, end - start + 1);
        QualifiedName qualifiedName = new QualifiedName(this.ast);
        qualifiedName.setQualifier(firstToken);
        qualifiedName.setName(secondToken);
        if (this.resolveBindings) {
            this.recordNodes(qualifiedName, node);
            this.recordPendingNameScopeResolution(qualifiedName);
            this.recordNodes(firstToken, node);
            this.recordNodes(secondToken, node);
            this.recordPendingNameScopeResolution(firstToken);
            this.recordPendingNameScopeResolution(secondToken);
        }
        qualifiedName.index = 2;
        qualifiedName.setSourceRange(start0, end - start0 + 1);
        SimpleName newPart = null;
        int i = 2;
        while (i < length) {
            newPart = new SimpleName(this.ast);
            newPart.internalSetIdentifier(new String(typeName[i]));
            newPart.index = i + 1;
            start = (int)(positions[i] >>> 32);
            end = (int)positions[i];
            newPart.setSourceRange(start, end - start + 1);
            QualifiedName qualifiedName2 = new QualifiedName(this.ast);
            qualifiedName2.setQualifier(qualifiedName);
            qualifiedName2.setName(newPart);
            qualifiedName = qualifiedName2;
            qualifiedName.index = newPart.index;
            qualifiedName.setSourceRange(start0, end - start0 + 1);
            if (this.resolveBindings) {
                this.recordNodes(qualifiedName, node);
                this.recordNodes(newPart, node);
                this.recordPendingNameScopeResolution(qualifiedName);
                this.recordPendingNameScopeResolution(newPart);
            }
            ++i;
        }
        if (newPart == null && this.resolveBindings) {
            this.recordNodes(qualifiedName, node);
            this.recordPendingNameScopeResolution(qualifiedName);
        }
        return qualifiedName;
    }

    protected void setTypeNameForAnnotation(org.eclipse.jdt.internal.compiler.ast.Annotation compilerAnnotation, Annotation annotation) {
        TypeReference typeReference = compilerAnnotation.type;
        if (typeReference instanceof QualifiedTypeReference) {
            QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference)typeReference;
            char[][] tokens = qualifiedTypeReference.tokens;
            long[] positions = qualifiedTypeReference.sourcePositions;
            annotation.setTypeName(this.setQualifiedNameNameAndSourceRanges(tokens, positions, typeReference));
        } else {
            SingleTypeReference singleTypeReference = (SingleTypeReference)typeReference;
            SimpleName name = new SimpleName(this.ast);
            name.internalSetIdentifier(new String(singleTypeReference.token));
            int start = singleTypeReference.sourceStart;
            int end = singleTypeReference.sourceEnd;
            name.setSourceRange(start, end - start + 1);
            name.index = 1;
            annotation.setTypeName(name);
            if (this.resolveBindings) {
                this.recordNodes(name, typeReference);
            }
        }
    }

    protected void setTypeForField(FieldDeclaration fieldDeclaration, Type type, int extraDimension) {
        if (extraDimension != 0) {
            if (type.isArrayType()) {
                ArrayType arrayType = (ArrayType)type;
                int remainingDimensions = arrayType.getDimensions() - extraDimension;
                if (remainingDimensions == 0) {
                    Type elementType = arrayType.getElementType();
                    elementType.setParent(null, null);
                    this.ast.getBindingResolver().updateKey(type, elementType);
                    fieldDeclaration.setType(elementType);
                } else {
                    int start = type.getStartPosition();
                    ArrayType subarrayType = arrayType;
                    int index = extraDimension;
                    while (index > 0) {
                        subarrayType = (ArrayType)subarrayType.getComponentType();
                        --index;
                    }
                    int end = this.retrieveProperRightBracketPosition(remainingDimensions, start);
                    subarrayType.setSourceRange(start, end - start + 1);
                    subarrayType.setParent(null, null);
                    fieldDeclaration.setType(subarrayType);
                    this.updateInnerPositions(subarrayType, remainingDimensions);
                    this.ast.getBindingResolver().updateKey(type, subarrayType);
                }
            } else {
                fieldDeclaration.setType(type);
            }
        } else {
            if (type.isArrayType()) {
                int dimensions = ((ArrayType)type).getDimensions();
                this.updateInnerPositions(type, dimensions);
            }
            fieldDeclaration.setType(type);
        }
    }

    protected void setTypeForMethodDeclaration(MethodDeclaration methodDeclaration, Type type, int extraDimension) {
        if (extraDimension != 0) {
            if (type.isArrayType()) {
                ArrayType arrayType = (ArrayType)type;
                int remainingDimensions = arrayType.getDimensions() - extraDimension;
                if (remainingDimensions == 0) {
                    Type elementType = arrayType.getElementType();
                    elementType.setParent(null, null);
                    this.ast.getBindingResolver().updateKey(type, elementType);
                    switch (this.ast.apiLevel) {
                        case 2: {
                            methodDeclaration.internalSetReturnType(elementType);
                            break;
                        }
                        default: {
                            methodDeclaration.setReturnType2(elementType);
                            break;
                        }
                    }
                } else {
                    int start = type.getStartPosition();
                    ArrayType subarrayType = arrayType;
                    int index = extraDimension;
                    while (index > 0) {
                        subarrayType = (ArrayType)subarrayType.getComponentType();
                        --index;
                    }
                    int end = this.retrieveProperRightBracketPosition(remainingDimensions, start);
                    subarrayType.setSourceRange(start, end - start + 1);
                    subarrayType.setParent(null, null);
                    this.updateInnerPositions(subarrayType, remainingDimensions);
                    switch (this.ast.apiLevel) {
                        case 2: {
                            methodDeclaration.internalSetReturnType(subarrayType);
                            break;
                        }
                        default: {
                            methodDeclaration.setReturnType2(subarrayType);
                        }
                    }
                    this.ast.getBindingResolver().updateKey(type, subarrayType);
                }
            } else {
                switch (this.ast.apiLevel) {
                    case 2: {
                        methodDeclaration.internalSetReturnType(type);
                        break;
                    }
                    default: {
                        methodDeclaration.setReturnType2(type);
                        break;
                    }
                }
            }
        } else {
            switch (this.ast.apiLevel) {
                case 2: {
                    methodDeclaration.internalSetReturnType(type);
                    break;
                }
                default: {
                    methodDeclaration.setReturnType2(type);
                }
            }
        }
    }

    protected void setTypeForMethodDeclaration(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration, Type type, int extraDimension) {
        annotationTypeMemberDeclaration.setType(type);
    }

    protected void setTypeForSingleVariableDeclaration(SingleVariableDeclaration singleVariableDeclaration, Type type, int extraDimension) {
        if (extraDimension != 0) {
            if (type.isArrayType()) {
                ArrayType arrayType = (ArrayType)type;
                int remainingDimensions = arrayType.getDimensions() - extraDimension;
                if (remainingDimensions == 0) {
                    Type elementType = arrayType.getElementType();
                    elementType.setParent(null, null);
                    this.ast.getBindingResolver().updateKey(type, elementType);
                    singleVariableDeclaration.setType(elementType);
                } else {
                    int start = type.getStartPosition();
                    ArrayType subarrayType = arrayType;
                    int index = extraDimension;
                    while (index > 0) {
                        subarrayType = (ArrayType)subarrayType.getComponentType();
                        --index;
                    }
                    int end = this.retrieveProperRightBracketPosition(remainingDimensions, start);
                    subarrayType.setSourceRange(start, end - start + 1);
                    subarrayType.setParent(null, null);
                    this.updateInnerPositions(subarrayType, remainingDimensions);
                    singleVariableDeclaration.setType(subarrayType);
                    this.ast.getBindingResolver().updateKey(type, subarrayType);
                }
            } else {
                singleVariableDeclaration.setType(type);
            }
        } else {
            singleVariableDeclaration.setType(type);
        }
    }

    protected void setTypeForVariableDeclarationExpression(VariableDeclarationExpression variableDeclarationExpression, Type type, int extraDimension) {
        if (extraDimension != 0) {
            if (type.isArrayType()) {
                ArrayType arrayType = (ArrayType)type;
                int remainingDimensions = arrayType.getDimensions() - extraDimension;
                if (remainingDimensions == 0) {
                    Type elementType = arrayType.getElementType();
                    elementType.setParent(null, null);
                    this.ast.getBindingResolver().updateKey(type, elementType);
                    variableDeclarationExpression.setType(elementType);
                } else {
                    int start = type.getStartPosition();
                    ArrayType subarrayType = arrayType;
                    int index = extraDimension;
                    while (index > 0) {
                        subarrayType = (ArrayType)subarrayType.getComponentType();
                        --index;
                    }
                    int end = this.retrieveProperRightBracketPosition(remainingDimensions, start);
                    subarrayType.setSourceRange(start, end - start + 1);
                    subarrayType.setParent(null, null);
                    this.updateInnerPositions(subarrayType, remainingDimensions);
                    variableDeclarationExpression.setType(subarrayType);
                    this.ast.getBindingResolver().updateKey(type, subarrayType);
                }
            } else {
                variableDeclarationExpression.setType(type);
            }
        } else {
            variableDeclarationExpression.setType(type);
        }
    }

    protected void setTypeForVariableDeclarationStatement(VariableDeclarationStatement variableDeclarationStatement, Type type, int extraDimension) {
        if (extraDimension != 0) {
            if (type.isArrayType()) {
                ArrayType arrayType = (ArrayType)type;
                int remainingDimensions = arrayType.getDimensions() - extraDimension;
                if (remainingDimensions == 0) {
                    Type elementType = arrayType.getElementType();
                    elementType.setParent(null, null);
                    this.ast.getBindingResolver().updateKey(type, elementType);
                    variableDeclarationStatement.setType(elementType);
                } else {
                    int start = type.getStartPosition();
                    ArrayType subarrayType = arrayType;
                    int index = extraDimension;
                    while (index > 0) {
                        subarrayType = (ArrayType)subarrayType.getComponentType();
                        --index;
                    }
                    int end = this.retrieveProperRightBracketPosition(remainingDimensions, start);
                    subarrayType.setSourceRange(start, end - start + 1);
                    subarrayType.setParent(null, null);
                    this.updateInnerPositions(subarrayType, remainingDimensions);
                    variableDeclarationStatement.setType(subarrayType);
                    this.ast.getBindingResolver().updateKey(type, subarrayType);
                }
            } else {
                variableDeclarationStatement.setType(type);
            }
        } else {
            variableDeclarationStatement.setType(type);
        }
    }

    protected void updateInnerPositions(Type type, int dimensions) {
        if (dimensions > 1) {
            int start = type.getStartPosition();
            Type currentComponentType = ((ArrayType)type).getComponentType();
            int searchedDimension = dimensions - 1;
            int rightBracketEndPosition = start;
            while (currentComponentType.isArrayType()) {
                rightBracketEndPosition = this.retrieveProperRightBracketPosition(searchedDimension, start);
                currentComponentType.setSourceRange(start, rightBracketEndPosition - start + 1);
                currentComponentType = ((ArrayType)currentComponentType).getComponentType();
                --searchedDimension;
            }
        }
    }
}

