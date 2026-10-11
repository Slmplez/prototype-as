/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.MoveResourceElementsOperation;
import org.eclipse.jdt.internal.core.util.Messages;

public class RenameResourceElementsOperation
extends MoveResourceElementsOperation {
    public RenameResourceElementsOperation(IJavaElement[] elements, IJavaElement[] destinations, String[] newNames, boolean force) {
        super(elements, destinations, force);
        this.setRenamings(newNames);
    }

    protected String getMainTaskName() {
        return Messages.operation_renameResourceProgress;
    }

    protected boolean isRename() {
        return true;
    }

    protected void verify(IJavaElement element) throws JavaModelException {
        CompilationUnit cu;
        super.verify(element);
        int elementType = element.getElementType();
        if (elementType != 5 && elementType != 4) {
            this.error(967, element);
        }
        if (elementType == 5 && (cu = (CompilationUnit)element).isWorkingCopy() && !cu.isPrimary()) {
            this.error(967, element);
        }
        this.verifyRenaming(element);
    }
}

