/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.swt.custom.LineBackgroundEvent
 *  org.eclipse.swt.custom.LineBackgroundListener
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IPaintPositionManager;
import org.eclipse.jface.text.IPainter;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.Position;
import org.eclipse.swt.custom.LineBackgroundEvent;
import org.eclipse.swt.custom.LineBackgroundListener;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;

public class CursorLinePainter
implements IPainter,
LineBackgroundListener {
    private final ITextViewer fViewer;
    private Color fHighlightColor;
    private IPaintPositionManager fPositionManager;
    private Position fCurrentLine = new Position(0, 0);
    private Position fLastLine = new Position(0, 0);
    private int fLastLineNumber = -1;
    private boolean fIsActive;

    public CursorLinePainter(ITextViewer textViewer) {
        this.fViewer = textViewer;
    }

    public void setHighlightColor(Color highlightColor) {
        this.fHighlightColor = highlightColor;
    }

    public void lineGetBackground(LineBackgroundEvent event) {
        StyledText textWidget = this.fViewer.getTextWidget();
        if (textWidget != null) {
            int caret = textWidget.getCaretOffset();
            int length = event.lineText.length();
            if (event.lineOffset <= caret && caret <= event.lineOffset + length && !this.hasMultiLineSelection(textWidget)) {
                event.lineBackground = this.fHighlightColor;
            }
        }
    }

    private boolean updateHighlightLine() {
        try {
            IDocument document = this.fViewer.getDocument();
            int modelCaret = this.getModelCaret();
            int lineNumber = document.getLineOfOffset(modelCaret);
            if (lineNumber != this.fLastLineNumber || !this.fCurrentLine.overlapsWith(modelCaret, 0)) {
                this.fLastLine.offset = this.fCurrentLine.offset;
                this.fLastLine.length = this.fCurrentLine.length;
                this.fLastLine.isDeleted = this.fCurrentLine.isDeleted;
                if (this.fCurrentLine.isDeleted) {
                    this.fCurrentLine.isDeleted = false;
                    this.fPositionManager.managePosition(this.fCurrentLine);
                }
                this.fCurrentLine.offset = document.getLineOffset(lineNumber);
                this.fCurrentLine.length = lineNumber == document.getNumberOfLines() - 1 ? document.getLength() - this.fCurrentLine.offset : document.getLineOffset(lineNumber + 1) - this.fCurrentLine.offset;
                this.fLastLineNumber = lineNumber;
                return true;
            }
        }
        catch (BadLocationException badLocationException) {}
        return false;
    }

    private int getModelCaret() {
        int widgetCaret = this.fViewer.getTextWidget().getCaretOffset();
        if (this.fViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fViewer);
            return extension.widgetOffset2ModelOffset(widgetCaret);
        }
        IRegion visible = this.fViewer.getVisibleRegion();
        return widgetCaret + visible.getOffset();
    }

    private void drawHighlightLine(Position position) {
        if (position.isDeleted()) {
            return;
        }
        int widgetOffset = 0;
        if (this.fViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fViewer);
            widgetOffset = extension.modelOffset2WidgetOffset(position.getOffset());
            if (widgetOffset == -1) {
                return;
            }
        } else {
            IRegion visible = this.fViewer.getVisibleRegion();
            widgetOffset = position.getOffset() - visible.getOffset();
            if (widgetOffset < 0 || visible.getLength() < widgetOffset) {
                return;
            }
        }
        StyledText textWidget = this.fViewer.getTextWidget();
        if (widgetOffset >= 0 && widgetOffset <= textWidget.getCharCount()) {
            Point upperLeft = textWidget.getLocationAtOffset(widgetOffset);
            int width = textWidget.getClientArea().width + textWidget.getHorizontalPixel();
            int height = textWidget.getLineHeight(widgetOffset);
            textWidget.redraw(0, upperLeft.y, width, height, false);
        }
    }

    public void deactivate(boolean redraw) {
        if (this.fIsActive) {
            this.fIsActive = false;
            if (redraw) {
                this.drawHighlightLine(this.fCurrentLine);
            }
            this.fViewer.getTextWidget().removeLineBackgroundListener((LineBackgroundListener)this);
            if (this.fPositionManager != null) {
                this.fPositionManager.unmanagePosition(this.fCurrentLine);
            }
            this.fLastLineNumber = -1;
            this.fCurrentLine.offset = 0;
            this.fCurrentLine.length = 0;
        }
    }

    public void dispose() {
    }

    public void paint(int reason) {
        if (this.fViewer.getDocument() == null) {
            this.deactivate(false);
            return;
        }
        StyledText textWidget = this.fViewer.getTextWidget();
        if (this.hasMultiLineSelection(textWidget)) {
            this.deactivate(true);
            return;
        }
        if (!this.fIsActive) {
            textWidget.addLineBackgroundListener((LineBackgroundListener)this);
            this.fPositionManager.managePosition(this.fCurrentLine);
            this.fIsActive = true;
        }
        if (this.updateHighlightLine()) {
            this.drawHighlightLine(this.fLastLine);
            this.drawHighlightLine(this.fCurrentLine);
        }
    }

    private boolean hasMultiLineSelection(StyledText textWidget) {
        Point selection = textWidget.getSelection();
        try {
            int startLine = textWidget.getLineAtOffset(selection.x);
            int endLine = textWidget.getLineAtOffset(selection.y);
            return startLine != endLine;
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return false;
        }
    }

    public void setPositionManager(IPaintPositionManager manager) {
        this.fPositionManager = manager;
    }
}

