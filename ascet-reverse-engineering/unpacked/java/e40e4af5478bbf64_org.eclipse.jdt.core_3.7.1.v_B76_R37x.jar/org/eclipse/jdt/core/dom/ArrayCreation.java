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
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.PrimitiveType;

public class ArrayCreation
extends Expression {
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    public static final ChildListPropertyDescriptor DIMENSIONS_PROPERTY;
    public static final ChildPropertyDescriptor INITIALIZER_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private ArrayType arrayType = null;
    private ASTNode.NodeList dimensions = new ASTNode.NodeList(DIMENSIONS_PROPERTY);
    private ArrayInitializer optionalInitializer = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ArrayCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$1) == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jdt.core.dom.ArrayType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_PROPERTY = new ChildPropertyDescriptor(clazz4, "type", clazz3, true, false);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ArrayCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$2) == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        DIMENSIONS_PROPERTY = new ChildListPropertyDescriptor(clazz5, "dimensions", clazz2, true);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ArrayCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$3) == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.jdt.core.dom.ArrayInitializer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        INITIALIZER_PROPERTY = new ChildPropertyDescriptor(clazz6, "initializer", clazz, false, true);
        ArrayList properyList = new ArrayList(4);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ArrayCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ArrayCreation.createPropertyList(clazz7, properyList);
        ArrayCreation.addProperty(TYPE_PROPERTY, properyList);
        ArrayCreation.addProperty(DIMENSIONS_PROPERTY, properyList);
        ArrayCreation.addProperty(INITIALIZER_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = ArrayCreation.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    ArrayCreation(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ArrayCreation.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == INITIALIZER_PROPERTY) {
            if (get) {
                return this.getInitializer();
            }
            this.setInitializer((ArrayInitializer)child);
            return null;
        }
        if (property == TYPE_PROPERTY) {
            if (get) {
                return this.getType();
            }
            this.setType((ArrayType)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == DIMENSIONS_PROPERTY) {
            return this.dimensions();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 3;
    }

    ASTNode clone0(AST target) {
        ArrayCreation result = new ArrayCreation(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setType((ArrayType)this.getType().clone(target));
        result.dimensions().addAll(ASTNode.copySubtrees(target, this.dimensions()));
        result.setInitializer((ArrayInitializer)ASTNode.copySubtree(target, this.getInitializer()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getType());
            this.acceptChildren(visitor, this.dimensions);
            this.acceptChild(visitor, this.getInitializer());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ArrayType getType() {
        if (this.arrayType == null) {
            ArrayCreation arrayCreation = this;
            synchronized (arrayCreation) {
                if (this.arrayType == null) {
                    this.preLazyInit();
                    this.arrayType = this.ast.newArrayType(this.ast.newPrimitiveType(PrimitiveType.INT));
                    this.postLazyInit(this.arrayType, TYPE_PROPERTY);
                }
            }
        }
        return this.arrayType;
    }

    public void setType(ArrayType type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        ArrayType oldChild = this.arrayType;
        this.preReplaceChild(oldChild, type, TYPE_PROPERTY);
        this.arrayType = type;
        this.postReplaceChild(oldChild, type, TYPE_PROPERTY);
    }

    public List dimensions() {
        return this.dimensions;
    }

    public ArrayInitializer getInitializer() {
        return this.optionalInitializer;
    }

    public void setInitializer(ArrayInitializer initializer) {
        ArrayInitializer oldChild = this.optionalInitializer;
        this.preReplaceChild(oldChild, initializer, INITIALIZER_PROPERTY);
        this.optionalInitializer = initializer;
        this.postReplaceChild(oldChild, initializer, INITIALIZER_PROPERTY);
    }

    int memSize() {
        return 52;
    }

    int treeSize() {
        int size = this.memSize() + (this.arrayType == null ? 0 : this.getType().treeSize()) + (this.optionalInitializer == null ? 0 : this.getInitializer().treeSize()) + this.dimensions.listSize();
        return size;
    }
}

