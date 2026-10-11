/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.Signature
 *  org.eclipse.jdt.core.dom.ASTVisitor
 *  org.eclipse.jdt.core.dom.AnnotationTypeDeclaration
 *  org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration
 *  org.eclipse.jdt.core.dom.AnonymousClassDeclaration
 *  org.eclipse.jdt.core.dom.ArrayAccess
 *  org.eclipse.jdt.core.dom.ArrayCreation
 *  org.eclipse.jdt.core.dom.ArrayInitializer
 *  org.eclipse.jdt.core.dom.ArrayType
 *  org.eclipse.jdt.core.dom.AssertStatement
 *  org.eclipse.jdt.core.dom.Assignment
 *  org.eclipse.jdt.core.dom.Block
 *  org.eclipse.jdt.core.dom.BlockComment
 *  org.eclipse.jdt.core.dom.BooleanLiteral
 *  org.eclipse.jdt.core.dom.BreakStatement
 *  org.eclipse.jdt.core.dom.CastExpression
 *  org.eclipse.jdt.core.dom.CatchClause
 *  org.eclipse.jdt.core.dom.CharacterLiteral
 *  org.eclipse.jdt.core.dom.ClassInstanceCreation
 *  org.eclipse.jdt.core.dom.CompilationUnit
 *  org.eclipse.jdt.core.dom.ConditionalExpression
 *  org.eclipse.jdt.core.dom.ConstructorInvocation
 *  org.eclipse.jdt.core.dom.ContinueStatement
 *  org.eclipse.jdt.core.dom.DoStatement
 *  org.eclipse.jdt.core.dom.EmptyStatement
 *  org.eclipse.jdt.core.dom.EnhancedForStatement
 *  org.eclipse.jdt.core.dom.EnumConstantDeclaration
 *  org.eclipse.jdt.core.dom.EnumDeclaration
 *  org.eclipse.jdt.core.dom.ExpressionStatement
 *  org.eclipse.jdt.core.dom.FieldAccess
 *  org.eclipse.jdt.core.dom.FieldDeclaration
 *  org.eclipse.jdt.core.dom.ForStatement
 *  org.eclipse.jdt.core.dom.IMethodBinding
 *  org.eclipse.jdt.core.dom.ITypeBinding
 *  org.eclipse.jdt.core.dom.IfStatement
 *  org.eclipse.jdt.core.dom.ImportDeclaration
 *  org.eclipse.jdt.core.dom.InfixExpression
 *  org.eclipse.jdt.core.dom.Initializer
 *  org.eclipse.jdt.core.dom.InstanceofExpression
 *  org.eclipse.jdt.core.dom.Javadoc
 *  org.eclipse.jdt.core.dom.LabeledStatement
 *  org.eclipse.jdt.core.dom.LineComment
 *  org.eclipse.jdt.core.dom.MarkerAnnotation
 *  org.eclipse.jdt.core.dom.MemberRef
 *  org.eclipse.jdt.core.dom.MemberValuePair
 *  org.eclipse.jdt.core.dom.MethodDeclaration
 *  org.eclipse.jdt.core.dom.MethodInvocation
 *  org.eclipse.jdt.core.dom.MethodRef
 *  org.eclipse.jdt.core.dom.MethodRefParameter
 *  org.eclipse.jdt.core.dom.Modifier
 *  org.eclipse.jdt.core.dom.NormalAnnotation
 *  org.eclipse.jdt.core.dom.NullLiteral
 *  org.eclipse.jdt.core.dom.NumberLiteral
 *  org.eclipse.jdt.core.dom.PackageDeclaration
 *  org.eclipse.jdt.core.dom.ParameterizedType
 *  org.eclipse.jdt.core.dom.ParenthesizedExpression
 *  org.eclipse.jdt.core.dom.PostfixExpression
 *  org.eclipse.jdt.core.dom.PrefixExpression
 *  org.eclipse.jdt.core.dom.PrimitiveType
 *  org.eclipse.jdt.core.dom.QualifiedName
 *  org.eclipse.jdt.core.dom.QualifiedType
 *  org.eclipse.jdt.core.dom.ReturnStatement
 *  org.eclipse.jdt.core.dom.SimpleName
 *  org.eclipse.jdt.core.dom.SimpleType
 *  org.eclipse.jdt.core.dom.SingleMemberAnnotation
 *  org.eclipse.jdt.core.dom.SingleVariableDeclaration
 *  org.eclipse.jdt.core.dom.StringLiteral
 *  org.eclipse.jdt.core.dom.SuperConstructorInvocation
 *  org.eclipse.jdt.core.dom.SuperFieldAccess
 *  org.eclipse.jdt.core.dom.SuperMethodInvocation
 *  org.eclipse.jdt.core.dom.SwitchCase
 *  org.eclipse.jdt.core.dom.SwitchStatement
 *  org.eclipse.jdt.core.dom.SynchronizedStatement
 *  org.eclipse.jdt.core.dom.TagElement
 *  org.eclipse.jdt.core.dom.TextElement
 *  org.eclipse.jdt.core.dom.ThisExpression
 *  org.eclipse.jdt.core.dom.ThrowStatement
 *  org.eclipse.jdt.core.dom.TryStatement
 *  org.eclipse.jdt.core.dom.TypeDeclaration
 *  org.eclipse.jdt.core.dom.TypeDeclarationStatement
 *  org.eclipse.jdt.core.dom.TypeLiteral
 *  org.eclipse.jdt.core.dom.TypeParameter
 *  org.eclipse.jdt.core.dom.UnionType
 *  org.eclipse.jdt.core.dom.VariableDeclarationExpression
 *  org.eclipse.jdt.core.dom.VariableDeclarationFragment
 *  org.eclipse.jdt.core.dom.VariableDeclarationStatement
 *  org.eclipse.jdt.core.dom.WhileStatement
 *  org.eclipse.jdt.core.dom.WildcardType
 */
