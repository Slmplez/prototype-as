/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 */
package org.eclipse.core.internal.filebuffers;

import java.io.IOException;
import java.io.Reader;
import org.eclipse.core.internal.filebuffers.FileBuffersMessages;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;

class DocumentReader
extends Reader {
    private volatile CharSequence fCharSequence;
    private int fLength;
    private int fOffset = 0;
    private IDocument fDocument;
    private IDocumentListener fDocumentListener = new InternalDocumentListener();

    public DocumentReader(IDocument document) {
        Assert.isNotNull((Object)document);
        this.fDocument = document;
        this.fCharSequence = new DocumentCharSequence(this.fDocument);
        this.fDocument.addDocumentListener(this.fDocumentListener);
        this.fLength = this.fCharSequence.length();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void close() throws IOException {
        DocumentReader documentReader = this;
        synchronized (documentReader) {
            this.fCharSequence = null;
        }
        this.releaseDocument();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void handleDocumentAboutToBeChanged() {
        IDocument document = this.fDocument;
        if (this.fCharSequence == null || document == null) {
            return;
        }
        String content = document.get();
        DocumentReader documentReader = this;
        synchronized (documentReader) {
            if (this.fCharSequence == null) {
                return;
            }
            this.fCharSequence = content;
        }
        this.releaseDocument();
    }

    private synchronized void releaseDocument() {
        if (this.fDocument != null) {
            this.fDocument.removeDocumentListener(this.fDocumentListener);
        }
        this.fDocument = null;
        this.fDocumentListener = null;
    }

    public int read(char[] cbuf, int off, int len) throws IOException {
        int i = 0;
        try {
            while (i < len && this.fOffset < this.fLength) {
                cbuf[off + i] = this.fCharSequence.charAt(this.fOffset++);
                ++i;
            }
            if (i > 0) {
                return i;
            }
            return -1;
        }
        catch (NullPointerException nullPointerException) {
            throw new IOException(FileBuffersMessages.DocumentInputStream_error_streamClosed);
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {
            return i - 1;
        }
    }

    private static class DocumentCharSequence
    implements CharSequence {
        private IDocument fDocument;

        public DocumentCharSequence(IDocument document) {
            this.fDocument = document;
        }

        public int length() {
            return this.fDocument.getLength();
        }

        public char charAt(int index) {
            try {
                return this.fDocument.getChar(index);
            }
            catch (BadLocationException x) {
                throw new IndexOutOfBoundsException(x.getLocalizedMessage());
            }
        }

        public CharSequence subSequence(int start, int end) {
            try {
                return this.fDocument.get(start, end - start);
            }
            catch (BadLocationException x) {
                throw new IndexOutOfBoundsException(x.getLocalizedMessage());
            }
        }
    }

    private class InternalDocumentListener
    implements IDocumentListener {
        private InternalDocumentListener() {
        }

        public void documentAboutToBeChanged(DocumentEvent event) {
            DocumentReader.this.handleDocumentAboutToBeChanged();
        }

        public void documentChanged(DocumentEvent event) {
        }
    }
}

