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
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.VariableDeclaration;

public class VariableDeclarationFragment
extends VariableDeclaration {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final SimplePropertyDescriptor EXTRA_DIMENSIONS_PROPERTY;
    public static final ChildPropertyDescriptor INITIALIZER_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private SimpleName variableName = null;
    private int extraArrayDimensions = 0;
    private Expression optionalInitializer = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationFragment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$1) == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz3, "name", clazz2, true, false);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationFragment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXTRA_DIMENSIONS_PROPERTY = new SimplePropertyDescriptor(clazz4, "extraDimensions", Integer.TYPE, true);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationFragment");
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
        INITIALIZER_PROPERTY = new ChildPropertyDescriptor(clazz5, "initializer", clazz, false, true);
        ArrayList propertyList = new ArrayList(4);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationFragment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        VariableDeclarationFragment.createPropertyList(clazz6, propertyList);
        VariableDeclarationFragment.addProperty(NAME_PROPERTY, propertyList);
        VariableDeclarationFragment.addProperty(EXTRA_DIMENSIONS_PROPERTY, propertyList);
        VariableDeclarationFragment.addProperty(INITIALIZER_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = VariableDeclarationFragment.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    VariableDeclarationFragment(AST ast) {
        super(ast);
    }

    final SimplePropertyDescriptor internalExtraDimensionsProperty() {
        return EXTRA_DIMENSIONS_PROPERTY;
    }

    final ChildPropertyDescriptor internalInitializerProperty() {
        return INITIALIZER_PROPERTY;
    }

    final ChildPropertyDescriptor internalNameProperty() {
        return NAME_PROPERTY;
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return VariableDeclarationFragment.propertyDescriptors(apiLevel);
    }

    final int internalGetSetIntProperty(SimplePropertyDescriptor property, boolean get, int value) {
        if (property == EXTRA_DIMENSIONS_PROPERTY) {
            if (get) {
                return this.getExtraDimensions();
            }
            this.setExtraDimensions(value);
            return 0;
        }
        return super.internalGetSetIntProperty(property, get, value);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == NAME_PROPERTY) {
            if (get) {
                return this.getName();
            }
            this.setName((SimpleName)child);
            return null;
        }
        if (property == INITIALIZER_PROPERTY) {
            if (get) {
                return this.getInitializer();
            }
            this.setInitializer((Expression)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 59;
    }

    ASTNode clone0(AST target) {
        VariableDeclarationFragment result = new VariableDeclarationFragment(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setName((SimpleName)this.getName().clone(target));
        result.setExtraDimensions(this.getExtraDimensions());
        result.setInitializer((Expression)ASTNode.copySubtree(target, this.getInitializer()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getName());
            this.acceptChild(visitor, this.getInitializer());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.variableName == null) {
            VariableDeclarationFragment variableDeclarationFragment = this;
            synchronized (variableDeclarationFragment) {
                if (this.variableName == null) {
                    this.preLazyInit();
                    this.variableName = new SimpleName(this.ast);
                    this.postLazyInit(this.variableName, NAME_PROPERTY);
                }
            }
        }
        return this.variableName;
    }

    public void setName(SimpleName variableName) {
        if (variableName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.variableName;
        this.preReplaceChild(oldChild, variableName, NAME_PROPERTY);
        this.variableName = variableName;
        this.postReplaceChild(oldChild, variableName, NAME_PROPERTY);
    }

    public int getExtraDimensions() {
        return this.extraArrayDimensions;
    }

    public void setExtraDimensions(int dimensions) {
        if (dimensions < 0) {
            throw new IllegalArgumentException();
        }
        this.preValueChange(EXTRA_DIMENSIONS_PROPERTY);
        this.extraArrayDimensions = dimensions;
        this.postValueChange(EXTRA_DIMENSIONS_PROPERTY);
    }

    public Expression getInitializer() {
        return this.optionalInitializer;
    }

    public void setInitializer(Expression initializer) {
        Expression oldChild = this.optionalInitializer;
        this.preReplaceChild(oldChild, initializer, INITIALIZER_PROPERTY);
        this.optionalInitializer = initializer;
        this.postReplaceChild(oldChild, initializer, INITIALIZER_PROPERTY);
    }

    int memSize() {
        return 52;
    }

    int treeSize() {
        return this.memSize() + (this.variableName == null ? 0 : this.getName().treeSize()) + (this.optionalInitializer == null ? 0 : this.getInitializer().treeSize());
    }
}

