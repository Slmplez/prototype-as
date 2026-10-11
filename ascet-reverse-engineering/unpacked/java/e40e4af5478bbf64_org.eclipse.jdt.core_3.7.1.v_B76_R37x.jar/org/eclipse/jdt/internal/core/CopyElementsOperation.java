/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.CreateElementInCUOperation;
import org.eclipse.jdt.internal.core.CreateFieldOperation;
import org.eclipse.jdt.internal.core.CreateImportOperation;
import org.eclipse.jdt.internal.core.CreateInitializerOperation;
import org.eclipse.jdt.internal.core.CreateMethodOperation;
import org.eclipse.jdt.internal.core.CreatePackageDeclarationOperation;
import org.eclipse.jdt.internal.core.CreateTypeOperation;
import org.eclipse.jdt.internal.core.DeleteElementsOperation;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.MultiOperation;
import org.eclipse.jdt.internal.core.RenameResourceElementsOperation;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CopyElementsOperation
extends MultiOperation
implements SuffixConstants {
    private Map sources = new HashMap();

    public CopyElementsOperation(IJavaElement[] elementsToCopy, IJavaElement[] destContainers, boolean force) {
        super(elementsToCopy, destContainers, force);
    }

    public CopyElementsOperation(IJavaElement[] elementsToCopy, IJavaElement destContainer, boolean force) {
        this(elementsToCopy, new IJavaElement[]{destContainer}, force);
    }

    protected String getMainTaskName() {
        return Messages.operation_copyElementProgress;
    }

    protected JavaModelOperation getNestedOperation(IJavaElement element) {
        try {
            IJavaElement dest = this.getDestinationParent(element);
            switch (element.getElementType()) {
                case 11: {
                    return new CreatePackageDeclarationOperation(element.getElementName(), (ICompilationUnit)dest);
                }
                case 13: {
                    IImportDeclaration importDeclaration = (IImportDeclaration)element;
                    return new CreateImportOperation(element.getElementName(), (ICompilationUnit)dest, importDeclaration.getFlags());
                }
                case 7: {
                    if (this.isRenamingMainType(element, dest)) {
                        IPath path = element.getPath();
                        String extension = path.getFileExtension();
                        return new RenameResourceElementsOperation(new IJavaElement[]{dest}, new IJavaElement[]{dest.getParent()}, new String[]{String.valueOf(this.getNewNameFor(element)) + '.' + extension}, this.force);
                    }
                    String source = this.getSourceFor(element);
                    String lineSeparator = Util.getLineSeparator(source, element.getJavaProject());
                    return new CreateTypeOperation(dest, String.valueOf(source) + lineSeparator, this.force);
                }
                case 9: {
                    String source = this.getSourceFor(element);
                    String lineSeparator = Util.getLineSeparator(source, element.getJavaProject());
                    return new CreateMethodOperation((IType)dest, String.valueOf(source) + lineSeparator, this.force);
                }
                case 8: {
                    String source = this.getSourceFor(element);
                    String lineSeparator = Util.getLineSeparator(source, element.getJavaProject());
                    return new CreateFieldOperation((IType)dest, String.valueOf(source) + lineSeparator, this.force);
                }
                case 10: {
                    String source = this.getSourceFor(element);
                    String lineSeparator = Util.getLineSeparator(source, element.getJavaProject());
                    return new CreateInitializerOperation((IType)dest, String.valueOf(source) + lineSeparator);
                }
            }
            return null;
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    private String getSourceFor(IJavaElement element) throws JavaModelException {
        String source = (String)this.sources.get(element);
        if (source == null && element instanceof IMember) {
            source = ((IMember)element).getSource();
            this.sources.put(element, source);
        }
        return source;
    }

    protected boolean isRenamingMainType(IJavaElement element, IJavaElement dest) throws JavaModelException {
        if ((this.isRename() || this.getNewNameFor(element) != null) && dest.getElementType() == 5) {
            String typeName = dest.getElementName();
            typeName = Util.getNameWithoutJavaLikeExtension(typeName);
            return element.getElementName().equals(typeName) && element.getParent().equals(dest);
        }
        return false;
    }

    protected void processElement(IJavaElement element) throws JavaModelException {
        JavaModelOperation op = this.getNestedOperation(element);
        boolean createElementInCUOperation = op instanceof CreateElementInCUOperation;
        if (op == null) {
            return;
        }
        if (createElementInCUOperation) {
            IJavaElement anchor;
            IJavaElement sibling = (IJavaElement)this.insertBeforeElements.get(element);
            if (sibling != null) {
                ((CreateElementInCUOperation)op).setRelativePosition(sibling, 3);
            } else if (this.isRename() && (anchor = this.resolveRenameAnchor(element)) != null) {
                ((CreateElementInCUOperation)op).setRelativePosition(anchor, 2);
            }
            String newName = this.getNewNameFor(element);
            if (newName != null) {
                ((CreateElementInCUOperation)op).setAlteredName(newName);
            }
        }
        this.executeNestedOperation(op, 1);
        JavaElement destination = (JavaElement)this.getDestinationParent(element);
        ICompilationUnit unit = destination.getCompilationUnit();
        if (!unit.isWorkingCopy()) {
            unit.close();
        }
        if (createElementInCUOperation && this.isMove() && !this.isRenamingMainType(element, destination)) {
            DeleteElementsOperation deleteOp = new DeleteElementsOperation(new IJavaElement[]{element}, this.force);
            this.executeNestedOperation(deleteOp, 1);
        }
    }

    private IJavaElement resolveRenameAnchor(IJavaElement element) throws JavaModelException {
        IParent parent = (IParent)((Object)element.getParent());
        IJavaElement[] children = parent.getChildren();
        int i = 0;
        while (i < children.length) {
            IJavaElement child = children[i];
            if (child.equals(element)) {
                return child;
            }
            ++i;
        }
        return null;
    }

    protected IJavaModelStatus verify() {
        IJavaModelStatus status = super.verify();
        if (!status.isOK()) {
            return status;
        }
        if (this.renamingsList != null && this.renamingsList.length != this.elementsToProcess.length) {
            return new JavaModelStatus(980);
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    protected void verify(IJavaElement element) throws JavaModelException {
        if (element == null || !element.exists()) {
            this.error(969, element);
        }
        if (element.getElementType() < 7) {
            this.error(967, element);
        }
        if (element.isReadOnly()) {
            this.error(976, element);
        }
        IJavaElement dest = this.getDestinationParent(element);
        this.verifyDestination(element, dest);
        this.verifySibling(element, dest);
        if (this.renamingsList != null) {
            this.verifyRenaming(element);
        }
    }
}

