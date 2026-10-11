/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.ILineTracker
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentCommand;
import org.eclipse.jface.text.IAutoEditStrategy;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ILineTracker;
import org.eclipse.jface.text.IRegion;

public class TabsToSpacesConverter
implements IAutoEditStrategy {
    private int fTabRatio;
    private ILineTracker fLineTracker;

    public void setNumberOfSpacesPerTab(int ratio) {
        this.fTabRatio = ratio;
    }

    public void setLineTracker(ILineTracker lineTracker) {
        this.fLineTracker = lineTracker;
    }

    private int insertTabString(StringBuffer buffer, int offsetInLine) {
        if (this.fTabRatio == 0) {
            return 0;
        }
        int remainder = offsetInLine % this.fTabRatio;
        remainder = this.fTabRatio - remainder;
        int i = 0;
        while (i < remainder) {
            buffer.append(' ');
            ++i;
        }
        return remainder;
    }

    public void customizeDocumentCommand(IDocument document, DocumentCommand command) {
        String text = command.text;
        if (text == null) {
            return;
        }
        int index = text.indexOf(9);
        if (index > -1) {
            StringBuffer buffer = new StringBuffer();
            this.fLineTracker.set(command.text);
            int lines = this.fLineTracker.getNumberOfLines();
            try {
                int i = 0;
                while (i < lines) {
                    int offset = this.fLineTracker.getLineOffset(i);
                    int endOffset = offset + this.fLineTracker.getLineLength(i);
                    String line = text.substring(offset, endOffset);
                    int position = 0;
                    if (i == 0) {
                        IRegion firstLine = document.getLineInformationOfOffset(command.offset);
                        position = command.offset - firstLine.getOffset();
                    }
                    int length = line.length();
                    int j = 0;
                    while (j < length) {
                        char c = line.charAt(j);
                        if (c == '\t') {
                            position += this.insertTabString(buffer, position);
                        } else {
                            buffer.append(c);
                            ++position;
                        }
                        ++j;
                    }
                    ++i;
                }
                command.text = buffer.toString();
            }
            catch (BadLocationException badLocationException) {}
        }
    }
}

