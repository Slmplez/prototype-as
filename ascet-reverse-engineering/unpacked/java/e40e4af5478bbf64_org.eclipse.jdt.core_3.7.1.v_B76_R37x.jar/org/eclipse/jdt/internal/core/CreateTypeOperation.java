/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.CreateTypeMemberOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Messages;

public class CreateTypeOperation
extends CreateTypeMemberOperation {
    public CreateTypeOperation(IJavaElement parentElement, String source, boolean force) {
        super(parentElement, source, force);
    }

    protected ASTNode generateElementAST(ASTRewrite rewriter, ICompilationUnit cu) throws JavaModelException {
        ASTNode node = super.generateElementAST(rewriter, cu);
        if (!(node instanceof AbstractTypeDeclaration)) {
            throw new JavaModelException(new JavaModelStatus(984));
        }
        return node;
    }

    protected IJavaElement generateResultHandle() {
        IJavaElement parent = this.getParentElement();
        switch (parent.getElementType()) {
            case 5: {
                return ((ICompilationUnit)parent).getType(this.getASTNodeName());
            }
            case 7: {
                return ((IType)parent).getType(this.getASTNodeName());
            }
        }
        return null;
    }

    public String getMainTaskName() {
        return Messages.operation_createTypeProgress;
    }

    protected IType getType() {
        IJavaElement parent = this.getParentElement();
        if (parent.getElementType() == 7) {
            return (IType)parent;
        }
        return null;
    }

    protected IJavaModelStatus verifyNameCollision() {
        IJavaElement parent = this.getParentElement();
        switch (parent.getElementType()) {
            case 5: {
                String typeName = this.getASTNodeName();
                if (!((ICompilationUnit)parent).getType(typeName).exists()) break;
                return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, typeName));
            }
            case 7: {
                String typeName = this.getASTNodeName();
                if (!((IType)parent).getType(typeName).exists()) break;
                return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, typeName));
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public IJavaModelStatus verify() {
        IJavaModelStatus status = super.verify();
        if (!status.isOK()) {
            return status;
        }
        try {
            IJavaElement parent = this.getParentElement();
            if (this.anchorElement != null && this.anchorElement.getElementType() == 8 && parent.getElementType() == 7 && ((IType)parent).isEnum()) {
                return new JavaModelStatus(993, this.anchorElement);
            }
        }
        catch (JavaModelException e) {
            return e.getJavaModelStatus();
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    private String getASTNodeName() {
        return ((AbstractTypeDeclaration)this.createdNode).getName().getIdentifier();
    }

    protected SimpleName rename(ASTNode node, SimpleName newName) {
        AbstractTypeDeclaration type = (AbstractTypeDeclaration)node;
        SimpleName oldName = type.getName();
        type.setName(newName);
        return oldName;
    }
}

