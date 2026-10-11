/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.CreateElementInCUOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Messages;

public class CreatePackageDeclarationOperation
extends CreateElementInCUOperation {
    protected String name = null;

    public CreatePackageDeclarationOperation(String name, ICompilationUnit parentElement) {
        super(parentElement);
        this.name = name;
    }

    protected StructuralPropertyDescriptor getChildPropertyDescriptor(ASTNode parent) {
        return CompilationUnit.PACKAGE_PROPERTY;
    }

    protected ASTNode generateElementAST(ASTRewrite rewriter, ICompilationUnit cu) throws JavaModelException {
        IJavaElement[] children = this.getCompilationUnit().getChildren();
        int i = 0;
        while (i < children.length) {
            if (children[i].getElementType() == 11 && this.name.equals(children[i].getElementName())) {
                this.creationOccurred = false;
                return null;
            }
            ++i;
        }
        AST ast = this.cuAST.getAST();
        PackageDeclaration pkgDeclaration = ast.newPackageDeclaration();
        Name astName = ast.newName(this.name);
        pkgDeclaration.setName(astName);
        return pkgDeclaration;
    }

    protected IJavaElement generateResultHandle() {
        return this.getCompilationUnit().getPackageDeclaration(this.name);
    }

    public String getMainTaskName() {
        return Messages.operation_createPackageProgress;
    }

    protected void initializeDefaultPosition() {
        try {
            ICompilationUnit cu = this.getCompilationUnit();
            IImportDeclaration[] imports = cu.getImports();
            if (imports.length > 0) {
                this.createBefore(imports[0]);
                return;
            }
            IType[] types = cu.getTypes();
            if (types.length > 0) {
                this.createBefore(types[0]);
                return;
            }
        }
        catch (JavaModelException javaModelException) {}
    }

    public IJavaModelStatus verify() {
        IJavaModelStatus status = super.verify();
        if (!status.isOK()) {
            return status;
        }
        IJavaProject project = this.getParentElement().getJavaProject();
        if (JavaConventions.validatePackageName(this.name, project.getOption("org.eclipse.jdt.core.compiler.source", true), project.getOption("org.eclipse.jdt.core.compiler.compliance", true)).getSeverity() == 4) {
            return new JavaModelStatus(983, this.name);
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

