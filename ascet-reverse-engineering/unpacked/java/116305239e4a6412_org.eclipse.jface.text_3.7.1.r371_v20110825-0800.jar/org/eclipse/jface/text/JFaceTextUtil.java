/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.text;

import org.eclipse.jface.internal.text.SelectionProcessor;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.LineRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;

public final class JFaceTextUtil {
    private JFaceTextUtil() {
    }

    public static int computeLineHeight(StyledText textWidget, int startLine, int endLine, int lineCount) {
        return JFaceTextUtil.getLinePixel(textWidget, endLine) - JFaceTextUtil.getLinePixel(textWidget, startLine);
    }

    public static int getBottomIndex(StyledText widget) {
        int lastPixel = JFaceTextUtil.computeLastVisiblePixel(widget);
        int bottom = widget.getLineIndex(lastPixel);
        if (bottom == 0) {
            return bottom;
        }
        int pixel = widget.getLinePixel(bottom);
        if (pixel <= 0) {
            return bottom;
        }
        int offset = widget.getOffsetAtLine(bottom);
        int height = widget.getLineHeight(offset);
        if (pixel + height - 1 > lastPixel) {
            return bottom - 1;
        }
        return bottom;
    }

    public static int getPartialTopIndex(StyledText widget) {
        int top = widget.getTopIndex();
        int pixels = widget.getLinePixel(top);
        if (pixels == -widget.getLineHeight(widget.getOffsetAtLine(top))) {
            ++top;
            pixels = 0;
        }
        if (pixels > 0) {
            --top;
        }
        return top;
    }

    public static int getPartialBottomIndex(StyledText widget) {
        int lastPixel = JFaceTextUtil.computeLastVisiblePixel(widget);
        int bottom = widget.getLineIndex(lastPixel);
        return bottom;
    }

    private static int computeLastVisiblePixel(StyledText widget) {
        int caHeight = widget.getClientArea().height;
        int lastPixel = caHeight - 1;
        return lastPixel;
    }

    public static int getPartialTopIndex(ITextViewer viewer) {
        StyledText widget = viewer.getTextWidget();
        int widgetTop = JFaceTextUtil.getPartialTopIndex(widget);
        return JFaceTextUtil.widgetLine2ModelLine(viewer, widgetTop);
    }

    public static int getPartialBottomIndex(ITextViewer viewer) {
        StyledText textWidget = viewer.getTextWidget();
        int widgetBottom = JFaceTextUtil.getPartialBottomIndex(textWidget);
        return JFaceTextUtil.widgetLine2ModelLine(viewer, widgetBottom);
    }

    public static ILineRange getVisibleModelLines(ITextViewer viewer) {
        int top = JFaceTextUtil.getPartialTopIndex(viewer);
        int bottom = JFaceTextUtil.getPartialBottomIndex(viewer);
        if (top == -1 || bottom == -1) {
            return null;
        }
        return new LineRange(top, bottom - top + 1);
    }

