/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

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

public abstract class ASTVisitor {
    private boolean visitDocTags;

    public ASTVisitor() {
        this(false);
    }

    public ASTVisitor(boolean visitDocTags) {
        this.visitDocTags = visitDocTags;
    }

    public void preVisit(ASTNode node) {
    }

    public boolean preVisit2(ASTNode node) {
        this.preVisit(node);
        return true;
    }

    public void postVisit(ASTNode node) {
    }

    public boolean visit(AnnotationTypeDeclaration node) {
        return true;
    }

    public boolean visit(AnnotationTypeMemberDeclaration node) {
        return true;
    }

    public boolean visit(AnonymousClassDeclaration node) {
        return true;
    }

    public boolean visit(ArrayAccess node) {
        return true;
    }

    public boolean visit(ArrayCreation node) {
        return true;
    }

    public boolean visit(ArrayInitializer node) {
        return true;
    }

    public boolean visit(ArrayType node) {
        return true;
    }

    public boolean visit(AssertStatement node) {
        return true;
    }

    public boolean visit(Assignment node) {
        return true;
    }

    public boolean visit(Block node) {
        return true;
    }

    public boolean visit(BlockComment node) {
        return true;
    }

    public boolean visit(BooleanLiteral node) {
        return true;
    }

    public boolean visit(BreakStatement node) {
        return true;
    }

    public boolean visit(CastExpression node) {
        return true;
    }

    public boolean visit(CatchClause node) {
        return true;
    }

    public boolean visit(CharacterLiteral node) {
        return true;
    }

    public boolean visit(ClassInstanceCreation node) {
        return true;
    }

    public boolean visit(CompilationUnit node) {
        return true;
    }

    public boolean visit(ConditionalExpression node) {
        return true;
    }

    public boolean visit(ConstructorInvocation node) {
        return true;
    }

    public boolean visit(ContinueStatement node) {
        return true;
    }

    public boolean visit(DoStatement node) {
        return true;
    }

    public boolean visit(EmptyStatement node) {
        return true;
    }

    public boolean visit(EnhancedForStatement node) {
        return true;
    }

    public boolean visit(EnumConstantDeclaration node) {
        return true;
    }

    public boolean visit(EnumDeclaration node) {
        return true;
    }

    public boolean visit(ExpressionStatement node) {
        return true;
    }

    public boolean visit(FieldAccess node) {
        return true;
    }

    public boolean visit(FieldDeclaration node) {
        return true;
    }

    public boolean visit(ForStatement node) {
        return true;
    }

    public boolean visit(IfStatement node) {
        return true;
    }

    public boolean visit(ImportDeclaration node) {
        return true;
    }

    public boolean visit(InfixExpression node) {
        return true;
    }

    public boolean visit(InstanceofExpression node) {
        return true;
    }

    public boolean visit(Initializer node) {
        return true;
    }

    public boolean visit(Javadoc node) {
        return this.visitDocTags;
    }

    public boolean visit(LabeledStatement node) {
        return true;
    }

    public boolean visit(LineComment node) {
        return true;
    }

    public boolean visit(MarkerAnnotation node) {
        return true;
    }

    public boolean visit(MemberRef node) {
        return true;
    }

    public boolean visit(MemberValuePair node) {
        return true;
    }

    public boolean visit(MethodRef node) {
        return true;
    }

    public boolean visit(MethodRefParameter node) {
        return true;
    }

    public boolean visit(MethodDeclaration node) {
        return true;
    }

    public boolean visit(MethodInvocation node) {
        return true;
    }

    public boolean visit(Modifier node) {
        return true;
    }

    public boolean visit(NormalAnnotation node) {
        return true;
    }

    public boolean visit(NullLiteral node) {
        return true;
    }

    public boolean visit(NumberLiteral node) {
        return true;
    }

    public boolean visit(PackageDeclaration node) {
        return true;
    }

    public boolean visit(ParameterizedType node) {
        return true;
    }

    public boolean visit(ParenthesizedExpression node) {
        return true;
    }

    public boolean visit(PostfixExpression node) {
        return true;
    }

    public boolean visit(PrefixExpression node) {
        return true;
    }

    public boolean visit(PrimitiveType node) {
        return true;
    }

    public boolean visit(QualifiedName node) {
        return true;
    }

    public boolean visit(QualifiedType node) {
        return true;
    }

    public boolean visit(ReturnStatement node) {
        return true;
    }

    public boolean visit(SimpleName node) {
        return true;
    }

    public boolean visit(SimpleType node) {
        return true;
    }

    public boolean visit(SingleMemberAnnotation node) {
        return true;
    }

    public boolean visit(SingleVariableDeclaration node) {
        return true;
    }

    public boolean visit(StringLiteral node) {
        return true;
    }

    public boolean visit(SuperConstructorInvocation node) {
        return true;
    }

    public boolean visit(SuperFieldAccess node) {
        return true;
    }

    public boolean visit(SuperMethodInvocation node) {
        return true;
    }

    public boolean visit(SwitchCase node) {
        return true;
    }

    public boolean visit(SwitchStatement node) {
        return true;
    }

    public boolean visit(SynchronizedStatement node) {
        return true;
    }

    public boolean visit(TagElement node) {
        return true;
    }

    public boolean visit(TextElement node) {
        return true;
    }

    public boolean visit(ThisExpression node) {
        return true;
    }

    public boolean visit(ThrowStatement node) {
        return true;
    }

