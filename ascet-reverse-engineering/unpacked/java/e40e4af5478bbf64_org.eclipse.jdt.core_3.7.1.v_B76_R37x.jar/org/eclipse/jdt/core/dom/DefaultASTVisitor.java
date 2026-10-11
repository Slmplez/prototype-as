/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
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

class DefaultASTVisitor
extends ASTVisitor {
    public DefaultASTVisitor() {
    }

    public DefaultASTVisitor(boolean visitDocTags) {
        super(visitDocTags);
    }

    public void endVisit(AnnotationTypeDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(AnnotationTypeMemberDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(AnonymousClassDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(ArrayAccess node) {
        this.endVisitNode(node);
    }

    public void endVisit(ArrayCreation node) {
        this.endVisitNode(node);
    }

    public void endVisit(ArrayInitializer node) {
        this.endVisitNode(node);
    }

    public void endVisit(ArrayType node) {
        this.endVisitNode(node);
    }

    public void endVisit(AssertStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(Assignment node) {
        this.endVisitNode(node);
    }

    public void endVisit(Block node) {
        this.endVisitNode(node);
    }

    public void endVisit(BlockComment node) {
        this.endVisitNode(node);
    }

    public void endVisit(BooleanLiteral node) {
        this.endVisitNode(node);
    }

    public void endVisit(BreakStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(CastExpression node) {
        this.endVisitNode(node);
    }

    public void endVisit(CatchClause node) {
        this.endVisitNode(node);
    }

    public void endVisit(CharacterLiteral node) {
        this.endVisitNode(node);
    }

    public void endVisit(ClassInstanceCreation node) {
        this.endVisitNode(node);
    }

    public void endVisit(CompilationUnit node) {
        this.endVisitNode(node);
    }

    public void endVisit(ConditionalExpression node) {
        this.endVisitNode(node);
    }

    public void endVisit(ConstructorInvocation node) {
        this.endVisitNode(node);
    }

    public void endVisit(ContinueStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(DoStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(EmptyStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(EnhancedForStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(EnumConstantDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(EnumDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(ExpressionStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(FieldAccess node) {
        this.endVisitNode(node);
    }

    public void endVisit(FieldDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(ForStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(IfStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(ImportDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(InfixExpression node) {
        this.endVisitNode(node);
    }

    public void endVisit(Initializer node) {
        this.endVisitNode(node);
    }

    public void endVisit(InstanceofExpression node) {
        this.endVisitNode(node);
    }

    public void endVisit(Javadoc node) {
        this.endVisitNode(node);
    }

    public void endVisit(LabeledStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(LineComment node) {
        this.endVisitNode(node);
    }

    public void endVisit(MarkerAnnotation node) {
        this.endVisitNode(node);
    }

    public void endVisit(MemberRef node) {
        this.endVisitNode(node);
    }

    public void endVisit(MemberValuePair node) {
        this.endVisitNode(node);
    }

    public void endVisit(MethodDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(MethodInvocation node) {
        this.endVisitNode(node);
    }

    public void endVisit(MethodRef node) {
        this.endVisitNode(node);
    }

    public void endVisit(MethodRefParameter node) {
        this.endVisitNode(node);
    }

    public void endVisit(Modifier node) {
        this.endVisitNode(node);
    }

    public void endVisit(NormalAnnotation node) {
        this.endVisitNode(node);
    }

    public void endVisit(NullLiteral node) {
        this.endVisitNode(node);
    }

    public void endVisit(NumberLiteral node) {
        this.endVisitNode(node);
    }

    public void endVisit(PackageDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(ParameterizedType node) {
        this.endVisitNode(node);
    }

    public void endVisit(ParenthesizedExpression node) {
        this.endVisitNode(node);
    }

    public void endVisit(PostfixExpression node) {
        this.endVisitNode(node);
    }

    public void endVisit(PrefixExpression node) {
        this.endVisitNode(node);
    }

    public void endVisit(PrimitiveType node) {
        this.endVisitNode(node);
    }

    public void endVisit(QualifiedName node) {
        this.endVisitNode(node);
    }

    public void endVisit(QualifiedType node) {
        this.endVisitNode(node);
    }

    public void endVisit(ReturnStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(SimpleName node) {
        this.endVisitNode(node);
    }

    public void endVisit(SimpleType node) {
        this.endVisitNode(node);
    }

    public void endVisit(SingleMemberAnnotation node) {
        this.endVisitNode(node);
    }

    public void endVisit(SingleVariableDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(StringLiteral node) {
        this.endVisitNode(node);
    }

    public void endVisit(SuperConstructorInvocation node) {
        this.endVisitNode(node);
    }

    public void endVisit(SuperFieldAccess node) {
        this.endVisitNode(node);
    }

    public void endVisit(SuperMethodInvocation node) {
        this.endVisitNode(node);
    }

    public void endVisit(SwitchCase node) {
        this.endVisitNode(node);
    }

    public void endVisit(SwitchStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(SynchronizedStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(TagElement node) {
        this.endVisitNode(node);
    }

    public void endVisit(TextElement node) {
        this.endVisitNode(node);
    }

    public void endVisit(ThisExpression node) {
        this.endVisitNode(node);
    }

    public void endVisit(ThrowStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(TryStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(TypeDeclaration node) {
        this.endVisitNode(node);
    }

    public void endVisit(TypeDeclarationStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(TypeLiteral node) {
        this.endVisitNode(node);
    }

    public void endVisit(TypeParameter node) {
        this.endVisitNode(node);
    }

    public void endVisit(UnionType node) {
        this.endVisitNode(node);
    }

    public void endVisit(VariableDeclarationExpression node) {
        this.endVisitNode(node);
    }

    public void endVisit(VariableDeclarationFragment node) {
        this.endVisitNode(node);
    }

    public void endVisit(VariableDeclarationStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(WhileStatement node) {
        this.endVisitNode(node);
    }

    public void endVisit(WildcardType node) {
        this.endVisitNode(node);
    }

    protected void endVisitNode(ASTNode node) {
    }

    public boolean visit(AnnotationTypeDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(AnnotationTypeMemberDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(AnonymousClassDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(ArrayAccess node) {
        return this.visitNode(node);
    }

    public boolean visit(ArrayCreation node) {
        return this.visitNode(node);
    }

    public boolean visit(ArrayInitializer node) {
        return this.visitNode(node);
    }

    public boolean visit(ArrayType node) {
        this.visitNode(node);
        return false;
    }

    public boolean visit(AssertStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(Assignment node) {
        return this.visitNode(node);
    }

    public boolean visit(Block node) {
        return this.visitNode(node);
    }

    public boolean visit(BlockComment node) {
        return this.visitNode(node);
    }

    public boolean visit(BooleanLiteral node) {
        return this.visitNode(node);
    }

    public boolean visit(BreakStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(CastExpression node) {
        return this.visitNode(node);
    }

    public boolean visit(CatchClause node) {
        return this.visitNode(node);
    }

    public boolean visit(CharacterLiteral node) {
        return this.visitNode(node);
    }

    public boolean visit(ClassInstanceCreation node) {
        return this.visitNode(node);
    }

    public boolean visit(CompilationUnit node) {
        return this.visitNode(node);
    }

    public boolean visit(ConditionalExpression node) {
        return this.visitNode(node);
    }

    public boolean visit(ConstructorInvocation node) {
        return this.visitNode(node);
    }

    public boolean visit(ContinueStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(DoStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(EmptyStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(EnhancedForStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(EnumConstantDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(EnumDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(ExpressionStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(FieldAccess node) {
        return this.visitNode(node);
    }

    public boolean visit(FieldDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(ForStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(IfStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(ImportDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(InfixExpression node) {
        return this.visitNode(node);
    }

    public boolean visit(Initializer node) {
        return this.visitNode(node);
    }

    public boolean visit(InstanceofExpression node) {
        return this.visitNode(node);
    }

    public boolean visit(Javadoc node) {
        if (super.visit(node)) {
            return this.visitNode(node);
        }
        return false;
    }

    public boolean visit(LabeledStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(LineComment node) {
        return this.visitNode(node);
    }

    public boolean visit(MarkerAnnotation node) {
        return this.visitNode(node);
    }

    public boolean visit(MemberRef node) {
        return this.visitNode(node);
    }

    public boolean visit(MemberValuePair node) {
        return this.visitNode(node);
    }

    public boolean visit(MethodDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(MethodInvocation node) {
        return this.visitNode(node);
    }

    public boolean visit(MethodRef node) {
        return this.visitNode(node);
    }

    public boolean visit(Modifier node) {
        return this.visitNode(node);
    }

    public boolean visit(MethodRefParameter node) {
        return this.visitNode(node);
    }

    public boolean visit(NormalAnnotation node) {
        return this.visitNode(node);
    }

    public boolean visit(NullLiteral node) {
        return this.visitNode(node);
    }

    public boolean visit(NumberLiteral node) {
        return this.visitNode(node);
    }

    public boolean visit(PackageDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(ParameterizedType node) {
        return this.visitNode(node);
    }

    public boolean visit(ParenthesizedExpression node) {
        return this.visitNode(node);
    }

    public boolean visit(PostfixExpression node) {
        return this.visitNode(node);
    }

    public boolean visit(PrefixExpression node) {
        return this.visitNode(node);
    }

    public boolean visit(PrimitiveType node) {
        return this.visitNode(node);
    }

    public boolean visit(QualifiedName node) {
        return this.visitNode(node);
    }

    public boolean visit(QualifiedType node) {
        return this.visitNode(node);
    }

    public boolean visit(ReturnStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(SimpleName node) {
        return this.visitNode(node);
    }

    public boolean visit(SimpleType node) {
        return this.visitNode(node);
    }

    public boolean visit(SingleMemberAnnotation node) {
        return this.visitNode(node);
    }

    public boolean visit(SingleVariableDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(StringLiteral node) {
        return this.visitNode(node);
    }

    public boolean visit(SuperConstructorInvocation node) {
        return this.visitNode(node);
    }

    public boolean visit(SuperFieldAccess node) {
        return this.visitNode(node);
    }

    public boolean visit(SuperMethodInvocation node) {
        return this.visitNode(node);
    }

    public boolean visit(SwitchCase node) {
        return this.visitNode(node);
    }

    public boolean visit(SwitchStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(SynchronizedStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(TagElement node) {
        return this.visitNode(node);
    }

    public boolean visit(TextElement node) {
        return this.visitNode(node);
    }

    public boolean visit(ThisExpression node) {
        return this.visitNode(node);
    }

    public boolean visit(ThrowStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(TryStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(TypeDeclaration node) {
        return this.visitNode(node);
    }

    public boolean visit(TypeDeclarationStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(TypeLiteral node) {
        return this.visitNode(node);
    }

    public boolean visit(TypeParameter node) {
        return this.visitNode(node);
    }

    public boolean visit(UnionType node) {
        return this.visitNode(node);
    }

    public boolean visit(VariableDeclarationExpression node) {
        return this.visitNode(node);
    }

    public boolean visit(VariableDeclarationFragment node) {
        return this.visitNode(node);
    }

    public boolean visit(VariableDeclarationStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(WhileStatement node) {
        return this.visitNode(node);
    }

    public boolean visit(WildcardType node) {
        return this.visitNode(node);
    }

    protected boolean visitNode(ASTNode node) {
        return true;
    }
}

