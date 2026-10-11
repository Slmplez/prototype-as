/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.List;
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
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
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
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
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
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;

public class ASTRewriteFlattener
extends ASTVisitor {
    static final int JLS2_INTERNAL = 2;
    protected StringBuffer result;
    private RewriteEventStore store;

    public static String asString(ASTNode node, RewriteEventStore store) {
        ASTRewriteFlattener flattener = new ASTRewriteFlattener(store);
        node.accept(flattener);
        return flattener.getResult();
    }

    public ASTRewriteFlattener(RewriteEventStore store) {
        this.store = store;
        this.result = new StringBuffer();
    }

    public String getResult() {
        return new String(this.result.toString());
    }

    public void reset() {
        this.result.setLength(0);
    }

    public static void printModifiers(int modifiers, StringBuffer buf) {
        if (Modifier.isPublic(modifiers)) {
            buf.append("public ");
        }
        if (Modifier.isProtected(modifiers)) {
            buf.append("protected ");
        }
        if (Modifier.isPrivate(modifiers)) {
            buf.append("private ");
        }
        if (Modifier.isStatic(modifiers)) {
            buf.append("static ");
        }
        if (Modifier.isAbstract(modifiers)) {
            buf.append("abstract ");
        }
        if (Modifier.isFinal(modifiers)) {
            buf.append("final ");
        }
        if (Modifier.isSynchronized(modifiers)) {
            buf.append("synchronized ");
        }
        if (Modifier.isVolatile(modifiers)) {
            buf.append("volatile ");
        }
        if (Modifier.isNative(modifiers)) {
            buf.append("native ");
        }
        if (Modifier.isStrictfp(modifiers)) {
            buf.append("strictfp ");
        }
        if (Modifier.isTransient(modifiers)) {
            buf.append("transient ");
        }
    }

    protected List getChildList(ASTNode parent, StructuralPropertyDescriptor childProperty) {
        return (List)this.getAttribute(parent, childProperty);
    }

    protected ASTNode getChildNode(ASTNode parent, StructuralPropertyDescriptor childProperty) {
        return (ASTNode)this.getAttribute(parent, childProperty);
    }

    protected int getIntAttribute(ASTNode parent, StructuralPropertyDescriptor childProperty) {
        return (Integer)this.getAttribute(parent, childProperty);
    }

    protected boolean getBooleanAttribute(ASTNode parent, StructuralPropertyDescriptor childProperty) {
        return (Boolean)this.getAttribute(parent, childProperty);
    }

    protected Object getAttribute(ASTNode parent, StructuralPropertyDescriptor childProperty) {
        return this.store.getNewValue(parent, childProperty);
    }

    protected void visitList(ASTNode parent, StructuralPropertyDescriptor childProperty, String separator) {
        List list = this.getChildList(parent, childProperty);
        int i = 0;
        while (i < list.size()) {
            if (separator != null && i > 0) {
                this.result.append(separator);
            }
            ((ASTNode)list.get(i)).accept(this);
            ++i;
        }
    }

    protected void visitList(ASTNode parent, StructuralPropertyDescriptor childProperty, String separator, String lead, String post) {
        List list = this.getChildList(parent, childProperty);
        if (!list.isEmpty()) {
            this.result.append(lead);
            int i = 0;
            while (i < list.size()) {
                if (separator != null && i > 0) {
                    this.result.append(separator);
                }
                ((ASTNode)list.get(i)).accept(this);
                ++i;
            }
            this.result.append(post);
        }
    }

    public boolean visit(AnonymousClassDeclaration node) {
        this.result.append('{');
        this.visitList(node, AnonymousClassDeclaration.BODY_DECLARATIONS_PROPERTY, null);
        this.result.append('}');
        return false;
    }

    public boolean visit(ArrayAccess node) {
        this.getChildNode(node, ArrayAccess.ARRAY_PROPERTY).accept(this);
        this.result.append('[');
        this.getChildNode(node, ArrayAccess.INDEX_PROPERTY).accept(this);
        this.result.append(']');
        return false;
    }

    public boolean visit(ArrayCreation node) {
        this.result.append("new ");
        ArrayType arrayType = (ArrayType)this.getChildNode(node, ArrayCreation.TYPE_PROPERTY);
        Type elementType = (Type)this.getChildNode(arrayType, ArrayType.COMPONENT_TYPE_PROPERTY);
        int dimensions = 1;
        while (elementType.isArrayType()) {
            ++dimensions;
            elementType = (Type)this.getChildNode(elementType, ArrayType.COMPONENT_TYPE_PROPERTY);
        }
        elementType.accept(this);
        List list = this.getChildList(node, ArrayCreation.DIMENSIONS_PROPERTY);
        int i = 0;
        while (i < list.size()) {
            this.result.append('[');
            ((ASTNode)list.get(i)).accept(this);
            this.result.append(']');
            --dimensions;
            ++i;
        }
        i = 0;
        while (i < dimensions) {
            this.result.append("[]");
            ++i;
        }
        ASTNode initializer = this.getChildNode(node, ArrayCreation.INITIALIZER_PROPERTY);
        if (initializer != null) {
            this.getChildNode(node, ArrayCreation.INITIALIZER_PROPERTY).accept(this);
        }
        return false;
    }

    public boolean visit(ArrayInitializer node) {
        this.result.append('{');
        this.visitList(node, ArrayInitializer.EXPRESSIONS_PROPERTY, String.valueOf(','));
        this.result.append('}');
        return false;
    }

    public boolean visit(ArrayType node) {
        this.getChildNode(node, ArrayType.COMPONENT_TYPE_PROPERTY).accept(this);
        this.result.append("[]");
        return false;
    }

    public boolean visit(AssertStatement node) {
        this.result.append("assert ");
        this.getChildNode(node, AssertStatement.EXPRESSION_PROPERTY).accept(this);
        ASTNode message = this.getChildNode(node, AssertStatement.MESSAGE_PROPERTY);
        if (message != null) {
            this.result.append(':');
            message.accept(this);
        }
        this.result.append(';');
        return false;
    }

    public boolean visit(Assignment node) {
        this.getChildNode(node, Assignment.LEFT_HAND_SIDE_PROPERTY).accept(this);
        this.result.append(this.getAttribute(node, Assignment.OPERATOR_PROPERTY).toString());
        this.getChildNode(node, Assignment.RIGHT_HAND_SIDE_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(Block node) {
        this.result.append('{');
        this.visitList(node, Block.STATEMENTS_PROPERTY, null);
        this.result.append('}');
        return false;
    }

    public boolean visit(BooleanLiteral node) {
        if (node.booleanValue()) {
            this.result.append("true");
        } else {
            this.result.append("false");
        }
        return false;
    }

    public boolean visit(BreakStatement node) {
        this.result.append("break");
        ASTNode label = this.getChildNode(node, BreakStatement.LABEL_PROPERTY);
        if (label != null) {
            this.result.append(' ');
            label.accept(this);
        }
        this.result.append(';');
        return false;
    }

    public boolean visit(CastExpression node) {
        this.result.append('(');
        this.getChildNode(node, CastExpression.TYPE_PROPERTY).accept(this);
        this.result.append(')');
        this.getChildNode(node, CastExpression.EXPRESSION_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(CatchClause node) {
        this.result.append("catch (");
        this.getChildNode(node, CatchClause.EXCEPTION_PROPERTY).accept(this);
        this.result.append(')');
        this.getChildNode(node, CatchClause.BODY_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(CharacterLiteral node) {
        this.result.append(this.getAttribute(node, CharacterLiteral.ESCAPED_VALUE_PROPERTY));
        return false;
    }

    public boolean visit(ClassInstanceCreation node) {
        ASTNode expression = this.getChildNode(node, ClassInstanceCreation.EXPRESSION_PROPERTY);
        if (expression != null) {
            expression.accept(this);
            this.result.append('.');
        }
        this.result.append("new ");
        if (node.getAST().apiLevel() == 2) {
            this.getChildNode(node, ClassInstanceCreation.NAME_PROPERTY).accept(this);
        } else {
            this.visitList(node, ClassInstanceCreation.TYPE_ARGUMENTS_PROPERTY, String.valueOf(','), String.valueOf('<'), String.valueOf('>'));
            this.getChildNode(node, ClassInstanceCreation.TYPE_PROPERTY).accept(this);
        }
        this.result.append('(');
        this.visitList(node, ClassInstanceCreation.ARGUMENTS_PROPERTY, String.valueOf(','));
        this.result.append(')');
        ASTNode decl = this.getChildNode(node, ClassInstanceCreation.ANONYMOUS_CLASS_DECLARATION_PROPERTY);
        if (decl != null) {
            decl.accept(this);
        }
        return false;
    }

    public boolean visit(CompilationUnit node) {
        ASTNode pack = this.getChildNode(node, CompilationUnit.PACKAGE_PROPERTY);
        if (pack != null) {
            pack.accept(this);
        }
        this.visitList(node, CompilationUnit.IMPORTS_PROPERTY, null);
        this.visitList(node, CompilationUnit.TYPES_PROPERTY, null);
        return false;
    }

    public boolean visit(ConditionalExpression node) {
        this.getChildNode(node, ConditionalExpression.EXPRESSION_PROPERTY).accept(this);
        this.result.append('?');
        this.getChildNode(node, ConditionalExpression.THEN_EXPRESSION_PROPERTY).accept(this);
        this.result.append(':');
        this.getChildNode(node, ConditionalExpression.ELSE_EXPRESSION_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(ConstructorInvocation node) {
        if (node.getAST().apiLevel() >= 3) {
            this.visitList(node, ConstructorInvocation.TYPE_ARGUMENTS_PROPERTY, String.valueOf(','), String.valueOf('<'), String.valueOf('>'));
        }
        this.result.append("this(");
        this.visitList(node, ConstructorInvocation.ARGUMENTS_PROPERTY, String.valueOf(','));
        this.result.append(");");
        return false;
    }

    public boolean visit(ContinueStatement node) {
        this.result.append("continue");
        ASTNode label = this.getChildNode(node, ContinueStatement.LABEL_PROPERTY);
        if (label != null) {
            this.result.append(' ');
            label.accept(this);
        }
        this.result.append(';');
        return false;
    }

    public boolean visit(DoStatement node) {
        this.result.append("do ");
        this.getChildNode(node, DoStatement.BODY_PROPERTY).accept(this);
        this.result.append(" while (");
        this.getChildNode(node, DoStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(");");
        return false;
    }

    public boolean visit(EmptyStatement node) {
        this.result.append(';');
        return false;
    }

    public boolean visit(ExpressionStatement node) {
        this.getChildNode(node, ExpressionStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(';');
        return false;
    }

    public boolean visit(FieldAccess node) {
        this.getChildNode(node, FieldAccess.EXPRESSION_PROPERTY).accept(this);
        this.result.append('.');
        this.getChildNode(node, FieldAccess.NAME_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(FieldDeclaration node) {
        ASTNode javadoc = this.getChildNode(node, FieldDeclaration.JAVADOC_PROPERTY);
        if (javadoc != null) {
            javadoc.accept(this);
        }
        if (node.getAST().apiLevel() == 2) {
            ASTRewriteFlattener.printModifiers(this.getIntAttribute(node, FieldDeclaration.MODIFIERS_PROPERTY), this.result);
        } else {
            this.visitList(node, FieldDeclaration.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
        }
        this.getChildNode(node, FieldDeclaration.TYPE_PROPERTY).accept(this);
        this.result.append(' ');
        this.visitList(node, FieldDeclaration.FRAGMENTS_PROPERTY, String.valueOf(','));
        this.result.append(';');
        return false;
    }

    public boolean visit(ForStatement node) {
        this.result.append("for (");
        this.visitList(node, ForStatement.INITIALIZERS_PROPERTY, String.valueOf(','));
        this.result.append(';');
        ASTNode expression = this.getChildNode(node, ForStatement.EXPRESSION_PROPERTY);
        if (expression != null) {
            expression.accept(this);
        }
        this.result.append(';');
        this.visitList(node, ForStatement.UPDATERS_PROPERTY, String.valueOf(','));
        this.result.append(')');
        this.getChildNode(node, ForStatement.BODY_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(IfStatement node) {
        this.result.append("if (");
        this.getChildNode(node, IfStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        this.getChildNode(node, IfStatement.THEN_STATEMENT_PROPERTY).accept(this);
        ASTNode elseStatement = this.getChildNode(node, IfStatement.ELSE_STATEMENT_PROPERTY);
        if (elseStatement != null) {
            this.result.append(" else ");
            elseStatement.accept(this);
        }
        return false;
    }

    public boolean visit(ImportDeclaration node) {
        this.result.append("import ");
        if (node.getAST().apiLevel() >= 3 && this.getBooleanAttribute(node, ImportDeclaration.STATIC_PROPERTY)) {
            this.result.append("static ");
        }
        this.getChildNode(node, ImportDeclaration.NAME_PROPERTY).accept(this);
        if (this.getBooleanAttribute(node, ImportDeclaration.ON_DEMAND_PROPERTY)) {
            this.result.append(".*");
        }
        this.result.append(';');
        return false;
    }

    public boolean visit(InfixExpression node) {
        this.getChildNode(node, InfixExpression.LEFT_OPERAND_PROPERTY).accept(this);
        this.result.append(' ');
        String operator = this.getAttribute(node, InfixExpression.OPERATOR_PROPERTY).toString();
        this.result.append(operator);
        this.result.append(' ');
        this.getChildNode(node, InfixExpression.RIGHT_OPERAND_PROPERTY).accept(this);
        List list = this.getChildList(node, InfixExpression.EXTENDED_OPERANDS_PROPERTY);
        int i = 0;
        while (i < list.size()) {
            this.result.append(operator);
            ((ASTNode)list.get(i)).accept(this);
            ++i;
        }
        return false;
    }

    public boolean visit(InstanceofExpression node) {
        this.getChildNode(node, InstanceofExpression.LEFT_OPERAND_PROPERTY).accept(this);
        this.result.append(" instanceof ");
        this.getChildNode(node, InstanceofExpression.RIGHT_OPERAND_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(Initializer node) {
        ASTNode javadoc = this.getChildNode(node, Initializer.JAVADOC_PROPERTY);
        if (javadoc != null) {
            javadoc.accept(this);
        }
        if (node.getAST().apiLevel() == 2) {
            ASTRewriteFlattener.printModifiers(this.getIntAttribute(node, Initializer.MODIFIERS_PROPERTY), this.result);
        } else {
            this.visitList(node, Initializer.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
        }
        this.getChildNode(node, Initializer.BODY_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(Javadoc node) {
        this.result.append("/**");
        List list = this.getChildList(node, Javadoc.TAGS_PROPERTY);
        int i = 0;
        while (i < list.size()) {
            this.result.append("\n * ");
            ((ASTNode)list.get(i)).accept(this);
            ++i;
        }
        this.result.append("\n */");
        return false;
    }

    public boolean visit(LabeledStatement node) {
        this.getChildNode(node, LabeledStatement.LABEL_PROPERTY).accept(this);
        this.result.append(": ");
        this.getChildNode(node, LabeledStatement.BODY_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(MethodDeclaration node) {
        ASTNode javadoc = this.getChildNode(node, MethodDeclaration.JAVADOC_PROPERTY);
        if (javadoc != null) {
            javadoc.accept(this);
        }
        if (node.getAST().apiLevel() == 2) {
            ASTRewriteFlattener.printModifiers(this.getIntAttribute(node, MethodDeclaration.MODIFIERS_PROPERTY), this.result);
        } else {
            this.visitList(node, MethodDeclaration.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
            this.visitList(node, MethodDeclaration.TYPE_PARAMETERS_PROPERTY, String.valueOf(','), String.valueOf('<'), String.valueOf('>'));
        }
        if (!this.getBooleanAttribute(node, MethodDeclaration.CONSTRUCTOR_PROPERTY)) {
            if (node.getAST().apiLevel() == 2) {
                this.getChildNode(node, MethodDeclaration.RETURN_TYPE_PROPERTY).accept(this);
            } else {
                ASTNode returnType = this.getChildNode(node, MethodDeclaration.RETURN_TYPE2_PROPERTY);
                if (returnType != null) {
                    returnType.accept(this);
                } else {
                    this.result.append("void");
                }
            }
            this.result.append(' ');
        }
        this.getChildNode(node, MethodDeclaration.NAME_PROPERTY).accept(this);
        this.result.append('(');
        this.visitList(node, MethodDeclaration.PARAMETERS_PROPERTY, String.valueOf(','));
        this.result.append(')');
        int extraDims = this.getIntAttribute(node, MethodDeclaration.EXTRA_DIMENSIONS_PROPERTY);
        int i = 0;
        while (i < extraDims) {
            this.result.append("[]");
            ++i;
        }
        this.visitList(node, MethodDeclaration.THROWN_EXCEPTIONS_PROPERTY, String.valueOf(','), " throws ", Util.EMPTY_STRING);
        ASTNode body = this.getChildNode(node, MethodDeclaration.BODY_PROPERTY);
        if (body == null) {
            this.result.append(';');
        } else {
            body.accept(this);
        }
        return false;
    }

    public boolean visit(MethodInvocation node) {
        ASTNode expression = this.getChildNode(node, MethodInvocation.EXPRESSION_PROPERTY);
        if (expression != null) {
            expression.accept(this);
            this.result.append('.');
        }
        if (node.getAST().apiLevel() >= 3) {
            this.visitList(node, MethodInvocation.TYPE_ARGUMENTS_PROPERTY, String.valueOf(','), String.valueOf('<'), String.valueOf('>'));
        }
        this.getChildNode(node, MethodInvocation.NAME_PROPERTY).accept(this);
        this.result.append('(');
        this.visitList(node, MethodInvocation.ARGUMENTS_PROPERTY, String.valueOf(','));
        this.result.append(')');
        return false;
    }

    public boolean visit(NullLiteral node) {
        this.result.append("null");
        return false;
    }

    public boolean visit(NumberLiteral node) {
        this.result.append(this.getAttribute(node, NumberLiteral.TOKEN_PROPERTY).toString());
        return false;
    }

    public boolean visit(PackageDeclaration node) {
        if (node.getAST().apiLevel() >= 3) {
            ASTNode javadoc = this.getChildNode(node, PackageDeclaration.JAVADOC_PROPERTY);
            if (javadoc != null) {
                javadoc.accept(this);
            }
            this.visitList(node, PackageDeclaration.ANNOTATIONS_PROPERTY, String.valueOf(' '));
        }
        this.result.append("package ");
        this.getChildNode(node, PackageDeclaration.NAME_PROPERTY).accept(this);
        this.result.append(';');
        return false;
    }

    public boolean visit(ParenthesizedExpression node) {
        this.result.append('(');
        this.getChildNode(node, ParenthesizedExpression.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        return false;
    }

    public boolean visit(PostfixExpression node) {
        this.getChildNode(node, PostfixExpression.OPERAND_PROPERTY).accept(this);
        this.result.append(this.getAttribute(node, PostfixExpression.OPERATOR_PROPERTY).toString());
        return false;
    }

    public boolean visit(PrefixExpression node) {
        this.result.append(this.getAttribute(node, PrefixExpression.OPERATOR_PROPERTY).toString());
        this.getChildNode(node, PrefixExpression.OPERAND_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(PrimitiveType node) {
        this.result.append(this.getAttribute(node, PrimitiveType.PRIMITIVE_TYPE_CODE_PROPERTY).toString());
        return false;
    }

    public boolean visit(QualifiedName node) {
        this.getChildNode(node, QualifiedName.QUALIFIER_PROPERTY).accept(this);
        this.result.append('.');
        this.getChildNode(node, QualifiedName.NAME_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(ReturnStatement node) {
        this.result.append("return");
        ASTNode expression = this.getChildNode(node, ReturnStatement.EXPRESSION_PROPERTY);
        if (expression != null) {
            this.result.append(' ');
            expression.accept(this);
        }
        this.result.append(';');
        return false;
    }

    public boolean visit(SimpleName node) {
        this.result.append(this.getAttribute(node, SimpleName.IDENTIFIER_PROPERTY));
        return false;
    }

    public boolean visit(SimpleType node) {
        return true;
    }

    public boolean visit(SingleVariableDeclaration node) {
        if (node.getAST().apiLevel() == 2) {
            ASTRewriteFlattener.printModifiers(this.getIntAttribute(node, SingleVariableDeclaration.MODIFIERS_PROPERTY), this.result);
        } else {
            this.visitList(node, SingleVariableDeclaration.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
        }
        this.getChildNode(node, SingleVariableDeclaration.TYPE_PROPERTY).accept(this);
        if (node.getAST().apiLevel() >= 3 && this.getBooleanAttribute(node, SingleVariableDeclaration.VARARGS_PROPERTY)) {
            this.result.append("...");
        }
        this.result.append(' ');
        this.getChildNode(node, SingleVariableDeclaration.NAME_PROPERTY).accept(this);
        int extraDimensions = this.getIntAttribute(node, SingleVariableDeclaration.EXTRA_DIMENSIONS_PROPERTY);
        int i = 0;
        while (i < extraDimensions) {
            this.result.append("[]");
            ++i;
        }
        ASTNode initializer = this.getChildNode(node, SingleVariableDeclaration.INITIALIZER_PROPERTY);
        if (initializer != null) {
            this.result.append('=');
            initializer.accept(this);
        }
        return false;
    }

    public boolean visit(StringLiteral node) {
        this.result.append(this.getAttribute(node, StringLiteral.ESCAPED_VALUE_PROPERTY));
        return false;
    }

    public boolean visit(SuperConstructorInvocation node) {
        ASTNode expression = this.getChildNode(node, SuperConstructorInvocation.EXPRESSION_PROPERTY);
        if (expression != null) {
            expression.accept(this);
            this.result.append('.');
        }
        if (node.getAST().apiLevel() >= 3) {
            this.visitList(node, SuperConstructorInvocation.TYPE_ARGUMENTS_PROPERTY, String.valueOf(','), String.valueOf('<'), String.valueOf('>'));
        }
        this.result.append("super(");
        this.visitList(node, SuperConstructorInvocation.ARGUMENTS_PROPERTY, String.valueOf(','));
        this.result.append(");");
        return false;
    }

    public boolean visit(SuperFieldAccess node) {
        ASTNode qualifier = this.getChildNode(node, SuperFieldAccess.QUALIFIER_PROPERTY);
        if (qualifier != null) {
            qualifier.accept(this);
            this.result.append('.');
        }
        this.result.append("super.");
        this.getChildNode(node, SuperFieldAccess.NAME_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(SuperMethodInvocation node) {
        ASTNode qualifier = this.getChildNode(node, SuperMethodInvocation.QUALIFIER_PROPERTY);
        if (qualifier != null) {
            qualifier.accept(this);
            this.result.append('.');
        }
        this.result.append("super.");
        if (node.getAST().apiLevel() >= 3) {
            this.visitList(node, SuperMethodInvocation.TYPE_ARGUMENTS_PROPERTY, String.valueOf(','), String.valueOf('<'), String.valueOf('>'));
        }
        this.getChildNode(node, SuperMethodInvocation.NAME_PROPERTY).accept(this);
        this.result.append('(');
        this.visitList(node, SuperMethodInvocation.ARGUMENTS_PROPERTY, String.valueOf(','));
        this.result.append(')');
        return false;
    }

    public boolean visit(SwitchCase node) {
        ASTNode expression = this.getChildNode(node, SwitchCase.EXPRESSION_PROPERTY);
        if (expression == null) {
            this.result.append("default");
        } else {
            this.result.append("case ");
            expression.accept(this);
        }
        this.result.append(':');
        return false;
    }

    public boolean visit(SwitchStatement node) {
        this.result.append("switch (");
        this.getChildNode(node, SwitchStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        this.result.append('{');
        this.visitList(node, SwitchStatement.STATEMENTS_PROPERTY, null);
        this.result.append('}');
        return false;
    }

    public boolean visit(SynchronizedStatement node) {
        this.result.append("synchronized (");
        this.getChildNode(node, SynchronizedStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        this.getChildNode(node, SynchronizedStatement.BODY_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(ThisExpression node) {
        ASTNode qualifier = this.getChildNode(node, ThisExpression.QUALIFIER_PROPERTY);
        if (qualifier != null) {
            qualifier.accept(this);
            this.result.append('.');
        }
        this.result.append("this");
        return false;
    }

    public boolean visit(ThrowStatement node) {
        this.result.append("throw ");
        this.getChildNode(node, ThrowStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(';');
        return false;
    }

    public boolean visit(TryStatement node) {
        this.result.append("try ");
        if (node.getAST().apiLevel() >= 4) {
            this.visitList(node, TryStatement.RESOURCES_PROPERTY, String.valueOf(';'), String.valueOf('('), String.valueOf(')'));
        }
        this.getChildNode(node, TryStatement.BODY_PROPERTY).accept(this);
        this.result.append(' ');
        this.visitList(node, TryStatement.CATCH_CLAUSES_PROPERTY, null);
        ASTNode finallyClause = this.getChildNode(node, TryStatement.FINALLY_PROPERTY);
        if (finallyClause != null) {
            this.result.append(" finally ");
            finallyClause.accept(this);
        }
        return false;
    }

    public boolean visit(TypeDeclaration node) {
        int apiLevel = node.getAST().apiLevel();
        ASTNode javadoc = this.getChildNode(node, TypeDeclaration.JAVADOC_PROPERTY);
        if (javadoc != null) {
            javadoc.accept(this);
        }
        if (apiLevel == 2) {
            ASTRewriteFlattener.printModifiers(this.getIntAttribute(node, TypeDeclaration.MODIFIERS_PROPERTY), this.result);
        } else {
            this.visitList(node, TypeDeclaration.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
        }
        boolean isInterface = this.getBooleanAttribute(node, TypeDeclaration.INTERFACE_PROPERTY);
        this.result.append(isInterface ? "interface " : "class ");
        this.getChildNode(node, TypeDeclaration.NAME_PROPERTY).accept(this);
        if (apiLevel >= 3) {
            this.visitList(node, TypeDeclaration.TYPE_PARAMETERS_PROPERTY, String.valueOf(','), String.valueOf('<'), String.valueOf('>'));
        }
        this.result.append(' ');
        ChildPropertyDescriptor superClassProperty = apiLevel == 2 ? TypeDeclaration.SUPERCLASS_PROPERTY : TypeDeclaration.SUPERCLASS_TYPE_PROPERTY;
        ASTNode superclass = this.getChildNode(node, superClassProperty);
        if (superclass != null) {
            this.result.append("extends ");
            superclass.accept(this);
            this.result.append(' ');
        }
        ChildListPropertyDescriptor superInterfaceProperty = apiLevel == 2 ? TypeDeclaration.SUPER_INTERFACES_PROPERTY : TypeDeclaration.SUPER_INTERFACE_TYPES_PROPERTY;
        String lead = isInterface ? "extends " : "implements ";
        this.visitList(node, superInterfaceProperty, String.valueOf(','), lead, Util.EMPTY_STRING);
        this.result.append('{');
        this.visitList(node, TypeDeclaration.BODY_DECLARATIONS_PROPERTY, null);
        this.result.append('}');
        return false;
    }

    public boolean visit(TypeDeclarationStatement node) {
        if (node.getAST().apiLevel() == 2) {
            this.getChildNode(node, TypeDeclarationStatement.TYPE_DECLARATION_PROPERTY).accept(this);
        } else {
            this.getChildNode(node, TypeDeclarationStatement.DECLARATION_PROPERTY).accept(this);
        }
        return false;
    }

    public boolean visit(TypeLiteral node) {
        this.getChildNode(node, TypeLiteral.TYPE_PROPERTY).accept(this);
        this.result.append(".class");
        return false;
    }

    public boolean visit(UnionType node) {
        this.visitList(node, UnionType.TYPES_PROPERTY, " | ", Util.EMPTY_STRING, Util.EMPTY_STRING);
        return false;
    }

    public boolean visit(VariableDeclarationExpression node) {
        if (node.getAST().apiLevel() == 2) {
            ASTRewriteFlattener.printModifiers(this.getIntAttribute(node, VariableDeclarationExpression.MODIFIERS_PROPERTY), this.result);
        } else {
            this.visitList(node, VariableDeclarationExpression.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
        }
        this.getChildNode(node, VariableDeclarationExpression.TYPE_PROPERTY).accept(this);
        this.result.append(' ');
        this.visitList(node, VariableDeclarationExpression.FRAGMENTS_PROPERTY, String.valueOf(','));
        return false;
    }

    public boolean visit(VariableDeclarationFragment node) {
        this.getChildNode(node, VariableDeclarationFragment.NAME_PROPERTY).accept(this);
        int extraDimensions = this.getIntAttribute(node, VariableDeclarationFragment.EXTRA_DIMENSIONS_PROPERTY);
        int i = 0;
        while (i < extraDimensions) {
            this.result.append("[]");
            ++i;
        }
        ASTNode initializer = this.getChildNode(node, VariableDeclarationFragment.INITIALIZER_PROPERTY);
        if (initializer != null) {
            this.result.append('=');
            initializer.accept(this);
        }
        return false;
    }

    public boolean visit(VariableDeclarationStatement node) {
        if (node.getAST().apiLevel() == 2) {
            ASTRewriteFlattener.printModifiers(this.getIntAttribute(node, VariableDeclarationStatement.MODIFIERS_PROPERTY), this.result);
        } else {
            this.visitList(node, VariableDeclarationStatement.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
        }
        this.getChildNode(node, VariableDeclarationStatement.TYPE_PROPERTY).accept(this);
        this.result.append(' ');
        this.visitList(node, VariableDeclarationStatement.FRAGMENTS_PROPERTY, String.valueOf(','));
        this.result.append(';');
        return false;
    }

    public boolean visit(WhileStatement node) {
        this.result.append("while (");
        this.getChildNode(node, WhileStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        this.getChildNode(node, WhileStatement.BODY_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(BlockComment node) {
        return false;
    }

    public boolean visit(LineComment node) {
        return false;
    }

    public boolean visit(MemberRef node) {
        ASTNode qualifier = this.getChildNode(node, MemberRef.QUALIFIER_PROPERTY);
        if (qualifier != null) {
            qualifier.accept(this);
        }
        this.result.append('#');
        this.getChildNode(node, MemberRef.NAME_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(MethodRef node) {
        ASTNode qualifier = this.getChildNode(node, MethodRef.QUALIFIER_PROPERTY);
        if (qualifier != null) {
            qualifier.accept(this);
        }
        this.result.append('#');
        this.getChildNode(node, MethodRef.NAME_PROPERTY).accept(this);
        this.result.append('(');
        this.visitList(node, MethodRef.PARAMETERS_PROPERTY, ",");
        this.result.append(')');
        return false;
    }

    public boolean visit(MethodRefParameter node) {
        ASTNode name;
        this.getChildNode(node, MethodRefParameter.TYPE_PROPERTY).accept(this);
        if (node.getAST().apiLevel() >= 3 && this.getBooleanAttribute(node, MethodRefParameter.VARARGS_PROPERTY)) {
            this.result.append("...");
        }
        if ((name = this.getChildNode(node, MethodRefParameter.NAME_PROPERTY)) != null) {
            this.result.append(' ');
            name.accept(this);
        }
        return false;
    }

    public boolean visit(TagElement node) {
        Object tagName = this.getAttribute(node, TagElement.TAG_NAME_PROPERTY);
        if (tagName != null) {
            this.result.append((String)tagName);
        }
        List list = this.getChildList(node, TagElement.FRAGMENTS_PROPERTY);
        int i = 0;
        while (i < list.size()) {
            ASTNode curr;
            if (i > 0 || tagName != null) {
                this.result.append(' ');
            }
            if ((curr = (ASTNode)list.get(i)) instanceof TagElement) {
                this.result.append('{');
                curr.accept(this);
                this.result.append('}');
            } else {
                curr.accept(this);
            }
            ++i;
        }
        return false;
    }

    public boolean visit(TextElement node) {
        this.result.append(this.getAttribute(node, TextElement.TEXT_PROPERTY));
        return false;
    }

    public boolean visit(AnnotationTypeDeclaration node) {
        ASTNode javadoc = this.getChildNode(node, AnnotationTypeDeclaration.JAVADOC_PROPERTY);
        if (javadoc != null) {
            javadoc.accept(this);
        }
        this.visitList(node, AnnotationTypeDeclaration.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
        this.result.append("@interface ");
        this.getChildNode(node, AnnotationTypeDeclaration.NAME_PROPERTY).accept(this);
        this.result.append('{');
        this.visitList(node, AnnotationTypeDeclaration.BODY_DECLARATIONS_PROPERTY, Util.EMPTY_STRING);
        this.result.append('}');
        return false;
    }

    public boolean visit(AnnotationTypeMemberDeclaration node) {
        ASTNode javadoc = this.getChildNode(node, AnnotationTypeMemberDeclaration.JAVADOC_PROPERTY);
        if (javadoc != null) {
            javadoc.accept(this);
        }
        this.visitList(node, AnnotationTypeMemberDeclaration.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
        this.getChildNode(node, AnnotationTypeMemberDeclaration.TYPE_PROPERTY).accept(this);
        this.result.append(' ');
        this.getChildNode(node, AnnotationTypeMemberDeclaration.NAME_PROPERTY).accept(this);
        this.result.append("()");
        ASTNode def = this.getChildNode(node, AnnotationTypeMemberDeclaration.DEFAULT_PROPERTY);
        if (def != null) {
            this.result.append(" default ");
            def.accept(this);
        }
        this.result.append(';');
        return false;
    }

    public boolean visit(EnhancedForStatement node) {
        this.result.append("for (");
        this.getChildNode(node, EnhancedForStatement.PARAMETER_PROPERTY).accept(this);
        this.result.append(':');
        this.getChildNode(node, EnhancedForStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        this.getChildNode(node, EnhancedForStatement.BODY_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(EnumConstantDeclaration node) {
        ASTNode javadoc = this.getChildNode(node, EnumConstantDeclaration.JAVADOC_PROPERTY);
        if (javadoc != null) {
            javadoc.accept(this);
        }
        this.visitList(node, EnumConstantDeclaration.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
        this.getChildNode(node, EnumConstantDeclaration.NAME_PROPERTY).accept(this);
        this.visitList(node, EnumConstantDeclaration.ARGUMENTS_PROPERTY, String.valueOf(','), String.valueOf('('), String.valueOf(')'));
        ASTNode classDecl = this.getChildNode(node, EnumConstantDeclaration.ANONYMOUS_CLASS_DECLARATION_PROPERTY);
        if (classDecl != null) {
            classDecl.accept(this);
        }
        return false;
    }

    public boolean visit(EnumDeclaration node) {
        ASTNode javadoc = this.getChildNode(node, EnumDeclaration.JAVADOC_PROPERTY);
        if (javadoc != null) {
            javadoc.accept(this);
        }
        this.visitList(node, EnumDeclaration.MODIFIERS2_PROPERTY, String.valueOf(' '), Util.EMPTY_STRING, String.valueOf(' '));
        this.result.append("enum ");
        this.getChildNode(node, EnumDeclaration.NAME_PROPERTY).accept(this);
        this.result.append(' ');
        this.visitList(node, EnumDeclaration.SUPER_INTERFACE_TYPES_PROPERTY, String.valueOf(','), "implements ", Util.EMPTY_STRING);
        this.result.append('{');
        this.visitList(node, EnumDeclaration.ENUM_CONSTANTS_PROPERTY, String.valueOf(','), Util.EMPTY_STRING, Util.EMPTY_STRING);
        this.visitList(node, EnumDeclaration.BODY_DECLARATIONS_PROPERTY, Util.EMPTY_STRING, String.valueOf(';'), Util.EMPTY_STRING);
        this.result.append('}');
        return false;
    }

    public boolean visit(MarkerAnnotation node) {
        this.result.append('@');
        this.getChildNode(node, MarkerAnnotation.TYPE_NAME_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(MemberValuePair node) {
        this.getChildNode(node, MemberValuePair.NAME_PROPERTY).accept(this);
        this.result.append('=');
        this.getChildNode(node, MemberValuePair.VALUE_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(Modifier node) {
        this.result.append(this.getAttribute(node, Modifier.KEYWORD_PROPERTY).toString());
        return false;
    }

    public boolean visit(NormalAnnotation node) {
        this.result.append('@');
        this.getChildNode(node, NormalAnnotation.TYPE_NAME_PROPERTY).accept(this);
        this.result.append('(');
        this.visitList(node, NormalAnnotation.VALUES_PROPERTY, ", ");
        this.result.append(')');
        return false;
    }

    public boolean visit(ParameterizedType node) {
        this.getChildNode(node, ParameterizedType.TYPE_PROPERTY).accept(this);
        this.result.append('<');
        this.visitList(node, ParameterizedType.TYPE_ARGUMENTS_PROPERTY, ", ");
        this.result.append('>');
        return false;
    }

    public boolean visit(QualifiedType node) {
        this.getChildNode(node, QualifiedType.QUALIFIER_PROPERTY).accept(this);
        this.result.append('.');
        this.getChildNode(node, QualifiedType.NAME_PROPERTY).accept(this);
        return false;
    }

    public boolean visit(SingleMemberAnnotation node) {
        this.result.append('@');
        this.getChildNode(node, SingleMemberAnnotation.TYPE_NAME_PROPERTY).accept(this);
        this.result.append('(');
        this.getChildNode(node, SingleMemberAnnotation.VALUE_PROPERTY).accept(this);
        this.result.append(')');
        return false;
    }

    public boolean visit(TypeParameter node) {
        this.getChildNode(node, TypeParameter.NAME_PROPERTY).accept(this);
        this.visitList(node, TypeParameter.TYPE_BOUNDS_PROPERTY, " & ", " extends ", Util.EMPTY_STRING);
        return false;
    }

    public boolean visit(WildcardType node) {
        this.result.append('?');
        ASTNode bound = this.getChildNode(node, WildcardType.BOUND_PROPERTY);
        if (bound != null) {
            if (this.getBooleanAttribute(node, WildcardType.UPPER_BOUND_PROPERTY)) {
                this.result.append(" extends ");
            } else {
                this.result.append(" super ");
            }
            bound.accept(this);
        }
        return false;
    }
}

