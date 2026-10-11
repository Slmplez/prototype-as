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

public class Assignment
extends Expression {
    public static final ChildPropertyDescriptor LEFT_HAND_SIDE_PROPERTY;
    public static final SimplePropertyDescriptor OPERATOR_PROPERTY;
    public static final ChildPropertyDescriptor RIGHT_HAND_SIDE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Operator assignmentOperator = Operator.ASSIGN;
    private Expression leftHandSide = null;
    private Expression rightHandSide = null;
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
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Assignment");
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
        LEFT_HAND_SIDE_PROPERTY = new ChildPropertyDescriptor(clazz4, "leftHandSide", clazz3, true, true);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Assignment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$2) == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Assignment$Operator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        OPERATOR_PROPERTY = new SimplePropertyDescriptor(clazz5, "operator", clazz2, true);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Assignment");
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
        RIGHT_HAND_SIDE_PROPERTY = new ChildPropertyDescriptor(clazz6, "rightHandSide", clazz, true, true);
        ArrayList properyList = new ArrayList(4);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Assignment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Assignment.createPropertyList(clazz7, properyList);
        Assignment.addProperty(LEFT_HAND_SIDE_PROPERTY, properyList);
        Assignment.addProperty(OPERATOR_PROPERTY, properyList);
        Assignment.addProperty(RIGHT_HAND_SIDE_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = Assignment.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    Assignment(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return Assignment.propertyDescriptors(apiLevel);
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
        if (property == LEFT_HAND_SIDE_PROPERTY) {
            if (get) {
                return this.getLeftHandSide();
            }
            this.setLeftHandSide((Expression)child);
            return null;
        }
        if (property == RIGHT_HAND_SIDE_PROPERTY) {
            if (get) {
                return this.getRightHandSide();
            }
            this.setRightHandSide((Expression)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 7;
    }

    ASTNode clone0(AST target) {
        Assignment result = new Assignment(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setOperator(this.getOperator());
        result.setLeftHandSide((Expression)this.getLeftHandSide().clone(target));
        result.setRightHandSide((Expression)this.getRightHandSide().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getLeftHandSide());
            this.acceptChild(visitor, this.getRightHandSide());
        }
        visitor.endVisit(this);
    }

    public Operator getOperator() {
        return this.assignmentOperator;
    }

    public void setOperator(Operator assignmentOperator) {
        if (assignmentOperator == null) {
            throw new IllegalArgumentException();
        }
        this.preValueChange(OPERATOR_PROPERTY);
        this.assignmentOperator = assignmentOperator;
        this.postValueChange(OPERATOR_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getLeftHandSide() {
        if (this.leftHandSide == null) {
            Assignment assignment = this;
            synchronized (assignment) {
                if (this.leftHandSide == null) {
                    this.preLazyInit();
                    this.leftHandSide = new SimpleName(this.ast);
                    this.postLazyInit(this.leftHandSide, LEFT_HAND_SIDE_PROPERTY);
                }
            }
        }
        return this.leftHandSide;
    }

    public void setLeftHandSide(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.leftHandSide;
        this.preReplaceChild(oldChild, expression, LEFT_HAND_SIDE_PROPERTY);
        this.leftHandSide = expression;
        this.postReplaceChild(oldChild, expression, LEFT_HAND_SIDE_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getRightHandSide() {
        if (this.rightHandSide == null) {
            Assignment assignment = this;
            synchronized (assignment) {
                if (this.rightHandSide == null) {
                    this.preLazyInit();
                    this.rightHandSide = new SimpleName(this.ast);
                    this.postLazyInit(this.rightHandSide, RIGHT_HAND_SIDE_PROPERTY);
                }
            }
        }
        return this.rightHandSide;
    }

    public void setRightHandSide(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.rightHandSide;
        this.preReplaceChild(oldChild, expression, RIGHT_HAND_SIDE_PROPERTY);
        this.rightHandSide = expression;
        this.postReplaceChild(oldChild, expression, RIGHT_HAND_SIDE_PROPERTY);
    }

    int memSize() {
        return 52;
    }

    int treeSize() {
        return this.memSize() + (this.leftHandSide == null ? 0 : this.getLeftHandSide().treeSize()) + (this.rightHandSide == null ? 0 : this.getRightHandSide().treeSize());
    }

    public static class Operator {
        private String op;
        public static final Operator ASSIGN = new Operator("=");
        public static final Operator PLUS_ASSIGN = new Operator("+=");
        public static final Operator MINUS_ASSIGN = new Operator("-=");
        public static final Operator TIMES_ASSIGN = new Operator("*=");
        public static final Operator DIVIDE_ASSIGN = new Operator("/=");
        public static final Operator BIT_AND_ASSIGN = new Operator("&=");
        public static final Operator BIT_OR_ASSIGN = new Operator("|=");
        public static final Operator BIT_XOR_ASSIGN = new Operator("^=");
        public static final Operator REMAINDER_ASSIGN = new Operator("%=");
        public static final Operator LEFT_SHIFT_ASSIGN = new Operator("<<=");
        public static final Operator RIGHT_SHIFT_SIGNED_ASSIGN = new Operator(">>=");
        public static final Operator RIGHT_SHIFT_UNSIGNED_ASSIGN = new Operator(">>>=");
        private static final Map CODES = new HashMap(20);

        static {
            Operator[] ops = new Operator[]{ASSIGN, PLUS_ASSIGN, MINUS_ASSIGN, TIMES_ASSIGN, DIVIDE_ASSIGN, BIT_AND_ASSIGN, BIT_OR_ASSIGN, BIT_XOR_ASSIGN, REMAINDER_ASSIGN, LEFT_SHIFT_ASSIGN, RIGHT_SHIFT_SIGNED_ASSIGN, RIGHT_SHIFT_UNSIGNED_ASSIGN};
            int i = 0;
            while (i < ops.length) {
                CODES.put(ops[i].toString(), ops[i]);
                ++i;
            }
        }

        private Operator(String op) {
            this.op = op;
        }

        public String toString() {
            return this.op;
        }

        public static Operator toOperator(String token) {
            return (Operator)CODES.get(token);
        }
    }
}

