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

public class IfStatement
extends Statement {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor THEN_STATEMENT_PROPERTY;
    public static final ChildPropertyDescriptor ELSE_STATEMENT_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression expression = null;
    private Statement thenStatement = null;
    private Statement optionalElseStatement = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.IfStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$1) == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz4, "expression", clazz3, true, true);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.IfStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$2) == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Statement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        THEN_STATEMENT_PROPERTY = new ChildPropertyDescriptor(clazz5, "thenStatement", clazz2, true, true);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.IfStatement");
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
        ELSE_STATEMENT_PROPERTY = new ChildPropertyDescriptor(clazz6, "elseStatement", clazz, false, true);
        ArrayList properyList = new ArrayList(4);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.IfStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IfStatement.createPropertyList(clazz7, properyList);
        IfStatement.addProperty(EXPRESSION_PROPERTY, properyList);
        IfStatement.addProperty(THEN_STATEMENT_PROPERTY, properyList);
        IfStatement.addProperty(ELSE_STATEMENT_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = IfStatement.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    IfStatement(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return IfStatement.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == EXPRESSION_PROPERTY) {
            if (get) {
                return this.getExpression();
            }
            this.setExpression((Expression)child);
            return null;
        }
        if (property == THEN_STATEMENT_PROPERTY) {
            if (get) {
                return this.getThenStatement();
            }
            this.setThenStatement((Statement)child);
            return null;
        }
        if (property == ELSE_STATEMENT_PROPERTY) {
            if (get) {
                return this.getElseStatement();
            }
            this.setElseStatement((Statement)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 25;
    }

    ASTNode clone0(AST target) {
        IfStatement result = new IfStatement(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
        result.setExpression((Expression)this.getExpression().clone(target));
        result.setThenStatement((Statement)this.getThenStatement().clone(target));
        result.setElseStatement((Statement)ASTNode.copySubtree(target, this.getElseStatement()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getExpression());
            this.acceptChild(visitor, this.getThenStatement());
            this.acceptChild(visitor, this.getElseStatement());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getExpression() {
        if (this.expression == null) {
            IfStatement ifStatement = this;
            synchronized (ifStatement) {
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
    public Statement getThenStatement() {
        if (this.thenStatement == null) {
            IfStatement ifStatement = this;
            synchronized (ifStatement) {
                if (this.thenStatement == null) {
                    this.preLazyInit();
                    this.thenStatement = new Block(this.ast);
                    this.postLazyInit(this.thenStatement, THEN_STATEMENT_PROPERTY);
                }
            }
        }
        return this.thenStatement;
    }

    public void setThenStatement(Statement statement) {
        if (statement == null) {
            throw new IllegalArgumentException();
        }
        Statement oldChild = this.thenStatement;
        this.preReplaceChild(oldChild, statement, THEN_STATEMENT_PROPERTY);
        this.thenStatement = statement;
        this.postReplaceChild(oldChild, statement, THEN_STATEMENT_PROPERTY);
    }

    public Statement getElseStatement() {
        return this.optionalElseStatement;
    }

    public void setElseStatement(Statement statement) {
        Statement oldChild = this.optionalElseStatement;
        this.preReplaceChild(oldChild, statement, ELSE_STATEMENT_PROPERTY);
        this.optionalElseStatement = statement;
        this.postReplaceChild(oldChild, statement, ELSE_STATEMENT_PROPERTY);
    }

    int memSize() {
        return super.memSize() + 12;
    }

    int treeSize() {
        return this.memSize() + (this.expression == null ? 0 : this.getExpression().treeSize()) + (this.thenStatement == null ? 0 : this.getThenStatement().treeSize()) + (this.optionalElseStatement == null ? 0 : this.getElseStatement().treeSize());
    }
}

