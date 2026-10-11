/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArgumentExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.search.matching.ImportMatchLocatorParser;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;

public class MatchLocatorParser
extends Parser {
    MatchingNodeSet nodeSet;
    PatternLocator patternLocator;
    private ASTVisitor localDeclarationVisitor;
    final int patternFineGrain;

    public static MatchLocatorParser createParser(ProblemReporter problemReporter, MatchLocator locator) {
        if ((locator.matchContainer & 1) != 0) {
            return new ImportMatchLocatorParser(problemReporter, locator);
        }
        return new MatchLocatorParser(problemReporter, locator);
    }

    protected MatchLocatorParser(ProblemReporter problemReporter, MatchLocator locator) {
        super(problemReporter, true);
        this.reportOnlyOneSyntaxError = true;
        this.patternLocator = locator.patternLocator;
        this.localDeclarationVisitor = (locator.matchContainer & 2) != 0 ? ((locator.matchContainer & 4) != 0 ? new ClassAndMethodDeclarationVisitor() : new ClassButNoMethodDeclarationVisitor()) : ((locator.matchContainer & 4) != 0 ? new MethodButNoClassDeclarationVisitor() : new NoClassNoMethodDeclarationVisitor());
        this.patternFineGrain = this.patternLocator.fineGrain();
    }

    public void checkComment() {
        super.checkComment();
        if (this.javadocParser.checkDocComment && this.javadoc != null && this.patternFineGrain == 0) {
            Expression[] references;
            TypeReference[] thrownExceptions;
            JavadocSingleTypeReference[] paramTypeParameters;
            JavadocSingleNameReference[] paramReferences = this.javadoc.paramReferences;
            if (paramReferences != null) {
                int i = 0;
                int length = paramReferences.length;
                while (i < length) {
                    this.patternLocator.match(paramReferences[i], this.nodeSet);
                    ++i;
                }
            }
            if ((paramTypeParameters = this.javadoc.paramTypeParameters) != null) {
                int i = 0;
                int length = paramTypeParameters.length;
                while (i < length) {
                    this.patternLocator.match(paramTypeParameters[i], this.nodeSet);
                    ++i;
                }
            }
            if ((thrownExceptions = this.javadoc.exceptionReferences) != null) {
                int i = 0;
                int length = thrownExceptions.length;
                while (i < length) {
                    this.patternLocator.match(thrownExceptions[i], this.nodeSet);
                    ++i;
                }
            }
            if ((references = this.javadoc.seeReferences) != null) {
                int i = 0;
                int length = references.length;
                while (i < length) {
                    JavadocArgumentExpression argument;
                    int al;
                    Expression reference = references[i];
                    if (reference instanceof TypeReference) {
                        TypeReference typeRef = (TypeReference)reference;
                        this.patternLocator.match(typeRef, this.nodeSet);
                    } else if (reference instanceof JavadocFieldReference) {
                        JavadocFieldReference fieldRef = (JavadocFieldReference)reference;
                        this.patternLocator.match(fieldRef, this.nodeSet);
                        if (fieldRef.receiver instanceof TypeReference && !fieldRef.receiver.isThis()) {
                            TypeReference typeRef = (TypeReference)fieldRef.receiver;
                            this.patternLocator.match(typeRef, this.nodeSet);
                        }
                    } else if (reference instanceof JavadocMessageSend) {
                        JavadocMessageSend messageSend = (JavadocMessageSend)reference;
                        this.patternLocator.match(messageSend, this.nodeSet);
                        if (messageSend.receiver instanceof TypeReference && !messageSend.receiver.isThis()) {
                            TypeReference typeRef = (TypeReference)messageSend.receiver;
                            this.patternLocator.match(typeRef, this.nodeSet);
                        }
                        if (messageSend.arguments != null) {
                            int a = 0;
                            al = messageSend.arguments.length;
                            while (a < al) {
                                argument = (JavadocArgumentExpression)messageSend.arguments[a];
                                if (argument.argument != null && argument.argument.type != null) {
                                    this.patternLocator.match(argument.argument.type, this.nodeSet);
                                }
                                ++a;
                            }
                        }
                    } else if (reference instanceof JavadocAllocationExpression) {
                        JavadocAllocationExpression constructor = (JavadocAllocationExpression)reference;
                        this.patternLocator.match(constructor, this.nodeSet);
                        if (constructor.type != null && !constructor.type.isThis()) {
                            this.patternLocator.match(constructor.type, this.nodeSet);
                        }
                        if (constructor.arguments != null) {
                            int a = 0;
                            al = constructor.arguments.length;
                            while (a < al) {
                                this.patternLocator.match(constructor.arguments[a], this.nodeSet);
                                argument = (JavadocArgumentExpression)constructor.arguments[a];
                                if (argument.argument != null && argument.argument.type != null) {
                                    this.patternLocator.match(argument.argument.type, this.nodeSet);
                                }
                                ++a;
                            }
                        }
                    }
                    ++i;
                }
            }
        }
    }

    protected void classInstanceCreation(boolean alwaysQualified) {
        super.classInstanceCreation(alwaysQualified);
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(this.expressionStack[this.expressionPtr], this.nodeSet);
        } else if ((this.patternFineGrain & 0x2000) != 0) {
            AllocationExpression allocation = (AllocationExpression)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(allocation.type, this.nodeSet);
        }
    }

    protected void consumeAdditionalBound() {
        super.consumeAdditionalBound();
        if ((this.patternFineGrain & 0x40000) != 0) {
            TypeReference typeReference = (TypeReference)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(typeReference, this.nodeSet);
        }
    }

    protected void consumeAssignment() {
        super.consumeAssignment();
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    protected void consumeCastExpressionLL1() {
        super.consumeCastExpressionLL1();
        if ((this.patternFineGrain & 0x800) != 0) {
            CastExpression castExpression = (CastExpression)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(castExpression.type, this.nodeSet);
        }
    }

    protected void consumeCastExpressionWithGenericsArray() {
        super.consumeCastExpressionWithGenericsArray();
        if ((this.patternFineGrain & 0x800) != 0) {
            CastExpression castExpression = (CastExpression)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(castExpression.type, this.nodeSet);
        }
    }

    protected void consumeCastExpressionWithNameArray() {
        super.consumeCastExpressionWithNameArray();
        if ((this.patternFineGrain & 0x800) != 0) {
            CastExpression castExpression = (CastExpression)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(castExpression.type, this.nodeSet);
        }
    }

    protected void consumeCastExpressionWithPrimitiveType() {
        super.consumeCastExpressionWithPrimitiveType();
        if ((this.patternFineGrain & 0x800) != 0) {
            CastExpression castExpression = (CastExpression)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(castExpression.type, this.nodeSet);
        }
    }

    protected void consumeCastExpressionWithQualifiedGenericsArray() {
        super.consumeCastExpressionWithQualifiedGenericsArray();
        if ((this.patternFineGrain & 0x800) != 0) {
            CastExpression castExpression = (CastExpression)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(castExpression.type, this.nodeSet);
        }
    }

    protected void consumeCatchFormalParameter() {
        super.consumeCatchFormalParameter();
        this.patternLocator.match((LocalDeclaration)this.astStack[this.astPtr], this.nodeSet);
    }

    protected void consumeClassHeaderExtends() {
        this.patternLocator.setFlavors(4096);
        super.consumeClassHeaderExtends();
        if ((this.patternFineGrain & 0x200) != 0) {
            TypeDeclaration typeDeclaration = (TypeDeclaration)this.astStack[this.astPtr];
            this.patternLocator.match(typeDeclaration.superclass, this.nodeSet);
        }
        this.patternLocator.setFlavors(0);
    }

    protected void consumeClassInstanceCreationExpressionQualifiedWithTypeArguments() {
        super.consumeClassInstanceCreationExpressionWithTypeArguments();
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(this.expressionStack[this.expressionPtr], this.nodeSet);
        } else if ((this.patternFineGrain & 0x2000) != 0) {
            AllocationExpression allocation = (AllocationExpression)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(allocation.type, this.nodeSet);
        }
    }

    protected void consumeClassInstanceCreationExpressionWithTypeArguments() {
        super.consumeClassInstanceCreationExpressionWithTypeArguments();
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(this.expressionStack[this.expressionPtr], this.nodeSet);
        } else if ((this.patternFineGrain & 0x2000) != 0) {
            AllocationExpression allocation = (AllocationExpression)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(allocation.type, this.nodeSet);
        }
    }

    protected void consumeEnterAnonymousClassBody(boolean qualified) {
        this.patternLocator.setFlavors(4096);
        super.consumeEnterAnonymousClassBody(qualified);
        this.patternLocator.setFlavors(0);
    }

    protected void consumeEnterVariable() {
        boolean isLocalDeclaration = this.nestedMethod[this.nestedType] != 0;
        super.consumeEnterVariable();
        if (isLocalDeclaration) {
            if ((this.patternFineGrain & 0x80) != 0) {
                LocalDeclaration localDeclaration = (LocalDeclaration)this.astStack[this.astPtr];
                this.patternLocator.match(localDeclaration.type, this.nodeSet);
            }
        } else if ((this.patternFineGrain & 0x40) != 0) {
            FieldDeclaration fieldDeclaration = (FieldDeclaration)this.astStack[this.astPtr];
            this.patternLocator.match(fieldDeclaration.type, this.nodeSet);
        }
    }

    protected void consumeExplicitConstructorInvocation(int flag, int recFlag) {
        super.consumeExplicitConstructorInvocation(flag, recFlag);
        this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
    }

    protected void consumeExplicitConstructorInvocationWithTypeArguments(int flag, int recFlag) {
        super.consumeExplicitConstructorInvocationWithTypeArguments(flag, recFlag);
        this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
    }

    protected void consumeFieldAccess(boolean isSuperAccess) {
        int fineGrain;
        super.consumeFieldAccess(isSuperAccess);
        int n = fineGrain = isSuperAccess ? 0x1000000 : 0x4000000;
        if (this.patternFineGrain == 0 || (this.patternFineGrain & fineGrain) != 0) {
            this.patternLocator.match((Reference)this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    protected void consumeFormalParameter(boolean isVarArgs) {
        super.consumeFormalParameter(isVarArgs);
        this.patternLocator.match((LocalDeclaration)this.astStack[this.astPtr], this.nodeSet);
    }

    protected void consumeInstanceOfExpression() {
        super.consumeInstanceOfExpression();
        if ((this.patternFineGrain & 0x100000) != 0) {
            InstanceOfExpression expression = (InstanceOfExpression)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(expression.type, this.nodeSet);
        }
    }

    protected void consumeInstanceOfExpressionWithName() {
        super.consumeInstanceOfExpressionWithName();
        if ((this.patternFineGrain & 0x100000) != 0) {
            InstanceOfExpression expression = (InstanceOfExpression)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(expression.type, this.nodeSet);
        }
    }

    protected void consumeInterfaceType() {
        this.patternLocator.setFlavors(4096);
        super.consumeInterfaceType();
        if ((this.patternFineGrain & 0x200) != 0) {
            TypeReference typeReference = (TypeReference)this.astStack[this.astPtr];
            this.patternLocator.match(typeReference, this.nodeSet);
        }
        this.patternLocator.setFlavors(0);
    }

    protected void consumeLocalVariableDeclaration() {
        super.consumeLocalVariableDeclaration();
        this.patternLocator.match((LocalDeclaration)this.astStack[this.astPtr], this.nodeSet);
    }

    protected void consumeMarkerAnnotation() {
        super.consumeMarkerAnnotation();
        if (this.patternFineGrain == 0 || (this.patternFineGrain & 0x10000) != 0) {
            Annotation annotation = (Annotation)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(annotation, this.nodeSet);
        }
    }

    protected void consumeMemberValuePair() {
        super.consumeMemberValuePair();
        this.patternLocator.match((MemberValuePair)this.astStack[this.astPtr], this.nodeSet);
    }

    protected void consumeMethodHeaderName(boolean isAnnotationMethod) {
        super.consumeMethodHeaderName(isAnnotationMethod);
        if ((this.patternFineGrain & 0x4000) != 0) {
            MethodDeclaration methodDeclaration = (MethodDeclaration)this.astStack[this.astPtr];
            this.patternLocator.match(methodDeclaration.returnType, this.nodeSet);
        }
    }

    protected void consumeMethodHeaderRightParen() {
        super.consumeMethodHeaderRightParen();
        if ((this.patternFineGrain & 0x100) != 0) {
            AbstractMethodDeclaration methodDeclaration = (AbstractMethodDeclaration)this.astStack[this.astPtr];
            Argument[] arguments = methodDeclaration.arguments;
            if (arguments != null) {
                int argLength = arguments.length;
                int i = 0;
                while (i < argLength) {
                    this.patternLocator.match(arguments[i].type, this.nodeSet);
                    ++i;
                }
            }
        }
    }

    protected void consumeMethodHeaderThrowsClause() {
        super.consumeMethodHeaderThrowsClause();
        if ((this.patternFineGrain & 0x400) != 0) {
            AbstractMethodDeclaration methodDeclaration = (AbstractMethodDeclaration)this.astStack[this.astPtr];
            TypeReference[] thrownExceptions = methodDeclaration.thrownExceptions;
            if (thrownExceptions != null) {
                int thrownLength = thrownExceptions.length;
                int i = 0;
                while (i < thrownLength) {
                    this.patternLocator.match(thrownExceptions[i], this.nodeSet);
                    ++i;
                }
            }
        }
    }

    protected void consumeMethodInvocationName() {
        super.consumeMethodInvocationName();
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(messageSend, this.nodeSet);
        } else if (messageSend.receiver.isThis()) {
            if ((this.patternFineGrain & 0x8000000) != 0) {
                this.patternLocator.match(messageSend, this.nodeSet);
            }
        } else if ((this.patternFineGrain & 0x2000000) != 0) {
            this.patternLocator.match(messageSend, this.nodeSet);
        }
    }

    protected void consumeMethodInvocationNameWithTypeArguments() {
        super.consumeMethodInvocationNameWithTypeArguments();
        MessageSend messageSend = (MessageSend)this.expressionStack[this.expressionPtr];
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(messageSend, this.nodeSet);
        } else if (messageSend.receiver.isThis()) {
            if ((this.patternFineGrain & 0x8000000) != 0) {
                this.patternLocator.match(messageSend, this.nodeSet);
            }
        } else if ((this.patternFineGrain & 0x2000000) != 0) {
            this.patternLocator.match(messageSend, this.nodeSet);
        }
    }

    protected void consumeMethodInvocationPrimary() {
        super.consumeMethodInvocationPrimary();
        if (this.patternFineGrain == 0 || (this.patternFineGrain & 0x4000000) != 0) {
            this.patternLocator.match((MessageSend)this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    protected void consumeMethodInvocationPrimaryWithTypeArguments() {
        super.consumeMethodInvocationPrimaryWithTypeArguments();
        if (this.patternFineGrain == 0 || (this.patternFineGrain & 0x4000000) != 0) {
            this.patternLocator.match((MessageSend)this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    protected void consumeMethodInvocationSuper() {
        super.consumeMethodInvocationSuper();
        if (this.patternFineGrain == 0 || (this.patternFineGrain & 0x1000000) != 0) {
            this.patternLocator.match((MessageSend)this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    protected void consumeMethodInvocationSuperWithTypeArguments() {
        super.consumeMethodInvocationSuperWithTypeArguments();
        if (this.patternFineGrain == 0 || (this.patternFineGrain & 0x1000000) != 0) {
            this.patternLocator.match((MessageSend)this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    protected void consumeNormalAnnotation() {
        super.consumeNormalAnnotation();
        if (this.patternFineGrain == 0 || (this.patternFineGrain & 0x10000) != 0) {
            Annotation annotation = (Annotation)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(annotation, this.nodeSet);
        }
    }

    protected void consumeOnlyTypeArguments() {
        TypeReference typeReference;
        int length;
        super.consumeOnlyTypeArguments();
        if ((this.patternFineGrain & 0x20000) != 0 && (length = this.genericsLengthStack[this.genericsLengthPtr]) == 1 && !((typeReference = (TypeReference)this.genericsStack[this.genericsPtr]) instanceof Wildcard)) {
            this.patternLocator.match(typeReference, this.nodeSet);
        }
    }

    protected void consumePrimaryNoNewArray() {
        --this.intPtr;
        --this.intPtr;
    }

    protected void consumePrimaryNoNewArrayWithName() {
        this.pushOnExpressionStack(this.getUnspecifiedReferenceOptimized());
        --this.intPtr;
        --this.intPtr;
    }

    protected void consumeSingleMemberAnnotation() {
        super.consumeSingleMemberAnnotation();
        if (this.patternFineGrain == 0 || (this.patternFineGrain & 0x10000) != 0) {
            Annotation annotation = (Annotation)this.expressionStack[this.expressionPtr];
            this.patternLocator.match(annotation, this.nodeSet);
        }
    }

    protected void consumeStatementCatch() {
        super.consumeStatementCatch();
        if ((this.patternFineGrain & 0x1000) != 0) {
            LocalDeclaration localDeclaration = (LocalDeclaration)this.astStack[this.astPtr - 1];
            if (localDeclaration.type instanceof UnionTypeReference) {
                TypeReference[] refs = ((UnionTypeReference)localDeclaration.type).typeReferences;
                int i = 0;
                int len = refs.length;
                while (i < len) {
                    this.patternLocator.match(refs[i], this.nodeSet);
                    ++i;
                }
            } else {
                this.patternLocator.match(localDeclaration.type, this.nodeSet);
            }
        }
    }

    protected void consumeTypeArgumentList1() {
        super.consumeTypeArgumentList1();
        if ((this.patternFineGrain & 0x20000) != 0) {
            int i = this.genericsPtr - this.genericsLengthStack[this.genericsLengthPtr] + 1;
            while (i <= this.genericsPtr) {
                TypeReference typeReference = (TypeReference)this.genericsStack[i];
                if (!(typeReference instanceof Wildcard)) {
                    this.patternLocator.match(typeReference, this.nodeSet);
                }
                ++i;
            }
        }
    }

    protected void consumeTypeArgumentList2() {
        super.consumeTypeArgumentList2();
        if ((this.patternFineGrain & 0x20000) != 0) {
            int i = this.genericsPtr - this.genericsLengthStack[this.genericsLengthPtr] + 1;
            while (i <= this.genericsPtr) {
                TypeReference typeReference = (TypeReference)this.genericsStack[i];
                if (!(typeReference instanceof Wildcard)) {
                    this.patternLocator.match(typeReference, this.nodeSet);
                }
                ++i;
            }
        }
    }

    protected void consumeTypeArgumentList3() {
        super.consumeTypeArgumentList3();
        if ((this.patternFineGrain & 0x20000) != 0) {
            int i = this.genericsPtr - this.genericsLengthStack[this.genericsLengthPtr] + 1;
            while (i <= this.genericsPtr) {
                TypeReference typeReference = (TypeReference)this.genericsStack[i];
                if (!(typeReference instanceof Wildcard)) {
                    this.patternLocator.match(typeReference, this.nodeSet);
                }
                ++i;
            }
        }
    }

    protected void consumeTypeArgumentReferenceType1() {
        int length;
        super.consumeTypeArgumentReferenceType1();
        if ((this.patternFineGrain & 0x20000) != 0 && (length = this.genericsLengthStack[this.genericsLengthPtr]) == 1) {
            TypeReference typeReference = (TypeReference)this.genericsStack[this.genericsPtr];
            TypeReference[] typeArguments = null;
            if (typeReference instanceof ParameterizedSingleTypeReference) {
                typeArguments = ((ParameterizedSingleTypeReference)typeReference).typeArguments;
            } else if (typeReference instanceof ParameterizedQualifiedTypeReference) {
                TypeReference[][] allTypeArguments = ((ParameterizedQualifiedTypeReference)typeReference).typeArguments;
                typeArguments = allTypeArguments[allTypeArguments.length - 1];
            }
            if (typeArguments != null) {
                int i = 0;
                int ln = typeArguments.length;
                while (i < ln) {
                    if (!(typeArguments[i] instanceof Wildcard)) {
                        this.patternLocator.match(typeArguments[i], this.nodeSet);
                    }
                    ++i;
                }
            }
        }
    }

    protected void consumeTypeArgumentReferenceType2() {
        int length;
        super.consumeTypeArgumentReferenceType2();
        if ((this.patternFineGrain & 0x20000) != 0 && (length = this.genericsLengthStack[this.genericsLengthPtr]) == 1) {
            TypeReference typeReference = (TypeReference)this.genericsStack[this.genericsPtr];
            TypeReference[] typeArguments = null;
            if (typeReference instanceof ParameterizedSingleTypeReference) {
                typeArguments = ((ParameterizedSingleTypeReference)typeReference).typeArguments;
            } else if (typeReference instanceof ParameterizedQualifiedTypeReference) {
                TypeReference[][] allTypeArguments = ((ParameterizedQualifiedTypeReference)typeReference).typeArguments;
                typeArguments = allTypeArguments[allTypeArguments.length - 1];
            }
            if (typeArguments != null) {
                int i = 0;
                int ln = typeArguments.length;
                while (i < ln) {
                    if (!(typeArguments[i] instanceof Wildcard)) {
                        this.patternLocator.match(typeArguments[i], this.nodeSet);
                    }
                    ++i;
                }
            }
        }
    }

    protected void consumeTypeArguments() {
        TypeReference typeReference;
        int length;
        super.consumeTypeArguments();
        if ((this.patternFineGrain & 0x20000) != 0 && (length = this.genericsLengthStack[this.genericsLengthPtr]) == 1 && !((typeReference = (TypeReference)this.genericsStack[this.genericsPtr]) instanceof Wildcard)) {
            this.patternLocator.match(typeReference, this.nodeSet);
        }
    }

    protected void consumeTypeParameter1WithExtends() {
        super.consumeTypeParameter1WithExtends();
        if ((this.patternFineGrain & 0x40000) != 0) {
            TypeParameter typeParameter = (TypeParameter)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(typeParameter.type, this.nodeSet);
        }
    }

    protected void consumeTypeParameter1WithExtendsAndBounds() {
        super.consumeTypeParameter1WithExtendsAndBounds();
        if ((this.patternFineGrain & 0x40000) != 0) {
            TypeParameter typeParameter = (TypeParameter)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(typeParameter.type, this.nodeSet);
        }
    }

    protected void consumeTypeParameterHeader() {
        super.consumeTypeParameterHeader();
        this.patternLocator.match((TypeParameter)this.genericsStack[this.genericsPtr], this.nodeSet);
    }

    protected void consumeTypeParameterWithExtends() {
        super.consumeTypeParameterWithExtends();
        if ((this.patternFineGrain & 0x40000) != 0) {
            TypeParameter typeParameter = (TypeParameter)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(typeParameter.type, this.nodeSet);
        }
    }

    protected void consumeTypeParameterWithExtendsAndBounds() {
        super.consumeTypeParameterWithExtendsAndBounds();
        if ((this.patternFineGrain & 0x40000) != 0) {
            TypeParameter typeParameter = (TypeParameter)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(typeParameter.type, this.nodeSet);
        }
    }

    protected void consumeUnaryExpression(int op, boolean post) {
        super.consumeUnaryExpression(op, post);
        this.patternLocator.match(this.expressionStack[this.expressionPtr], this.nodeSet);
    }

    protected void consumeWildcardBounds1Extends() {
        super.consumeWildcardBounds1Extends();
        if ((this.patternFineGrain & 0x80000) != 0) {
            Wildcard wildcard = (Wildcard)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(wildcard.bound, this.nodeSet);
        }
    }

    protected void consumeWildcardBounds1Super() {
        super.consumeWildcardBounds1Super();
        if ((this.patternFineGrain & 0x80000) != 0) {
            Wildcard wildcard = (Wildcard)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(wildcard.bound, this.nodeSet);
        }
    }

    protected void consumeWildcardBounds2Extends() {
        super.consumeWildcardBounds2Extends();
        if ((this.patternFineGrain & 0x80000) != 0) {
            Wildcard wildcard = (Wildcard)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(wildcard.bound, this.nodeSet);
        }
    }

    protected void consumeWildcardBounds2Super() {
        super.consumeWildcardBounds2Super();
        if ((this.patternFineGrain & 0x80000) != 0) {
            Wildcard wildcard = (Wildcard)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(wildcard.bound, this.nodeSet);
        }
    }

    protected void consumeWildcardBounds3Extends() {
        super.consumeWildcardBounds3Extends();
        if ((this.patternFineGrain & 0x80000) != 0) {
            Wildcard wildcard = (Wildcard)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(wildcard.bound, this.nodeSet);
        }
    }

    protected void consumeWildcardBounds3Super() {
        super.consumeWildcardBounds3Super();
        if ((this.patternFineGrain & 0x80000) != 0) {
            Wildcard wildcard = (Wildcard)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(wildcard.bound, this.nodeSet);
        }
    }

    protected void consumeWildcardBoundsExtends() {
        super.consumeWildcardBoundsExtends();
        if ((this.patternFineGrain & 0x80000) != 0) {
            Wildcard wildcard = (Wildcard)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(wildcard.bound, this.nodeSet);
        }
    }

    protected void consumeWildcardBoundsSuper() {
        super.consumeWildcardBoundsSuper();
        if ((this.patternFineGrain & 0x80000) != 0) {
            Wildcard wildcard = (Wildcard)this.genericsStack[this.genericsPtr];
            this.patternLocator.match(wildcard.bound, this.nodeSet);
        }
    }

    protected TypeReference copyDims(TypeReference typeRef, int dim) {
        TypeReference result = super.copyDims(typeRef, dim);
        if (this.nodeSet.removePossibleMatch(typeRef) != null) {
            this.nodeSet.addPossibleMatch(result);
        } else if (this.nodeSet.removeTrustedMatch(typeRef) != null) {
            this.nodeSet.addTrustedMatch((ASTNode)result, true);
        }
        return result;
    }

    protected TypeReference getTypeReference(int dim) {
        TypeReference typeRef = super.getTypeReference(dim);
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(typeRef, this.nodeSet);
        }
        return typeRef;
    }

    protected NameReference getUnspecifiedReference() {
        NameReference nameRef = super.getUnspecifiedReference();
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(nameRef, this.nodeSet);
        } else if ((this.patternFineGrain & 0x2000000) != 0) {
            if (nameRef instanceof QualifiedNameReference) {
                this.patternLocator.match(nameRef, this.nodeSet);
            }
        } else if ((this.patternFineGrain & 0x8000000) != 0 && nameRef instanceof SingleNameReference) {
            this.patternLocator.match(nameRef, this.nodeSet);
        }
        return nameRef;
    }

    protected NameReference getUnspecifiedReferenceOptimized() {
        NameReference nameRef = super.getUnspecifiedReferenceOptimized();
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(nameRef, this.nodeSet);
        } else {
            boolean flagImplicitThis;
            boolean flagQualifiedRef = (this.patternFineGrain & 0x2000000) != 0;
            boolean bl = flagImplicitThis = (this.patternFineGrain & 0x8000000) != 0;
            if (flagQualifiedRef && flagImplicitThis) {
                this.patternLocator.match(nameRef, this.nodeSet);
            } else if (flagQualifiedRef) {
                if (nameRef instanceof QualifiedNameReference) {
                    this.patternLocator.match(nameRef, this.nodeSet);
                }
            } else if (flagImplicitThis && nameRef instanceof SingleNameReference) {
                this.patternLocator.match(nameRef, this.nodeSet);
            }
        }
        return nameRef;
    }

    public void parseBodies(CompilationUnitDeclaration unit) {
        TypeDeclaration[] types = unit.types;
        if (types == null) {
            return;
        }
        int i = 0;
        while (i < types.length) {
            TypeDeclaration type = types[i];
            this.patternLocator.match(type, this.nodeSet);
            this.parseBodies(type, unit);
            ++i;
        }
    }

    protected void parseBodies(TypeDeclaration type, CompilationUnitDeclaration unit) {
        TypeDeclaration[] memberTypes;
        AbstractMethodDeclaration[] methods;
        FieldDeclaration[] fields = type.fields;
        if (fields != null) {
            int i = 0;
            while (i < fields.length) {
                FieldDeclaration field = fields[i];
                if (field instanceof Initializer) {
                    this.parse((Initializer)field, type, unit);
                }
                field.traverse(this.localDeclarationVisitor, null);
                ++i;
            }
        }
        if ((methods = type.methods) != null) {
            int i = 0;
            while (i < methods.length) {
                AbstractMethodDeclaration method = methods[i];
                if (method.sourceStart >= type.bodyStart) {
                    if (method instanceof MethodDeclaration) {
                        MethodDeclaration methodDeclaration = (MethodDeclaration)method;
                        this.parse(methodDeclaration, unit);
                        methodDeclaration.traverse(this.localDeclarationVisitor, (ClassScope)null);
                    } else if (method instanceof ConstructorDeclaration) {
                        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration)method;
                        this.parse(constructorDeclaration, unit, false);
                        constructorDeclaration.traverse(this.localDeclarationVisitor, (ClassScope)null);
                    }
                } else if (method.isDefaultConstructor()) {
                    method.parseStatements(this, unit);
                }
                ++i;
            }
        }
        if ((memberTypes = type.memberTypes) != null) {
            int i = 0;
            while (i < memberTypes.length) {
                TypeDeclaration memberType = memberTypes[i];
                this.parseBodies(memberType, unit);
                memberType.traverse(this.localDeclarationVisitor, (ClassScope)null);
                ++i;
            }
        }
    }

    public class ClassAndMethodDeclarationVisitor
    extends ClassButNoMethodDeclarationVisitor {
        public boolean visit(TypeDeclaration localTypeDeclaration, BlockScope scope) {
            MatchLocatorParser.this.patternLocator.match(localTypeDeclaration, MatchLocatorParser.this.nodeSet);
            return true;
        }
    }

    public class ClassButNoMethodDeclarationVisitor
    extends ASTVisitor {
        public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope scope) {
            MatchLocatorParser.this.patternLocator.match(constructorDeclaration, MatchLocatorParser.this.nodeSet);
            return (constructorDeclaration.bits & 2) != 0;
        }

        public boolean visit(FieldDeclaration fieldDeclaration, MethodScope scope) {
            MatchLocatorParser.this.patternLocator.match(fieldDeclaration, MatchLocatorParser.this.nodeSet);
            return (fieldDeclaration.bits & 2) != 0;
        }

        public boolean visit(Initializer initializer, MethodScope scope) {
            MatchLocatorParser.this.patternLocator.match(initializer, MatchLocatorParser.this.nodeSet);
            return (initializer.bits & 2) != 0;
        }

        public boolean visit(TypeDeclaration memberTypeDeclaration, ClassScope scope) {
            MatchLocatorParser.this.patternLocator.match(memberTypeDeclaration, MatchLocatorParser.this.nodeSet);
            return true;
        }

        public boolean visit(MethodDeclaration methodDeclaration, ClassScope scope) {
            MatchLocatorParser.this.patternLocator.match(methodDeclaration, MatchLocatorParser.this.nodeSet);
            return (methodDeclaration.bits & 2) != 0;
        }

        public boolean visit(AnnotationMethodDeclaration methodDeclaration, ClassScope scope) {
            MatchLocatorParser.this.patternLocator.match(methodDeclaration, MatchLocatorParser.this.nodeSet);
            return false;
        }
    }

    public class MethodButNoClassDeclarationVisitor
    extends NoClassNoMethodDeclarationVisitor {
        public boolean visit(TypeDeclaration localTypeDeclaration, BlockScope scope) {
            MatchLocatorParser.this.patternLocator.match(localTypeDeclaration, MatchLocatorParser.this.nodeSet);
            return true;
        }
    }

    public class NoClassNoMethodDeclarationVisitor
    extends ASTVisitor {
        public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope scope) {
            return (constructorDeclaration.bits & 2) != 0;
        }

        public boolean visit(FieldDeclaration fieldDeclaration, MethodScope scope) {
            return (fieldDeclaration.bits & 2) != 0;
        }

        public boolean visit(Initializer initializer, MethodScope scope) {
            return (initializer.bits & 2) != 0;
        }

        public boolean visit(MethodDeclaration methodDeclaration, ClassScope scope) {
            return (methodDeclaration.bits & 2) != 0;
        }
    }
}

