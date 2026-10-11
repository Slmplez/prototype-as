/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IPaintPositionManager;
import org.eclipse.jface.text.IPainter;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.source.ICharacterPairMatcher;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;

public final class MatchingCharacterPainter
implements IPainter,
PaintListener {
    private boolean fIsActive = false;
    private ISourceViewer fSourceViewer;
    private StyledText fTextWidget;
    private Color fColor;
    private IPaintPositionManager fPaintPositionManager;
    private ICharacterPairMatcher fMatcher;
    private Position fPairPosition = new Position(0, 0);
    private int fAnchor;

    public MatchingCharacterPainter(ISourceViewer sourceViewer, ICharacterPairMatcher matcher) {
        this.fSourceViewer = sourceViewer;
        this.fMatcher = matcher;
        this.fTextWidget = sourceViewer.getTextWidget();
    }

    public void setColor(Color color) {
        this.fColor = color;
    }

    public void dispose() {
        if (this.fMatcher != null) {
            this.fMatcher.clear();
            this.fMatcher = null;
        }
        this.fColor = null;
        this.fTextWidget = null;
    }

    public void deactivate(boolean redraw) {
        if (this.fIsActive) {
            this.fIsActive = false;
            this.fTextWidget.removePaintListener((PaintListener)this);
            if (this.fPaintPositionManager != null) {
                this.fPaintPositionManager.unmanagePosition(this.fPairPosition);
            }
            if (redraw) {
                this.handleDrawRequest(null);
            }
        }
    }

    public void paintControl(PaintEvent event) {
        if (this.fTextWidget != null) {
            this.handleDrawRequest(event.gc);
        }
    }

    private void handleDrawRequest(GC gc) {
        if (this.fPairPosition.isDeleted) {
            return;
        }
        int offset = this.fPairPosition.getOffset();
        int length = this.fPairPosition.getLength();
        if (length < 1) {
            return;
        }
        if (this.fSourceViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fSourceViewer);
            IRegion widgetRange = extension.modelRange2WidgetRange((IRegion)new Region(offset, length));
            if (widgetRange == null) {
                return;
            }
            try {
                IDocument doc = this.fSourceViewer.getDocument();
                int startLine = doc.getLineOfOffset(offset);
                int endLine = doc.getLineOfOffset(offset + length);
                if (extension.modelLine2WidgetLine(startLine) == -1 || extension.modelLine2WidgetLine(endLine) == -1) {
                    return;
                }
            }
            catch (BadLocationException badLocationException) {
                return;
            }
            offset = widgetRange.getOffset();
            length = widgetRange.getLength();
        } else {
            IRegion region = this.fSourceViewer.getVisibleRegion();
            if (region.getOffset() > offset || region.getOffset() + region.getLength() < offset + length) {
                return;
            }
            offset -= region.getOffset();
        }
        if (this.fAnchor == 0) {
            this.draw(gc, offset, 1);
        } else {
            this.draw(gc, offset + length - 1, 1);
        }
    }

    private void draw(GC gc, int offset, int length) {
        if (gc != null) {
            Rectangle bounds;
            gc.setForeground(this.fColor);
            if (length > 0) {
                bounds = this.fTextWidget.getTextBounds(offset, offset + length - 1);
            } else {
                Point loc = this.fTextWidget.getLocationAtOffset(offset);
                bounds = new Rectangle(loc.x, loc.y, 1, this.fTextWidget.getLineHeight(offset));
            }
            gc.drawRectangle(bounds.x, bounds.y, bounds.width - 1, bounds.height - 1);
        } else {
            this.fTextWidget.redrawRange(offset, length, true);
        }
    }

    public void paint(int reason) {
        IDocument document = this.fSourceViewer.getDocument();
        if (document == null) {
            this.deactivate(false);
            return;
        }
        Point selection = this.fSourceViewer.getSelectedRange();
        if (selection.y > 0) {
            this.deactivate(true);
            return;
        }
        IRegion pair = this.fMatcher.match(document, selection.x);
        if (pair == null) {
            this.deactivate(true);
            return;
        }
        if (this.fIsActive) {
            if (16 == reason) {
                this.handleDrawRequest(null);
            } else if (pair.getOffset() != this.fPairPosition.getOffset() || pair.getLength() != this.fPairPosition.getLength() || this.fMatcher.getAnchor() != this.fAnchor) {
                this.handleDrawRequest(null);
                this.fPairPosition.isDeleted = false;
                this.fPairPosition.offset = pair.getOffset();
                this.fPairPosition.length = pair.getLength();
                this.fAnchor = this.fMatcher.getAnchor();
                this.handleDrawRequest(null);
            }
        } else {
            this.fIsActive = true;
            this.fPairPosition.isDeleted = false;
            this.fPairPosition.offset = pair.getOffset();
            this.fPairPosition.length = pair.getLength();
            this.fAnchor = this.fMatcher.getAnchor();
            this.fTextWidget.addPaintListener((PaintListener)this);
            this.fPaintPositionManager.managePosition(this.fPairPosition);
            this.handleDrawRequest(null);
        }
    }

    public void setPositionManager(IPaintPositionManager manager) {
        this.fPaintPositionManager = manager;
    }
}

