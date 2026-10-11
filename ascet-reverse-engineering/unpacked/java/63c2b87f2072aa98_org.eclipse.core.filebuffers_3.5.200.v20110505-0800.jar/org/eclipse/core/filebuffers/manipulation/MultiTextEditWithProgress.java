/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.text.edits.MalformedTreeException
 *  org.eclipse.text.edits.MultiTextEdit
 *  org.eclipse.text.edits.UndoEdit
 */
package org.eclipse.core.filebuffers.manipulation;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.UndoEdit;

public class MultiTextEditWithProgress
extends MultiTextEdit {
    IProgressMonitor fProgressMonitor;
    private final String fTaskName;

    public MultiTextEditWithProgress(String taskName) {
        this.fTaskName = taskName;
    }

    public final UndoEdit apply(IDocument document, IProgressMonitor progressMonitor) throws MalformedTreeException, BadLocationException {
        return this.apply(document, 3, progressMonitor);
    }

    public final UndoEdit apply(IDocument document, int style, IProgressMonitor progressMonitor) throws MalformedTreeException, BadLocationException {
        this.fProgressMonitor = progressMonitor;
        try {
            UndoEdit undoEdit;
            int count = this.getChildrenSize();
            if ((style & 2) != 0) {
                count *= 2;
            }
            this.fProgressMonitor.beginTask(this.fTaskName, count);
            try {
                undoEdit = super.apply(document, style);
            }
            catch (Throwable throwable) {
                this.fProgressMonitor.done();
                throw throwable;
            }
            this.fProgressMonitor.done();
            return undoEdit;
        }
        finally {
            this.fProgressMonitor = null;
        }
    }

    protected void childDocumentUpdated() {
        if (this.fProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        this.fProgressMonitor.worked(1);
    }

    protected void childRegionUpdated() {
        if (this.fProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        this.fProgressMonitor.worked(1);
    }
}

