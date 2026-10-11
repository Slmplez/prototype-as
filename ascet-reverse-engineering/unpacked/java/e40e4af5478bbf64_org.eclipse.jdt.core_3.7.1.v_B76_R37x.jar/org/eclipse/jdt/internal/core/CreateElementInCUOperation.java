/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.core.dom.rewrite.ListRewrite;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.text.edits.TextEdit;

public abstract class CreateElementInCUOperation
extends JavaModelOperation {
    protected CompilationUnit cuAST;
    protected static final int INSERT_LAST = 1;
    protected static final int INSERT_AFTER = 2;
    protected static final int INSERT_BEFORE = 3;
    protected int insertionPolicy = 1;
    protected IJavaElement anchorElement = null;
    protected boolean creationOccurred = true;

    public CreateElementInCUOperation(IJavaElement parentElement) {
        super(null, new IJavaElement[]{parentElement});
        this.initializeDefaultPosition();
    }

    protected void checkCanceled() {
        if (!this.isNested) {
            super.checkCanceled();
        }
    }

    public void createAfter(IJavaElement sibling) {
        this.setRelativePosition(sibling, 2);
    }

    public void createBefore(IJavaElement sibling) {
        this.setRelativePosition(sibling, 3);
    }

    protected void executeOperation() throws JavaModelException {
        try {
            this.beginTask(this.getMainTaskName(), this.getMainAmountOfWork());
            JavaElementDelta delta = this.newJavaElementDelta();
            ICompilationUnit unit = this.getCompilationUnit();
            this.generateNewCompilationUnitAST(unit);
            if (this.creationOccurred) {
                unit.save(null, false);
                boolean isWorkingCopy = unit.isWorkingCopy();
                if (!isWorkingCopy) {
                    CreateElementInCUOperation.setAttribute("hasModifiedResource", "true");
                }
                this.worked(1);
                this.resultElements = this.generateResultHandles();
                if (!isWorkingCopy && !Util.isExcluded(unit) && unit.getParent().exists()) {
                    int i = 0;
                    while (i < this.resultElements.length) {
                        delta.added(this.resultElements[i]);
                        ++i;
                    }
                    this.addDelta(delta);
                }
            }
        }
        finally {
            this.done();
        }
    }

    protected abstract StructuralPropertyDescriptor getChildPropertyDescriptor(ASTNode var1);

    protected abstract ASTNode generateElementAST(ASTRewrite var1, ICompilationUnit var2) throws JavaModelException;

    protected void generateNewCompilationUnitAST(ICompilationUnit cu) throws JavaModelException {
        this.cuAST = this.parse(cu);
        AST ast = this.cuAST.getAST();
        ASTRewrite rewriter = ASTRewrite.create(ast);
        ASTNode child = this.generateElementAST(rewriter, cu);
        if (child != null) {
            ASTNode parent = ((JavaElement)this.getParentElement()).findNode(this.cuAST);
            if (parent == null) {
                parent = this.cuAST;
            }
            this.insertASTNode(rewriter, parent, child);
            TextEdit edits = rewriter.rewriteAST();
            this.applyTextEdit(cu, edits);
        }
        this.worked(1);
    }

    protected abstract IJavaElement generateResultHandle();

    protected IJavaElement[] generateResultHandles() {
        return new IJavaElement[]{this.generateResultHandle()};
    }

    protected ICompilationUnit getCompilationUnit() {
        return this.getCompilationUnitFor(this.getParentElement());
    }

    protected int getMainAmountOfWork() {
        return 2;
    }

    public abstract String getMainTaskName();

    protected ISchedulingRule getSchedulingRule() {
        IResource resource = this.getCompilationUnit().getResource();
        IWorkspace workspace = resource.getWorkspace();
        return workspace.getRuleFactory().modifyRule(resource);
    }

    protected void initializeDefaultPosition() {
    }

    protected void insertASTNode(ASTRewrite rewriter, ASTNode parent, ASTNode child) throws JavaModelException {
        StructuralPropertyDescriptor propertyDescriptor = this.getChildPropertyDescriptor(parent);
        if (propertyDescriptor instanceof ChildListPropertyDescriptor) {
            ChildListPropertyDescriptor childListPropertyDescriptor = (ChildListPropertyDescriptor)propertyDescriptor;
            ListRewrite rewrite = rewriter.getListRewrite(parent, childListPropertyDescriptor);
            switch (this.insertionPolicy) {
                case 3: {
                    ASTNode element = ((JavaElement)this.anchorElement).findNode(this.cuAST);
                    if (childListPropertyDescriptor.getElementType().isAssignableFrom(element.getClass())) {
                        rewrite.insertBefore(child, element, null);
                        break;
                    }
                    rewrite.insertLast(child, null);
                    break;
                }
                case 2: {
                    ASTNode element = ((JavaElement)this.anchorElement).findNode(this.cuAST);
                    if (childListPropertyDescriptor.getElementType().isAssignableFrom(element.getClass())) {
                        rewrite.insertAfter(child, element, null);
                        break;
                    }
                    rewrite.insertLast(child, null);
                    break;
                }
                case 1: {
                    rewrite.insertLast(child, null);
                }
            }
        } else {
            rewriter.set(parent, propertyDescriptor, child, null);
        }
    }

    protected CompilationUnit parse(ICompilationUnit cu) throws JavaModelException {
        cu.makeConsistent(this.progressMonitor);
        ASTParser parser = ASTParser.newParser(4);
        parser.setSource(cu);
        return (CompilationUnit)parser.createAST(this.progressMonitor);
    }

    protected void setAlteredName(String newName) {
    }

    protected void setRelativePosition(IJavaElement sibling, int policy) throws IllegalArgumentException {
        if (sibling == null) {
            this.anchorElement = null;
            this.insertionPolicy = 1;
        } else {
            this.anchorElement = sibling;
            this.insertionPolicy = policy;
        }
    }

    public IJavaModelStatus verify() {
        if (this.getParentElement() == null) {
            return new JavaModelStatus(968);
        }
        if (this.anchorElement != null) {
            IJavaElement domPresentParent = this.anchorElement.getParent();
            if (domPresentParent.getElementType() == 12) {
                domPresentParent = domPresentParent.getParent();
            }
            if (!domPresentParent.equals(this.getParentElement())) {
                return new JavaModelStatus(993, this.anchorElement);
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