package org.eclipse.jdt.internal.debug.core.hcr;

import org.eclipse.jdt.core.Signature;
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
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
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

public class MethodSearchVisitor
extends ASTVisitor {
    private String fName;
    private String[] fParameterTypes;
    private MethodDeclaration fMatch;

    public void setTargetMethod(String methodName, String methodSignature) {
        this.fName = methodName;
        this.fParameterTypes = Signature.getParameterTypes((String)methodSignature);
        int i = 0;
        while (i < this.fParameterTypes.length) {
            String type = this.fParameterTypes[i];
            this.fParameterTypes[i] = type = type.replace('/', '.');
            ++i;
        }
        this.fMatch = null;
    }

    public MethodDeclaration getMatch() {
        return this.fMatch;
    }

    public boolean visit(MethodDeclaration node) {
        ITypeBinding[] typeBindings;
        IMethodBinding methodBinding;
        if (node.getName().getIdentifier().equals(this.fName) && (methodBinding = node.resolveBinding()) != null && (typeBindings = methodBinding.getParameterTypes()).length == this.fParameterTypes.length) {
            int i = 0;
            while (i < typeBindings.length) {
                ITypeBinding typeBinding = typeBindings[i];
                String typeSignature = Signature.createTypeSignature((String)typeBinding.getQualifiedName(), (boolean)true);
                if (!this.fParameterTypes[i].equals(typeSignature)) {
                    return true;
                }
                ++i;
            }
            this.fMatch = node;
        }
        return this.isSearching();
    }

    private boolean isSearching() {
        return this.fMatch == null;
    }

    public boolean visit(AnnotationTypeDeclaration node) {
        return this.isSearching();
    }

    public boolean visit(AnnotationTypeMemberDeclaration node) {
        return this.isSearching();
    }

    public boolean visit(AnonymousClassDeclaration node) {
        return this.isSearching();
    }

    public boolean visit(ArrayAccess node) {
        return this.isSearching();
    }

    public boolean visit(ArrayCreation node) {
        return this.isSearching();
    }

    public boolean visit(ArrayInitializer node) {
        return this.isSearching();
    }

    public boolean visit(ArrayType node) {
        return this.isSearching();
    }

    public boolean visit(AssertStatement node) {
        return this.isSearching();
    }

    public boolean visit(Assignment node) {
        return this.isSearching();
    }

    public boolean visit(Block node) {
        return this.isSearching();
    }

    public boolean visit(BlockComment node) {
        return this.isSearching();
    }

    public boolean visit(BooleanLiteral node) {
        return this.isSearching();
    }

    public boolean visit(BreakStatement node) {
        return this.isSearching();
    }

    public boolean visit(CastExpression node) {
        return this.isSearching();
    }

    public boolean visit(CatchClause node) {
        return this.isSearching();
    }

    public boolean visit(CharacterLiteral node) {
        return this.isSearching();
    }

    public boolean visit(ClassInstanceCreation node) {
        return this.isSearching();
    }

    public boolean visit(CompilationUnit node) {
        return this.isSearching();
    }

    public boolean visit(ConditionalExpression node) {
        return this.isSearching();
    }

    public boolean visit(ConstructorInvocation node) {
        return this.isSearching();
    }

    public boolean visit(ContinueStatement node) {
        return this.isSearching();
    }

    public boolean visit(DoStatement node) {
        return this.isSearching();
    }

    public boolean visit(EmptyStatement node) {
        return this.isSearching();
    }

    public boolean visit(EnhancedForStatement node) {
        return this.isSearching();
    }

    public boolean visit(EnumConstantDeclaration node) {
        return this.isSearching();
    }

    public boolean visit(EnumDeclaration node) {
        return this.isSearching();
    }

    public boolean visit(ExpressionStatement node) {
        return this.isSearching();
    }

    public boolean visit(FieldAccess node) {
        return this.isSearching();
    }

    public boolean visit(FieldDeclaration node) {
        return this.isSearching();
    }

    public boolean visit(ForStatement node) {
        return this.isSearching();
    }

    public boolean visit(IfStatement node) {
        return this.isSearching();
    }

    public boolean visit(ImportDeclaration node) {
        return this.isSearching();
    }

    public boolean visit(InfixExpression node) {
        return this.isSearching();
    }

    public boolean visit(Initializer node) {
        return this.isSearching();
    }

    public boolean visit(InstanceofExpression node) {
        return this.isSearching();
    }

    public boolean visit(Javadoc node) {
        return this.isSearching();
    }

    public boolean visit(LabeledStatement node) {
        return this.isSearching();
    }

    public boolean visit(LineComment node) {
        return this.isSearching();
    }

    public boolean visit(MarkerAnnotation node) {
        return this.isSearching();
    }

    public boolean visit(MemberRef node) {
        return this.isSearching();
    }

    public boolean visit(MemberValuePair node) {
        return this.isSearching();
    }

    public boolean visit(MethodInvocation node) {
        return this.isSearching();
    }

    public boolean visit(MethodRef node) {
        return this.isSearching();
    }

    public boolean visit(MethodRefParameter node) {
        return this.isSearching();
    }

    public boolean visit(Modifier node) {
        return this.isSearching();
    }

    public boolean visit(NormalAnnotation node) {
        return this.isSearching();
    }

    public boolean visit(NullLiteral node) {
        return this.isSearching();
    }

    public boolean visit(NumberLiteral node) {
        return this.isSearching();
    }

    public boolean visit(PackageDeclaration node) {
        return this.isSearching();
    }

    public boolean visit(ParameterizedType node) {
        return this.isSearching();
    }

    public boolean visit(ParenthesizedExpression node) {
        return this.isSearching();
    }

    public boolean visit(PostfixExpression node) {
        return this.isSearching();
    }

    public boolean visit(PrefixExpression node) {
        return this.isSearching();
    }

    public boolean visit(PrimitiveType node) {
        return this.isSearching();
    }

    public boolean visit(QualifiedName node) {
        return this.isSearching();
    }

    public boolean visit(QualifiedType node) {
        return this.isSearching();
    }

    public boolean visit(ReturnStatement node) {
        return this.isSearching();
    }

    public boolean visit(SimpleName node) {
        return this.isSearching();
    }

    public boolean visit(SimpleType node) {
        return this.isSearching();
    }

    public boolean visit(SingleMemberAnnotation node) {
        return this.isSearching();
    }

    public boolean visit(SingleVariableDeclaration node) {
        return this.isSearching();
    }

    public boolean visit(StringLiteral node) {
        return this.isSearching();
    }

    public boolean visit(SuperConstructorInvocation node) {
        return this.isSearching();
    }

    public boolean visit(SuperFieldAccess node) {
        return this.isSearching();
    }

    public boolean visit(SuperMethodInvocation node) {
        return this.isSearching();
    }

    public boolean visit(SwitchCase node) {
        return this.isSearching();
    }

    public boolean visit(SwitchStatement node) {
        return this.isSearching();
    }

    public boolean visit(SynchronizedStatement node) {
        return this.isSearching();
    }

    public boolean visit(TagElement node) {
        return this.isSearching();
    }

    public boolean visit(TextElement node) {
        return this.isSearching();
    }

    public boolean visit(ThisExpression node) {
        return this.isSearching();
    }

    public boolean visit(ThrowStatement node) {
        return this.isSearching();
    }

    public boolean visit(TryStatement node) {
        return this.isSearching();
    }

    public boolean visit(TypeDeclaration node) {
        return this.isSearching();
    }

    public boolean visit(TypeDeclarationStatement node) {
        return this.isSearching();
    }

    public boolean visit(TypeLiteral node) {
        return this.isSearching();
    }

    public boolean visit(TypeParameter node) {
        return this.isSearching();
    }

    public boolean visit(UnionType node) {
        return super.visit(node);
    }

    public boolean visit(VariableDeclarationExpression node) {
        return this.isSearching();
    }

    public boolean visit(VariableDeclarationFragment node) {
        return this.isSearching();
    }

    public boolean visit(VariableDeclarationStatement node) {
        return this.isSearching();
    }

    public boolean visit(WhileStatement node) {
        return this.isSearching();
    }

    public boolean visit(WildcardType node) {
        return this.isSearching();
    }
}

