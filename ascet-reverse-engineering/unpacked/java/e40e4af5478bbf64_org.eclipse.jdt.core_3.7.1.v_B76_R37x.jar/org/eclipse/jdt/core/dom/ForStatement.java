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
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.Statement;

public class ForStatement
extends Statement {
    public static final ChildListPropertyDescriptor INITIALIZERS_PROPERTY;
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildListPropertyDescriptor UPDATERS_PROPERTY;
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private ASTNode.NodeList initializers = new ASTNode.NodeList(INITIALIZERS_PROPERTY);
    private Expression optionalConditionExpression = null;
    private ASTNode.NodeList updaters = new ASTNode.NodeList(UPDATERS_PROPERTY);
    private Statement body = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4;
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ForStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz4 = class$1) == null) {
            try {
                clazz4 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        INITIALIZERS_PROPERTY = new ChildListPropertyDescriptor(clazz5, "initializers", clazz4, true);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ForStatement");
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
        EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz6, "expression", clazz3, false, true);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ForStatement");
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
        UPDATERS_PROPERTY = new ChildListPropertyDescriptor(clazz7, "updaters", clazz2, true);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ForStatement");
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
        BODY_PROPERTY = new ChildPropertyDescriptor(clazz8, "body", clazz, true, true);
        ArrayList properyList = new ArrayList(5);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ForStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ForStatement.createPropertyList(clazz9, properyList);
        ForStatement.addProperty(INITIALIZERS_PROPERTY, properyList);
        ForStatement.addProperty(EXPRESSION_PROPERTY, properyList);
        ForStatement.addProperty(UPDATERS_PROPERTY, properyList);
        ForStatement.addProperty(BODY_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = ForStatement.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    ForStatement(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ForStatement.propertyDescriptors(apiLevel);
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

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == INITIALIZERS_PROPERTY) {
            return this.initializers();
        }
        if (property == UPDATERS_PROPERTY) {
            return this.updaters();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 24;
    }

    ASTNode clone0(AST target) {
        ForStatement result = new ForStatement(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
        result.initializers().addAll(ASTNode.copySubtrees(target, this.initializers()));
        result.setExpression((Expression)ASTNode.copySubtree(target, this.getExpression()));
        result.updaters().addAll(ASTNode.copySubtrees(target, this.updaters()));
        result.setBody((Statement)ASTNode.copySubtree(target, this.getBody()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor, this.initializers);
            this.acceptChild(visitor, this.getExpression());
            this.acceptChildren(visitor, this.updaters);
            this.acceptChild(visitor, this.getBody());
        }
        visitor.endVisit(this);
    }

    public List initializers() {
        return this.initializers;
    }

    public Expression getExpression() {
        return this.optionalConditionExpression;
    }

    public void setExpression(Expression expression) {
        Expression oldChild = this.optionalConditionExpression;
        this.preReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
        this.optionalConditionExpression = expression;
        this.postReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
    }

    public List updaters() {
        return this.updaters;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Statement getBody() {
        if (this.body == null) {
            ForStatement forStatement = this;
            synchronized (forStatement) {
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
        return super.memSize() + 16;
    }

    int treeSize() {
        return this.memSize() + this.initializers.listSize() + this.updaters.listSize() + (this.optionalConditionExpression == null ? 0 : this.getExpression().treeSize()) + (this.body == null ? 0 : this.getBody().treeSize());
    }
}

