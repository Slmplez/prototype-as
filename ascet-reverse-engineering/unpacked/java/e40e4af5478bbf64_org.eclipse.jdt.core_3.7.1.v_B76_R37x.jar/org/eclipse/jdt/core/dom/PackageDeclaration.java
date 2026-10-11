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
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.IPackageBinding;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimpleName;

public class PackageDeclaration
extends ASTNode {
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor ANNOTATIONS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    Javadoc optionalDocComment = null;
    private ASTNode.NodeList annotations = null;
    private Name packageName = null;
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
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.PackageDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$1) == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Javadoc");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JAVADOC_PROPERTY = new ChildPropertyDescriptor(clazz4, "javadoc", clazz3, false, false);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.PackageDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$2) == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Annotation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ANNOTATIONS_PROPERTY = new ChildListPropertyDescriptor(clazz5, "annotations", clazz2, true);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.PackageDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$3) == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz6, "name", clazz, true, false);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.PackageDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PackageDeclaration.createPropertyList(clazz7, propertyList);
        PackageDeclaration.addProperty(NAME_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_2_0 = PackageDeclaration.reapPropertyList(propertyList);
        propertyList = new ArrayList(4);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.PackageDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PackageDeclaration.createPropertyList(clazz8, propertyList);
        PackageDeclaration.addProperty(JAVADOC_PROPERTY, propertyList);
        PackageDeclaration.addProperty(ANNOTATIONS_PROPERTY, propertyList);
        PackageDeclaration.addProperty(NAME_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_3_0 = PackageDeclaration.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    PackageDeclaration(AST ast) {
        super(ast);
        if (ast.apiLevel >= 3) {
            this.annotations = new ASTNode.NodeList(ANNOTATIONS_PROPERTY);
        }
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return PackageDeclaration.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == JAVADOC_PROPERTY) {
            if (get) {
                return this.getJavadoc();
            }
            this.setJavadoc((Javadoc)child);
            return null;
        }
        if (property == NAME_PROPERTY) {
            if (get) {
                return this.getName();
            }
            this.setName((Name)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == ANNOTATIONS_PROPERTY) {
            return this.annotations();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 35;
    }

    ASTNode clone0(AST target) {
        PackageDeclaration result = new PackageDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        if (this.ast.apiLevel >= 3) {
            result.setJavadoc((Javadoc)ASTNode.copySubtree(target, this.getJavadoc()));
            result.annotations().addAll(ASTNode.copySubtrees(target, this.annotations()));
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
            if (this.ast.apiLevel >= 3) {
                this.acceptChild(visitor, this.getJavadoc());
                this.acceptChildren(visitor, this.annotations);
            }
            this.acceptChild(visitor, this.getName());
        }
        visitor.endVisit(this);
    }

    public List annotations() {
        if (this.annotations == null) {
            this.unsupportedIn2();
        }
        return this.annotations;
    }

    public Javadoc getJavadoc() {
        if (this.annotations == null) {
            this.unsupportedIn2();
        }
        return this.optionalDocComment;
    }

    public void setJavadoc(Javadoc docComment) {
        if (this.annotations == null) {
            this.unsupportedIn2();
        }
        Javadoc oldChild = this.optionalDocComment;
        this.preReplaceChild(oldChild, docComment, JAVADOC_PROPERTY);
        this.optionalDocComment = docComment;
        this.postReplaceChild(oldChild, docComment, JAVADOC_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Name getName() {
        if (this.packageName == null) {
            PackageDeclaration packageDeclaration = this;
            synchronized (packageDeclaration) {
                if (this.packageName == null) {
                    this.preLazyInit();
                    this.packageName = new SimpleName(this.ast);
                    this.postLazyInit(this.packageName, NAME_PROPERTY);
                }
            }
        }
        return this.packageName;
    }

    public void setName(Name name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Name oldChild = this.packageName;
        this.preReplaceChild(oldChild, name, NAME_PROPERTY);
        this.packageName = name;
        this.postReplaceChild(oldChild, name, NAME_PROPERTY);
    }

    public IPackageBinding resolveBinding() {
        return this.ast.getBindingResolver().resolvePackage(this);
    }

    int memSize() {
        return 52;
    }

    int treeSize() {
        return this.memSize() + (this.optionalDocComment == null ? 0 : this.getJavadoc().treeSize()) + (this.annotations == null ? 0 : this.annotations.listSize()) + (this.packageName == null ? 0 : this.getName().treeSize());
    }
}

