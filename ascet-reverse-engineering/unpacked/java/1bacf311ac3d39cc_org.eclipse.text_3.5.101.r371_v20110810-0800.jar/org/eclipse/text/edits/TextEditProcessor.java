/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditMessages;
import org.eclipse.text.edits.UndoCollector;
import org.eclipse.text.edits.UndoEdit;

public class TextEditProcessor {
    private IDocument fDocument;
    private TextEdit fRoot;
    private int fStyle;
    private boolean fChecked;
    private MalformedTreeException fException;
    private List fSourceEdits;

    public TextEditProcessor(IDocument document, TextEdit root, int style) {
        this(document, root, style, false);
    }

    private TextEditProcessor(IDocument document, TextEdit root, int style, boolean secondary) {
        Assert.isNotNull((Object)document);
        Assert.isNotNull((Object)root);
        this.fDocument = document;
        this.fRoot = root;
        if (this.fRoot instanceof MultiTextEdit) {
            ((MultiTextEdit)this.fRoot).defineRegion(0);
        }
        this.fStyle = style;
        if (secondary) {
            this.fChecked = true;
            this.fSourceEdits = new ArrayList();
        }
    }

    static TextEditProcessor createSourceComputationProcessor(IDocument document, TextEdit root, int style) {
        return new TextEditProcessor(document, root, style, true);
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    public TextEdit getRoot() {
        return this.fRoot;
    }

    public int getStyle() {
        return this.fStyle;
    }

    public boolean canPerformEdits() {
        try {
            this.fRoot.dispatchCheckIntegrity(this);
            this.fChecked = true;
        }
        catch (MalformedTreeException e) {
            this.fException = e;
            return false;
        }
        return true;
    }

    public UndoEdit performEdits() throws MalformedTreeException, BadLocationException {
        if (!this.fChecked) {
            this.fRoot.dispatchCheckIntegrity(this);
        } else if (this.fException != null) {
            throw this.fException;
        }
        return this.fRoot.dispatchPerformEdits(this);
    }

    protected boolean considerEdit(TextEdit edit) {
        return true;
    }

    void checkIntegrityDo() throws MalformedTreeException {
        this.fSourceEdits = new ArrayList();
        this.fRoot.traverseConsistencyCheck(this, this.fDocument, this.fSourceEdits);
        if (this.fRoot.getExclusiveEnd() > this.fDocument.getLength()) {
            throw new MalformedTreeException(null, this.fRoot, TextEditMessages.getString("TextEditProcessor.invalid_length"));
        }
    }

    void checkIntegrityUndo() {
        if (this.fRoot.getExclusiveEnd() > this.fDocument.getLength()) {
            throw new MalformedTreeException(null, this.fRoot, TextEditMessages.getString("TextEditProcessor.invalid_length"));
        }
    }

    UndoEdit executeDo() throws BadLocationException {
        UndoCollector collector = new UndoCollector(this.fRoot);
        try {
            if (this.createUndo()) {
                collector.connect(this.fDocument);
            }
            this.computeSources();
            this.fRoot.traverseDocumentUpdating(this, this.fDocument);
            if (this.updateRegions()) {
                this.fRoot.traverseRegionUpdating(this, this.fDocument, 0, false);
            }
        }
        finally {
            collector.disconnect(this.fDocument);
        }
        return collector.undo;
    }

    private void computeSources() {
        Iterator iter = this.fSourceEdits.iterator();
        while (iter.hasNext()) {
            List list = (List)iter.next();
            if (list == null) continue;
            Iterator edits = list.iterator();
            while (edits.hasNext()) {
                TextEdit edit = (TextEdit)edits.next();
                edit.traverseSourceComputation(this, this.fDocument);
            }
        }
    }

    UndoEdit executeUndo() throws BadLocationException {
        UndoCollector collector = new UndoCollector(this.fRoot);
        try {
            if (this.createUndo()) {
                collector.connect(this.fDocument);
            }
            TextEdit[] edits = this.fRoot.getChildren();
            int i = edits.length - 1;
            while (i >= 0) {
                edits[i].performDocumentUpdating(this.fDocument);
                --i;
            }
        }
        finally {
            collector.disconnect(this.fDocument);
        }
        return collector.undo;
    }

    private boolean createUndo() {
        return (this.fStyle & 1) != 0;
    }

    private boolean updateRegions() {
        return (this.fStyle & 2) != 0;
    }
}