    public static int widgetLine2ModelLine(ITextViewer viewer, int widgetLine) {
        int modelLine;
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)viewer);
            modelLine = extension.widgetLine2ModelLine(widgetLine);
        } else {
            try {
                IRegion r = viewer.getVisibleRegion();
                IDocument d = viewer.getDocument();
                modelLine = widgetLine + d.getLineOfOffset(r.getOffset());
            }
            catch (BadLocationException badLocationException) {
                modelLine = widgetLine;
            }
        }
        return modelLine;
    }

    public static int modelLineToWidgetLine(ITextViewer viewer, int modelLine) {
        int widgetLine;
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)viewer);
            widgetLine = extension.modelLine2WidgetLine(modelLine);
        } else {
            IRegion region = viewer.getVisibleRegion();
            IDocument document = viewer.getDocument();
            try {
                int visibleStartLine = document.getLineOfOffset(region.getOffset());
                int visibleEndLine = document.getLineOfOffset(region.getOffset() + region.getLength());
                widgetLine = modelLine < visibleStartLine || modelLine > visibleEndLine ? -1 : modelLine - visibleStartLine;
            }
            catch (BadLocationException badLocationException) {
                widgetLine = -1;
            }
        }
        return widgetLine;
    }

    public static int getHiddenTopLinePixels(StyledText textWidget) {
        int top = JFaceTextUtil.getPartialTopIndex(textWidget);
        return -textWidget.getLinePixel(top);
    }

    public static int getLinePixel(StyledText textWidget, int line) {
        return textWidget.getLinePixel(line);
    }

    public static int getLineIndex(StyledText textWidget, int y) {
        int lineIndex = textWidget.getLineIndex(y);
        return lineIndex;
    }

    public static boolean isShowingEntireContents(StyledText widget) {
        if (widget.getTopPixel() != 0) {
            return false;
        }
        int lastVisiblePixel = JFaceTextUtil.computeLastVisiblePixel(widget);
        int lastPossiblePixel = widget.getLinePixel(widget.getLineCount());
        return lastPossiblePixel <= lastVisiblePixel;
    }

    public static Rectangle computeArea(IRegion region, ITextViewer textViewer) {
        Rectangle bounds;
        int start = 0;
        int end = 0;
        IRegion widgetRegion = JFaceTextUtil.modelRange2WidgetRange(region, textViewer);
        if (widgetRegion != null) {
            start = widgetRegion.getOffset();
            end = start + widgetRegion.getLength();
        }
        StyledText styledText = textViewer.getTextWidget();
        if (end > 0 && start < end) {
            bounds = styledText.getTextBounds(start, end - 1);
        } else {
            Point loc = styledText.getLocationAtOffset(start);
            bounds = new Rectangle(loc.x, loc.y, JFaceTextUtil.getAverageCharWidth((Control)textViewer.getTextWidget()), styledText.getLineHeight(start));
        }
        return new Rectangle(bounds.x, bounds.y, bounds.width, bounds.height);
    }

    private static IRegion modelRange2WidgetRange(IRegion region, ITextViewer textViewer) {
        if (textViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)textViewer);
            return extension.modelRange2WidgetRange(region);
        }
        IRegion visibleRegion = textViewer.getVisibleRegion();
        int start = region.getOffset() - visibleRegion.getOffset();
        int end = start + region.getLength();
        if (end > visibleRegion.getLength()) {
            end = visibleRegion.getLength();
        }
        return new Region(start, end - start);
    }

    public static int getAverageCharWidth(Control control) {
        GC gc = new GC((Drawable)control);
        gc.setFont(control.getFont());
        int increment = gc.getFontMetrics().getAverageCharWidth();
        gc.dispose();
        return increment;
    }

    public static boolean isEmpty(ITextViewer viewer, ITextSelection selection) throws BadLocationException {
        return new SelectionProcessor(viewer).isEmpty(selection);
    }

    public static IRegion[] getCoveredRanges(ITextViewer viewer, ITextSelection selection) throws BadLocationException {
        return new SelectionProcessor(viewer).getRanges(selection);
    }

    public static int getOffsetForCursorLocation(ITextViewer viewer) {
        StyledText text;
        block5: {
            try {
                text = viewer.getTextWidget();
                if (text != null && !text.isDisposed()) break block5;
                return -1;
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return -1;
            }
        }
        Display display = text.getDisplay();
        Point absolutePosition = display.getCursorLocation();
        Point relativePosition = text.toControl(absolutePosition);
        int widgetOffset = text.getOffsetAtLocation(relativePosition);
        Point p = text.getLocationAtOffset(widgetOffset);
        if (p.x > relativePosition.x) {
            --widgetOffset;
        }
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)viewer);
            return extension.widgetOffset2ModelOffset(widgetOffset);
        }
        return widgetOffset + viewer.getVisibleRegion().getOffset();
    }
}

