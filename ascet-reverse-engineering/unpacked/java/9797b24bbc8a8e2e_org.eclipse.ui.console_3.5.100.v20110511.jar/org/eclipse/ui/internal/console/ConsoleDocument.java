/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.Document
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 */
package org.eclipse.ui.internal.console;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.ui.internal.console.HyperlinkUpdater;

public class ConsoleDocument
extends Document {
    public synchronized String get(int pos, int length) throws BadLocationException {
        return super.get(pos, length);
    }

    public synchronized int getLength() {
        return super.getLength();
    }

    public synchronized String getLineDelimiter(int line) throws BadLocationException {
        return super.getLineDelimiter(line);
    }

    public synchronized IRegion getLineInformation(int line) throws BadLocationException {
        return super.getLineInformation(line);
    }

    public synchronized IRegion getLineInformationOfOffset(int offset) throws BadLocationException {
        return super.getLineInformationOfOffset(offset);
    }

    public synchronized int getLineLength(int line) throws BadLocationException {
        return super.getLineLength(line);
    }

    public synchronized int getLineOffset(int line) throws BadLocationException {
        return super.getLineOffset(line);
    }

    public int getLineOfOffset(int pos) throws BadLocationException {
        return super.getLineOfOffset(pos);
    }

    public synchronized int getNumberOfLines() {
        return super.getNumberOfLines();
    }

    public synchronized void replace(int pos, int length, String text) throws BadLocationException {
        super.replace(pos, length, text);
    }

    public synchronized void set(String text) {
        super.set(text);
    }

    protected void completeInitialization() {
        super.completeInitialization();
        this.addPositionUpdater((IPositionUpdater)new HyperlinkUpdater());
    }

    public synchronized void addPosition(String category, Position position) throws BadLocationException, BadPositionCategoryException {
        super.addPosition(category, position);
    }

    public synchronized void removePosition(String category, Position position) throws BadPositionCategoryException {
        super.removePosition(category, position);
    }

    public synchronized Position[] getPositions(String category) throws BadPositionCategoryException {
        return super.getPositions(category);
    }
}

