/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.VariableDeclaration;

public class SingleVariableDeclaration
extends VariableDeclaration {
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    public static final SimplePropertyDescriptor VARARGS_PROPERTY;
    public static final SimplePropertyDescriptor EXTRA_DIMENSIONS_PROPERTY;
    public static final ChildPropertyDescriptor INITIALIZER_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private ASTNode.NodeList modifiers = null;
    private int modifierFlags = 0;
    private SimpleName variableName = null;
    private Type type = null;
    private boolean variableArity = false;
    private int extraArrayDimensions = 0;
    private Expression optionalInitializer = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4;
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS_PROPERTY = new SimplePropertyDescriptor(clazz5, "modifiers", Integer.TYPE, true);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz4 = class$1) == null) {
            try {
                clazz4 = class$1 = Class.forName("org.eclipse.jdt.core.dom.IExtendedModifier");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS2_PROPERTY = new ChildListPropertyDescriptor(clazz6, "modifiers", clazz4, true);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$2) == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz7, "name", clazz3, true, false);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$3) == null) {
            try {
                clazz2 = class$3 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_PROPERTY = new ChildPropertyDescriptor(clazz8, "type", clazz2, true, false);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        VARARGS_PROPERTY = new SimplePropertyDescriptor(clazz9, "varargs", Boolean.TYPE, true);
        Class<?> clazz10 = class$0;
        if (clazz10 == null) {
            try {
                clazz10 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXTRA_DIMENSIONS_PROPERTY = new SimplePropertyDescriptor(clazz10, "extraDimensions", Integer.TYPE, true);
        Class<?> clazz11 = class$0;
        if (clazz11 == null) {
            try {
                clazz11 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$4) == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        INITIALIZER_PROPERTY = new ChildPropertyDescriptor(clazz11, "initializer", clazz, false, true);
        ArrayList propertyList = new ArrayList(6);
        Class<?> clazz12 = class$0;
        if (clazz12 == null) {
            try {
                clazz12 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SingleVariableDeclaration.createPropertyList(clazz12, propertyList);
        SingleVariableDeclaration.addProperty(MODIFIERS_PROPERTY, propertyList);
        SingleVariableDeclaration.addProperty(TYPE_PROPERTY, propertyList);
        SingleVariableDeclaration.addProperty(NAME_PROPERTY, propertyList);
        SingleVariableDeclaration.addProperty(EXTRA_DIMENSIONS_PROPERTY, propertyList);
        SingleVariableDeclaration.addProperty(INITIALIZER_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_2_0 = SingleVariableDeclaration.reapPropertyList(propertyList);
        propertyList = new ArrayList(7);
        Class<?> clazz13 = class$0;
        if (clazz13 == null) {
            try {
                clazz13 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SingleVariableDeclaration.createPropertyList(clazz13, propertyList);
        SingleVariableDeclaration.addProperty(MODIFIERS2_PROPERTY, propertyList);
        SingleVariableDeclaration.addProperty(TYPE_PROPERTY, propertyList);
        SingleVariableDeclaration.addProperty(VARARGS_PROPERTY, propertyList);
        SingleVariableDeclaration.addProperty(NAME_PROPERTY, propertyList);
        SingleVariableDeclaration.addProperty(EXTRA_DIMENSIONS_PROPERTY, propertyList);
        SingleVariableDeclaration.addProperty(INITIALIZER_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_3_0 = SingleVariableDeclaration.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    SingleVariableDeclaration(AST ast) {
        super(ast);
        if (ast.apiLevel >= 3) {
            this.modifiers = new ASTNode.NodeList(MODIFIERS2_PROPERTY);
        }
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
        return SingleVariableDeclaration.propertyDescriptors(apiLevel);
    }

    final int internalGetSetIntProperty(SimplePropertyDescriptor property, boolean get, int value) {
        if (property == MODIFIERS_PROPERTY) {
            if (get) {
                return this.getModifiers();
            }
            this.setModifiers(value);
            return 0;
        }
        if (property == EXTRA_DIMENSIONS_PROPERTY) {
            if (get) {
                return this.getExtraDimensions();
            }
            this.setExtraDimensions(value);
            return 0;
        }
        return super.internalGetSetIntProperty(property, get, value);
    }

    final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor property, boolean get, boolean value) {
        if (property == VARARGS_PROPERTY) {
            if (get) {
                return this.isVarargs();
            }
            this.setVarargs(value);
            return false;
        }
        return super.internalGetSetBooleanProperty(property, get, value);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == NAME_PROPERTY) {
            if (get) {
                return this.getName();
            }
            this.setName((SimpleName)child);
            return null;
        }
        if (property == TYPE_PROPERTY) {
            if (get) {
                return this.getType();
            }
            this.setType((Type)child);
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

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == MODIFIERS2_PROPERTY) {
            return this.modifiers();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 44;
    }

    ASTNode clone0(AST target) {
        SingleVariableDeclaration result = new SingleVariableDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        if (this.ast.apiLevel == 2) {
            result.setModifiers(this.getModifiers());
        } else {
            result.modifiers().addAll(ASTNode.copySubtrees(target, this.modifiers()));
            result.setVarargs(this.isVarargs());
        }
        result.setType((Type)this.getType().clone(target));
        result.setExtraDimensions(this.getExtraDimensions());
        result.setName((SimpleName)this.getName().clone(target));
        result.setInitializer((Expression)ASTNode.copySubtree(target, this.getInitializer()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            if (this.ast.apiLevel >= 3) {
                this.acceptChildren(visitor, this.modifiers);
            }
            this.acceptChild(visitor, this.getType());
            this.acceptChild(visitor, this.getName());
            this.acceptChild(visitor, this.getInitializer());
        }
        visitor.endVisit(this);
    }

    public List modifiers() {
        if (this.modifiers == null) {
            this.unsupportedIn2();
        }
        return this.modifiers;
    }

    public int getModifiers() {
        if (this.modifiers == null) {
            return this.modifierFlags;
        }
        int computedModifierFlags = 0;
        Iterator it = this.modifiers().iterator();
        while (it.hasNext()) {
            Object x = it.next();
            if (!(x instanceof Modifier)) continue;
            computedModifierFlags |= ((Modifier)x).getKeyword().toFlagValue();
        }
        return computedModifierFlags;
    }

    public void setModifiers(int modifiers) {
        this.internalSetModifiers(modifiers);
    }

    final void internalSetModifiers(int pmodifiers) {
        this.supportedOnlyIn2();
        this.preValueChange(MODIFIERS_PROPERTY);
        this.modifierFlags = pmodifiers;
        this.postValueChange(MODIFIERS_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.variableName == null) {
            SingleVariableDeclaration singleVariableDeclaration = this;
            synchronized (singleVariableDeclaration) {
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

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getType() {
        if (this.type == null) {
            SingleVariableDeclaration singleVariableDeclaration = this;
            synchronized (singleVariableDeclaration) {
                if (this.type == null) {
                    this.preLazyInit();
                    this.type = this.ast.newPrimitiveType(PrimitiveType.INT);
                    this.postLazyInit(this.type, TYPE_PROPERTY);
                }
            }
        }
        return this.type;
    }

    public void setType(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type oldChild = this.type;
        this.preReplaceChild(oldChild, type, TYPE_PROPERTY);
        this.type = type;
        this.postReplaceChild(oldChild, type, TYPE_PROPERTY);
    }

    public boolean isVarargs() {
        if (this.modifiers == null) {
            this.unsupportedIn2();
        }
        return this.variableArity;
    }

    public void setVarargs(boolean variableArity) {
        if (this.modifiers == null) {
            this.unsupportedIn2();
        }
        this.preValueChange(VARARGS_PROPERTY);
        this.variableArity = variableArity;
        this.postValueChange(VARARGS_PROPERTY);
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
        return 68;
    }

    int treeSize() {
        return this.memSize() + (this.modifiers == null ? 0 : this.modifiers.listSize()) + (this.type == null ? 0 : this.getType().treeSize()) + (this.variableName == null ? 0 : this.getName().treeSize()) + (this.optionalInitializer == null ? 0 : this.getInitializer().treeSize());
    }
}

