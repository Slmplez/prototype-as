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
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;

public class CatchClause
extends ASTNode {
    public static final ChildPropertyDescriptor EXCEPTION_PROPERTY;
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Block body = null;
    private SingleVariableDeclaration exceptionDecl = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.CatchClause");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$1) == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXCEPTION_PROPERTY = new ChildPropertyDescriptor(clazz3, "exception", clazz2, true, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.CatchClause");
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
        BODY_PROPERTY = new ChildPropertyDescriptor(clazz4, "body", clazz, true, true);
        ArrayList properyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.CatchClause");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        CatchClause.createPropertyList(clazz5, properyList);
        CatchClause.addProperty(EXCEPTION_PROPERTY, properyList);
        CatchClause.addProperty(BODY_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = CatchClause.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    CatchClause(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return CatchClause.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == EXCEPTION_PROPERTY) {
            if (get) {
                return this.getException();
            }
            this.setException((SingleVariableDeclaration)child);
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

    final int getNodeType0() {
        return 12;
    }

    ASTNode clone0(AST target) {
        CatchClause result = new CatchClause(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setBody((Block)this.getBody().clone(target));
        result.setException((SingleVariableDeclaration)ASTNode.copySubtree(target, this.getException()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getException());
            this.acceptChild(visitor, this.getBody());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SingleVariableDeclaration getException() {
        if (this.exceptionDecl == null) {
            CatchClause catchClause = this;
            synchronized (catchClause) {
                if (this.exceptionDecl == null) {
                    this.preLazyInit();
                    this.exceptionDecl = new SingleVariableDeclaration(this.ast);
                    this.postLazyInit(this.exceptionDecl, EXCEPTION_PROPERTY);
                }
            }
        }
        return this.exceptionDecl;
    }

    public void setException(SingleVariableDeclaration exception) {
        if (exception == null) {
            throw new IllegalArgumentException();
        }
        SingleVariableDeclaration oldChild = this.exceptionDecl;
        this.preReplaceChild(oldChild, exception, EXCEPTION_PROPERTY);
        this.exceptionDecl = exception;
        this.postReplaceChild(oldChild, exception, EXCEPTION_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Block getBody() {
        if (this.body == null) {
            CatchClause catchClause = this;
            synchronized (catchClause) {
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
        return 48;
    }

    int treeSize() {
        return this.memSize() + (this.exceptionDecl == null ? 0 : this.getException().treeSize()) + (this.body == null ? 0 : this.getBody().treeSize());
    }
}

