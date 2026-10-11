/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public class PostfixExpression
extends Expression {
    public static final SimplePropertyDescriptor OPERATOR_PROPERTY;
    public static final ChildPropertyDescriptor OPERAND_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Operator operator = Operator.INCREMENT;
    private Expression operand = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.PostfixExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$1) == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.core.dom.PostfixExpression$Operator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        OPERATOR_PROPERTY = new SimplePropertyDescriptor(clazz3, "operator", clazz2, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.PostfixExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        OPERAND_PROPERTY = new ChildPropertyDescriptor(clazz4, "operand", clazz, true, true);
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.PostfixExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PostfixExpression.createPropertyList(clazz5, propertyList);
        PostfixExpression.addProperty(OPERAND_PROPERTY, propertyList);
        PostfixExpression.addProperty(OPERATOR_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = PostfixExpression.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    PostfixExpression(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return PostfixExpression.propertyDescriptors(apiLevel);
    }

    final Object internalGetSetObjectProperty(SimplePropertyDescriptor property, boolean get, Object value) {
        if (property == OPERATOR_PROPERTY) {
            if (get) {
                return this.getOperator();
            }
            this.setOperator((Operator)value);
            return null;
        }
        return super.internalGetSetObjectProperty(property, get, value);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == OPERAND_PROPERTY) {
            if (get) {
                return this.getOperand();
            }
            this.setOperand((Expression)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 37;
    }

    ASTNode clone0(AST target) {
        PostfixExpression result = new PostfixExpression(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setOperator(this.getOperator());
        result.setOperand((Expression)this.getOperand().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getOperand());
        }
        visitor.endVisit(this);
    }

    public Operator getOperator() {
        return this.operator;
    }

    public void setOperator(Operator operator) {
        if (operator == null) {
            throw new IllegalArgumentException();
        }
        this.preValueChange(OPERATOR_PROPERTY);
        this.operator = operator;
        this.postValueChange(OPERATOR_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getOperand() {
        if (this.operand == null) {
            PostfixExpression postfixExpression = this;
            synchronized (postfixExpression) {
                if (this.operand == null) {
                    this.preLazyInit();
                    this.operand = new SimpleName(this.ast);
                    this.postLazyInit(this.operand, OPERAND_PROPERTY);
                }
            }
        }
        return this.operand;
    }

    public void setOperand(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.operand;
        this.preReplaceChild(oldChild, expression, OPERAND_PROPERTY);
        this.operand = expression;
        this.postReplaceChild(oldChild, expression, OPERAND_PROPERTY);
    }

    int memSize() {
        return 48;
    }

    int treeSize() {
        return this.memSize() + (this.operand == null ? 0 : this.getOperand().treeSize());
    }

    public static class Operator {
        private String token;
        public static final Operator INCREMENT = new Operator("++");
        public static final Operator DECREMENT = new Operator("--");
        private static final Map CODES = new HashMap(20);

        static {
            Operator[] ops = new Operator[]{INCREMENT, DECREMENT};
            int i = 0;
            while (i < ops.length) {
                CODES.put(ops[i].toString(), ops[i]);
                ++i;
            }
        }

        private Operator(String token) {
            this.token = token;
        }

        public String toString() {
            return this.token;
        }

        public static Operator toOperator(String token) {
            return (Operator)CODES.get(token);
        }
    }
}

