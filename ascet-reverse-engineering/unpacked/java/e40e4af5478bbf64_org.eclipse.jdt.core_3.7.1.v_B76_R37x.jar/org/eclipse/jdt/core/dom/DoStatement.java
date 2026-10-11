/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.Statement;

public class DoStatement
extends Statement {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression expression = null;
    private Statement body = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.DoStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$1) == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz3, "expression", clazz2, true, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.DoStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.Statement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BODY_PROPERTY = new ChildPropertyDescriptor(clazz4, "body", clazz, true, true);
        ArrayList properyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.DoStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        DoStatement.createPropertyList(clazz5, properyList);
        DoStatement.addProperty(EXPRESSION_PROPERTY, properyList);
        DoStatement.addProperty(BODY_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = DoStatement.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    DoStatement(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return DoStatement.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == EXPRESSION_PROPERTY) {
            if (get) {
                return this.getExpression();
            }
            this.setExpression((Expression)child);
            return null;
        }
        if (property == BODY_PROPERTY) {
            if (get) {
                return this.getBody();
            }
            this.setBody((Statement)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 19;
    }

    ASTNode clone0(AST target) {
        DoStatement result = new DoStatement(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
        result.setExpression((Expression)this.getExpression().clone(target));
        result.setBody((Statement)this.getBody().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getBody());
            this.acceptChild(visitor, this.getExpression());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getExpression() {
        if (this.expression == null) {
            DoStatement doStatement = this;
            synchronized (doStatement) {
                if (this.expression == null) {
                    this.preLazyInit();
                    this.expression = new SimpleName(this.ast);
                    this.postLazyInit(this.expression, EXPRESSION_PROPERTY);
                }
            }
        }
        return this.expression;
    }

    public void setExpression(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.expression;
        this.preReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
        this.expression = expression;
        this.postReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Statement getBody() {
        if (this.body == null) {
            DoStatement doStatement = this;
            synchronized (doStatement) {
                if (this.body == null) {
                    this.preLazyInit();
                    this.body = new Block(this.ast);
                    this.postLazyInit(this.body, BODY_PROPERTY);
                }
            }
        }
        return this.body;
    }

    public void setBody(Statement statement) {
        if (statement == null) {
            throw new IllegalArgumentException();
        }
        Statement oldChild = this.body;
        this.preReplaceChild(oldChild, statement, BODY_PROPERTY);
        this.body = statement;
        this.postReplaceChild(oldChild, statement, BODY_PROPERTY);
    }

    int memSize() {
        return super.memSize() + 8;
    }

    int treeSize() {
        return this.memSize() + (this.expression == null ? 0 : this.getExpression().treeSize()) + (this.body == null ? 0 : this.getBody().treeSize());
    }
}

