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
 *  org.eclipse.text.edits.DeleteEdit
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
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.TextEdit;

public class RemoveTrailingWhitespaceOperation
extends TextFileBufferOperation {
    public RemoveTrailingWhitespaceOperation() {
        super(FileBuffersMessages.RemoveTrailingWhitespaceOperation_name);
    }

    protected MultiTextEditWithProgress computeTextEdit(ITextFileBuffer fileBuffer, IProgressMonitor progressMonitor) throws CoreException {
        IDocument document = fileBuffer.getDocument();
        int lineCount = document.getNumberOfLines();
        progressMonitor = Progress.getMonitor(progressMonitor);
        progressMonitor.beginTask(FileBuffersMessages.RemoveTrailingWhitespaceOperation_task_generatingChanges, lineCount);
        try {
            MultiTextEditWithProgress multiEdit = new MultiTextEditWithProgress(FileBuffersMessages.RemoveTrailingWhitespaceOperation_task_applyingChanges);
            int i = 0;
            while (i < lineCount) {
                if (progressMonitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                IRegion region = document.getLineInformation(i);
                if (region.getLength() != 0) {
                    int lineStart = region.getOffset();
                    int lineExclusiveEnd = lineStart + region.getLength();
                    int j = lineExclusiveEnd - 1;
                    while (j >= lineStart && Character.isWhitespace(document.getChar(j))) {
                        --j;
                    }
                    if (++j < lineExclusiveEnd) {
                        multiEdit.addChild((TextEdit)new DeleteEdit(j, lineExclusiveEnd - j));
                    }
                    progressMonitor.worked(1);
                }
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

