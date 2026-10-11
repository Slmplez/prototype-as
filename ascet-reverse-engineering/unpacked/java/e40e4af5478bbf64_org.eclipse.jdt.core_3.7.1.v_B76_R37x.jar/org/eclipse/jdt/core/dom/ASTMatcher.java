/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;
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
import org.eclipse.jdt.core.dom.BooleanLiteral;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.CharacterLiteral;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.ContinueStatement;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
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
import org.eclipse.jdt.core.dom.StringLiteral;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SwitchCase;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.SynchronizedStatement;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.dom.TextElement;
import org.eclipse.jdt.core.dom.ThisExpression;
import org.eclipse.jdt.core.dom.ThrowStatement;
import org.eclipse.jdt.core.dom.TryStatement;
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

public class ASTMatcher {
    private boolean matchDocTags;

    public ASTMatcher() {
        this(false);
    }

    public ASTMatcher(boolean matchDocTags) {
        this.matchDocTags = matchDocTags;
    }

    public final boolean safeSubtreeListMatch(List list1, List list2) {
        int size2;
        int size1 = list1.size();
        if (size1 != (size2 = list2.size())) {
            return false;
        }
        Iterator it1 = list1.iterator();
        Iterator it2 = list2.iterator();
        while (it1.hasNext()) {
            ASTNode n2;
            ASTNode n1 = (ASTNode)it1.next();
            if (n1.subtreeMatch(this, n2 = (ASTNode)it2.next())) continue;
            return false;
        }
        return true;
    }

    public final boolean safeSubtreeMatch(Object node1, Object node2) {
        if (node1 == null && node2 == null) {
            return true;
        }
        if (node1 == null || node2 == null) {
            return false;
        }
        return ((ASTNode)node1).subtreeMatch(this, node2);
    }

    public static boolean safeEquals(Object o1, Object o2) {
        if (o1 == o2) {
            return true;
        }
        if (o1 == null || o2 == null) {
            return false;
        }
        return o1.equals(o2);
    }

    public boolean match(AnnotationTypeDeclaration node, Object other) {
        if (!(other instanceof AnnotationTypeDeclaration)) {
            return false;
        }
        AnnotationTypeDeclaration o = (AnnotationTypeDeclaration)other;
        return this.safeSubtreeMatch(node.getJavadoc(), o.getJavadoc()) && this.safeSubtreeListMatch(node.modifiers(), o.modifiers()) && this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeListMatch(node.bodyDeclarations(), o.bodyDeclarations());
    }

    public boolean match(AnnotationTypeMemberDeclaration node, Object other) {
        if (!(other instanceof AnnotationTypeMemberDeclaration)) {
            return false;
        }
        AnnotationTypeMemberDeclaration o = (AnnotationTypeMemberDeclaration)other;
        return this.safeSubtreeMatch(node.getJavadoc(), o.getJavadoc()) && this.safeSubtreeListMatch(node.modifiers(), o.modifiers()) && this.safeSubtreeMatch(node.getType(), o.getType()) && this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeMatch(node.getDefault(), o.getDefault());
    }

    public boolean match(AnonymousClassDeclaration node, Object other) {
        if (!(other instanceof AnonymousClassDeclaration)) {
            return false;
        }
        AnonymousClassDeclaration o = (AnonymousClassDeclaration)other;
        return this.safeSubtreeListMatch(node.bodyDeclarations(), o.bodyDeclarations());
    }

    public boolean match(ArrayAccess node, Object other) {
        if (!(other instanceof ArrayAccess)) {
            return false;
        }
        ArrayAccess o = (ArrayAccess)other;
        return this.safeSubtreeMatch(node.getArray(), o.getArray()) && this.safeSubtreeMatch(node.getIndex(), o.getIndex());
    }

    public boolean match(ArrayCreation node, Object other) {
        if (!(other instanceof ArrayCreation)) {
            return false;
        }
        ArrayCreation o = (ArrayCreation)other;
        return this.safeSubtreeMatch(node.getType(), o.getType()) && this.safeSubtreeListMatch(node.dimensions(), o.dimensions()) && this.safeSubtreeMatch(node.getInitializer(), o.getInitializer());
    }

