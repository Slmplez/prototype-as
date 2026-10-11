/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.StyledTextContent
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IPaintPositionManager;
import org.eclipse.jface.text.IPainter;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;

public class WhitespaceCharacterPainter
implements IPainter,
PaintListener {
    private static final char SPACE_SIGN = '\u00b7';
    private static final char IDEOGRAPHIC_SPACE_SIGN = '\u00b0';
    private static final char TAB_SIGN = '\u00bb';
    private static final char CARRIAGE_RETURN_SIGN = '\u00a4';
    private static final char LINE_FEED_SIGN = '\u00b6';
    private boolean fIsActive = false;
    private ITextViewer fTextViewer;
    private StyledText fTextWidget;
    private final boolean fIsAdvancedGraphicsPresent;
    private final boolean fIsFullSelectionStyle;
    private boolean fShowLeadingSpaces = true;
    private boolean fShowEnclosedSpace = true;
    private boolean fShowTrailingSpaces = true;
    private boolean fShowLeadingIdeographicSpaces = true;
    private boolean fShowEnclosedIdeographicSpaces = true;
    private boolean fShowTrailingIdeographicSpaces = true;
    private boolean fShowLeadingTabs = true;
    private boolean fShowEnclosedTabs = true;
    private boolean fShowTrailingTabs = true;
    private boolean fShowCarriageReturn = true;
    private boolean fShowLineFeed = true;
    private int fAlpha = 80;

    public WhitespaceCharacterPainter(ITextViewer textViewer) {
        this.fTextViewer = textViewer;
        this.fTextWidget = textViewer.getTextWidget();
        GC gc = new GC((Drawable)this.fTextWidget);
        gc.setAdvanced(true);
        this.fIsAdvancedGraphicsPresent = gc.getAdvanced();
        gc.dispose();
        this.fIsFullSelectionStyle = (this.fTextWidget.getStyle() & 0x10000) != 0;
    }

    public WhitespaceCharacterPainter(ITextViewer viewer, boolean showLeadingSpaces, boolean showEnclosedSpaces, boolean showTrailingSpaces, boolean showLeadingIdeographicSpaces, boolean showEnclosedIdeographicSpaces, boolean showTrailingIdeographicSpace, boolean showLeadingTabs, boolean showEnclosedTabs, boolean showTrailingTabs, boolean showCarriageReturn, boolean showLineFeed, int alpha) {
        this(viewer);
        this.fShowLeadingSpaces = showLeadingSpaces;
        this.fShowEnclosedSpace = showEnclosedSpaces;
        this.fShowTrailingSpaces = showTrailingSpaces;
        this.fShowLeadingIdeographicSpaces = showLeadingIdeographicSpaces;
        this.fShowEnclosedIdeographicSpaces = showEnclosedIdeographicSpaces;
        this.fShowTrailingIdeographicSpaces = showTrailingIdeographicSpace;
        this.fShowLeadingTabs = showLeadingTabs;
        this.fShowEnclosedTabs = showEnclosedTabs;
        this.fShowTrailingTabs = showTrailingTabs;
        this.fShowCarriageReturn = showCarriageReturn;
        this.fShowLineFeed = showLineFeed;
        this.fAlpha = alpha;
    }

    public void dispose() {
        this.fTextViewer = null;
        this.fTextWidget = null;
    }

    public void paint(int reason) {
        IDocument document = this.fTextViewer.getDocument();
        if (document == null) {
            this.deactivate(false);
            return;
        }
        if (!this.fIsActive) {
            this.fIsActive = true;
            this.fTextWidget.addPaintListener((PaintListener)this);
            this.redrawAll();
        } else if (reason == 16 || reason == 8) {
            this.redrawAll();
        } else if (reason == 1) {
            try {
                IRegion lineRegion = document.getLineInformationOfOffset(this.getDocumentOffset(this.fTextWidget.getCaretOffset()));
                int widgetOffset = this.getWidgetOffset(lineRegion.getOffset());
                int charCount = this.fTextWidget.getCharCount();
                int redrawLength = Math.min(lineRegion.getLength(), charCount - widgetOffset);
                if (widgetOffset >= 0 && redrawLength > 0) {
                    this.fTextWidget.redrawRange(widgetOffset, redrawLength, true);
                }
            }
            catch (BadLocationException badLocationException) {}
        }
    }

    public void deactivate(boolean redraw) {
        if (this.fIsActive) {
            this.fIsActive = false;
            this.fTextWidget.removePaintListener((PaintListener)this);
            if (redraw) {
                this.redrawAll();
            }
        }
    }

    public void setPositionManager(IPaintPositionManager manager) {
    }

    public void paintControl(PaintEvent event) {
        if (this.fTextWidget != null) {
            this.handleDrawRequest(event.gc, event.x, event.y, event.width, event.height);
        }
    }

    private void handleDrawRequest(GC gc, int x, int y, int w, int h) {
        int endLine;
        int startLine = this.fTextWidget.getLineIndex(y);
        if (startLine <= (endLine = this.fTextWidget.getLineIndex(y + h - 1)) && startLine < this.fTextWidget.getLineCount()) {
            Rectangle clipping = gc.getClipping();
            Rectangle clientArea = this.fTextWidget.getClientArea();
            int leftMargin = this.fTextWidget.getLeftMargin();
            int rightMargin = this.fTextWidget.getRightMargin();
            clientArea.x += leftMargin;
            clientArea.width -= leftMargin + rightMargin;
            clipping.intersect(clientArea);
            gc.setClipping(clientArea);
            if (this.fIsAdvancedGraphicsPresent) {
                int alpha = gc.getAlpha();
                gc.setAlpha(this.fAlpha);
                this.drawLineRange(gc, startLine, endLine, x, w);
                gc.setAlpha(alpha);
            } else {
                this.drawLineRange(gc, startLine, endLine, x, w);
            }
            gc.setClipping(clipping);
        }
    }

    private void drawLineRange(GC gc, int startLine, int endLine, int x, int w) {
        int viewPortWidth = this.fTextWidget.getClientArea().width;
        int line = startLine;
        while (line <= endLine) {
            int lineOffset = this.fTextWidget.getOffsetAtLine(line);
            int lineEndOffset = line < this.fTextWidget.getLineCount() - 1 ? this.fTextWidget.getOffsetAtLine(line + 1) : this.fTextWidget.getCharCount();
            int lineLength = lineEndOffset - lineOffset;
            while (lineLength > 0) {
                char c = this.fTextWidget.getTextRange(lineOffset + lineLength - 1, 1).charAt(0);
                if (c != '\r' && c != '\n') break;
                --lineLength;
            }
            Point endOfLine = this.fTextWidget.getLocationAtOffset(lineOffset + lineLength);
            if (x - endOfLine.x <= viewPortWidth) {
                int endOffset;
                int startOffset;
                int y = this.fTextWidget.getLinePixel(line);
                try {
                    startOffset = this.fTextWidget.getOffsetAtLocation(new Point(x, y)) - 1;
                    if (startOffset - 2 <= lineOffset) {
                        startOffset = lineOffset;
                    }
                }
                catch (IllegalArgumentException illegalArgumentException) {
                    startOffset = lineOffset;
                }
                if (x + w >= endOfLine.x) {
                    endOffset = lineEndOffset;
                } else {
                    try {
                        endOffset = this.fTextWidget.getOffsetAtLocation(new Point(x + w - 1, y)) + 1;
                        if (endOffset + 2 >= lineEndOffset) {
                            endOffset = lineEndOffset;
                        }
                    }
                    catch (IllegalArgumentException illegalArgumentException) {
                        endOffset = lineEndOffset;
                    }
                }
                if (endOffset > startOffset) {
                    this.drawCharRange(gc, startOffset, endOffset, lineOffset, lineEndOffset);
                }
            }
            ++line;
        }
    }

    private boolean isWhitespaceCharacter(char c) {
        return c == ' ' || c == '\u3000' || c == '\t' || c == '\r' || c == '\n';
    }

    private void drawCharRange(GC gc, int startOffset, int endOffset, int lineOffset, int lineEndOffset) {
        StyledTextContent content = this.fTextWidget.getContent();
        String lineText = content.getTextRange(lineOffset, lineEndOffset - lineOffset);
        int startOffsetInLine = startOffset - lineOffset;
        int endOffsetInLine = endOffset - lineOffset;
        int textBegin = -1;
        int i = 0;
        while (i < lineText.length()) {
            if (!this.isWhitespaceCharacter(lineText.charAt(i))) {
                textBegin = i;
                break;
            }
            ++i;
        }
        boolean isEmptyLine = textBegin == -1;
        int textEnd = lineText.length() - 1;
        if (!isEmptyLine) {
            int i2 = lineText.length() - 1;
            while (i2 >= 0) {
                if (!this.isWhitespaceCharacter(lineText.charAt(i2))) {
                    textEnd = i2;
                    break;
                }
                --i2;
            }
        }
        StyleRange styleRange = null;
        Color fg = null;
        StringBuffer visibleChar = new StringBuffer(10);
        int textOffset = startOffsetInLine;
        while (textOffset <= endOffsetInLine) {
            block31: {
                boolean eol;
                int delta;
                block30: {
                    delta = 0;
                    eol = false;
                    if (textOffset >= endOffsetInLine) break block30;
                    delta = 1;
                    char c = lineText.charAt(textOffset);
                    switch (c) {
                        case ' ': {
                            if (isEmptyLine) {
                                if (!this.fShowLeadingSpaces && !this.fShowEnclosedSpace && !this.fShowTrailingSpaces) break;
                                visibleChar.append('\u00b7');
                                break;
                            }
                            if (textOffset < textBegin) {
                                if (!this.fShowLeadingSpaces) break;
                                visibleChar.append('\u00b7');
                                break;
                            }
                            if (textOffset < textEnd) {
                                if (!this.fShowEnclosedSpace) break;
                                visibleChar.append('\u00b7');
                                break;
                            }
                            if (!this.fShowTrailingSpaces) break;
                            visibleChar.append('\u00b7');
                            break;
                        }
                        case '\u3000': {
                            if (isEmptyLine) {
                                if (!this.fShowLeadingIdeographicSpaces && !this.fShowEnclosedIdeographicSpaces && !this.fShowTrailingIdeographicSpaces) break;
                                visibleChar.append('\u00b0');
                                break;
                            }
                            if (textOffset < textBegin) {
                                if (!this.fShowLeadingIdeographicSpaces) break;
                                visibleChar.append('\u00b0');
                                break;
                            }
                            if (textOffset < textEnd) {
                                if (!this.fShowEnclosedIdeographicSpaces) break;
                                visibleChar.append('\u00b0');
                                break;
                            }
                            if (!this.fShowTrailingIdeographicSpaces) break;
                            visibleChar.append('\u00b0');
                            break;
                        }
                        case '\t': {
                            if (isEmptyLine) {
                                if (!this.fShowLeadingTabs && !this.fShowEnclosedTabs && !this.fShowTrailingTabs) break;
                                visibleChar.append('\u00bb');
                                break;
                            }
                            if (textOffset < textBegin) {
                                if (!this.fShowLeadingTabs) break;
                                visibleChar.append('\u00bb');
                                break;
                            }
                            if (textOffset < textEnd) {
                                if (!this.fShowEnclosedTabs) break;
                                visibleChar.append('\u00bb');
                                break;
                            }
                            if (!this.fShowTrailingTabs) break;
                            visibleChar.append('\u00bb');
                            break;
                        }
                        case '\r': {
                            if (this.fShowCarriageReturn) {
                                visibleChar.append('\u00a4');
                            }
                            if (textOffset >= endOffsetInLine - 1 || lineText.charAt(textOffset + 1) != '\n') {
                                eol = true;
                                break;
                            }
                            break block31;
                        }
                        case '\n': {
                            if (this.fShowLineFeed) {
                                visibleChar.append('\u00b6');
                            }
                            eol = true;
                            break;
                        }
                        default: {
                            delta = 0;
                        }
                    }
                }
                if (visibleChar.length() > 0) {
                    int widgetOffset = startOffset + textOffset - startOffsetInLine - visibleChar.length() + delta;
                    if (!eol || !this.isFoldedLine(content.getLineAtOffset(widgetOffset))) {
                        if (!this.fTextWidget.getBlockSelection() && this.fIsFullSelectionStyle && WhitespaceCharacterPainter.isOffsetSelected(this.fTextWidget, widgetOffset)) {
                            fg = this.fTextWidget.getSelectionForeground();
                        } else if (styleRange == null || styleRange.start + styleRange.length <= widgetOffset) {
                            styleRange = this.fTextWidget.getStyleRangeAtOffset(widgetOffset);
                            fg = styleRange == null || styleRange.foreground == null ? this.fTextWidget.getForeground() : styleRange.foreground;
                        }
                        this.draw(gc, widgetOffset, visibleChar.toString(), fg);
                    }
                    visibleChar.delete(0, visibleChar.length());
                }
            }
            ++textOffset;
        }
    }

    private static final boolean isOffsetSelected(StyledText widget, int offset) {
        Point selection = widget.getSelection();
        return offset >= selection.x && offset < selection.y;
    }

    private boolean isFoldedLine(int widgetLine) {
        if (this.fTextViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fTextViewer);
            int modelLine = extension.widgetLine2ModelLine(widgetLine);
            int widgetLine2 = extension.modelLine2WidgetLine(modelLine + 1);
            return widgetLine2 == -1;
        }
        return false;
    }

    private void redrawAll() {
        this.fTextWidget.redraw();
    }

    private void draw(GC gc, int offset, String s, Color fg) {
        int baseline = this.fTextWidget.getBaseline(offset);
        FontMetrics fontMetrics = gc.getFontMetrics();
        int fontBaseline = fontMetrics.getAscent() + fontMetrics.getLeading();
        int baslineDelta = baseline - fontBaseline;
        Point pos = this.fTextWidget.getLocationAtOffset(offset);
        gc.setForeground(fg);
        gc.drawString(s, pos.x, pos.y + baslineDelta, true);
    }

    private int getWidgetOffset(int documentOffset) {
        if (this.fTextViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fTextViewer);
            return extension.modelOffset2WidgetOffset(documentOffset);
        }
        IRegion visible = this.fTextViewer.getVisibleRegion();
        int widgetOffset = documentOffset - visible.getOffset();
        if (widgetOffset > visible.getLength()) {
            return -1;
        }
        return widgetOffset;
    }

    private int getDocumentOffset(int widgetOffset) {
        if (this.fTextViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fTextViewer);
            return extension.widgetOffset2ModelOffset(widgetOffset);
        }
        IRegion visible = this.fTextViewer.getVisibleRegion();
        if (widgetOffset > visible.getLength()) {
            return -1;
        }
        return widgetOffset + visible.getOffset();
    }
}

