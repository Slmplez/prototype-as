/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.internal.text.html;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import org.eclipse.jface.internal.text.html.HTML2TextReader;
import org.eclipse.jface.internal.text.html.HTMLMessages;
import org.eclipse.jface.internal.text.link.contentassist.LineBreakingReader;
import org.eclipse.jface.text.DefaultInformationControl;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.widgets.Display;

public class HTMLTextPresenter
implements DefaultInformationControl.IInformationPresenter,
DefaultInformationControl.IInformationPresenterExtension {
    private static final String LINE_DELIM = System.getProperty("line.separator", "\n");
    private int fCounter;
    private boolean fEnforceUpperLineLimit;

    public HTMLTextPresenter(boolean enforceUpperLineLimit) {
        this.fEnforceUpperLineLimit = enforceUpperLineLimit;
    }

    public HTMLTextPresenter() {
        this(true);
    }

    protected Reader createReader(String hoverInfo, TextPresentation presentation) {
        return new HTML2TextReader(new StringReader(hoverInfo), presentation);
    }

    protected void adaptTextPresentation(TextPresentation presentation, int offset, int insertLength) {
        int yoursStart = offset;
        int yoursEnd = offset + insertLength - 1;
        yoursEnd = Math.max(yoursStart, yoursEnd);
        Iterator e = presentation.getAllStyleRangeIterator();
        while (e.hasNext()) {
            StyleRange range = (StyleRange)e.next();
            int myStart = range.start;
            int myEnd = range.start + range.length - 1;
            if ((myEnd = Math.max(myStart, myEnd)) < yoursStart) continue;
            if (myStart < yoursStart) {
                range.length += insertLength;
                continue;
            }
            range.start += insertLength;
        }
    }

    private void append(StringBuffer buffer, String string, TextPresentation presentation) {
        int length = string.length();
        buffer.append(string);
        if (presentation != null) {
            this.adaptTextPresentation(presentation, this.fCounter, length);
        }
        this.fCounter += length;
    }

    private String getIndent(String line) {
        int length = line.length();
        int i = 0;
        while (i < length && Character.isWhitespace(line.charAt(i))) {
            ++i;
        }
        return String.valueOf(i == length ? line : line.substring(0, i)) + " ";
    }

    public String updatePresentation(Display display, String hoverInfo, TextPresentation presentation, int maxWidth, int maxHeight) {
        return this.updatePresentation((Drawable)display, hoverInfo, presentation, maxWidth, maxHeight);
    }

    public String updatePresentation(Drawable drawable, String hoverInfo, TextPresentation presentation, int maxWidth, int maxHeight) {
        if (hoverInfo == null) {
            return null;
        }
        GC gc = new GC(drawable);
        try {
            StringBuffer buffer = new StringBuffer();
            int maxNumberOfLines = Math.round(maxHeight / gc.getFontMetrics().getHeight());
            this.fCounter = 0;
            LineBreakingReader reader = new LineBreakingReader(this.createReader(hoverInfo, presentation), gc, maxWidth);
            boolean lastLineFormatted = false;
            String lastLineIndent = null;
            String line = reader.readLine();
            boolean lineFormatted = reader.isFormattedLine();
            boolean firstLineProcessed = false;
            while (line != null) {
                if (this.fEnforceUpperLineLimit && maxNumberOfLines <= 0) break;
                if (firstLineProcessed) {
                    if (!lastLineFormatted) {
                        this.append(buffer, LINE_DELIM, null);
                    } else {
                        this.append(buffer, LINE_DELIM, presentation);
                        if (lastLineIndent != null) {
                            this.append(buffer, lastLineIndent, presentation);
                        }
                    }
                }
                this.append(buffer, line, null);
                firstLineProcessed = true;
                lastLineFormatted = lineFormatted;
                if (!lineFormatted) {
                    lastLineIndent = null;
                } else if (lastLineIndent == null) {
                    lastLineIndent = this.getIndent(line);
                }
                line = reader.readLine();
                lineFormatted = reader.isFormattedLine();
                --maxNumberOfLines;
            }
            if (line != null) {
                this.append(buffer, LINE_DELIM, lineFormatted ? presentation : null);
                this.append(buffer, HTMLMessages.getString("HTMLTextPresenter.ellipse"), presentation);
            }
            String string = this.trim(buffer, presentation);
            return string;
        }
        catch (IOException iOException) {
            return null;
        }
        finally {
            gc.dispose();
        }
    }

    private String trim(StringBuffer buffer, TextPresentation presentation) {
        int length = buffer.length();
        int end = length - 1;
        while (end >= 0 && Character.isWhitespace(buffer.charAt(end))) {
            --end;
        }
        if (end == -1) {
            return "";
        }
        if (end < length - 1) {
            buffer.delete(end + 1, length);
        } else {
            end = length;
        }
        int start = 0;
        while (start < end && Character.isWhitespace(buffer.charAt(start))) {
            ++start;
        }
        buffer.delete(0, start);
        presentation.setResultWindow((IRegion)new Region(start, buffer.length()));
        return buffer.toString();
    }
}