    public boolean visit(TryStatement node) {
        return true;
    }

    public boolean visit(TypeDeclaration node) {
        return true;
    }

    public boolean visit(TypeDeclarationStatement node) {
        return true;
    }

    public boolean visit(TypeLiteral node) {
        return true;
    }

    public boolean visit(TypeParameter node) {
        return true;
    }

    public boolean visit(UnionType node) {
        return true;
    }

    public boolean visit(VariableDeclarationExpression node) {
        return true;
    }

    public boolean visit(VariableDeclarationStatement node) {
        return true;
    }

    public boolean visit(VariableDeclarationFragment node) {
        return true;
    }

    public boolean visit(WhileStatement node) {
        return true;
    }

    public boolean visit(WildcardType node) {
        return true;
    }

    public void endVisit(AnnotationTypeDeclaration node) {
    }

    public void endVisit(AnnotationTypeMemberDeclaration node) {
    }

    public void endVisit(AnonymousClassDeclaration node) {
    }

    public void endVisit(ArrayAccess node) {
    }

    public void endVisit(ArrayCreation node) {
    }

    public void endVisit(ArrayInitializer node) {
    }

    public void endVisit(ArrayType node) {
    }

    public void endVisit(AssertStatement node) {
    }

    public void endVisit(Assignment node) {
    }

    public void endVisit(Block node) {
    }

    public void endVisit(BlockComment node) {
    }

    public void endVisit(BooleanLiteral node) {
    }

    public void endVisit(BreakStatement node) {
    }

    public void endVisit(CastExpression node) {
    }

    public void endVisit(CatchClause node) {
    }

    public void endVisit(CharacterLiteral node) {
    }

    public void endVisit(ClassInstanceCreation node) {
    }

    public void endVisit(CompilationUnit node) {
    }

    public void endVisit(ConditionalExpression node) {
    }

    public void endVisit(ConstructorInvocation node) {
    }

    public void endVisit(ContinueStatement node) {
    }

    public void endVisit(DoStatement node) {
    }

    public void endVisit(EmptyStatement node) {
    }

    public void endVisit(EnhancedForStatement node) {
    }

    public void endVisit(EnumConstantDeclaration node) {
    }

    public void endVisit(EnumDeclaration node) {
    }

    public void endVisit(ExpressionStatement node) {
    }

    public void endVisit(FieldAccess node) {
    }

    public void endVisit(FieldDeclaration node) {
    }

    public void endVisit(ForStatement node) {
    }

    public void endVisit(IfStatement node) {
    }

    public void endVisit(ImportDeclaration node) {
    }

    public void endVisit(InfixExpression node) {
    }

    public void endVisit(InstanceofExpression node) {
    }

    public void endVisit(Initializer node) {
    }

    public void endVisit(Javadoc node) {
    }

    public void endVisit(LabeledStatement node) {
    }

    public void endVisit(LineComment node) {
    }

    public void endVisit(MarkerAnnotation node) {
    }

    public void endVisit(MemberRef node) {
    }

    public void endVisit(MemberValuePair node) {
    }

    public void endVisit(MethodRef node) {
    }

    public void endVisit(MethodRefParameter node) {
    }

    public void endVisit(MethodDeclaration node) {
    }

    public void endVisit(MethodInvocation node) {
    }

    public void endVisit(Modifier node) {
    }

    public void endVisit(NormalAnnotation node) {
    }

    public void endVisit(NullLiteral node) {
    }

    public void endVisit(NumberLiteral node) {
    }

    public void endVisit(PackageDeclaration node) {
    }

    public void endVisit(ParameterizedType node) {
    }

    public void endVisit(ParenthesizedExpression node) {
    }

    public void endVisit(PostfixExpression node) {
    }

    public void endVisit(PrefixExpression node) {
    }

    public void endVisit(PrimitiveType node) {
    }

    public void endVisit(QualifiedName node) {
    }

    public void endVisit(QualifiedType node) {
    }

    public void endVisit(ReturnStatement node) {
    }

    public void endVisit(SimpleName node) {
    }

    public void endVisit(SimpleType node) {
    }

    public void endVisit(SingleMemberAnnotation node) {
    }

    public void endVisit(SingleVariableDeclaration node) {
    }

    public void endVisit(StringLiteral node) {
    }

    public void endVisit(SuperConstructorInvocation node) {
    }

    public void endVisit(SuperFieldAccess node) {
    }

    public void endVisit(SuperMethodInvocation node) {
    }

    public void endVisit(SwitchCase node) {
    }

    public void endVisit(SwitchStatement node) {
    }

    public void endVisit(SynchronizedStatement node) {
    }

    public void endVisit(TagElement node) {
    }

    public void endVisit(TextElement node) {
    }

    public void endVisit(ThisExpression node) {
    }

    public void endVisit(ThrowStatement node) {
    }

    public void endVisit(TryStatement node) {
    }

    public void endVisit(TypeDeclaration node) {
    }

    public void endVisit(TypeDeclarationStatement node) {
    }

    public void endVisit(TypeLiteral node) {
    }

    public void endVisit(TypeParameter node) {
    }

    public void endVisit(UnionType node) {
    }

    public void endVisit(VariableDeclarationExpression node) {
    }

    public void endVisit(VariableDeclarationStatement node) {
    }

    public void endVisit(VariableDeclarationFragment node) {
    }

    public void endVisit(WhileStatement node) {
    }

    public void endVisit(WildcardType node) {
    }
}

