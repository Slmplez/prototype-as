/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.Iterator;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.CreateTypeMemberOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Messages;

public class CreateFieldOperation
extends CreateTypeMemberOperation {
    public CreateFieldOperation(IType parentElement, String source, boolean force) {
        super(parentElement, source, force);
    }

    protected ASTNode generateElementAST(ASTRewrite rewriter, ICompilationUnit cu) throws JavaModelException {
        ASTNode node = super.generateElementAST(rewriter, cu);
        if (node.getNodeType() != 23) {
            throw new JavaModelException(new JavaModelStatus(984));
        }
        return node;
    }

    protected IJavaElement generateResultHandle() {
        return this.getType().getField(this.getASTNodeName());
    }

    public String getMainTaskName() {
        return Messages.operation_createFieldProgress;
    }

    private VariableDeclarationFragment getFragment(ASTNode node) {
        Iterator fragments = ((FieldDeclaration)node).fragments().iterator();
        if (this.anchorElement != null) {
            VariableDeclarationFragment fragment = null;
            String fragmentName = this.anchorElement.getElementName();
            while (fragments.hasNext()) {
                fragment = (VariableDeclarationFragment)fragments.next();
                if (!fragment.getName().getIdentifier().equals(fragmentName)) continue;
                return fragment;
            }
            return fragment;
        }
        return (VariableDeclarationFragment)fragments.next();
    }

    protected void initializeDefaultPosition() {
        IType parentElement = this.getType();
        try {
            IField[] fields = parentElement.getFields();
            if (fields != null && fields.length > 0) {
                IField lastField = fields[fields.length - 1];
                if (parentElement.isEnum()) {
                    IField field = lastField;
                    if (!field.isEnumConstant()) {
                        this.createAfter(lastField);
                    }
                } else {
                    this.createAfter(lastField);
                }
            } else {
                IJavaElement[] elements = parentElement.getChildren();
                if (elements != null && elements.length > 0) {
                    this.createBefore(elements[0]);
                }
            }
        }
        catch (JavaModelException javaModelException) {}
    }

    protected IJavaModelStatus verifyNameCollision() {
        String fieldName;
        IType type;
        if (this.createdNode != null && (type = this.getType()).getField(fieldName = this.getASTNodeName()).exists()) {
            return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, fieldName));
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    private String getASTNodeName() {
        if (this.alteredName != null) {
            return this.alteredName;
        }
        return this.getFragment(this.createdNode).getName().getIdentifier();
    }

    protected SimpleName rename(ASTNode node, SimpleName newName) {
        VariableDeclarationFragment fragment = this.getFragment(node);
        SimpleName oldName = fragment.getName();
        fragment.setName(newName);
        return oldName;
    }
}

