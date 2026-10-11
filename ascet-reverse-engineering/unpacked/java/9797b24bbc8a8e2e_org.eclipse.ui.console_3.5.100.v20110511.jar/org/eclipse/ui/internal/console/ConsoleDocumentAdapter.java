/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentAdapter
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.swt.custom.StyledTextContent
 *  org.eclipse.swt.custom.TextChangeListener
 *  org.eclipse.swt.custom.TextChangedEvent
 *  org.eclipse.swt.custom.TextChangingEvent
 */
package org.eclipse.ui.internal.console;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentAdapter;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.TextChangeListener;
import org.eclipse.swt.custom.TextChangedEvent;
import org.eclipse.swt.custom.TextChangingEvent;

public class ConsoleDocumentAdapter
implements IDocumentAdapter,
IDocumentListener {
    private int consoleWidth = -1;
    private List textChangeListeners;
    private IDocument document;
    int[] offsets = new int[5000];
    int[] lengths = new int[5000];
    private int regionCount = 1;
    private Pattern pattern = Pattern.compile("$", 8);

    public ConsoleDocumentAdapter(int width) {
        this.textChangeListeners = new ArrayList();
        this.consoleWidth = width;
    }

    /*
     * Unable to fully structure code
     */
    private void repairLines(int eventOffset) {
        if (this.document == null) {
            return;
        }
        try {
            docLine = this.document.getLineOfOffset(eventOffset);
            docLineOffset = this.document.getLineOffset(docLine);
            widgetLine = this.getLineAtOffset(docLineOffset);
            i = this.regionCount - 1;
            while (i >= widgetLine) {
                --this.regionCount;
                --i;
            }
            numLinesInDoc = this.document.getNumberOfLines();
            nextOffset = this.document.getLineOffset(docLine);
            i = docLine;
            while (i < numLinesInDoc) {
                block9: {
                    offset = nextOffset;
                    length = this.document.getLineLength(i);
                    nextOffset += length;
                    if (length != 0) ** GOTO lbl36
                    this.addRegion(offset, 0);
                    break block9;
lbl-1000:
                    // 1 sources

                    {
                        trimmedLength = length;
                        lineDelimiter = this.document.getLineDelimiter(i);
                        lineDelimiterLength = 0;
                        if (lineDelimiter != null) {
                            lineDelimiterLength = lineDelimiter.length();
                            trimmedLength -= lineDelimiterLength;
                        }
                        if (this.consoleWidth > 0 && this.consoleWidth < trimmedLength) {
                            this.addRegion(offset, this.consoleWidth);
                            offset += this.consoleWidth;
                            length -= this.consoleWidth;
                            continue;
                        }
                        this.addRegion(offset, length);
                        offset += length;
                        length -= length;
lbl36:
                        // 3 sources

                        ** while (length > 0)
                    }
                }
                ++i;
            }
        }
        catch (BadLocationException v0) {}
        if (this.regionCount == 0) {
            this.addRegion(0, this.document.getLength());
        }
    }

    private void addRegion(int offset, int length) {
        if (this.regionCount == 0) {
            this.offsets[0] = offset;
            this.lengths[0] = length;
        } else {
            if (this.regionCount == this.offsets.length) {
                this.growRegionArray(this.regionCount * 2);
            }
            this.offsets[this.regionCount] = offset;
            this.lengths[this.regionCount] = length;
        }
        ++this.regionCount;
    }

    public void setDocument(IDocument doc) {
        if (this.document != null) {
            this.document.removeDocumentListener((IDocumentListener)this);
        }
        this.document = doc;
        if (this.document != null) {
            this.document.addDocumentListener((IDocumentListener)this);
            this.repairLines(0);
        }
    }

    public synchronized void addTextChangeListener(TextChangeListener listener) {
        Assert.isNotNull((Object)listener);
        if (!this.textChangeListeners.contains(listener)) {
            this.textChangeListeners.add(listener);
        }
    }

    public synchronized void removeTextChangeListener(TextChangeListener listener) {
        if (this.textChangeListeners != null) {
            Assert.isNotNull((Object)listener);
            this.textChangeListeners.remove(listener);
        }
    }

    public int getCharCount() {
        return this.document.getLength();
    }

    public String getLine(int lineIndex) {
        try {
            StringBuffer line = new StringBuffer(this.document.get(this.offsets[lineIndex], this.lengths[lineIndex]));
            int index = line.length() - 1;
            while (index > -1 && (line.charAt(index) == '\n' || line.charAt(index) == '\r')) {
                --index;
            }
            return new String(line.substring(0, index + 1));
        }
        catch (BadLocationException badLocationException) {
            return "";
        }
    }

    public int getLineAtOffset(int offset) {
        if (offset == 0 || this.regionCount <= 1) {
            return 0;
        }
        if (offset == this.document.getLength()) {
            return this.regionCount - 1;
        }
        int left = 0;
        int right = this.regionCount - 1;
        int midIndex = 0;
        while (left <= right) {
            if (left == right) {
                return right;
            }
            midIndex = (left + right) / 2;
            if (offset < this.offsets[midIndex]) {
                right = midIndex;
                continue;
            }
            if (offset >= this.offsets[midIndex] + this.lengths[midIndex]) {
                left = midIndex + 1;
                continue;
            }
            return midIndex;
        }
        return midIndex;
    }

    public int getLineCount() {
        return this.regionCount;
    }

    public String getLineDelimiter() {
        return System.getProperty("line.separator");
    }

    public int getOffsetAtLine(int lineIndex) {
        return this.offsets[lineIndex];
    }

    public String getTextRange(int start, int length) {
        try {
            return this.document.get(start, length);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    public void replaceTextRange(int start, int replaceLength, String text) {
        try {
            this.document.replace(start, replaceLength, text);
        }
        catch (BadLocationException badLocationException) {}
    }

    public synchronized void setText(String text) {
        TextChangedEvent changeEvent = new TextChangedEvent((StyledTextContent)this);
        Iterator iter = this.textChangeListeners.iterator();
        while (iter.hasNext()) {
            TextChangeListener element = (TextChangeListener)iter.next();
            element.textSet(changeEvent);
        }
    }

    public synchronized void documentAboutToBeChanged(DocumentEvent event) {
        if (this.document == null) {
            return;
        }
        TextChangingEvent changeEvent = new TextChangingEvent((StyledTextContent)this);
        changeEvent.start = event.fOffset;
        changeEvent.newText = event.fText == null ? "" : event.fText;
        changeEvent.replaceCharCount = event.fLength;
        changeEvent.newCharCount = event.fText == null ? 0 : event.fText.length();
        int first = this.getLineAtOffset(event.fOffset);
        int lOffset = Math.max(event.fOffset + event.fLength - 1, 0);
        int last = this.getLineAtOffset(lOffset);
        changeEvent.replaceLineCount = Math.max(last - first, 0);
        int newLineCount = this.countNewLines(event.fText);
        int n = changeEvent.newLineCount = newLineCount >= 0 ? newLineCount : 0;
        if (changeEvent.newLineCount > this.offsets.length - this.regionCount) {
            this.growRegionArray(changeEvent.newLineCount);
        }
        Iterator iter = this.textChangeListeners.iterator();
        while (iter.hasNext()) {
            TextChangeListener element = (TextChangeListener)iter.next();
            element.textChanging(changeEvent);
        }
    }

    private void growRegionArray(int minSize) {
        int size = Math.max(this.offsets.length * 2, minSize * 2);
        int[] newOffsets = new int[size];
        System.arraycopy(this.offsets, 0, newOffsets, 0, this.regionCount);
        this.offsets = newOffsets;
        int[] newLengths = new int[size];
        System.arraycopy(this.lengths, 0, newLengths, 0, this.regionCount);
        this.lengths = newLengths;
    }

    private int countNewLines(String string) {
        int count = 0;
        if (string.length() == 0) {
            return 0;
        }
        int offset = string.length() - 1;
        while (offset > -1 && string.charAt(offset) == '\r') {
            --offset;
            ++count;
        }
        if (offset > -1) {
            if (offset < string.length() - 1) {
                string = string.substring(0, offset);
            }
            int lastIndex = 0;
            int index = 0;
            Matcher matcher = this.pattern.matcher(string);
            while (matcher.find()) {
                index = matcher.start();
                if (index == 0) {
                    ++count;
                } else if (index != string.length()) {
                    ++count;
                }
                if (this.consoleWidth > 0) {
                    int lineLen = index - lastIndex + 1;
                    if (index == 0) {
                        lineLen += this.lengths[this.regionCount - 1];
                    }
                    count += lineLen / this.consoleWidth;
                }
                lastIndex = index;
            }
        }
        return count;
    }

    public synchronized void documentChanged(DocumentEvent event) {
        if (this.document == null) {
            return;
        }
        this.repairLines(event.fOffset);
        TextChangedEvent changeEvent = new TextChangedEvent((StyledTextContent)this);
        Iterator iter = this.textChangeListeners.iterator();
        while (iter.hasNext()) {
            TextChangeListener element = (TextChangeListener)iter.next();
            element.textChanged(changeEvent);
        }
    }

    public void setWidth(int width) {
        if (width != this.consoleWidth) {
            this.consoleWidth = width;
            this.repairLines(0);
            TextChangedEvent changeEvent = new TextChangedEvent((StyledTextContent)this);
            Iterator iter = this.textChangeListeners.iterator();
            while (iter.hasNext()) {
                TextChangeListener element = (TextChangeListener)iter.next();
                element.textSet(changeEvent);
            }
        }
    }
}

