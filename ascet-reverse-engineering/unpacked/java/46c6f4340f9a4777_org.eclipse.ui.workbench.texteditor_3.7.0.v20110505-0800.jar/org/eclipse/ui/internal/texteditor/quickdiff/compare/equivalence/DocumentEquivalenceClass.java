/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.DJBHashFunction;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.Hash;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.IHashFunction;

public final class DocumentEquivalenceClass {
    private static final boolean DEBUG = false;
    private final ArrayList fHashes;
    private IDocument fDocument;
    private final IHashFunction fHashFunction;

    public DocumentEquivalenceClass(IDocument document) {
        this(document, new DJBHashFunction());
    }

    public DocumentEquivalenceClass(IDocument document, IHashFunction hashFunction) {
        this.fDocument = document;
        Object[] nulls = new Object[this.fDocument.getNumberOfLines()];
        this.fHashes = new ArrayList<Object>(Arrays.asList(nulls));
        if (hashFunction == null) {
            throw new NullPointerException("hashFunction");
        }
        this.fHashFunction = hashFunction;
    }

    public Hash getHash(int line) {
        try {
            return this.internalGetHash(line);
        }
        catch (BadLocationException badLocationException) {
            throw new ConcurrentModificationException();
        }
    }

    private Hash internalGetHash(int line) throws BadLocationException {
        Hash hash = (Hash)this.fHashes.get(line);
        if (hash == null) {
            if (this.fDocument == null) {
                throw new AssertionError((Object)"hash cannot be null after loadAndForget");
            }
            IRegion lineRegion = this.fDocument.getLineInformation(line);
            String lineContents = this.fDocument.get(lineRegion.getOffset(), lineRegion.getLength());
            hash = this.fHashFunction.computeHash(lineContents);
            this.fHashes.set(line, hash);
        }
        return hash;
    }

    public void update(DocumentEvent event) {
        if (this.fDocument == null) {
            throw new IllegalStateException("update must not be called after loadAndForget");
        }
        try {
            this.internalUpdate(event);
        }
        catch (BadLocationException badLocationException) {
            throw new ConcurrentModificationException();
        }
    }

    private void internalUpdate(DocumentEvent event) throws BadLocationException {
        int linesBefore = this.fDocument.getNumberOfLines(event.getOffset(), event.getLength());
        String text = event.getText();
        int linesAfter = (text == null ? 0 : this.fDocument.computeNumberOfLines(text)) + 1;
        int firstLine = this.fDocument.getLineOfOffset(event.getOffset());
        int delta = linesAfter - linesBefore;
        int changed = Math.min(linesAfter, linesBefore);
        if (delta > 0) {
            Object[] nulls = new Object[delta];
            this.fHashes.addAll(firstLine + changed, Arrays.asList(nulls));
        } else if (delta < 0) {
            this.fHashes.subList(firstLine, firstLine - delta).clear();
        }
        Collections.fill(this.fHashes.subList(firstLine, firstLine + changed), null);
    }

    public int getCount() {
        return this.fHashes.size();
    }

    public void setDocument(IDocument document) {
        Assert.isNotNull((Object)document);
        this.fDocument = document;
    }

    public void loadAndForget() {
        int count = this.getCount();
        int line = 0;
        while (line < count) {
            this.getHash(line);
            ++line;
        }
        this.fDocument = null;
    }
}