    public boolean match(ArrayInitializer node, Object other) {
        if (!(other instanceof ArrayInitializer)) {
            return false;
        }
        ArrayInitializer o = (ArrayInitializer)other;
        return this.safeSubtreeListMatch(node.expressions(), o.expressions());
    }

    public boolean match(ArrayType node, Object other) {
        if (!(other instanceof ArrayType)) {
            return false;
        }
        ArrayType o = (ArrayType)other;
        return this.safeSubtreeMatch(node.getComponentType(), o.getComponentType());
    }

    public boolean match(AssertStatement node, Object other) {
        if (!(other instanceof AssertStatement)) {
            return false;
        }
        AssertStatement o = (AssertStatement)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeMatch(node.getMessage(), o.getMessage());
    }

    public boolean match(Assignment node, Object other) {
        if (!(other instanceof Assignment)) {
            return false;
        }
        Assignment o = (Assignment)other;
        return node.getOperator().equals(o.getOperator()) && this.safeSubtreeMatch(node.getLeftHandSide(), o.getLeftHandSide()) && this.safeSubtreeMatch(node.getRightHandSide(), o.getRightHandSide());
    }

    public boolean match(Block node, Object other) {
        if (!(other instanceof Block)) {
            return false;
        }
        Block o = (Block)other;
        return this.safeSubtreeListMatch(node.statements(), o.statements());
    }

    public boolean match(BlockComment node, Object other) {
        return other instanceof BlockComment;
    }

    public boolean match(BooleanLiteral node, Object other) {
        if (!(other instanceof BooleanLiteral)) {
            return false;
        }
        BooleanLiteral o = (BooleanLiteral)other;
        return node.booleanValue() == o.booleanValue();
    }

    public boolean match(BreakStatement node, Object other) {
        if (!(other instanceof BreakStatement)) {
            return false;
        }
        BreakStatement o = (BreakStatement)other;
        return this.safeSubtreeMatch(node.getLabel(), o.getLabel());
    }

    public boolean match(CastExpression node, Object other) {
        if (!(other instanceof CastExpression)) {
            return false;
        }
        CastExpression o = (CastExpression)other;
        return this.safeSubtreeMatch(node.getType(), o.getType()) && this.safeSubtreeMatch(node.getExpression(), o.getExpression());
    }

    public boolean match(CatchClause node, Object other) {
        if (!(other instanceof CatchClause)) {
            return false;
        }
        CatchClause o = (CatchClause)other;
        return this.safeSubtreeMatch(node.getException(), o.getException()) && this.safeSubtreeMatch(node.getBody(), o.getBody());
    }

    public boolean match(CharacterLiteral node, Object other) {
        if (!(other instanceof CharacterLiteral)) {
            return false;
        }
        CharacterLiteral o = (CharacterLiteral)other;
        return ASTMatcher.safeEquals(node.getEscapedValue(), o.getEscapedValue());
    }

    public boolean match(ClassInstanceCreation node, Object other) {
        if (!(other instanceof ClassInstanceCreation)) {
            return false;
        }
        ClassInstanceCreation o = (ClassInstanceCreation)other;
        int level = node.getAST().apiLevel;
        if (level == 2 && !this.safeSubtreeMatch(node.internalGetName(), o.internalGetName())) {
            return false;
        }
        if (level >= 3) {
            if (!this.safeSubtreeListMatch(node.typeArguments(), o.typeArguments())) {
                return false;
            }
            if (!this.safeSubtreeMatch(node.getType(), o.getType())) {
                return false;
            }
        }
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeListMatch(node.arguments(), o.arguments()) && this.safeSubtreeMatch(node.getAnonymousClassDeclaration(), o.getAnonymousClassDeclaration());
    }

    public boolean match(CompilationUnit node, Object other) {
        if (!(other instanceof CompilationUnit)) {
            return false;
        }
        CompilationUnit o = (CompilationUnit)other;
        return this.safeSubtreeMatch(node.getPackage(), o.getPackage()) && this.safeSubtreeListMatch(node.imports(), o.imports()) && this.safeSubtreeListMatch(node.types(), o.types());
    }

    public boolean match(ConditionalExpression node, Object other) {
        if (!(other instanceof ConditionalExpression)) {
            return false;
        }
        ConditionalExpression o = (ConditionalExpression)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeMatch(node.getThenExpression(), o.getThenExpression()) && this.safeSubtreeMatch(node.getElseExpression(), o.getElseExpression());
    }

