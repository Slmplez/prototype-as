/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.UndoEdit;

class UndoCollector
implements IDocumentListener {
    protected UndoEdit undo;
    private int fOffset;
    private int fLength;
    private String fLastCurrentText;

    public UndoCollector(TextEdit root) {
        this.fOffset = root.getOffset();
        this.fLength = root.getLength();
    }

    public void connect(IDocument document) {
        document.addDocumentListener(this);
        this.undo = new UndoEdit();
    }

    public void disconnect(IDocument document) {
        if (this.undo != null) {
            document.removeDocumentListener(this);
            this.undo.defineRegion(this.fOffset, this.fLength);
        }
    }

    public void documentChanged(DocumentEvent event) {
        this.fLength += UndoCollector.getDelta(event);
    }

    private static int getDelta(DocumentEvent event) {
        String text = event.getText();
        return text == null ? -event.getLength() : text.length() - event.getLength();
    }

    public void documentAboutToBeChanged(DocumentEvent event) {
        int offset = event.getOffset();
        int currentLength = event.getLength();
        String currentText = null;
        try {
            currentText = event.getDocument().get(offset, currentLength);
        }
        catch (BadLocationException badLocationException) {
            Assert.isTrue((boolean)false, (String)"Can't happen");
        }
        if (this.fLastCurrentText != null && this.fLastCurrentText.equals(currentText)) {
            currentText = this.fLastCurrentText;
        } else {
            this.fLastCurrentText = currentText;
        }
        String newText = event.getText();
        this.undo.add(new ReplaceEdit(offset, newText != null ? newText.length() : 0, currentText));
    }
}

