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
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.Statement;

public class ContinueStatement
extends Statement {
    public static final ChildPropertyDescriptor LABEL_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private SimpleName optionalLabel = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ContinueStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        LABEL_PROPERTY = new ChildPropertyDescriptor(clazz2, "label", clazz, false, false);
        ArrayList properyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ContinueStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ContinueStatement.createPropertyList(clazz3, properyList);
        ContinueStatement.addProperty(LABEL_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = ContinueStatement.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    ContinueStatement(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ContinueStatement.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == LABEL_PROPERTY) {
            if (get) {
                return this.getLabel();
            }
            this.setLabel((SimpleName)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 18;
    }

    ASTNode clone0(AST target) {
        ContinueStatement result = new ContinueStatement(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
        result.setLabel((SimpleName)ASTNode.copySubtree(target, this.getLabel()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getLabel());
        }
        visitor.endVisit(this);
    }

    public SimpleName getLabel() {
        return this.optionalLabel;
    }

    public void setLabel(SimpleName label) {
        SimpleName oldChild = this.optionalLabel;
        this.preReplaceChild(oldChild, label, LABEL_PROPERTY);
        this.optionalLabel = label;
        this.postReplaceChild(oldChild, label, LABEL_PROPERTY);
    }

    int memSize() {
        return super.memSize() + 4;
    }

    int treeSize() {
        return this.memSize() + (this.optionalLabel == null ? 0 : this.getLabel().treeSize());
    }
}