    public boolean match(ConstructorInvocation node, Object other) {
        if (!(other instanceof ConstructorInvocation)) {
            return false;
        }
        ConstructorInvocation o = (ConstructorInvocation)other;
        if (node.getAST().apiLevel >= 3 && !this.safeSubtreeListMatch(node.typeArguments(), o.typeArguments())) {
            return false;
        }
        return this.safeSubtreeListMatch(node.arguments(), o.arguments());
    }

    public boolean match(ContinueStatement node, Object other) {
        if (!(other instanceof ContinueStatement)) {
            return false;
        }
        ContinueStatement o = (ContinueStatement)other;
        return this.safeSubtreeMatch(node.getLabel(), o.getLabel());
    }

    public boolean match(UnionType node, Object other) {
        if (!(other instanceof UnionType)) {
            return false;
        }
        UnionType o = (UnionType)other;
        return this.safeSubtreeListMatch(node.types(), o.types());
    }

    public boolean match(DoStatement node, Object other) {
        if (!(other instanceof DoStatement)) {
            return false;
        }
        DoStatement o = (DoStatement)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeMatch(node.getBody(), o.getBody());
    }

    public boolean match(EmptyStatement node, Object other) {
        return other instanceof EmptyStatement;
    }

    public boolean match(EnhancedForStatement node, Object other) {
        if (!(other instanceof EnhancedForStatement)) {
            return false;
        }
        EnhancedForStatement o = (EnhancedForStatement)other;
        return this.safeSubtreeMatch(node.getParameter(), o.getParameter()) && this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeMatch(node.getBody(), o.getBody());
    }

    public boolean match(EnumConstantDeclaration node, Object other) {
        if (!(other instanceof EnumConstantDeclaration)) {
            return false;
        }
        EnumConstantDeclaration o = (EnumConstantDeclaration)other;
        return this.safeSubtreeMatch(node.getJavadoc(), o.getJavadoc()) && this.safeSubtreeListMatch(node.modifiers(), o.modifiers()) && this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeListMatch(node.arguments(), o.arguments()) && this.safeSubtreeMatch(node.getAnonymousClassDeclaration(), o.getAnonymousClassDeclaration());
    }

    public boolean match(EnumDeclaration node, Object other) {
        if (!(other instanceof EnumDeclaration)) {
            return false;
        }
        EnumDeclaration o = (EnumDeclaration)other;
        return this.safeSubtreeMatch(node.getJavadoc(), o.getJavadoc()) && this.safeSubtreeListMatch(node.modifiers(), o.modifiers()) && this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeListMatch(node.superInterfaceTypes(), o.superInterfaceTypes()) && this.safeSubtreeListMatch(node.enumConstants(), o.enumConstants()) && this.safeSubtreeListMatch(node.bodyDeclarations(), o.bodyDeclarations());
    }

