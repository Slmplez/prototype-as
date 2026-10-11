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
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public class ImportDeclaration
extends ASTNode {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final SimplePropertyDescriptor ON_DEMAND_PROPERTY;
    public static final SimplePropertyDescriptor STATIC_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private Name importName = null;
    private boolean onDemand = false;
    private boolean isStatic = false;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ImportDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz2, "name", clazz, true, false);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ImportDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ON_DEMAND_PROPERTY = new SimplePropertyDescriptor(clazz3, "onDemand", Boolean.TYPE, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ImportDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        STATIC_PROPERTY = new SimplePropertyDescriptor(clazz4, "static", Boolean.TYPE, true);
        ArrayList properyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ImportDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ImportDeclaration.createPropertyList(clazz5, properyList);
        ImportDeclaration.addProperty(NAME_PROPERTY, properyList);
        ImportDeclaration.addProperty(ON_DEMAND_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_2_0 = ImportDeclaration.reapPropertyList(properyList);
        properyList = new ArrayList(4);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ImportDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ImportDeclaration.createPropertyList(clazz6, properyList);
        ImportDeclaration.addProperty(STATIC_PROPERTY, properyList);
        ImportDeclaration.addProperty(NAME_PROPERTY, properyList);
        ImportDeclaration.addProperty(ON_DEMAND_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_3_0 = ImportDeclaration.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    ImportDeclaration(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ImportDeclaration.propertyDescriptors(apiLevel);
    }

    final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor property, boolean get, boolean value) {
        if (property == ON_DEMAND_PROPERTY) {
            if (get) {
                return this.isOnDemand();
            }
            this.setOnDemand(value);
            return false;
        }
        if (property == STATIC_PROPERTY) {
            if (get) {
                return this.isStatic();
            }
            this.setStatic(value);
            return false;
        }
        return super.internalGetSetBooleanProperty(property, get, value);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == NAME_PROPERTY) {
            if (get) {
                return this.getName();
            }
            this.setName((Name)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 26;
    }

    ASTNode clone0(AST target) {
        ImportDeclaration result = new ImportDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setOnDemand(this.isOnDemand());
        if (this.ast.apiLevel >= 3) {
            result.setStatic(this.isStatic());
        }
        result.setName((Name)this.getName().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getName());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Name getName() {
        if (this.importName == null) {
            ImportDeclaration importDeclaration = this;
            synchronized (importDeclaration) {
                if (this.importName == null) {
                    this.preLazyInit();
                    this.importName = this.ast.newQualifiedName(new SimpleName(this.ast), new SimpleName(this.ast));
                    this.postLazyInit(this.importName, NAME_PROPERTY);
                }
            }
        }
        return this.importName;
    }

    public void setName(Name name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Name oldChild = this.importName;
        this.preReplaceChild(oldChild, name, NAME_PROPERTY);
        this.importName = name;
        this.postReplaceChild(oldChild, name, NAME_PROPERTY);
    }

    public boolean isOnDemand() {
        return this.onDemand;
    }

    public void setOnDemand(boolean onDemand) {
        this.preValueChange(ON_DEMAND_PROPERTY);
        this.onDemand = onDemand;
        this.postValueChange(ON_DEMAND_PROPERTY);
    }

    public boolean isStatic() {
        this.unsupportedIn2();
        return this.isStatic;
    }

    public void setStatic(boolean isStatic) {
        this.unsupportedIn2();
        this.preValueChange(STATIC_PROPERTY);
        this.isStatic = isStatic;
        this.postValueChange(STATIC_PROPERTY);
    }

    public IBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveImport(this);
    }

    int memSize() {
        return 52;
    }

    int treeSize() {
        return this.memSize() + (this.importName == null ? 0 : this.getName().treeSize());
    }
}

