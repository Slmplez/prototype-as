/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.AbstractDocument;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.CopyOnWriteTextStore;
import org.eclipse.jface.text.DefaultLineTracker;
import org.eclipse.jface.text.GapTextStore;

public class Document
extends AbstractDocument {
    public Document() {
        this.setTextStore(new CopyOnWriteTextStore(new GapTextStore()));
        this.setLineTracker(new DefaultLineTracker());
        this.completeInitialization();
    }

    public Document(String initialContent) {
        this.setTextStore(new CopyOnWriteTextStore(new GapTextStore()));
        this.setLineTracker(new DefaultLineTracker());
        this.getStore().set(initialContent);
        this.getTracker().set(initialContent);
        this.completeInitialization();
    }

    public boolean isLineInformationRepairNeeded(int offset, int length, String text) throws BadLocationException {
        if (offset < 0 || length < 0 || offset + length > this.getLength()) {
            throw new BadLocationException();
        }
        return this.isLineInformationRepairNeeded(text) || this.isLineInformationRepairNeeded(this.get(offset, length));
    }

    private boolean isLineInformationRepairNeeded(String text) {
        if (text == null) {
            return false;
        }
        int length = text.length();
        if (length == 0) {
            return false;
        }
        int rIndex = text.indexOf(13);
        int nIndex = text.indexOf(10);
        if (rIndex == -1 && nIndex == -1) {
            return false;
        }
        if (rIndex > 0 && rIndex < length - 1 && nIndex > 1 && rIndex < length - 2) {
            return false;
        }
        String defaultLD = null;
        try {
            defaultLD = this.getLineDelimiter(0);
        }
        catch (BadLocationException badLocationException) {
            return true;
        }
        if (defaultLD == null) {
            return false;
        }
        defaultLD = this.getDefaultLineDelimiter();
        if (defaultLD.length() == 1) {
            if (rIndex != -1 && !"\r".equals(defaultLD)) {
                return true;
            }
            if (nIndex != -1 && !"\n".equals(defaultLD)) {
                return true;
            }
        } else if (defaultLD.length() == 2) {
            return rIndex == -1 || nIndex - rIndex != 1;
        }
        return false;
    }
}

