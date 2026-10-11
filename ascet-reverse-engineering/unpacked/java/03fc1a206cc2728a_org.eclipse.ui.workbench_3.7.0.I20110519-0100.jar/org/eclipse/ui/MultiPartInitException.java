/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.WorkbenchException;

public class MultiPartInitException
extends WorkbenchException {
    private IWorkbenchPartReference[] references;
    private PartInitException[] exceptions;
    private static final long serialVersionUID = -9138185942975165490L;

    public MultiPartInitException(IWorkbenchPartReference[] references, PartInitException[] exceptions) {
        super(exceptions[MultiPartInitException.findSingleException(exceptions)].getStatus());
        this.references = references;
        this.exceptions = exceptions;
    }

    public IWorkbenchPartReference[] getReferences() {
        return this.references;
    }

    public PartInitException[] getExceptions() {
        return this.exceptions;
    }

    private static int findSingleException(PartInitException[] exceptions) {
        int index = -1;
        int i = 0;
        while (i < exceptions.length) {
            if (exceptions[i] != null) {
                if (index == -1) {
                    index = i;
                } else {
                    throw new IllegalArgumentException();
                }
            }
            ++i;
        }
        if (index == -1) {
            throw new IllegalArgumentException();
        }
        return index;
    }
}

