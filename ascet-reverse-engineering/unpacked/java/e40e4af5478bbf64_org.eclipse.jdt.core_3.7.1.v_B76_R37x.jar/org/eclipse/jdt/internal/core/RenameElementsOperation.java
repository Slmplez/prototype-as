/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.MoveElementsOperation;
import org.eclipse.jdt.internal.core.util.Messages;

public class RenameElementsOperation
extends MoveElementsOperation {
    public RenameElementsOperation(IJavaElement[] elements, IJavaElement[] destinations, String[] newNames, boolean force) {
        super(elements, destinations, force);
        this.setRenamings(newNames);
    }

    protected String getMainTaskName() {
        return Messages.operation_renameElementProgress;
    }

    protected boolean isRename() {
        return true;
    }

    protected IJavaModelStatus verify() {
        IJavaModelStatus status = super.verify();
        if (!status.isOK()) {
            return status;
        }
        if (this.renamingsList == null || this.renamingsList.length == 0) {
            return new JavaModelStatus(982);
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    protected void verify(IJavaElement element) throws JavaModelException {
        int elementType;
        if (element == null || !element.exists()) {
            this.error(969, element);
        }
        if (element.isReadOnly()) {
            this.error(976, element);
        }
        if (!(element instanceof ISourceReference)) {
            this.error(967, element);
        }
        if ((elementType = element.getElementType()) < 7 || elementType == 10) {
            this.error(967, element);
        }
        this.verifyRenaming(element);
    }
}

