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
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public class Initializer
extends BodyDeclaration {
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private Block body = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Initializer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JAVADOC_PROPERTY = Initializer.internalJavadocPropertyFactory(clazz2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Initializer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS_PROPERTY = Initializer.internalModifiersPropertyFactory(clazz3);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Initializer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS2_PROPERTY = Initializer.internalModifiers2PropertyFactory(clazz4);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Initializer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.Block");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BODY_PROPERTY = new ChildPropertyDescriptor(clazz5, "body", clazz, true, true);
        ArrayList properyList = new ArrayList(4);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Initializer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Initializer.createPropertyList(clazz6, properyList);
        Initializer.addProperty(JAVADOC_PROPERTY, properyList);
        Initializer.addProperty(MODIFIERS_PROPERTY, properyList);
        Initializer.addProperty(BODY_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_2_0 = Initializer.reapPropertyList(properyList);
        properyList = new ArrayList(4);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Initializer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Initializer.createPropertyList(clazz7, properyList);
        Initializer.addProperty(JAVADOC_PROPERTY, properyList);
        Initializer.addProperty(MODIFIERS2_PROPERTY, properyList);
        Initializer.addProperty(BODY_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_3_0 = Initializer.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    Initializer(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return Initializer.propertyDescriptors(apiLevel);
    }

    final int internalGetSetIntProperty(SimplePropertyDescriptor property, boolean get, int value) {
        if (property == MODIFIERS_PROPERTY) {
            if (get) {
                return this.getModifiers();
            }
            this.internalSetModifiers(value);
            return 0;
        }
        return super.internalGetSetIntProperty(property, get, value);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == JAVADOC_PROPERTY) {
            if (get) {
                return this.getJavadoc();
            }
            this.setJavadoc((Javadoc)child);
            return null;
        }
        if (property == BODY_PROPERTY) {
            if (get) {
                return this.getBody();
            }
            this.setBody((Block)child);
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

    final ChildPropertyDescriptor internalJavadocProperty() {
        return JAVADOC_PROPERTY;
    }

    final ChildListPropertyDescriptor internalModifiers2Property() {
        return MODIFIERS2_PROPERTY;
    }

    final SimplePropertyDescriptor internalModifiersProperty() {
        return MODIFIERS_PROPERTY;
    }

    final int getNodeType0() {
        return 28;
    }

    ASTNode clone0(AST target) {
        Initializer result = new Initializer(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        if (this.ast.apiLevel == 2) {
            result.internalSetModifiers(this.getModifiers());
        }
        if (this.ast.apiLevel >= 3) {
            result.modifiers().addAll(ASTNode.copySubtrees(target, this.modifiers()));
        }
        result.setJavadoc((Javadoc)ASTNode.copySubtree(target, this.getJavadoc()));
        result.setBody((Block)this.getBody().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getJavadoc());
            if (this.ast.apiLevel >= 3) {
                this.acceptChildren(visitor, this.modifiers);
            }
            this.acceptChild(visitor, this.getBody());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Block getBody() {
        if (this.body == null) {
            Initializer initializer = this;
            synchronized (initializer) {
                if (this.body == null) {
                    this.preLazyInit();
                    this.body = new Block(this.ast);
                    this.postLazyInit(this.body, BODY_PROPERTY);
                }
            }
        }
        return this.body;
    }

    public void setBody(Block body) {
        if (body == null) {
            throw new IllegalArgumentException();
        }
        Block oldChild = this.body;
        this.preReplaceChild(oldChild, body, BODY_PROPERTY);
        this.body = body;
        this.postReplaceChild(oldChild, body, BODY_PROPERTY);
    }

    int memSize() {
        return super.memSize() + 4;
    }

    int treeSize() {
        return this.memSize() + (this.optionalDocComment == null ? 0 : this.getJavadoc().treeSize()) + (this.modifiers == null ? 0 : this.modifiers.listSize()) + (this.body == null ? 0 : this.getBody().treeSize());
    }
}

