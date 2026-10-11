/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentRewriteSession
 *  org.eclipse.jface.text.DocumentRewriteSessionType
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentExtension4
 *  org.eclipse.jface.text.TextUtilities
 */
package org.eclipse.core.filebuffers.manipulation;

import java.util.Map;
import org.eclipse.core.filebuffers.IFileBuffer;
import org.eclipse.core.filebuffers.ITextFileBuffer;
import org.eclipse.core.filebuffers.manipulation.IFileBufferOperation;
import org.eclipse.core.filebuffers.manipulation.MultiTextEditWithProgress;
import org.eclipse.core.internal.filebuffers.Progress;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.DocumentRewriteSessionType;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.TextUtilities;

public abstract class TextFileBufferOperation
implements IFileBufferOperation {
    private String fOperationName;
    private DocumentRewriteSession fDocumentRewriteSession;

    protected abstract MultiTextEditWithProgress computeTextEdit(ITextFileBuffer var1, IProgressMonitor var2) throws CoreException, OperationCanceledException;

    protected abstract DocumentRewriteSessionType getDocumentRewriteSessionType();

    protected TextFileBufferOperation(String operationName) {
        this.fOperationName = operationName;
    }

    public String getOperationName() {
        return this.fOperationName;
    }

    public void run(IFileBuffer fileBuffer, IProgressMonitor progressMonitor) throws CoreException, OperationCanceledException {
        block7: {
            if (fileBuffer instanceof ITextFileBuffer) {
                ITextFileBuffer textFileBuffer = (ITextFileBuffer)fileBuffer;
                IPath path = textFileBuffer.getLocation();
                String taskName = path == null ? this.getOperationName() : path.lastSegment();
                progressMonitor = Progress.getMonitor(progressMonitor);
                progressMonitor.beginTask(taskName, 100);
                try {
                    IProgressMonitor subMonitor = Progress.getSubMonitor(progressMonitor, 10);
                    MultiTextEditWithProgress edit = this.computeTextEdit(textFileBuffer, subMonitor);
                    subMonitor.done();
                    if (edit == null) break block7;
                    Object stateData = this.startRewriteSession(textFileBuffer);
                    try {
                        subMonitor = Progress.getSubMonitor(progressMonitor, 90);
                        this.applyTextEdit(textFileBuffer, edit, subMonitor);
                        subMonitor.done();
                    }
                    finally {
                        this.stopRewriteSession(textFileBuffer, stateData);
                    }
                }
                finally {
                    progressMonitor.done();
                }
            }
        }
    }

    private Object startRewriteSession(ITextFileBuffer fileBuffer) {
        Map stateData = null;
        IDocument document = fileBuffer.getDocument();
        if (document instanceof IDocumentExtension4) {
            IDocumentExtension4 extension = (IDocumentExtension4)document;
            this.fDocumentRewriteSession = extension.startRewriteSession(this.getDocumentRewriteSessionType());
        } else {
            stateData = TextUtilities.removeDocumentPartitioners((IDocument)document);
        }
        return stateData;
    }

    private void stopRewriteSession(ITextFileBuffer fileBuffer, Object stateData) {
        IDocument document = fileBuffer.getDocument();
        if (document instanceof IDocumentExtension4) {
            IDocumentExtension4 extension = (IDocumentExtension4)document;
            extension.stopRewriteSession(this.fDocumentRewriteSession);
            this.fDocumentRewriteSession = null;
        } else if (stateData instanceof Map) {
            TextUtilities.addDocumentPartitioners((IDocument)document, (Map)((Map)stateData));
        }
    }

    private void applyTextEdit(ITextFileBuffer fileBuffer, MultiTextEditWithProgress textEdit, IProgressMonitor progressMonitor) throws CoreException, OperationCanceledException {
        try {
            textEdit.apply(fileBuffer.getDocument(), 0, progressMonitor);
        }
        catch (BadLocationException x) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.core.filebuffers", 1, "", (Throwable)x));
        }
    }
}

