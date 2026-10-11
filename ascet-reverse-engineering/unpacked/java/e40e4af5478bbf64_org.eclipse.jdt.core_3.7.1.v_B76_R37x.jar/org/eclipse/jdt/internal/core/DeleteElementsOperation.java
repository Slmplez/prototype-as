/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IRegion;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.MultiOperation;
import org.eclipse.jdt.internal.core.Region;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.text.edits.TextEdit;

public class DeleteElementsOperation
extends MultiOperation {
    protected Map childrenToRemove;
    protected ASTParser parser;

    public DeleteElementsOperation(IJavaElement[] elementsToDelete, boolean force) {
        super(elementsToDelete, force);
        this.initASTParser();
    }

    private void deleteElement(IJavaElement elementToRemove, ICompilationUnit cu) throws JavaModelException {
        cu.makeConsistent(this.progressMonitor);
        this.parser.setSource(cu);
        CompilationUnit astCU = (CompilationUnit)this.parser.createAST(this.progressMonitor);
        ASTNode node = ((JavaElement)elementToRemove).findNode(astCU);
        if (node == null) {
            Assert.isTrue((boolean)false, (String)("Failed to locate " + elementToRemove.getElementName() + " in " + cu.getElementName()));
        }
        AST ast = astCU.getAST();
        ASTRewrite rewriter = ASTRewrite.create(ast);
        rewriter.remove(node, null);
        TextEdit edits = rewriter.rewriteAST();
        this.applyTextEdit(cu, edits);
    }

    private void initASTParser() {
        this.parser = ASTParser.newParser(4);
    }

    protected String getMainTaskName() {
        return Messages.operation_deleteElementProgress;
    }

    protected ISchedulingRule getSchedulingRule() {
        IResource resource;
        if (this.elementsToProcess != null && this.elementsToProcess.length == 1 && (resource = this.elementsToProcess[0].getResource()) != null) {
            return ResourcesPlugin.getWorkspace().getRuleFactory().modifyRule(resource);
        }
        return super.getSchedulingRule();
    }

    protected void groupElements() throws JavaModelException {
        this.childrenToRemove = new HashMap(1);
        int uniqueCUs = 0;
        int i = 0;
        int length = this.elementsToProcess.length;
        while (i < length) {
            IJavaElement e = this.elementsToProcess[i];
            ICompilationUnit cu = this.getCompilationUnitFor(e);
            if (cu == null) {
                throw new JavaModelException(new JavaModelStatus(976, e));
            }
            IRegion region = (IRegion)this.childrenToRemove.get(cu);
            if (region == null) {
                region = new Region();
                this.childrenToRemove.put(cu, region);
                ++uniqueCUs;
            }
            region.add(e);
            ++i;
        }
        this.elementsToProcess = new IJavaElement[uniqueCUs];
        Iterator iter = this.childrenToRemove.keySet().iterator();
        int i2 = 0;
        while (iter.hasNext()) {
            this.elementsToProcess[i2++] = (IJavaElement)iter.next();
        }
    }

    protected void processElement(IJavaElement element) throws JavaModelException {
        ICompilationUnit cu = (ICompilationUnit)element;
        int numberOfImports = cu.getImports().length;
        JavaElementDelta delta = new JavaElementDelta(cu);
        IJavaElement[] cuElements = ((IRegion)this.childrenToRemove.get(cu)).getElements();
        int i = 0;
        int length = cuElements.length;
        while (i < length) {
            IJavaElement e = cuElements[i];
            if (e.exists()) {
                this.deleteElement(e, cu);
                delta.removed(e);
                if (e.getElementType() == 13 && --numberOfImports == 0) {
                    delta.removed(cu.getImportContainer());
                }
            }
            ++i;
        }
        if (delta.getAffectedChildren().length > 0) {
            cu.save(this.getSubProgressMonitor(1), this.force);
            if (!cu.isWorkingCopy()) {
                this.addDelta(delta);
                DeleteElementsOperation.setAttribute("hasModifiedResource", "true");
            }
        }
    }

    protected void processElements() throws JavaModelException {
        this.groupElements();
        super.processElements();
    }

    protected void verify(IJavaElement element) throws JavaModelException {
        IJavaElement[] children = ((IRegion)this.childrenToRemove.get(element)).getElements();
        int i = 0;
        while (i < children.length) {
            IJavaElement child = children[i];
            if (child.getCorrespondingResource() != null) {
                this.error(967, child);
            }
            if (child.isReadOnly()) {
                this.error(976, child);
            }
            ++i;
        }
    }
}

