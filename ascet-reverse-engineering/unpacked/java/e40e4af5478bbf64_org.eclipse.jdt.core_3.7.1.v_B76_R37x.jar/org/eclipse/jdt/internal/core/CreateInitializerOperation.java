/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.CreateTypeMemberOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Messages;

public class CreateInitializerOperation
extends CreateTypeMemberOperation {
    protected int numberOfInitializers = 1;

    public CreateInitializerOperation(IType parentElement, String source) {
        super(parentElement, source, false);
    }

    protected ASTNode generateElementAST(ASTRewrite rewriter, ICompilationUnit cu) throws JavaModelException {
        ASTNode node = super.generateElementAST(rewriter, cu);
        if (node.getNodeType() != 28) {
            throw new JavaModelException(new JavaModelStatus(984));
        }
        return node;
    }

    protected IJavaElement generateResultHandle() {
        try {
            this.getType().getCompilationUnit().close();
            if (this.anchorElement == null) {
                return this.getType().getInitializer(this.numberOfInitializers);
            }
            IJavaElement[] children = this.getType().getChildren();
            int count = 0;
            int i = 0;
            while (i < children.length) {
                IJavaElement child = children[i];
                if (child.equals(this.anchorElement)) {
                    if (child.getElementType() == 10 && this.insertionPolicy == 2) {
                        ++count;
                    }
                    return this.getType().getInitializer(count);
                }
                if (child.getElementType() == 10) {
                    ++count;
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        return null;
    }

    public String getMainTaskName() {
        return Messages.operation_createInitializerProgress;
    }

    protected SimpleName rename(ASTNode node, SimpleName newName) {
        return null;
    }

    protected void initializeDefaultPosition() {
        IType parentElement = this.getType();
        try {
            IJavaElement[] elements = parentElement.getInitializers();
            if (elements != null && elements.length > 0) {
                this.numberOfInitializers = elements.length;
                this.createAfter(elements[elements.length - 1]);
            } else {
                elements = parentElement.getChildren();
                if (elements != null && elements.length > 0) {
                    this.createBefore(elements[0]);
                }
            }
        }
        catch (JavaModelException javaModelException) {}
    }
}