    public boolean match(ExpressionStatement node, Object other) {
        if (!(other instanceof ExpressionStatement)) {
            return false;
        }
        ExpressionStatement o = (ExpressionStatement)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression());
    }

    public boolean match(FieldAccess node, Object other) {
        if (!(other instanceof FieldAccess)) {
            return false;
        }
        FieldAccess o = (FieldAccess)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeMatch(node.getName(), o.getName());
    }

    public boolean match(FieldDeclaration node, Object other) {
        if (!(other instanceof FieldDeclaration)) {
            return false;
        }
        FieldDeclaration o = (FieldDeclaration)other;
        int level = node.getAST().apiLevel;
        if (level == 2 && node.getModifiers() != o.getModifiers()) {
            return false;
        }
        if (level >= 3 && !this.safeSubtreeListMatch(node.modifiers(), o.modifiers())) {
            return false;
        }
        return this.safeSubtreeMatch(node.getJavadoc(), o.getJavadoc()) && this.safeSubtreeMatch(node.getType(), o.getType()) && this.safeSubtreeListMatch(node.fragments(), o.fragments());
    }

    public boolean match(ForStatement node, Object other) {
        if (!(other instanceof ForStatement)) {
            return false;
        }
        ForStatement o = (ForStatement)other;
        return this.safeSubtreeListMatch(node.initializers(), o.initializers()) && this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeListMatch(node.updaters(), o.updaters()) && this.safeSubtreeMatch(node.getBody(), o.getBody());
    }

    public boolean match(IfStatement node, Object other) {
        if (!(other instanceof IfStatement)) {
            return false;
        }
        IfStatement o = (IfStatement)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeMatch(node.getThenStatement(), o.getThenStatement()) && this.safeSubtreeMatch(node.getElseStatement(), o.getElseStatement());
    }

    public boolean match(ImportDeclaration node, Object other) {
        if (!(other instanceof ImportDeclaration)) {
            return false;
        }
        ImportDeclaration o = (ImportDeclaration)other;
        if (node.getAST().apiLevel >= 3 && node.isStatic() != o.isStatic()) {
            return false;
        }
        return this.safeSubtreeMatch(node.getName(), o.getName()) && node.isOnDemand() == o.isOnDemand();
    }

    public boolean match(InfixExpression node, Object other) {
        if (!(other instanceof InfixExpression)) {
            return false;
        }
        InfixExpression o = (InfixExpression)other;
        if (node.hasExtendedOperands() && o.hasExtendedOperands() && !this.safeSubtreeListMatch(node.extendedOperands(), o.extendedOperands())) {
            return false;
        }
        if (node.hasExtendedOperands() != o.hasExtendedOperands()) {
            return false;
        }
        return node.getOperator().equals(o.getOperator()) && this.safeSubtreeMatch(node.getLeftOperand(), o.getLeftOperand()) && this.safeSubtreeMatch(node.getRightOperand(), o.getRightOperand());
    }

    public boolean match(InstanceofExpression node, Object other) {
        if (!(other instanceof InstanceofExpression)) {
            return false;
        }
        InstanceofExpression o = (InstanceofExpression)other;
        return this.safeSubtreeMatch(node.getLeftOperand(), o.getLeftOperand()) && this.safeSubtreeMatch(node.getRightOperand(), o.getRightOperand());
    }

    public boolean match(Initializer node, Object other) {
        if (!(other instanceof Initializer)) {
            return false;
        }
        Initializer o = (Initializer)other;
        int level = node.getAST().apiLevel;
        if (level == 2 && node.getModifiers() != o.getModifiers()) {
            return false;
        }
        if (level >= 3 && !this.safeSubtreeListMatch(node.modifiers(), o.modifiers())) {
            return false;
        }
        return this.safeSubtreeMatch(node.getJavadoc(), o.getJavadoc()) && this.safeSubtreeMatch(node.getBody(), o.getBody());
    }

    public boolean match(Javadoc node, Object other) {
        if (!(other instanceof Javadoc)) {
            return false;
        }
        Javadoc o = (Javadoc)other;
        if (this.matchDocTags) {
            return this.safeSubtreeListMatch(node.tags(), o.tags());
        }
        return this.compareDeprecatedComment(node, o);
    }

    private boolean compareDeprecatedComment(Javadoc first, Javadoc second) {
        if (first.getAST().apiLevel == 2) {
            return ASTMatcher.safeEquals(first.getComment(), second.getComment());
        }
        return true;
    }

    public boolean match(LabeledStatement node, Object other) {
        if (!(other instanceof LabeledStatement)) {
            return false;
        }
        LabeledStatement o = (LabeledStatement)other;
        return this.safeSubtreeMatch(node.getLabel(), o.getLabel()) && this.safeSubtreeMatch(node.getBody(), o.getBody());
    }

    public boolean match(LineComment node, Object other) {
        return other instanceof LineComment;
    }

    public boolean match(MarkerAnnotation node, Object other) {
        if (!(other instanceof MarkerAnnotation)) {
            return false;
        }
        MarkerAnnotation o = (MarkerAnnotation)other;
        return this.safeSubtreeMatch(node.getTypeName(), o.getTypeName());
    }

    public boolean match(MemberRef node, Object other) {
        if (!(other instanceof MemberRef)) {
            return false;
        }
        MemberRef o = (MemberRef)other;
        return this.safeSubtreeMatch(node.getQualifier(), o.getQualifier()) && this.safeSubtreeMatch(node.getName(), o.getName());
    }

    public boolean match(MemberValuePair node, Object other) {
        if (!(other instanceof MemberValuePair)) {
            return false;
        }
        MemberValuePair o = (MemberValuePair)other;
        return this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeMatch(node.getValue(), o.getValue());
    }

    public boolean match(MethodRef node, Object other) {
        if (!(other instanceof MethodRef)) {
            return false;
        }
        MethodRef o = (MethodRef)other;
        return this.safeSubtreeMatch(node.getQualifier(), o.getQualifier()) && this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeListMatch(node.parameters(), o.parameters());
    }

    public boolean match(MethodRefParameter node, Object other) {
        if (!(other instanceof MethodRefParameter)) {
            return false;
        }
        MethodRefParameter o = (MethodRefParameter)other;
        int level = node.getAST().apiLevel;
        if (level >= 3 && node.isVarargs() != o.isVarargs()) {
            return false;
        }
        return this.safeSubtreeMatch(node.getType(), o.getType()) && this.safeSubtreeMatch(node.getName(), o.getName());
    }

    public boolean match(MethodDeclaration node, Object other) {
        if (!(other instanceof MethodDeclaration)) {
            return false;
        }
        MethodDeclaration o = (MethodDeclaration)other;
        int level = node.getAST().apiLevel;
        if (level == 2) {
            if (node.getModifiers() != o.getModifiers()) {
                return false;
            }
            if (!this.safeSubtreeMatch(node.internalGetReturnType(), o.internalGetReturnType())) {
                return false;
            }
        }
        if (level >= 3) {
            if (!this.safeSubtreeListMatch(node.modifiers(), o.modifiers())) {
                return false;
            }
            if (!this.safeSubtreeMatch(node.getReturnType2(), o.getReturnType2())) {
                return false;
            }
            if (!this.safeSubtreeListMatch(node.typeParameters(), o.typeParameters())) {
                return false;
            }
        }
        return node.isConstructor() == o.isConstructor() && this.safeSubtreeMatch(node.getJavadoc(), o.getJavadoc()) && this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeListMatch(node.parameters(), o.parameters()) && node.getExtraDimensions() == o.getExtraDimensions() && this.safeSubtreeListMatch(node.thrownExceptions(), o.thrownExceptions()) && this.safeSubtreeMatch(node.getBody(), o.getBody());
    }

    public boolean match(MethodInvocation node, Object other) {
        if (!(other instanceof MethodInvocation)) {
            return false;
        }
        MethodInvocation o = (MethodInvocation)other;
        if (node.getAST().apiLevel >= 3 && !this.safeSubtreeListMatch(node.typeArguments(), o.typeArguments())) {
            return false;
        }
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeListMatch(node.arguments(), o.arguments());
    }

    public boolean match(Modifier node, Object other) {
        if (!(other instanceof Modifier)) {
            return false;
        }
        Modifier o = (Modifier)other;
        return node.getKeyword() == o.getKeyword();
    }

    public boolean match(NormalAnnotation node, Object other) {
        if (!(other instanceof NormalAnnotation)) {
            return false;
        }
        NormalAnnotation o = (NormalAnnotation)other;
        return this.safeSubtreeMatch(node.getTypeName(), o.getTypeName()) && this.safeSubtreeListMatch(node.values(), o.values());
    }

    public boolean match(NullLiteral node, Object other) {
        return other instanceof NullLiteral;
    }

    public boolean match(NumberLiteral node, Object other) {
        if (!(other instanceof NumberLiteral)) {
            return false;
        }
        NumberLiteral o = (NumberLiteral)other;
        return ASTMatcher.safeEquals(node.getToken(), o.getToken());
    }

    public boolean match(PackageDeclaration node, Object other) {
        if (!(other instanceof PackageDeclaration)) {
            return false;
        }
        PackageDeclaration o = (PackageDeclaration)other;
        if (node.getAST().apiLevel >= 3) {
            if (!this.safeSubtreeMatch(node.getJavadoc(), o.getJavadoc())) {
                return false;
            }
            if (!this.safeSubtreeListMatch(node.annotations(), o.annotations())) {
                return false;
            }
        }
        return this.safeSubtreeMatch(node.getName(), o.getName());
    }

    public boolean match(ParameterizedType node, Object other) {
        if (!(other instanceof ParameterizedType)) {
            return false;
        }
        ParameterizedType o = (ParameterizedType)other;
        return this.safeSubtreeMatch(node.getType(), o.getType()) && this.safeSubtreeListMatch(node.typeArguments(), o.typeArguments());
    }

    public boolean match(ParenthesizedExpression node, Object other) {
        if (!(other instanceof ParenthesizedExpression)) {
            return false;
        }
        ParenthesizedExpression o = (ParenthesizedExpression)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression());
    }

    public boolean match(PostfixExpression node, Object other) {
        if (!(other instanceof PostfixExpression)) {
            return false;
        }
        PostfixExpression o = (PostfixExpression)other;
        return node.getOperator().equals(o.getOperator()) && this.safeSubtreeMatch(node.getOperand(), o.getOperand());
    }

    public boolean match(PrefixExpression node, Object other) {
        if (!(other instanceof PrefixExpression)) {
            return false;
        }
        PrefixExpression o = (PrefixExpression)other;
        return node.getOperator().equals(o.getOperator()) && this.safeSubtreeMatch(node.getOperand(), o.getOperand());
    }

    public boolean match(PrimitiveType node, Object other) {
        if (!(other instanceof PrimitiveType)) {
            return false;
        }
        PrimitiveType o = (PrimitiveType)other;
        return node.getPrimitiveTypeCode() == o.getPrimitiveTypeCode();
    }

    public boolean match(QualifiedName node, Object other) {
        if (!(other instanceof QualifiedName)) {
            return false;
        }
        QualifiedName o = (QualifiedName)other;
        return this.safeSubtreeMatch(node.getQualifier(), o.getQualifier()) && this.safeSubtreeMatch(node.getName(), o.getName());
    }

    public boolean match(QualifiedType node, Object other) {
        if (!(other instanceof QualifiedType)) {
            return false;
        }
        QualifiedType o = (QualifiedType)other;
        return this.safeSubtreeMatch(node.getQualifier(), o.getQualifier()) && this.safeSubtreeMatch(node.getName(), o.getName());
    }

    public boolean match(ReturnStatement node, Object other) {
        if (!(other instanceof ReturnStatement)) {
            return false;
        }
        ReturnStatement o = (ReturnStatement)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression());
    }

    public boolean match(SimpleName node, Object other) {
        if (!(other instanceof SimpleName)) {
            return false;
        }
        SimpleName o = (SimpleName)other;
        return node.getIdentifier().equals(o.getIdentifier());
    }

    public boolean match(SimpleType node, Object other) {
        if (!(other instanceof SimpleType)) {
            return false;
        }
        SimpleType o = (SimpleType)other;
        return this.safeSubtreeMatch(node.getName(), o.getName());
    }

    public boolean match(SingleMemberAnnotation node, Object other) {
        if (!(other instanceof SingleMemberAnnotation)) {
            return false;
        }
        SingleMemberAnnotation o = (SingleMemberAnnotation)other;
        return this.safeSubtreeMatch(node.getTypeName(), o.getTypeName()) && this.safeSubtreeMatch(node.getValue(), o.getValue());
    }

    public boolean match(SingleVariableDeclaration node, Object other) {
        if (!(other instanceof SingleVariableDeclaration)) {
            return false;
        }
        SingleVariableDeclaration o = (SingleVariableDeclaration)other;
        int level = node.getAST().apiLevel;
        if (level == 2 && node.getModifiers() != o.getModifiers()) {
            return false;
        }
        if (level >= 3) {
            if (!this.safeSubtreeListMatch(node.modifiers(), o.modifiers())) {
                return false;
            }
            if (node.isVarargs() != o.isVarargs()) {
                return false;
            }
        }
        return this.safeSubtreeMatch(node.getType(), o.getType()) && this.safeSubtreeMatch(node.getName(), o.getName()) && node.getExtraDimensions() == o.getExtraDimensions() && this.safeSubtreeMatch(node.getInitializer(), o.getInitializer());
    }

    public boolean match(StringLiteral node, Object other) {
        if (!(other instanceof StringLiteral)) {
            return false;
        }
        StringLiteral o = (StringLiteral)other;
        return ASTMatcher.safeEquals(node.getEscapedValue(), o.getEscapedValue());
    }

    public boolean match(SuperConstructorInvocation node, Object other) {
        if (!(other instanceof SuperConstructorInvocation)) {
            return false;
        }
        SuperConstructorInvocation o = (SuperConstructorInvocation)other;
        if (node.getAST().apiLevel >= 3 && !this.safeSubtreeListMatch(node.typeArguments(), o.typeArguments())) {
            return false;
        }
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeListMatch(node.arguments(), o.arguments());
    }

    public boolean match(SuperFieldAccess node, Object other) {
        if (!(other instanceof SuperFieldAccess)) {
            return false;
        }
        SuperFieldAccess o = (SuperFieldAccess)other;
        return this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeMatch(node.getQualifier(), o.getQualifier());
    }

    public boolean match(SuperMethodInvocation node, Object other) {
        if (!(other instanceof SuperMethodInvocation)) {
            return false;
        }
        SuperMethodInvocation o = (SuperMethodInvocation)other;
        if (node.getAST().apiLevel >= 3 && !this.safeSubtreeListMatch(node.typeArguments(), o.typeArguments())) {
            return false;
        }
        return this.safeSubtreeMatch(node.getQualifier(), o.getQualifier()) && this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeListMatch(node.arguments(), o.arguments());
    }

    public boolean match(SwitchCase node, Object other) {
        if (!(other instanceof SwitchCase)) {
            return false;
        }
        SwitchCase o = (SwitchCase)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression());
    }

    public boolean match(SwitchStatement node, Object other) {
        if (!(other instanceof SwitchStatement)) {
            return false;
        }
        SwitchStatement o = (SwitchStatement)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeListMatch(node.statements(), o.statements());
    }

    public boolean match(SynchronizedStatement node, Object other) {
        if (!(other instanceof SynchronizedStatement)) {
            return false;
        }
        SynchronizedStatement o = (SynchronizedStatement)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeMatch(node.getBody(), o.getBody());
    }

    public boolean match(TagElement node, Object other) {
        if (!(other instanceof TagElement)) {
            return false;
        }
        TagElement o = (TagElement)other;
        return ASTMatcher.safeEquals(node.getTagName(), o.getTagName()) && this.safeSubtreeListMatch(node.fragments(), o.fragments());
    }

    public boolean match(TextElement node, Object other) {
        if (!(other instanceof TextElement)) {
            return false;
        }
        TextElement o = (TextElement)other;
        return ASTMatcher.safeEquals(node.getText(), o.getText());
    }

    public boolean match(ThisExpression node, Object other) {
        if (!(other instanceof ThisExpression)) {
            return false;
        }
        ThisExpression o = (ThisExpression)other;
        return this.safeSubtreeMatch(node.getQualifier(), o.getQualifier());
    }

    public boolean match(ThrowStatement node, Object other) {
        if (!(other instanceof ThrowStatement)) {
            return false;
        }
        ThrowStatement o = (ThrowStatement)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression());
    }

    public boolean match(TryStatement node, Object other) {
        if (!(other instanceof TryStatement)) {
            return false;
        }
        TryStatement o = (TryStatement)other;
        switch (node.getAST().apiLevel) {
            case 2: 
            case 3: {
                return this.safeSubtreeMatch(node.getBody(), o.getBody()) && this.safeSubtreeListMatch(node.catchClauses(), o.catchClauses()) && this.safeSubtreeMatch(node.getFinally(), o.getFinally());
            }
        }
        return this.safeSubtreeListMatch(node.resources(), o.resources()) && this.safeSubtreeMatch(node.getBody(), o.getBody()) && this.safeSubtreeListMatch(node.catchClauses(), o.catchClauses()) && this.safeSubtreeMatch(node.getFinally(), o.getFinally());
    }

    public boolean match(TypeDeclaration node, Object other) {
        if (!(other instanceof TypeDeclaration)) {
            return false;
        }
        TypeDeclaration o = (TypeDeclaration)other;
        int level = node.getAST().apiLevel;
        if (level == 2) {
            if (node.getModifiers() != o.getModifiers()) {
                return false;
            }
            if (!this.safeSubtreeMatch(node.internalGetSuperclass(), o.internalGetSuperclass())) {
                return false;
            }
            if (!this.safeSubtreeListMatch(node.internalSuperInterfaces(), o.internalSuperInterfaces())) {
                return false;
            }
        }
        if (level >= 3) {
            if (!this.safeSubtreeListMatch(node.modifiers(), o.modifiers())) {
                return false;
            }
            if (!this.safeSubtreeListMatch(node.typeParameters(), o.typeParameters())) {
                return false;
            }
            if (!this.safeSubtreeMatch(node.getSuperclassType(), o.getSuperclassType())) {
                return false;
            }
            if (!this.safeSubtreeListMatch(node.superInterfaceTypes(), o.superInterfaceTypes())) {
                return false;
            }
        }
        return node.isInterface() == o.isInterface() && this.safeSubtreeMatch(node.getJavadoc(), o.getJavadoc()) && this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeListMatch(node.bodyDeclarations(), o.bodyDeclarations());
    }

    public boolean match(TypeDeclarationStatement node, Object other) {
        if (!(other instanceof TypeDeclarationStatement)) {
            return false;
        }
        TypeDeclarationStatement o = (TypeDeclarationStatement)other;
        return this.safeSubtreeMatch(node.getDeclaration(), o.getDeclaration());
    }

    public boolean match(TypeLiteral node, Object other) {
        if (!(other instanceof TypeLiteral)) {
            return false;
        }
        TypeLiteral o = (TypeLiteral)other;
        return this.safeSubtreeMatch(node.getType(), o.getType());
    }

    public boolean match(TypeParameter node, Object other) {
        if (!(other instanceof TypeParameter)) {
            return false;
        }
        TypeParameter o = (TypeParameter)other;
        return this.safeSubtreeMatch(node.getName(), o.getName()) && this.safeSubtreeListMatch(node.typeBounds(), o.typeBounds());
    }

    public boolean match(VariableDeclarationExpression node, Object other) {
        if (!(other instanceof VariableDeclarationExpression)) {
            return false;
        }
        VariableDeclarationExpression o = (VariableDeclarationExpression)other;
        int level = node.getAST().apiLevel;
        if (level == 2 && node.getModifiers() != o.getModifiers()) {
            return false;
        }
        if (level >= 3 && !this.safeSubtreeListMatch(node.modifiers(), o.modifiers())) {
            return false;
        }
        return this.safeSubtreeMatch(node.getType(), o.getType()) && this.safeSubtreeListMatch(node.fragments(), o.fragments());
    }

    public boolean match(VariableDeclarationFragment node, Object other) {
        if (!(other instanceof VariableDeclarationFragment)) {
            return false;
        }
        VariableDeclarationFragment o = (VariableDeclarationFragment)other;
        return this.safeSubtreeMatch(node.getName(), o.getName()) && node.getExtraDimensions() == o.getExtraDimensions() && this.safeSubtreeMatch(node.getInitializer(), o.getInitializer());
    }

    public boolean match(VariableDeclarationStatement node, Object other) {
        if (!(other instanceof VariableDeclarationStatement)) {
            return false;
        }
        VariableDeclarationStatement o = (VariableDeclarationStatement)other;
        int level = node.getAST().apiLevel;
        if (level == 2 && node.getModifiers() != o.getModifiers()) {
            return false;
        }
        if (level >= 3 && !this.safeSubtreeListMatch(node.modifiers(), o.modifiers())) {
            return false;
        }
        return this.safeSubtreeMatch(node.getType(), o.getType()) && this.safeSubtreeListMatch(node.fragments(), o.fragments());
    }

    public boolean match(WhileStatement node, Object other) {
        if (!(other instanceof WhileStatement)) {
            return false;
        }
        WhileStatement o = (WhileStatement)other;
        return this.safeSubtreeMatch(node.getExpression(), o.getExpression()) && this.safeSubtreeMatch(node.getBody(), o.getBody());
    }

    public boolean match(WildcardType node, Object other) {
        if (!(other instanceof WildcardType)) {
            return false;
        }
        WildcardType o = (WildcardType)other;
        return node.isUpperBound() == o.isUpperBound() && this.safeSubtreeMatch(node.getBound(), o.getBound());
    }
}

