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
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public class InfixExpression
extends Expression {
    public static final ChildPropertyDescriptor LEFT_OPERAND_PROPERTY;
    public static final SimplePropertyDescriptor OPERATOR_PROPERTY;
    public static final ChildPropertyDescriptor RIGHT_OPERAND_PROPERTY;
    public static final ChildListPropertyDescriptor EXTENDED_OPERANDS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Operator operator = Operator.PLUS;
    private Expression leftOperand = null;
    private Expression rightOperand = null;
    private ASTNode.NodeList extendedOperands = null;
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
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.InfixExpression");
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
        LEFT_OPERAND_PROPERTY = new ChildPropertyDescriptor(clazz5, "leftOperand", clazz4, true, true);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.InfixExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$2) == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.jdt.core.dom.InfixExpression$Operator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        OPERATOR_PROPERTY = new SimplePropertyDescriptor(clazz6, "operator", clazz3, true);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.InfixExpression");
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
        RIGHT_OPERAND_PROPERTY = new ChildPropertyDescriptor(clazz7, "rightOperand", clazz2, true, true);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.InfixExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXTENDED_OPERANDS_PROPERTY = new ChildListPropertyDescriptor(clazz8, "extendedOperands", clazz, true);
        ArrayList properyList = new ArrayList(5);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.InfixExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        InfixExpression.createPropertyList(clazz9, properyList);
        InfixExpression.addProperty(LEFT_OPERAND_PROPERTY, properyList);
        InfixExpression.addProperty(OPERATOR_PROPERTY, properyList);
        InfixExpression.addProperty(RIGHT_OPERAND_PROPERTY, properyList);
        InfixExpression.addProperty(EXTENDED_OPERANDS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = InfixExpression.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    InfixExpression(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return InfixExpression.propertyDescriptors(apiLevel);
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
        if (property == LEFT_OPERAND_PROPERTY) {
            if (get) {
                return this.getLeftOperand();
            }
            this.setLeftOperand((Expression)child);
            return null;
        }
        if (property == RIGHT_OPERAND_PROPERTY) {
            if (get) {
                return this.getRightOperand();
            }
            this.setRightOperand((Expression)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == EXTENDED_OPERANDS_PROPERTY) {
            return this.extendedOperands();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 27;
    }

    ASTNode clone0(AST target) {
        InfixExpression result = new InfixExpression(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setOperator(this.getOperator());
        result.setLeftOperand((Expression)this.getLeftOperand().clone(target));
        result.setRightOperand((Expression)this.getRightOperand().clone(target));
        if (this.extendedOperands != null) {
            result.extendedOperands().addAll(ASTNode.copySubtrees(target, this.extendedOperands()));
        }
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getLeftOperand());
            this.acceptChild(visitor, this.getRightOperand());
            if (this.extendedOperands != null) {
                this.acceptChildren(visitor, this.extendedOperands);
            }
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
    public Expression getLeftOperand() {
        if (this.leftOperand == null) {
            InfixExpression infixExpression = this;
            synchronized (infixExpression) {
                if (this.leftOperand == null) {
                    this.preLazyInit();
                    this.leftOperand = new SimpleName(this.ast);
                    this.postLazyInit(this.leftOperand, LEFT_OPERAND_PROPERTY);
                }
            }
        }
        return this.leftOperand;
    }

    public void setLeftOperand(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.leftOperand;
        this.preReplaceChild(oldChild, expression, LEFT_OPERAND_PROPERTY);
        this.leftOperand = expression;
        this.postReplaceChild(oldChild, expression, LEFT_OPERAND_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getRightOperand() {
        if (this.rightOperand == null) {
            InfixExpression infixExpression = this;
            synchronized (infixExpression) {
                if (this.rightOperand == null) {
                    this.preLazyInit();
                    this.rightOperand = new SimpleName(this.ast);
                    this.postLazyInit(this.rightOperand, RIGHT_OPERAND_PROPERTY);
                }
            }
        }
        return this.rightOperand;
    }

    public void setRightOperand(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.rightOperand;
        this.preReplaceChild(oldChild, expression, RIGHT_OPERAND_PROPERTY);
        this.rightOperand = expression;
        this.postReplaceChild(oldChild, expression, RIGHT_OPERAND_PROPERTY);
    }

    public boolean hasExtendedOperands() {
        return this.extendedOperands != null && this.extendedOperands.size() > 0;
    }

    public List extendedOperands() {
        if (this.extendedOperands == null) {
            this.extendedOperands = new ASTNode.NodeList(EXTENDED_OPERANDS_PROPERTY);
        }
        return this.extendedOperands;
    }

    int memSize() {
        return 56;
    }

    int treeSize() {
        return this.memSize() + (this.leftOperand == null ? 0 : this.getLeftOperand().treeSize()) + (this.rightOperand == null ? 0 : this.getRightOperand().treeSize()) + (this.extendedOperands == null ? 0 : this.extendedOperands.listSize());
    }

    public static class Operator {
        private String token;
        public static final Operator TIMES = new Operator("*");
        public static final Operator DIVIDE = new Operator("/");
        public static final Operator REMAINDER = new Operator("%");
        public static final Operator PLUS = new Operator("+");
        public static final Operator MINUS = new Operator("-");
        public static final Operator LEFT_SHIFT = new Operator("<<");
        public static final Operator RIGHT_SHIFT_SIGNED = new Operator(">>");
        public static final Operator RIGHT_SHIFT_UNSIGNED = new Operator(">>>");
        public static final Operator LESS = new Operator("<");
        public static final Operator GREATER = new Operator(">");
        public static final Operator LESS_EQUALS = new Operator("<=");
        public static final Operator GREATER_EQUALS = new Operator(">=");
        public static final Operator EQUALS = new Operator("==");
        public static final Operator NOT_EQUALS = new Operator("!=");
        public static final Operator XOR = new Operator("^");
        public static final Operator OR = new Operator("|");
        public static final Operator AND = new Operator("&");
        public static final Operator CONDITIONAL_OR = new Operator("||");
        public static final Operator CONDITIONAL_AND = new Operator("&&");
        private static final Map CODES = new HashMap(20);

        static {
            Operator[] ops = new Operator[]{TIMES, DIVIDE, REMAINDER, PLUS, MINUS, LEFT_SHIFT, RIGHT_SHIFT_SIGNED, RIGHT_SHIFT_UNSIGNED, LESS, GREATER, LESS_EQUALS, GREATER_EQUALS, EQUALS, NOT_EQUALS, XOR, OR, AND, CONDITIONAL_OR, CONDITIONAL_AND};
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

