/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.CreateTypeMemberOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CreateMethodOperation
extends CreateTypeMemberOperation {
    protected String[] parameterTypes;

    public CreateMethodOperation(IType parentElement, String source, boolean force) {
        super(parentElement, source, force);
    }

    protected String[] convertASTMethodTypesToSignatures() {
        if (this.parameterTypes == null && this.createdNode != null) {
            MethodDeclaration methodDeclaration = (MethodDeclaration)this.createdNode;
            List parameters = methodDeclaration.parameters();
            int size = parameters.size();
            this.parameterTypes = new String[size];
            Iterator iterator = parameters.iterator();
            int i = 0;
            while (i < size) {
                SingleVariableDeclaration parameter = (SingleVariableDeclaration)iterator.next();
                String typeSig = Util.getSignature(parameter.getType());
                int extraDimensions = parameter.getExtraDimensions();
                if (methodDeclaration.isVarargs() && i == size - 1) {
                    ++extraDimensions;
                }
                this.parameterTypes[i] = Signature.createArraySignature(typeSig, extraDimensions);
                ++i;
            }
        }
        return this.parameterTypes;
    }

    protected ASTNode generateElementAST(ASTRewrite rewriter, ICompilationUnit cu) throws JavaModelException {
        ASTNode node = super.generateElementAST(rewriter, cu);
        if (node.getNodeType() != 31) {
            throw new JavaModelException(new JavaModelStatus(984));
        }
        return node;
    }

    protected IJavaElement generateResultHandle() {
        String[] types = this.convertASTMethodTypesToSignatures();
        String name = this.getASTNodeName();
        return this.getType().getMethod(name, types);
    }

    private String getASTNodeName() {
        return ((MethodDeclaration)this.createdNode).getName().getIdentifier();
    }

    public String getMainTaskName() {
        return Messages.operation_createMethodProgress;
    }

    protected SimpleName rename(ASTNode node, SimpleName newName) {
        MethodDeclaration method = (MethodDeclaration)node;
        SimpleName oldName = method.getName();
        method.setName(newName);
        return oldName;
    }

    protected IJavaModelStatus verifyNameCollision() {
        String[] types;
        String name;
        IType type;
        if (this.createdNode != null && (type = this.getType()).getMethod(name = ((MethodDeclaration)this.createdNode).isConstructor() ? type.getElementName() : this.getASTNodeName(), types = this.convertASTMethodTypesToSignatures()).exists()) {
            return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, name));
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

