/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.dom;

import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
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
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.ContinueStatement;
import org.eclipse.jdt.core.dom.DoStatement;
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
import org.eclipse.jdt.core.dom.TextElement;
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

public class NaiveASTFlattener
extends ASTVisitor {
    private static final int JLS2 = 2;
    protected StringBuffer buffer = new StringBuffer();
    private int indent = 0;

    private Name getName(ClassInstanceCreation node) {
        return node.getName();
    }

    public String getResult() {
        return this.buffer.toString();
    }

    private Type getReturnType(MethodDeclaration node) {
        return node.getReturnType();
    }

    private Name getSuperclass(TypeDeclaration node) {
        return node.getSuperclass();
    }

    private TypeDeclaration getTypeDeclaration(TypeDeclarationStatement node) {
        return node.getTypeDeclaration();
    }

    void printIndent() {
        int i = 0;
        while (i < this.indent) {
            this.buffer.append("  ");
            ++i;
        }
    }

    void printModifiers(int modifiers) {
        if (Modifier.isPublic(modifiers)) {
            this.buffer.append("public ");
        }
        if (Modifier.isProtected(modifiers)) {
            this.buffer.append("protected ");
        }
        if (Modifier.isPrivate(modifiers)) {
            this.buffer.append("private ");
        }
        if (Modifier.isStatic(modifiers)) {
            this.buffer.append("static ");
        }
        if (Modifier.isAbstract(modifiers)) {
            this.buffer.append("abstract ");
        }
        if (Modifier.isFinal(modifiers)) {
            this.buffer.append("final ");
        }
        if (Modifier.isSynchronized(modifiers)) {
            this.buffer.append("synchronized ");
        }
        if (Modifier.isVolatile(modifiers)) {
            this.buffer.append("volatile ");
        }
        if (Modifier.isNative(modifiers)) {
            this.buffer.append("native ");
        }
        if (Modifier.isStrictfp(modifiers)) {
            this.buffer.append("strictfp ");
        }
        if (Modifier.isTransient(modifiers)) {
            this.buffer.append("transient ");
        }
    }

    void printModifiers(List ext) {
        Iterator it = ext.iterator();
        while (it.hasNext()) {
            ASTNode p = (ASTNode)it.next();
            p.accept(this);
            this.buffer.append(" ");
        }
    }

    public void reset() {
        this.buffer.setLength(0);
    }

    private List superInterfaces(TypeDeclaration node) {
        return node.superInterfaces();
    }

    public boolean visit(AnnotationTypeDeclaration node) {
        if (node.getJavadoc() != null) {
            node.getJavadoc().accept(this);
        }
        this.printIndent();
        this.printModifiers(node.modifiers());
        this.buffer.append("@interface ");
        node.getName().accept(this);
        this.buffer.append(" {");
        Iterator it = node.bodyDeclarations().iterator();
        while (it.hasNext()) {
            BodyDeclaration d = (BodyDeclaration)it.next();
            d.accept(this);
        }
        this.buffer.append("}\n");
        return false;
    }

    public boolean visit(AnnotationTypeMemberDeclaration node) {
        if (node.getJavadoc() != null) {
            node.getJavadoc().accept(this);
        }
        this.printIndent();
        this.printModifiers(node.modifiers());
        node.getType().accept(this);
        this.buffer.append(" ");
        node.getName().accept(this);
        this.buffer.append("()");
        if (node.getDefault() != null) {
            this.buffer.append(" default ");
            node.getDefault().accept(this);
        }
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(AnonymousClassDeclaration node) {
        this.buffer.append("{\n");
        ++this.indent;
        Iterator it = node.bodyDeclarations().iterator();
        while (it.hasNext()) {
            BodyDeclaration b = (BodyDeclaration)it.next();
            b.accept(this);
        }
        --this.indent;
        this.printIndent();
        this.buffer.append("}\n");
        return false;
    }

    public boolean visit(ArrayAccess node) {
        node.getArray().accept(this);
        this.buffer.append("[");
        node.getIndex().accept(this);
        this.buffer.append("]");
        return false;
    }

    public boolean visit(ArrayCreation node) {
        this.buffer.append("new ");
        ArrayType at = node.getType();
        int dims = at.getDimensions();
        Type elementType = at.getElementType();
        elementType.accept(this);
        Iterator it = node.dimensions().iterator();
        while (it.hasNext()) {
            this.buffer.append("[");
            Expression e = (Expression)it.next();
            e.accept(this);
            this.buffer.append("]");
            --dims;
        }
        int i = 0;
        while (i < dims) {
            this.buffer.append("[]");
            ++i;
        }
        if (node.getInitializer() != null) {
            node.getInitializer().accept(this);
        }
        return false;
    }

    public boolean visit(ArrayInitializer node) {
        this.buffer.append("{");
        Iterator it = node.expressions().iterator();
        while (it.hasNext()) {
            Expression e = (Expression)it.next();
            e.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(",");
        }
        this.buffer.append("}");
        return false;
    }

    public boolean visit(ArrayType node) {
        node.getComponentType().accept(this);
        this.buffer.append("[]");
        return false;
    }

    public boolean visit(AssertStatement node) {
        this.printIndent();
        this.buffer.append("assert ");
        node.getExpression().accept(this);
        if (node.getMessage() != null) {
            this.buffer.append(" : ");
            node.getMessage().accept(this);
        }
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(Assignment node) {
        node.getLeftHandSide().accept(this);
        this.buffer.append(node.getOperator().toString());
        node.getRightHandSide().accept(this);
        return false;
    }

    public boolean visit(Block node) {
        this.buffer.append("{\n");
        ++this.indent;
        Iterator it = node.statements().iterator();
        while (it.hasNext()) {
            Statement s = (Statement)it.next();
            s.accept(this);
        }
        --this.indent;
        this.printIndent();
        this.buffer.append("}\n");
        return false;
    }

    public boolean visit(BlockComment node) {
        this.printIndent();
        this.buffer.append("/* */");
        return false;
    }

    public boolean visit(BooleanLiteral node) {
        if (node.booleanValue()) {
            this.buffer.append("true");
        } else {
            this.buffer.append("false");
        }
        return false;
    }

    public boolean visit(BreakStatement node) {
        this.printIndent();
        this.buffer.append("break");
        if (node.getLabel() != null) {
            this.buffer.append(" ");
            node.getLabel().accept(this);
        }
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(CastExpression node) {
        this.buffer.append("(");
        node.getType().accept(this);
        this.buffer.append(")");
        node.getExpression().accept(this);
        return false;
    }

    public boolean visit(CatchClause node) {
        this.buffer.append("catch (");
        node.getException().accept(this);
        this.buffer.append(") ");
        node.getBody().accept(this);
        return false;
    }

    public boolean visit(CharacterLiteral node) {
        this.buffer.append(node.getEscapedValue());
        return false;
    }

    public boolean visit(ClassInstanceCreation node) {
        Iterator it;
        if (node.getExpression() != null) {
            node.getExpression().accept(this);
            this.buffer.append(".");
        }
        this.buffer.append("new ");
        if (node.getAST().apiLevel() == 2) {
            this.getName(node).accept(this);
        }
        if (node.getAST().apiLevel() >= 3) {
            if (!node.typeArguments().isEmpty()) {
                this.buffer.append("<");
                it = node.typeArguments().iterator();
                while (it.hasNext()) {
                    Type t = (Type)it.next();
                    t.accept(this);
                    if (!it.hasNext()) continue;
                    this.buffer.append(",");
                }
                this.buffer.append(">");
            }
            node.getType().accept(this);
        }
        this.buffer.append("(");
        it = node.arguments().iterator();
        while (it.hasNext()) {
            Expression e = (Expression)it.next();
            e.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(",");
        }
        this.buffer.append(")");
        if (node.getAnonymousClassDeclaration() != null) {
            node.getAnonymousClassDeclaration().accept(this);
        }
        return false;
    }

    public boolean visit(CompilationUnit node) {
        ASTNode d;
        if (node.getPackage() != null) {
            node.getPackage().accept(this);
        }
        Iterator it = node.imports().iterator();
        while (it.hasNext()) {
            d = (ImportDeclaration)it.next();
            d.accept(this);
        }
        it = node.types().iterator();
        while (it.hasNext()) {
            d = (AbstractTypeDeclaration)it.next();
            d.accept(this);
        }
        return false;
    }

    public boolean visit(ConditionalExpression node) {
        node.getExpression().accept(this);
        this.buffer.append(" ? ");
        node.getThenExpression().accept(this);
        this.buffer.append(" : ");
        node.getElseExpression().accept(this);
        return false;
    }

    public boolean visit(ConstructorInvocation node) {
        Iterator it;
        this.printIndent();
        if (node.getAST().apiLevel() >= 3 && !node.typeArguments().isEmpty()) {
            this.buffer.append("<");
            it = node.typeArguments().iterator();
            while (it.hasNext()) {
                Type t = (Type)it.next();
                t.accept(this);
                if (!it.hasNext()) continue;
                this.buffer.append(",");
            }
            this.buffer.append(">");
        }
        this.buffer.append("this(");
        it = node.arguments().iterator();
        while (it.hasNext()) {
            Expression e = (Expression)it.next();
            e.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(",");
        }
        this.buffer.append(");\n");
        return false;
    }

    public boolean visit(ContinueStatement node) {
        this.printIndent();
        this.buffer.append("continue");
        if (node.getLabel() != null) {
            this.buffer.append(" ");
            node.getLabel().accept(this);
        }
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(DoStatement node) {
        this.printIndent();
        this.buffer.append("do ");
        node.getBody().accept(this);
        this.buffer.append(" while (");
        node.getExpression().accept(this);
        this.buffer.append(");\n");
        return false;
    }

    public boolean visit(EmptyStatement node) {
        this.printIndent();
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(EnhancedForStatement node) {
        this.printIndent();
        this.buffer.append("for (");
        node.getParameter().accept(this);
        this.buffer.append(" : ");
        node.getExpression().accept(this);
        this.buffer.append(") ");
        node.getBody().accept(this);
        return false;
    }

    public boolean visit(EnumConstantDeclaration node) {
        if (node.getJavadoc() != null) {
            node.getJavadoc().accept(this);
        }
        this.printIndent();
        this.printModifiers(node.modifiers());
        node.getName().accept(this);
        if (!node.arguments().isEmpty()) {
            this.buffer.append("(");
            Iterator it = node.arguments().iterator();
            while (it.hasNext()) {
                Expression e = (Expression)it.next();
                e.accept(this);
                if (!it.hasNext()) continue;
                this.buffer.append(",");
            }
            this.buffer.append(")");
        }
        if (node.getAnonymousClassDeclaration() != null) {
            node.getAnonymousClassDeclaration().accept(this);
        }
        return false;
    }

    public boolean visit(EnumDeclaration node) {
        BodyDeclaration d;
        Iterator it;
        if (node.getJavadoc() != null) {
            node.getJavadoc().accept(this);
        }
        this.printIndent();
        this.printModifiers(node.modifiers());
        this.buffer.append("enum ");
        node.getName().accept(this);
        this.buffer.append(" ");
        if (!node.superInterfaceTypes().isEmpty()) {
            this.buffer.append("implements ");
            it = node.superInterfaceTypes().iterator();
            while (it.hasNext()) {
                Type t = (Type)it.next();
                t.accept(this);
                if (!it.hasNext()) continue;
                this.buffer.append(", ");
            }
            this.buffer.append(" ");
        }
        this.buffer.append("{");
        it = node.enumConstants().iterator();
        while (it.hasNext()) {
            d = (EnumConstantDeclaration)it.next();
            d.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(", ");
        }
        if (!node.bodyDeclarations().isEmpty()) {
            this.buffer.append("; ");
            it = node.bodyDeclarations().iterator();
            while (it.hasNext()) {
                d = (BodyDeclaration)it.next();
                d.accept(this);
            }
        }
        this.buffer.append("}\n");
        return false;
    }

    public boolean visit(ExpressionStatement node) {
        this.printIndent();
        node.getExpression().accept(this);
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(FieldAccess node) {
        node.getExpression().accept(this);
        this.buffer.append(".");
        node.getName().accept(this);
        return false;
    }

    public boolean visit(FieldDeclaration node) {
        if (node.getJavadoc() != null) {
            node.getJavadoc().accept(this);
        }
        this.printIndent();
        if (node.getAST().apiLevel() == 2) {
            this.printModifiers(node.getModifiers());
        }
        if (node.getAST().apiLevel() >= 3) {
            this.printModifiers(node.modifiers());
        }
        node.getType().accept(this);
        this.buffer.append(" ");
        Iterator it = node.fragments().iterator();
        while (it.hasNext()) {
            VariableDeclarationFragment f = (VariableDeclarationFragment)it.next();
            f.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(", ");
        }
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(ForStatement node) {
        Expression e;
        this.printIndent();
        this.buffer.append("for (");
        Iterator it = node.initializers().iterator();
        while (it.hasNext()) {
            e = (Expression)it.next();
            e.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(", ");
        }
        this.buffer.append("; ");
        if (node.getExpression() != null) {
            node.getExpression().accept(this);
        }
        this.buffer.append("; ");
        it = node.updaters().iterator();
        while (it.hasNext()) {
            e = (Expression)it.next();
            e.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(", ");
        }
        this.buffer.append(") ");
        node.getBody().accept(this);
        return false;
    }

    public boolean visit(IfStatement node) {
        this.printIndent();
        this.buffer.append("if (");
        node.getExpression().accept(this);
        this.buffer.append(") ");
        node.getThenStatement().accept(this);
        if (node.getElseStatement() != null) {
            this.buffer.append(" else ");
            node.getElseStatement().accept(this);
        }
        return false;
    }

    public boolean visit(ImportDeclaration node) {
        this.printIndent();
        this.buffer.append("import ");
        if (node.getAST().apiLevel() >= 3 && node.isStatic()) {
            this.buffer.append("static ");
        }
        node.getName().accept(this);
        if (node.isOnDemand()) {
            this.buffer.append(".*");
        }
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(InfixExpression node) {
        node.getLeftOperand().accept(this);
        this.buffer.append(' ');
        this.buffer.append(node.getOperator().toString());
        this.buffer.append(' ');
        node.getRightOperand().accept(this);
        List extendedOperands = node.extendedOperands();
        if (extendedOperands.size() != 0) {
            this.buffer.append(' ');
            Iterator it = extendedOperands.iterator();
            while (it.hasNext()) {
                this.buffer.append(node.getOperator().toString()).append(' ');
                Expression e = (Expression)it.next();
                e.accept(this);
            }
        }
        return false;
    }

    public boolean visit(Initializer node) {
        if (node.getJavadoc() != null) {
            node.getJavadoc().accept(this);
        }
        if (node.getAST().apiLevel() == 2) {
            this.printModifiers(node.getModifiers());
        }
        if (node.getAST().apiLevel() >= 3) {
            this.printModifiers(node.modifiers());
        }
        node.getBody().accept(this);
        return false;
    }

    public boolean visit(InstanceofExpression node) {
        node.getLeftOperand().accept(this);
        this.buffer.append(" instanceof ");
        node.getRightOperand().accept(this);
        return false;
    }

    public boolean visit(Javadoc node) {
        this.printIndent();
        this.buffer.append("/** ");
        Iterator it = node.tags().iterator();
        while (it.hasNext()) {
            ASTNode e = (ASTNode)it.next();
            e.accept(this);
        }
        this.buffer.append("\n */\n");
        return false;
    }

    public boolean visit(LabeledStatement node) {
        this.printIndent();
        node.getLabel().accept(this);
        this.buffer.append(": ");
        node.getBody().accept(this);
        return false;
    }

    public boolean visit(LineComment node) {
        this.buffer.append("//\n");
        return false;
    }

    public boolean visit(MarkerAnnotation node) {
        this.buffer.append("@");
        node.getTypeName().accept(this);
        return false;
    }

    public boolean visit(MemberRef node) {
        if (node.getQualifier() != null) {
            node.getQualifier().accept(this);
        }
        this.buffer.append("#");
        node.getName().accept(this);
        return false;
    }

    public boolean visit(MemberValuePair node) {
        node.getName().accept(this);
        this.buffer.append("=");
        node.getValue().accept(this);
        return false;
    }

    public boolean visit(MethodDeclaration node) {
        Iterator it;
        if (node.getJavadoc() != null) {
            node.getJavadoc().accept(this);
        }
        this.printIndent();
        if (node.getAST().apiLevel() == 2) {
            this.printModifiers(node.getModifiers());
        }
        if (node.getAST().apiLevel() >= 3) {
            this.printModifiers(node.modifiers());
            if (!node.typeParameters().isEmpty()) {
                this.buffer.append("<");
                it = node.typeParameters().iterator();
                while (it.hasNext()) {
                    TypeParameter t = (TypeParameter)it.next();
                    t.accept(this);
                    if (!it.hasNext()) continue;
                    this.buffer.append(",");
                }
                this.buffer.append(">");
            }
        }
        if (!node.isConstructor()) {
            if (node.getAST().apiLevel() == 2) {
                this.getReturnType(node).accept(this);
            } else if (node.getReturnType2() != null) {
                node.getReturnType2().accept(this);
            } else {
                this.buffer.append("void");
            }
            this.buffer.append(" ");
        }
        node.getName().accept(this);
        this.buffer.append("(");
        it = node.parameters().iterator();
        while (it.hasNext()) {
            SingleVariableDeclaration v = (SingleVariableDeclaration)it.next();
            v.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(",");
        }
        this.buffer.append(")");
        int i = 0;
        while (i < node.getExtraDimensions()) {
            this.buffer.append("[]");
            ++i;
        }
        if (!node.thrownExceptions().isEmpty()) {
            this.buffer.append(" throws ");
            it = node.thrownExceptions().iterator();
            while (it.hasNext()) {
                Name n = (Name)it.next();
                n.accept(this);
                if (!it.hasNext()) continue;
                this.buffer.append(", ");
            }
            this.buffer.append(" ");
        }
        if (node.getBody() == null) {
            this.buffer.append(";\n");
        } else {
            node.getBody().accept(this);
        }
        return false;
    }

    public boolean visit(MethodInvocation node) {
        Iterator it;
        if (node.getExpression() != null) {
            node.getExpression().accept(this);
            this.buffer.append(".");
        }
        if (node.getAST().apiLevel() >= 3 && !node.typeArguments().isEmpty()) {
            this.buffer.append("<");
            it = node.typeArguments().iterator();
            while (it.hasNext()) {
                Type t = (Type)it.next();
                t.accept(this);
                if (!it.hasNext()) continue;
                this.buffer.append(",");
            }
            this.buffer.append(">");
        }
        node.getName().accept(this);
        this.buffer.append("(");
        it = node.arguments().iterator();
        while (it.hasNext()) {
            Expression e = (Expression)it.next();
            e.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(",");
        }
        this.buffer.append(")");
        return false;
    }

    public boolean visit(MethodRef node) {
        if (node.getQualifier() != null) {
            node.getQualifier().accept(this);
        }
        this.buffer.append("#");
        node.getName().accept(this);
        this.buffer.append("(");
        Iterator it = node.parameters().iterator();
        while (it.hasNext()) {
            MethodRefParameter e = (MethodRefParameter)it.next();
            e.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(",");
        }
        this.buffer.append(")");
        return false;
    }

    public boolean visit(MethodRefParameter node) {
        node.getType().accept(this);
        if (node.getAST().apiLevel() >= 3 && node.isVarargs()) {
            this.buffer.append("...");
        }
        if (node.getName() != null) {
            this.buffer.append(" ");
            node.getName().accept(this);
        }
        return false;
    }

    public boolean visit(Modifier node) {
        this.buffer.append(node.getKeyword().toString());
        return false;
    }

    public boolean visit(NormalAnnotation node) {
        this.buffer.append("@");
        node.getTypeName().accept(this);
        this.buffer.append("(");
        Iterator it = node.values().iterator();
        while (it.hasNext()) {
            MemberValuePair p = (MemberValuePair)it.next();
            p.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(",");
        }
        this.buffer.append(")");
        return false;
    }

    public boolean visit(NullLiteral node) {
        this.buffer.append("null");
        return false;
    }

    public boolean visit(NumberLiteral node) {
        this.buffer.append(node.getToken());
        return false;
    }

    public boolean visit(PackageDeclaration node) {
        if (node.getAST().apiLevel() >= 3) {
            if (node.getJavadoc() != null) {
                node.getJavadoc().accept(this);
            }
            Iterator it = node.annotations().iterator();
            while (it.hasNext()) {
                Annotation p = (Annotation)it.next();
                p.accept(this);
                this.buffer.append(" ");
            }
        }
        this.printIndent();
        this.buffer.append("package ");
        node.getName().accept(this);
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(ParameterizedType node) {
        node.getType().accept(this);
        this.buffer.append("<");
        Iterator it = node.typeArguments().iterator();
        while (it.hasNext()) {
            Type t = (Type)it.next();
            t.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(",");
        }
        this.buffer.append(">");
        return false;
    }

    public boolean visit(ParenthesizedExpression node) {
        this.buffer.append("(");
        node.getExpression().accept(this);
        this.buffer.append(")");
        return false;
    }

    public boolean visit(PostfixExpression node) {
        node.getOperand().accept(this);
        this.buffer.append(node.getOperator().toString());
        return false;
    }

    public boolean visit(PrefixExpression node) {
        this.buffer.append(node.getOperator().toString());
        node.getOperand().accept(this);
        return false;
    }

    public boolean visit(PrimitiveType node) {
        this.buffer.append(node.getPrimitiveTypeCode().toString());
        return false;
    }

    public boolean visit(QualifiedName node) {
        node.getQualifier().accept(this);
        this.buffer.append(".");
        node.getName().accept(this);
        return false;
    }

    public boolean visit(QualifiedType node) {
        node.getQualifier().accept(this);
        this.buffer.append(".");
        node.getName().accept(this);
        return false;
    }

    public boolean visit(ReturnStatement node) {
        this.printIndent();
        this.buffer.append("return");
        if (node.getExpression() != null) {
            this.buffer.append(" ");
            node.getExpression().accept(this);
        }
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(SimpleName node) {
        this.buffer.append(node.getIdentifier());
        return false;
    }

    public boolean visit(SimpleType node) {
        return true;
    }

    public boolean visit(SingleMemberAnnotation node) {
        this.buffer.append("@");
        node.getTypeName().accept(this);
        this.buffer.append("(");
        node.getValue().accept(this);
        this.buffer.append(")");
        return false;
    }

    public boolean visit(SingleVariableDeclaration node) {
        this.printIndent();
        if (node.getAST().apiLevel() == 2) {
            this.printModifiers(node.getModifiers());
        }
        if (node.getAST().apiLevel() >= 3) {
            this.printModifiers(node.modifiers());
        }
        node.getType().accept(this);
        if (node.getAST().apiLevel() >= 3 && node.isVarargs()) {
            this.buffer.append("...");
        }
        this.buffer.append(" ");
        node.getName().accept(this);
        int i = 0;
        while (i < node.getExtraDimensions()) {
            this.buffer.append("[]");
            ++i;
        }
        if (node.getInitializer() != null) {
            this.buffer.append("=");
            node.getInitializer().accept(this);
        }
        return false;
    }

    public boolean visit(StringLiteral node) {
        this.buffer.append(node.getEscapedValue());
        return false;
    }

    public boolean visit(SuperConstructorInvocation node) {
        Iterator it;
        this.printIndent();
        if (node.getExpression() != null) {
            node.getExpression().accept(this);
            this.buffer.append(".");
        }
        if (node.getAST().apiLevel() >= 3 && !node.typeArguments().isEmpty()) {
            this.buffer.append("<");
            it = node.typeArguments().iterator();
            while (it.hasNext()) {
                Type t = (Type)it.next();
                t.accept(this);
                if (!it.hasNext()) continue;
                this.buffer.append(",");
            }
            this.buffer.append(">");
        }
        this.buffer.append("super(");
        it = node.arguments().iterator();
        while (it.hasNext()) {
            Expression e = (Expression)it.next();
            e.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(",");
        }
        this.buffer.append(");\n");
        return false;
    }

    public boolean visit(SuperFieldAccess node) {
        if (node.getQualifier() != null) {
            node.getQualifier().accept(this);
            this.buffer.append(".");
        }
        this.buffer.append("super.");
        node.getName().accept(this);
        return false;
    }

    public boolean visit(SuperMethodInvocation node) {
        Iterator it;
        if (node.getQualifier() != null) {
            node.getQualifier().accept(this);
            this.buffer.append(".");
        }
        this.buffer.append("super.");
        if (node.getAST().apiLevel() >= 3 && !node.typeArguments().isEmpty()) {
            this.buffer.append("<");
            it = node.typeArguments().iterator();
            while (it.hasNext()) {
                Type t = (Type)it.next();
                t.accept(this);
                if (!it.hasNext()) continue;
                this.buffer.append(",");
            }
            this.buffer.append(">");
        }
        node.getName().accept(this);
        this.buffer.append("(");
        it = node.arguments().iterator();
        while (it.hasNext()) {
            Expression e = (Expression)it.next();
            e.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(",");
        }
        this.buffer.append(")");
        return false;
    }

    public boolean visit(SwitchCase node) {
        if (node.isDefault()) {
            this.buffer.append("default :\n");
        } else {
            this.buffer.append("case ");
            node.getExpression().accept(this);
            this.buffer.append(":\n");
        }
        ++this.indent;
        return false;
    }

    public boolean visit(SwitchStatement node) {
        this.buffer.append("switch (");
        node.getExpression().accept(this);
        this.buffer.append(") ");
        this.buffer.append("{\n");
        ++this.indent;
        Iterator it = node.statements().iterator();
        while (it.hasNext()) {
            Statement s = (Statement)it.next();
            s.accept(this);
            --this.indent;
        }
        --this.indent;
        this.printIndent();
        this.buffer.append("}\n");
        return false;
    }

    public boolean visit(SynchronizedStatement node) {
        this.buffer.append("synchronized (");
        node.getExpression().accept(this);
        this.buffer.append(") ");
        node.getBody().accept(this);
        return false;
    }

    public boolean visit(TagElement node) {
        if (node.isNested()) {
            this.buffer.append("{");
        } else {
            this.buffer.append("\n * ");
        }
        boolean previousRequiresWhiteSpace = false;
        if (node.getTagName() != null) {
            this.buffer.append(node.getTagName());
            previousRequiresWhiteSpace = true;
        }
        boolean previousRequiresNewLine = false;
        Iterator it = node.fragments().iterator();
        while (it.hasNext()) {
            ASTNode e = (ASTNode)it.next();
            boolean currentIncludesWhiteSpace = e instanceof TextElement;
            if (previousRequiresNewLine && currentIncludesWhiteSpace) {
                this.buffer.append("\n * ");
            }
            previousRequiresNewLine = currentIncludesWhiteSpace;
            if (previousRequiresWhiteSpace && !currentIncludesWhiteSpace) {
                this.buffer.append(" ");
            }
            e.accept(this);
            boolean bl = previousRequiresWhiteSpace = !currentIncludesWhiteSpace && !(e instanceof TagElement);
        }
        if (node.isNested()) {
            this.buffer.append("}");
        }
        return false;
    }

    public boolean visit(TextElement node) {
        this.buffer.append(node.getText());
        return false;
    }

    public boolean visit(ThisExpression node) {
        if (node.getQualifier() != null) {
            node.getQualifier().accept(this);
            this.buffer.append(".");
        }
        this.buffer.append("this");
        return false;
    }

    public boolean visit(ThrowStatement node) {
        this.printIndent();
        this.buffer.append("throw ");
        node.getExpression().accept(this);
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(TryStatement node) {
        Iterator it;
        this.printIndent();
        this.buffer.append("try ");
        List resources = node.resources();
        if (node.getAST().apiLevel() >= 4 && !node.resources().isEmpty()) {
            this.buffer.append('(');
            it = resources.iterator();
            while (it.hasNext()) {
                VariableDeclarationExpression variable = (VariableDeclarationExpression)it.next();
                variable.accept(this);
                if (!it.hasNext()) continue;
                this.buffer.append(';');
            }
            this.buffer.append(')');
        }
        node.getBody().accept(this);
        this.buffer.append(" ");
        it = node.catchClauses().iterator();
        while (it.hasNext()) {
            CatchClause cc = (CatchClause)it.next();
            cc.accept(this);
        }
        if (node.getFinally() != null) {
            this.buffer.append(" finally ");
            node.getFinally().accept(this);
        }
        return false;
    }

    public boolean visit(TypeDeclaration node) {
        ASTNode t;
        Iterator it;
        if (node.getJavadoc() != null) {
            node.getJavadoc().accept(this);
        }
        if (node.getAST().apiLevel() == 2) {
            this.printModifiers(node.getModifiers());
        }
        if (node.getAST().apiLevel() >= 3) {
            this.printModifiers(node.modifiers());
        }
        this.buffer.append(node.isInterface() ? "interface " : "class ");
        node.getName().accept(this);
        if (node.getAST().apiLevel() >= 3 && !node.typeParameters().isEmpty()) {
            this.buffer.append("<");
            it = node.typeParameters().iterator();
            while (it.hasNext()) {
                t = (TypeParameter)it.next();
                t.accept(this);
                if (!it.hasNext()) continue;
                this.buffer.append(",");
            }
            this.buffer.append(">");
        }
        this.buffer.append(" ");
        if (node.getAST().apiLevel() == 2) {
            if (this.getSuperclass(node) != null) {
                this.buffer.append("extends ");
                this.getSuperclass(node).accept(this);
                this.buffer.append(" ");
            }
            if (!this.superInterfaces(node).isEmpty()) {
                this.buffer.append(node.isInterface() ? "extends " : "implements ");
                it = this.superInterfaces(node).iterator();
                while (it.hasNext()) {
                    Name n = (Name)it.next();
                    n.accept(this);
                    if (!it.hasNext()) continue;
                    this.buffer.append(", ");
                }
                this.buffer.append(" ");
            }
        }
        if (node.getAST().apiLevel() >= 3) {
            if (node.getSuperclassType() != null) {
                this.buffer.append("extends ");
                node.getSuperclassType().accept(this);
                this.buffer.append(" ");
            }
            if (!node.superInterfaceTypes().isEmpty()) {
                this.buffer.append(node.isInterface() ? "extends " : "implements ");
                it = node.superInterfaceTypes().iterator();
                while (it.hasNext()) {
                    t = (Type)it.next();
                    t.accept(this);
                    if (!it.hasNext()) continue;
                    this.buffer.append(", ");
                }
                this.buffer.append(" ");
            }
        }
        this.buffer.append("{\n");
        ++this.indent;
        it = node.bodyDeclarations().iterator();
        while (it.hasNext()) {
            BodyDeclaration d = (BodyDeclaration)it.next();
            d.accept(this);
        }
        --this.indent;
        this.printIndent();
        this.buffer.append("}\n");
        return false;
    }

    public boolean visit(TypeDeclarationStatement node) {
        if (node.getAST().apiLevel() == 2) {
            this.getTypeDeclaration(node).accept(this);
        }
        if (node.getAST().apiLevel() >= 3) {
            node.getDeclaration().accept(this);
        }
        return false;
    }

    public boolean visit(TypeLiteral node) {
        node.getType().accept(this);
        this.buffer.append(".class");
        return false;
    }

    public boolean visit(TypeParameter node) {
        node.getName().accept(this);
        if (!node.typeBounds().isEmpty()) {
            this.buffer.append(" extends ");
            Iterator it = node.typeBounds().iterator();
            while (it.hasNext()) {
                Type t = (Type)it.next();
                t.accept(this);
                if (!it.hasNext()) continue;
                this.buffer.append(" & ");
            }
        }
        return false;
    }

    public boolean visit(UnionType node) {
        Iterator it = node.types().iterator();
        while (it.hasNext()) {
            Type t = (Type)it.next();
            t.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append('|');
        }
        return false;
    }

    public boolean visit(VariableDeclarationExpression node) {
        if (node.getAST().apiLevel() == 2) {
            this.printModifiers(node.getModifiers());
        }
        if (node.getAST().apiLevel() >= 3) {
            this.printModifiers(node.modifiers());
        }
        node.getType().accept(this);
        this.buffer.append(" ");
        Iterator it = node.fragments().iterator();
        while (it.hasNext()) {
            VariableDeclarationFragment f = (VariableDeclarationFragment)it.next();
            f.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(", ");
        }
        return false;
    }

    public boolean visit(VariableDeclarationFragment node) {
        node.getName().accept(this);
        int i = 0;
        while (i < node.getExtraDimensions()) {
            this.buffer.append("[]");
            ++i;
        }
        if (node.getInitializer() != null) {
            this.buffer.append("=");
            node.getInitializer().accept(this);
        }
        return false;
    }

    public boolean visit(VariableDeclarationStatement node) {
        this.printIndent();
        if (node.getAST().apiLevel() == 2) {
            this.printModifiers(node.getModifiers());
        }
        if (node.getAST().apiLevel() >= 3) {
            this.printModifiers(node.modifiers());
        }
        node.getType().accept(this);
        this.buffer.append(" ");
        Iterator it = node.fragments().iterator();
        while (it.hasNext()) {
            VariableDeclarationFragment f = (VariableDeclarationFragment)it.next();
            f.accept(this);
            if (!it.hasNext()) continue;
            this.buffer.append(", ");
        }
        this.buffer.append(";\n");
        return false;
    }

    public boolean visit(WhileStatement node) {
        this.printIndent();
        this.buffer.append("while (");
        node.getExpression().accept(this);
        this.buffer.append(") ");
        node.getBody().accept(this);
        return false;
    }

    public boolean visit(WildcardType node) {
        this.buffer.append("?");
        Type bound = node.getBound();
        if (bound != null) {
            if (node.isUpperBound()) {
                this.buffer.append(" extends ");
            } else {
                this.buffer.append(" super ");
            }
            bound.accept(this);
        }
        return false;
    }
}

