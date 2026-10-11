/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DefaultLineTracker
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.IRepairableDocument
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.custom.StyledTextContent
 *  org.eclipse.swt.custom.TextChangeListener
 *  org.eclipse.swt.custom.TextChangedEvent
 *  org.eclipse.swt.custom.TextChangingEvent
 */
package org.eclipse.jface.text;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DefaultLineTracker;
import org.eclipse.jface.text.DocumentClone;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentAdapter;
import org.eclipse.jface.text.IDocumentAdapterExtension;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRepairableDocument;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.TextChangeListener;
import org.eclipse.swt.custom.TextChangedEvent;
import org.eclipse.swt.custom.TextChangingEvent;

class DefaultDocumentAdapter
implements IDocumentAdapter,
IDocumentListener,
IDocumentAdapterExtension {
    private IDocument fDocument;
    private IDocument fDocumentClone;
    private String fOriginalContent;
    private String[] fOriginalLineDelimiters;
    private List fTextChangeListeners = new ArrayList(1);
    private DocumentEvent fEvent;
    private String fLineDelimiter = null;
    private boolean fIsForwarding = true;
    private int fRememberedLengthOfDocument;
    private int fRememberedLengthOfFirstLine;
    private DocumentEvent fOriginalEvent = new DocumentEvent();

    public void setDocument(IDocument document) {
        if (this.fDocument != null) {
            this.fDocument.removePrenotifiedDocumentListener((IDocumentListener)this);
        }
        this.fDocument = document;
        this.fLineDelimiter = null;
        if (!this.fIsForwarding) {
            this.fDocumentClone = null;
            if (this.fDocument != null) {
                this.fOriginalContent = this.fDocument.get();
                this.fOriginalLineDelimiters = this.fDocument.getLegalLineDelimiters();
            } else {
                this.fOriginalContent = null;
                this.fOriginalLineDelimiters = null;
            }
        }
        if (this.fDocument != null) {
            this.fDocument.addPrenotifiedDocumentListener((IDocumentListener)this);
        }
    }

    public void addTextChangeListener(TextChangeListener listener) {
        Assert.isNotNull((Object)listener);
        if (!this.fTextChangeListeners.contains(listener)) {
            this.fTextChangeListeners.add(listener);
        }
    }

    public void removeTextChangeListener(TextChangeListener listener) {
        Assert.isNotNull((Object)listener);
        this.fTextChangeListeners.remove(listener);
    }

    private void repairLineInformation(IDocument document) {
        if (document instanceof IRepairableDocument) {
            IRepairableDocument repairable = (IRepairableDocument)document;
            repairable.repairLineInformation();
        }
    }

    private String doGetLine(IDocument document, int line) throws BadLocationException {
        IRegion r = document.getLineInformation(line);
        return document.get(r.getOffset(), r.getLength());
    }

    private IDocument getDocumentForRead() {
        if (!this.fIsForwarding) {
            if (this.fDocumentClone == null) {
                String content = this.fOriginalContent == null ? "" : this.fOriginalContent;
                String[] delims = this.fOriginalLineDelimiters == null ? DefaultLineTracker.DELIMITERS : this.fOriginalLineDelimiters;
                this.fDocumentClone = new DocumentClone(content, delims);
            }
            return this.fDocumentClone;
        }
        return this.fDocument;
    }

    public String getLine(int line) {
        IDocument document = this.getDocumentForRead();
        try {
            return this.doGetLine(document, line);
        }
        catch (BadLocationException badLocationException) {
            this.repairLineInformation(document);
            try {
                return this.doGetLine(document, line);
            }
            catch (BadLocationException badLocationException2) {
                SWT.error((int)5);
                return null;
            }
        }
    }

    public int getLineAtOffset(int offset) {
        IDocument document = this.getDocumentForRead();
        try {
            return document.getLineOfOffset(offset);
        }
        catch (BadLocationException badLocationException) {
            this.repairLineInformation(document);
            try {
                return document.getLineOfOffset(offset);
            }
            catch (BadLocationException badLocationException2) {
                SWT.error((int)5);
                return -1;
            }
        }
    }

    public int getLineCount() {
        return this.getDocumentForRead().getNumberOfLines();
    }

    public int getOffsetAtLine(int line) {
        IDocument document = this.getDocumentForRead();
        try {
            return document.getLineOffset(line);
        }
        catch (BadLocationException badLocationException) {
            this.repairLineInformation(document);
            try {
                return document.getLineOffset(line);
            }
            catch (BadLocationException badLocationException2) {
                SWT.error((int)5);
                return -1;
            }
        }
    }

    public String getTextRange(int offset, int length) {
        try {
            return this.getDocumentForRead().get(offset, length);
        }
        catch (BadLocationException badLocationException) {
            SWT.error((int)5);
            return null;
        }
    }

    public void replaceTextRange(int pos, int length, String text) {
        try {
            this.fDocument.replace(pos, length, text);
        }
        catch (BadLocationException badLocationException) {
            SWT.error((int)5);
        }
    }

    public void setText(String text) {
        this.fDocument.set(text);
    }

    public int getCharCount() {
        return this.getDocumentForRead().getLength();
    }

    public String getLineDelimiter() {
        if (this.fLineDelimiter == null) {
            this.fLineDelimiter = TextUtilities.getDefaultLineDelimiter((IDocument)this.fDocument);
        }
        return this.fLineDelimiter;
    }

    public void documentChanged(DocumentEvent event) {
        if (this.fEvent == null || event != this.fEvent) {
            return;
        }
        if (this.isPatchedEvent(event) || event.getOffset() == 0 && event.getLength() == this.fRememberedLengthOfDocument) {
            this.fLineDelimiter = null;
            this.fireTextSet();
        } else {
            if (event.getOffset() < this.fRememberedLengthOfFirstLine) {
                this.fLineDelimiter = null;
            }
            this.fireTextChanged();
        }
    }

    public void documentAboutToBeChanged(DocumentEvent event) {
        this.fRememberedLengthOfDocument = this.fDocument.getLength();
        try {
            this.fRememberedLengthOfFirstLine = this.fDocument.getLineLength(0);
        }
        catch (BadLocationException badLocationException) {
            this.fRememberedLengthOfFirstLine = -1;
        }
        this.fEvent = event;
        this.rememberEventData(this.fEvent);
        this.fireTextChanging();
    }

    private boolean isPatchedEvent(DocumentEvent event) {
        return this.fOriginalEvent.fOffset != event.fOffset || this.fOriginalEvent.fLength != event.fLength || this.fOriginalEvent.fText != event.fText;
    }

    private void rememberEventData(DocumentEvent event) {
        this.fOriginalEvent.fOffset = event.fOffset;
        this.fOriginalEvent.fLength = event.fLength;
        this.fOriginalEvent.fText = event.fText;
    }

    private void fireTextChanged() {
        if (!this.fIsForwarding) {
            return;
        }
        TextChangedEvent event = new TextChangedEvent((StyledTextContent)this);
        if (this.fTextChangeListeners != null && this.fTextChangeListeners.size() > 0) {
            Iterator e = new ArrayList(this.fTextChangeListeners).iterator();
            while (e.hasNext()) {
                ((TextChangeListener)e.next()).textChanged(event);
            }
        }
    }

    private void fireTextSet() {
        if (!this.fIsForwarding) {
            return;
        }
        TextChangedEvent event = new TextChangedEvent((StyledTextContent)this);
        if (this.fTextChangeListeners != null && this.fTextChangeListeners.size() > 0) {
            Iterator e = new ArrayList(this.fTextChangeListeners).iterator();
            while (e.hasNext()) {
                ((TextChangeListener)e.next()).textSet(event);
            }
        }
    }

    private void fireTextChanging() {
        if (!this.fIsForwarding) {
            return;
        }
        try {
            IDocument document = this.fEvent.getDocument();
            if (document == null) {
                return;
            }
            TextChangingEvent event = new TextChangingEvent((StyledTextContent)this);
            event.start = this.fEvent.fOffset;
            event.replaceCharCount = this.fEvent.fLength;
            event.replaceLineCount = document.getNumberOfLines(this.fEvent.fOffset, this.fEvent.fLength) - 1;
            event.newText = this.fEvent.fText;
            event.newCharCount = this.fEvent.fText == null ? 0 : this.fEvent.fText.length();
            int n = event.newLineCount = this.fEvent.fText == null ? 0 : document.computeNumberOfLines(this.fEvent.fText);
            if (this.fTextChangeListeners != null && this.fTextChangeListeners.size() > 0) {
                Iterator e = new ArrayList(this.fTextChangeListeners).iterator();
                while (e.hasNext()) {
                    ((TextChangeListener)e.next()).textChanging(event);
                }
            }
        }
        catch (BadLocationException badLocationException) {}
    }

    public void resumeForwardingDocumentChanges() {
        this.fIsForwarding = true;
        this.fDocumentClone = null;
        this.fOriginalContent = null;
        this.fOriginalLineDelimiters = null;
        this.fireTextSet();
    }

    public void stopForwardingDocumentChanges() {
        this.fDocumentClone = null;
        this.fOriginalContent = this.fDocument.get();
        this.fOriginalLineDelimiters = this.fDocument.getLegalLineDelimiters();
        this.fIsForwarding = false;
    }
}

