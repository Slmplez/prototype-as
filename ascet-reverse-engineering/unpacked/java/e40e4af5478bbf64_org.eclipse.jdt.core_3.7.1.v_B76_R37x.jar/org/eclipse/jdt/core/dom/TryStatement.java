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
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Statement;

public class TryStatement
extends Statement {
    public static final ChildListPropertyDescriptor RESOURCES_PROPERTY;
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    public static final ChildListPropertyDescriptor CATCH_CLAUSES_PROPERTY;
    public static final ChildPropertyDescriptor FINALLY_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_4_0;
    private ASTNode.NodeList resources = null;
    private Block body = null;
    private ASTNode.NodeList catchClauses = new ASTNode.NodeList(CATCH_CLAUSES_PROPERTY);
    private Block optionalFinallyBody = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4;
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TryStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz4 = class$1) == null) {
            try {
                clazz4 = class$1 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCES_PROPERTY = new ChildListPropertyDescriptor(clazz5, "resources", clazz4, true);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TryStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$2) == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Block");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BODY_PROPERTY = new ChildPropertyDescriptor(clazz6, "body", clazz3, true, true);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TryStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$3) == null) {
            try {
                clazz2 = class$3 = Class.forName("org.eclipse.jdt.core.dom.CatchClause");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        CATCH_CLAUSES_PROPERTY = new ChildListPropertyDescriptor(clazz7, "catchClauses", clazz2, true);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TryStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.Block");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        FINALLY_PROPERTY = new ChildPropertyDescriptor(clazz8, "finally", clazz, false, true);
        ArrayList propertyList = new ArrayList(4);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TryStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TryStatement.createPropertyList(clazz9, propertyList);
        TryStatement.addProperty(BODY_PROPERTY, propertyList);
        TryStatement.addProperty(CATCH_CLAUSES_PROPERTY, propertyList);
        TryStatement.addProperty(FINALLY_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = TryStatement.reapPropertyList(propertyList);
        propertyList = new ArrayList(5);
        Class<?> clazz10 = class$0;
        if (clazz10 == null) {
            try {
                clazz10 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TryStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TryStatement.createPropertyList(clazz10, propertyList);
        TryStatement.addProperty(RESOURCES_PROPERTY, propertyList);
        TryStatement.addProperty(BODY_PROPERTY, propertyList);
        TryStatement.addProperty(CATCH_CLAUSES_PROPERTY, propertyList);
        TryStatement.addProperty(FINALLY_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_4_0 = TryStatement.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        switch (apiLevel) {
            case 2: 
            case 3: {
                return PROPERTY_DESCRIPTORS;
            }
        }
        return PROPERTY_DESCRIPTORS_4_0;
    }

    TryStatement(AST ast) {
        super(ast);
        if (ast.apiLevel >= 4) {
            this.resources = new ASTNode.NodeList(RESOURCES_PROPERTY);
        }
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return TryStatement.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == BODY_PROPERTY) {
            if (get) {
                return this.getBody();
            }
            this.setBody((Block)child);
            return null;
        }
        if (property == FINALLY_PROPERTY) {
            if (get) {
                return this.getFinally();
            }
            this.setFinally((Block)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == RESOURCES_PROPERTY) {
            return this.resources();
        }
        if (property == CATCH_CLAUSES_PROPERTY) {
            return this.catchClauses();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 54;
    }

    ASTNode clone0(AST target) {
        TryStatement result = new TryStatement(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
        if (this.ast.apiLevel >= 4) {
            result.resources().addAll(ASTNode.copySubtrees(target, this.resources()));
        }
        result.setBody((Block)this.getBody().clone(target));
        result.catchClauses().addAll(ASTNode.copySubtrees(target, this.catchClauses()));
        result.setFinally((Block)ASTNode.copySubtree(target, this.getFinally()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            if (this.ast.apiLevel >= 4) {
                this.acceptChildren(visitor, this.resources);
            }
            this.acceptChild(visitor, this.getBody());
            this.acceptChildren(visitor, this.catchClauses);
            this.acceptChild(visitor, this.getFinally());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Block getBody() {
        if (this.body == null) {
            TryStatement tryStatement = this;
            synchronized (tryStatement) {
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

    public List catchClauses() {
        return this.catchClauses;
    }

    public Block getFinally() {
        return this.optionalFinallyBody;
    }

    public void setFinally(Block block) {
        Block oldChild = this.optionalFinallyBody;
        this.preReplaceChild(oldChild, block, FINALLY_PROPERTY);
        this.optionalFinallyBody = block;
        this.postReplaceChild(oldChild, block, FINALLY_PROPERTY);
    }

    public List resources() {
        if (this.resources == null) {
            this.unsupportedIn2_3();
        }
        return this.resources;
    }

    int memSize() {
        return super.memSize() + 16;
    }

    int treeSize() {
        return this.memSize() + (this.resources == null ? 0 : this.resources.listSize()) + (this.body == null ? 0 : this.getBody().treeSize()) + this.catchClauses.listSize() + (this.optionalFinallyBody == null ? 0 : this.getFinally().treeSize());
    }
}

