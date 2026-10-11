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
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public class BooleanLiteral
extends Expression {
    public static final SimplePropertyDescriptor BOOLEAN_VALUE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private boolean value = false;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.BooleanLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BOOLEAN_VALUE_PROPERTY = new SimplePropertyDescriptor(clazz, "booleanValue", Boolean.TYPE, true);
        ArrayList properyList = new ArrayList(2);
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.BooleanLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BooleanLiteral.createPropertyList(clazz2, properyList);
        BooleanLiteral.addProperty(BOOLEAN_VALUE_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = BooleanLiteral.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    BooleanLiteral(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return BooleanLiteral.propertyDescriptors(apiLevel);
    }

    final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor property, boolean get, boolean newValue) {
        if (property == BOOLEAN_VALUE_PROPERTY) {
            if (get) {
                return this.booleanValue();
            }
            this.setBooleanValue(newValue);
            return false;
        }
        return super.internalGetSetBooleanProperty(property, get, newValue);
    }

    final int getNodeType0() {
        return 9;
    }

    ASTNode clone0(AST target) {
        BooleanLiteral result = new BooleanLiteral(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setBooleanValue(this.booleanValue());
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        visitor.visit(this);
        visitor.endVisit(this);
    }

    public boolean booleanValue() {
        return this.value;
    }

    public void setBooleanValue(boolean value) {
        this.preValueChange(BOOLEAN_VALUE_PROPERTY);
        this.value = value;
        this.postValueChange(BOOLEAN_VALUE_PROPERTY);
    }

    int memSize() {
        return 44;
    }

    int treeSize() {
        return this.memSize();
    }
}

