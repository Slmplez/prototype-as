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
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.Statement;

public class LabeledStatement
extends Statement {
    public static final ChildPropertyDescriptor LABEL_PROPERTY;
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private SimpleName labelName = null;
    private Statement body = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.LabeledStatement");
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
        LABEL_PROPERTY = new ChildPropertyDescriptor(clazz3, "label", clazz2, true, false);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.LabeledStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.Statement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BODY_PROPERTY = new ChildPropertyDescriptor(clazz4, "body", clazz, true, true);
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.LabeledStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        LabeledStatement.createPropertyList(clazz5, propertyList);
        LabeledStatement.addProperty(LABEL_PROPERTY, propertyList);
        LabeledStatement.addProperty(BODY_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = LabeledStatement.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    LabeledStatement(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return LabeledStatement.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == LABEL_PROPERTY) {
            if (get) {
                return this.getLabel();
            }
            this.setLabel((SimpleName)child);
            return null;
        }
        if (property == BODY_PROPERTY) {
            if (get) {
                return this.getBody();
            }
            this.setBody((Statement)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 30;
    }

    ASTNode clone0(AST target) {
        LabeledStatement result = new LabeledStatement(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setLabel((SimpleName)ASTNode.copySubtree(target, this.getLabel()));
        result.setBody((Statement)ASTNode.copySubtree(target, this.getBody()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getLabel());
            this.acceptChild(visitor, this.getBody());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getLabel() {
        if (this.labelName == null) {
            LabeledStatement labeledStatement = this;
            synchronized (labeledStatement) {
                if (this.labelName == null) {
                    this.preLazyInit();
                    this.labelName = new SimpleName(this.ast);
                    this.postLazyInit(this.labelName, LABEL_PROPERTY);
                }
            }
        }
        return this.labelName;
    }

    public void setLabel(SimpleName label) {
        if (label == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.labelName;
        this.preReplaceChild(oldChild, label, LABEL_PROPERTY);
        this.labelName = label;
        this.postReplaceChild(oldChild, label, LABEL_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Statement getBody() {
        if (this.body == null) {
            LabeledStatement labeledStatement = this;
            synchronized (labeledStatement) {
                if (this.body == null) {
                    this.preLazyInit();
                    this.body = new EmptyStatement(this.ast);
                    this.postLazyInit(this.body, BODY_PROPERTY);
                }
            }
        }
        return this.body;
    }

    public void setBody(Statement statement) {
        if (statement == null) {
            throw new IllegalArgumentException();
        }
        Statement oldChild = this.body;
        this.preReplaceChild(oldChild, statement, BODY_PROPERTY);
        this.body = statement;
        this.postReplaceChild(oldChild, statement, BODY_PROPERTY);
    }

    int memSize() {
        return super.memSize() + 8;
    }

    int treeSize() {
        return this.memSize() + (this.labelName == null ? 0 : this.getLabel().treeSize()) + (this.body == null ? 0 : this.getBody().treeSize());
    }
}

