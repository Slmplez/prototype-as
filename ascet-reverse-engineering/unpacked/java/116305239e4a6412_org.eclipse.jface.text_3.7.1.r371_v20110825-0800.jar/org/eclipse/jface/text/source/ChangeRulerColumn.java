/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.text.source;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.text.revisions.RevisionPainter;
import org.eclipse.jface.internal.text.source.DiffPainter;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.revisions.IRevisionRulerColumn;
import org.eclipse.jface.text.revisions.RevisionInformation;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IChangeRulerColumn;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.ISharedTextColors;
import org.eclipse.jface.text.source.IVerticalRulerListener;
import org.eclipse.jface.text.source.LineNumberRulerColumn;
import org.eclipse.jface.text.source.LineRange;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;

public final class ChangeRulerColumn
implements IChangeRulerColumn,
IRevisionRulerColumn {
    private static final boolean IS_MAC = Util.isMac();
    private final InternalListener fInternalListener = new InternalListener();
    private final MouseHandler fMouseHandler = new MouseHandler();
    private final RevisionPainter fRevisionPainter;
    private final DiffPainter fDiffPainter;
    private CompositeRuler fParentRuler;
    private ITextViewer fCachedTextViewer;
    private StyledText fCachedTextWidget;
    private Canvas fCanvas;
    private Color fBackground;
    private IAnnotationModel fAnnotationModel;
    private final int fWidth = 5;
    private int fScrollPos;
    private Image fBuffer;
    private boolean fSensitiveToTextChanges = false;

    public ChangeRulerColumn() {
        this.fRevisionPainter = null;
        this.fDiffPainter = new DiffPainter(this, null);
    }

    public ChangeRulerColumn(ISharedTextColors sharedColors) {
        Assert.isNotNull((Object)sharedColors);
        this.fRevisionPainter = new RevisionPainter(this, sharedColors);
        this.fDiffPainter = new DiffPainter(this, null);
    }

    private Color getBackground() {
        if (this.fBackground == null) {
            return this.fCachedTextWidget.getDisplay().getSystemColor(25);
        }
        return this.fBackground;
    }

    public Control createControl(CompositeRuler parentRuler, Composite parentControl) {
        this.fParentRuler = parentRuler;
        this.fCachedTextViewer = parentRuler.getTextViewer();
        this.fCachedTextWidget = this.fCachedTextViewer.getTextWidget();
        this.fCanvas = new Canvas(parentControl, 0);
        this.fCanvas.setBackground(this.getBackground());
        this.fCanvas.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent event) {
                if (ChangeRulerColumn.this.fCachedTextViewer != null) {
                    ChangeRulerColumn.this.doubleBufferPaint(event.gc);
                }
            }
        });
        this.fCanvas.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                ChangeRulerColumn.this.handleDispose();
                ChangeRulerColumn.this.fCachedTextViewer = null;
                ChangeRulerColumn.this.fCachedTextWidget = null;
            }
        });
        this.fCanvas.addMouseListener((MouseListener)this.fMouseHandler);
        this.fCanvas.addMouseMoveListener((MouseMoveListener)this.fMouseHandler);
        if (this.fCachedTextViewer != null) {
            this.fCachedTextViewer.addViewportListener(this.fInternalListener);
            this.fCachedTextViewer.addTextListener(this.fInternalListener);
        }
        this.fRevisionPainter.setParentRuler(parentRuler);
        this.fDiffPainter.setParentRuler(parentRuler);
        return this.fCanvas;
    }

    protected void handleDispose() {
        if (this.fCachedTextViewer != null) {
            this.fCachedTextViewer.removeViewportListener(this.fInternalListener);
            this.fCachedTextViewer.removeTextListener(this.fInternalListener);
        }
        if (this.fBuffer != null) {
            this.fBuffer.dispose();
            this.fBuffer = null;
        }
    }

    private void doubleBufferPaint(GC dest) {
        Point size = this.fCanvas.getSize();
        if (size.x <= 0 || size.y <= 0) {
            return;
        }
        if (this.fBuffer != null) {
            Rectangle r = this.fBuffer.getBounds();
            if (r.width != size.x || r.height != size.y) {
                this.fBuffer.dispose();
                this.fBuffer = null;
            }
        }
        if (this.fBuffer == null) {
            this.fBuffer = new Image((Device)this.fCanvas.getDisplay(), size.x, size.y);
        }
        GC gc = new GC((Drawable)this.fBuffer);
        gc.setFont(this.fCanvas.getFont());
        try {
            gc.setBackground(this.getBackground());
            gc.fillRectangle(0, 0, size.x, size.y);
            this.doPaint(gc);
        }
        finally {
            gc.dispose();
        }
        dest.drawImage(this.fBuffer, 0, 0);
    }

    protected int getVisibleLinesInViewport() {
        return LineNumberRulerColumn.getVisibleLinesInViewport(this.fCachedTextWidget);
    }

    protected final boolean isViewerCompletelyShown() {
        return JFaceTextUtil.isShowingEntireContents(this.fCachedTextWidget);
    }

    private void doPaint(GC gc) {
        ILineRange visibleModelLines = this.computeVisibleModelLines();
        if (visibleModelLines == null) {
            return;
        }
        this.fSensitiveToTextChanges = this.isViewerCompletelyShown();
        this.fScrollPos = this.fCachedTextWidget.getTopPixel();
        this.fRevisionPainter.paint(gc, visibleModelLines);
        if (!this.fRevisionPainter.hasInformation()) {
            this.fDiffPainter.paint(gc, visibleModelLines);
        }
    }

    public void redraw() {
        if (this.fCachedTextViewer != null && this.fCanvas != null && !this.fCanvas.isDisposed()) {
            if (IS_MAC) {
                this.fCanvas.redraw();
                this.fCanvas.update();
            } else {
                GC gc = new GC((Drawable)this.fCanvas);
                this.doubleBufferPaint(gc);
                gc.dispose();
            }
        }
    }

    public void setFont(Font font) {
    }

    private CompositeRuler getParentRuler() {
        return this.fParentRuler;
    }

    public int getLineOfLastMouseButtonActivity() {
        return this.getParentRuler().getLineOfLastMouseButtonActivity();
    }

    public int toDocumentLineNumber(int y_coordinate) {
        return this.getParentRuler().toDocumentLineNumber(y_coordinate);
    }

    public IAnnotationHover getHover() {
        int activeLine = this.getParentRuler().getLineOfLastMouseButtonActivity();
        if (this.fRevisionPainter.hasHover(activeLine)) {
            return this.fRevisionPainter.getHover();
        }
        if (this.fDiffPainter.hasHover(activeLine)) {
            return this.fDiffPainter.getHover();
        }
        return null;
    }

    public void setHover(IAnnotationHover hover) {
        this.fRevisionPainter.setHover(hover);
        this.fDiffPainter.setHover(hover);
    }

    public void setModel(IAnnotationModel model) {
        this.setAnnotationModel(model);
        this.fRevisionPainter.setModel(model);
        this.fDiffPainter.setModel(model);
    }

    private void setAnnotationModel(IAnnotationModel model) {
        if (this.fAnnotationModel != model) {
            this.fAnnotationModel = model;
        }
    }

    public void setBackground(Color background) {
        this.fBackground = background;
        if (this.fCanvas != null && !this.fCanvas.isDisposed()) {
            this.fCanvas.setBackground(this.getBackground());
        }
        this.fRevisionPainter.setBackground(background);
        this.fDiffPainter.setBackground(background);
    }

    public void setAddedColor(Color addedColor) {
        this.fDiffPainter.setAddedColor(addedColor);
    }

    public void setChangedColor(Color changedColor) {
        this.fDiffPainter.setChangedColor(changedColor);
    }

    public void setDeletedColor(Color deletedColor) {
        this.fDiffPainter.setDeletedColor(deletedColor);
    }

    public IAnnotationModel getModel() {
        return this.fAnnotationModel;
    }

    public Control getControl() {
        return this.fCanvas;
    }

    public int getWidth() {
        return 5;
    }

    protected final void postRedraw() {
        Display d;
        if (this.fCanvas != null && !this.fCanvas.isDisposed() && (d = this.fCanvas.getDisplay()) != null) {
            d.asyncExec(new Runnable(){

                public void run() {
                    ChangeRulerColumn.this.redraw();
                }
            });
        }
    }

    public void addVerticalRulerListener(IVerticalRulerListener listener) {
        throw new UnsupportedOperationException();
    }

    public void removeVerticalRulerListener(IVerticalRulerListener listener) {
        throw new UnsupportedOperationException();
    }

    private final ILineRange computeVisibleModelLines() {
        IRegion coverage;
        int topLine;
        IDocument doc = this.fCachedTextViewer.getDocument();
        if (doc == null) {
            return null;
        }
        if (this.fCachedTextViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fCachedTextViewer);
            int widgetTopLine = JFaceTextUtil.getPartialTopIndex(this.fCachedTextWidget);
            topLine = extension.widgetLine2ModelLine(widgetTopLine);
            coverage = extension.getModelCoverage();
        } else {
            topLine = JFaceTextUtil.getPartialTopIndex(this.fCachedTextViewer);
            coverage = this.fCachedTextViewer.getVisibleRegion();
        }
        int bottomLine = this.fCachedTextViewer.getBottomIndex();
        if (bottomLine != -1) {
            ++bottomLine;
        }
        try {
            int lastLine;
            int firstLine = doc.getLineOfOffset(coverage.getOffset());
            if (firstLine > topLine) {
                topLine = firstLine;
            }
            if ((lastLine = doc.getLineOfOffset(coverage.getOffset() + coverage.getLength())) < bottomLine || bottomLine == -1) {
                bottomLine = lastLine;
            }
        }
        catch (BadLocationException x) {
            x.printStackTrace();
            return null;
        }
        LineRange visibleModelLines = new LineRange(topLine, bottomLine - topLine + 1);
        return visibleModelLines;
    }

    public void setRevisionInformation(RevisionInformation info) {
        this.fRevisionPainter.setRevisionInformation(info);
        this.fRevisionPainter.setBackground(this.getBackground());
    }

    public ISelectionProvider getRevisionSelectionProvider() {
        return this.fRevisionPainter.getRevisionSelectionProvider();
    }

    private class InternalListener
    implements IViewportListener,
    ITextListener {
        private InternalListener() {
        }

        public void viewportChanged(int verticalPosition) {
            if (verticalPosition != ChangeRulerColumn.this.fScrollPos) {
                ChangeRulerColumn.this.redraw();
            }
        }

        public void textChanged(TextEvent event) {
            if (!event.getViewerRedrawState()) {
                return;
            }
            if (ChangeRulerColumn.this.fSensitiveToTextChanges || event.getDocumentEvent() == null) {
                ChangeRulerColumn.this.postRedraw();
            }
        }
    }

    private class MouseHandler
    implements MouseListener,
    MouseMoveListener {
        private MouseHandler() {
        }

        public void mouseUp(MouseEvent event) {
        }

        public void mouseDown(MouseEvent event) {
            ChangeRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
        }

        public void mouseDoubleClick(MouseEvent event) {
            ChangeRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
        }

        public void mouseMove(MouseEvent event) {
            ChangeRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
        }
    }
}

