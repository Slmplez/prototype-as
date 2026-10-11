/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentRewriteSessionType
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.text.edits.ReplaceEdit
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.core.filebuffers.manipulation;

import org.eclipse.core.filebuffers.ITextFileBuffer;
import org.eclipse.core.filebuffers.manipulation.FileBuffersMessages;
import org.eclipse.core.filebuffers.manipulation.MultiTextEditWithProgress;
import org.eclipse.core.filebuffers.manipulation.TextFileBufferOperation;
import org.eclipse.core.internal.filebuffers.Progress;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentRewriteSessionType;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;

public class ConvertLineDelimitersOperation
extends TextFileBufferOperation {
    private String fLineDelimiter;

    public ConvertLineDelimitersOperation(String lineDelimiter) {
        super(FileBuffersMessages.ConvertLineDelimitersOperation_name);
        this.fLineDelimiter = lineDelimiter;
    }

    protected MultiTextEditWithProgress computeTextEdit(ITextFileBuffer fileBuffer, IProgressMonitor progressMonitor) throws CoreException {
        IDocument document = fileBuffer.getDocument();
        int lineCount = document.getNumberOfLines();
        progressMonitor = Progress.getMonitor(progressMonitor);
        progressMonitor.beginTask(FileBuffersMessages.ConvertLineDelimitersOperation_task_generatingChanges, lineCount);
        try {
            MultiTextEditWithProgress multiEdit = new MultiTextEditWithProgress(FileBuffersMessages.ConvertLineDelimitersOperation_task_applyingChanges);
            int i = 0;
            while (i < lineCount) {
                if (progressMonitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                String delimiter = document.getLineDelimiter(i);
                if (delimiter != null && delimiter.length() > 0 && !delimiter.equals(this.fLineDelimiter)) {
                    IRegion region = document.getLineInformation(i);
                    multiEdit.addChild((TextEdit)new ReplaceEdit(region.getOffset() + region.getLength(), delimiter.length(), this.fLineDelimiter));
                }
                progressMonitor.worked(1);
                ++i;
            }
            MultiTextEditWithProgress multiTextEditWithProgress = multiEdit.getChildrenSize() <= 0 ? null : multiEdit;
            return multiTextEditWithProgress;
        }
        catch (BadLocationException x) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.core.filebuffers", 1, "", (Throwable)x));
        }
        finally {
            progressMonitor.done();
        }
    }

    protected DocumentRewriteSessionType getDocumentRewriteSessionType() {
        return DocumentRewriteSessionType.SEQUENTIAL;
    }
}

