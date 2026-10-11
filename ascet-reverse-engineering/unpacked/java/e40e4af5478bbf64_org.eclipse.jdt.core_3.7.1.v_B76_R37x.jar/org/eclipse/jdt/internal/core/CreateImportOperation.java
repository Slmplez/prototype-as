/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.Iterator;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.CreateElementInCUOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Messages;

public class CreateImportOperation
extends CreateElementInCUOperation {
    protected String importName;
    protected int flags;

    public CreateImportOperation(String importName, ICompilationUnit parentElement, int flags) {
        super(parentElement);
        this.importName = importName;
        this.flags = flags;
    }

    protected StructuralPropertyDescriptor getChildPropertyDescriptor(ASTNode parent) {
        return CompilationUnit.IMPORTS_PROPERTY;
    }

    protected ASTNode generateElementAST(ASTRewrite rewriter, ICompilationUnit cu) throws JavaModelException {
        Iterator imports = this.cuAST.imports().iterator();
        boolean onDemand = this.importName.endsWith(".*");
        String importActualName = this.importName;
        if (onDemand) {
            importActualName = this.importName.substring(0, this.importName.length() - 2);
        }
        while (imports.hasNext()) {
            ImportDeclaration importDeclaration = (ImportDeclaration)imports.next();
            if (!importActualName.equals(importDeclaration.getName().getFullyQualifiedName()) || onDemand != importDeclaration.isOnDemand() || Flags.isStatic(this.flags) != importDeclaration.isStatic()) continue;
            this.creationOccurred = false;
            return null;
        }
        AST ast = this.cuAST.getAST();
        ImportDeclaration importDeclaration = ast.newImportDeclaration();
        importDeclaration.setStatic(Flags.isStatic(this.flags));
        char[][] charFragments = CharOperation.splitOn('.', importActualName.toCharArray(), 0, importActualName.length());
        int length = charFragments.length;
        String[] strFragments = new String[length];
        int i = 0;
        while (i < length) {
            strFragments[i] = String.valueOf(charFragments[i]);
            ++i;
        }
        Name name = ast.newName(strFragments);
        importDeclaration.setName(name);
        if (onDemand) {
            importDeclaration.setOnDemand(true);
        }
        return importDeclaration;
    }

    protected IJavaElement generateResultHandle() {
        return this.getCompilationUnit().getImport(this.importName);
    }

    public String getMainTaskName() {
        return Messages.operation_createImportsProgress;
    }

    protected void initializeDefaultPosition() {
        try {
            ICompilationUnit cu = this.getCompilationUnit();
            IImportDeclaration[] imports = cu.getImports();
            if (imports.length > 0) {
                this.createAfter(imports[imports.length - 1]);
                return;
            }
            IType[] types = cu.getTypes();
            if (types.length > 0) {
                this.createBefore(types[0]);
                return;
            }
            IJavaElement[] children = cu.getChildren();
            int i = 0;
            while (i < children.length) {
                if (children[i].getElementType() == 11) {
                    this.createAfter(children[i]);
                    return;
                }
                ++i;
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
        if (JavaConventions.validateImportDeclaration(this.importName, project.getOption("org.eclipse.jdt.core.compiler.source", true), project.getOption("org.eclipse.jdt.core.compiler.compliance", true)).getSeverity() == 4) {
            return new JavaModelStatus(983, this.importName);
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

