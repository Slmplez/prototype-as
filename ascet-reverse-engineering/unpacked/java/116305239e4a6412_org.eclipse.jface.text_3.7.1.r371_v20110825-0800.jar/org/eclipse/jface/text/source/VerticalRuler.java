/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelListener
 *  org.eclipse.jface.util.Util
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
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

import java.util.Iterator;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationAccess;
import org.eclipse.jface.text.source.IAnnotationAccessExtension;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelListener;
import org.eclipse.jface.text.source.IAnnotationPresentation;
import org.eclipse.jface.text.source.IVerticalRuler;
import org.eclipse.jface.text.source.IVerticalRulerExtension;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
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

public final class VerticalRuler
implements IVerticalRuler,
IVerticalRulerExtension {
    private static final boolean IS_MAC = Util.isMac();
    private ITextViewer fTextViewer;
    private Canvas fCanvas;
    private IAnnotationModel fModel;
    private int fScrollPos;
    private Image fBuffer;
    private int fLastMouseButtonActivityLine = -1;
    private InternalListener fInternalListener = new InternalListener();
    private int fWidth;
    private IAnnotationAccess fAnnotationAccess;

    public VerticalRuler(int width) {
        this(width, null);
    }

    public VerticalRuler(int width, IAnnotationAccess annotationAcccess) {
        this.fWidth = width;
        this.fAnnotationAccess = annotationAcccess;
    }

    public Control getControl() {
        return this.fCanvas;
    }

    public Control createControl(Composite parent, ITextViewer textViewer) {
        this.fTextViewer = textViewer;
        this.fCanvas = new Canvas(parent, 262144);
        this.fCanvas.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent event) {
                if (VerticalRuler.this.fTextViewer != null) {
                    VerticalRuler.this.doubleBufferPaint(event.gc);
                }
            }
        });
        this.fCanvas.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                VerticalRuler.this.handleDispose();
                VerticalRuler.this.fTextViewer = null;
            }
        });
        this.fCanvas.addMouseListener(new MouseListener(){

            public void mouseUp(MouseEvent event) {
            }

            public void mouseDown(MouseEvent event) {
                VerticalRuler.this.fLastMouseButtonActivityLine = VerticalRuler.this.toDocumentLineNumber(event.y);
            }

            public void mouseDoubleClick(MouseEvent event) {
                VerticalRuler.this.fLastMouseButtonActivityLine = VerticalRuler.this.toDocumentLineNumber(event.y);
            }
        });
        if (this.fTextViewer != null) {
            this.fTextViewer.addViewportListener(this.fInternalListener);
            this.fTextViewer.addTextListener(this.fInternalListener);
        }
        return this.fCanvas;
    }

    private void handleDispose() {
        if (this.fTextViewer != null) {
            this.fTextViewer.removeViewportListener(this.fInternalListener);
            this.fTextViewer.removeTextListener(this.fInternalListener);
            this.fTextViewer = null;
        }
        if (this.fModel != null) {
            this.fModel.removeAnnotationModelListener((IAnnotationModelListener)this.fInternalListener);
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
        gc.setFont(this.fTextViewer.getTextWidget().getFont());
        try {
            gc.setBackground(this.fCanvas.getBackground());
            gc.fillRectangle(0, 0, size.x, size.y);
            if (this.fTextViewer instanceof ITextViewerExtension5) {
                this.doPaint1(gc);
            } else {
                this.doPaint(gc);
            }
        }
        finally {
            gc.dispose();
        }
        dest.drawImage(this.fBuffer, 0, 0);
    }

    private int getInclusiveTopIndexStartOffset() {
        StyledText textWidget = this.fTextViewer.getTextWidget();
        if (textWidget != null && !textWidget.isDisposed()) {
            int top = JFaceTextUtil.getPartialTopIndex(this.fTextViewer);
            try {
                IDocument document = this.fTextViewer.getDocument();
                return document.getLineOffset(top);
            }
            catch (BadLocationException badLocationException) {}
        }
        return -1;
    }

    protected void doPaint(GC gc) {
        if (this.fModel == null || this.fTextViewer == null) {
            return;
        }
        IAnnotationAccessExtension annotationAccessExtension = null;
        if (this.fAnnotationAccess instanceof IAnnotationAccessExtension) {
            annotationAccessExtension = (IAnnotationAccessExtension)((Object)this.fAnnotationAccess);
        }
        StyledText styledText = this.fTextViewer.getTextWidget();
        IDocument doc = this.fTextViewer.getDocument();
        int topLeft = this.getInclusiveTopIndexStartOffset();
        int bottomRight = this.fTextViewer.getBottomIndexEndOffset();
        int viewPort = bottomRight - topLeft;
        Point d = this.fCanvas.getSize();
        this.fScrollPos = styledText.getTopPixel();
        int topLine = -1;
        int bottomLine = -1;
        try {
            IRegion region = this.fTextViewer.getVisibleRegion();
            topLine = doc.getLineOfOffset(region.getOffset());
            bottomLine = doc.getLineOfOffset(region.getOffset() + region.getLength());
        }
        catch (BadLocationException badLocationException) {
            return;
        }
        Rectangle r = new Rectangle(0, 0, 0, 0);
        int maxLayer = 1;
        int layer = 0;
        while (layer < maxLayer) {
            Iterator iter = this.fModel.getAnnotationIterator();
            while (iter.hasNext()) {
                Position position;
                IAnnotationPresentation annotationPresentation = null;
                Annotation annotation = (Annotation)iter.next();
                int lay = 0;
                if (annotationAccessExtension != null) {
                    lay = annotationAccessExtension.getLayer(annotation);
                } else if (annotation instanceof IAnnotationPresentation) {
                    annotationPresentation = (IAnnotationPresentation)annotation;
                    lay = annotationPresentation.getLayer();
                }
                maxLayer = Math.max(maxLayer, lay + 1);
                if (lay != layer || (position = this.fModel.getPosition(annotation)) == null || !position.overlapsWith(topLeft, viewPort)) continue;
                try {
                    int offset = position.getOffset();
                    int length = position.getLength();
                    int startLine = doc.getLineOfOffset(offset);
                    if (startLine < topLine) {
                        startLine = topLine;
                    }
                    int endLine = startLine;
                    if (length > 0) {
                        endLine = doc.getLineOfOffset(offset + length - 1);
                    }
                    if (endLine > bottomLine) {
                        endLine = bottomLine;
                    }
                    r.x = 0;
                    r.y = JFaceTextUtil.computeLineHeight(styledText, 0, startLine -= topLine, startLine) - this.fScrollPos;
                    r.width = d.x;
                    int lines = (endLine -= topLine) - startLine;
                    r.height = JFaceTextUtil.computeLineHeight(styledText, startLine, endLine + 1, lines + 1);
                    if (r.y < d.y && annotationAccessExtension != null) {
                        annotationAccessExtension.paint(annotation, gc, this.fCanvas, r);
                        continue;
                    }
                    if (annotationPresentation == null) continue;
                    annotationPresentation.paint(gc, this.fCanvas, r);
                }
                catch (BadLocationException badLocationException) {}
            }
            ++layer;
        }
    }

    protected void doPaint1(GC gc) {
        if (this.fModel == null || this.fTextViewer == null) {
            return;
        }
        IAnnotationAccessExtension annotationAccessExtension = null;
        if (this.fAnnotationAccess instanceof IAnnotationAccessExtension) {
            annotationAccessExtension = (IAnnotationAccessExtension)((Object)this.fAnnotationAccess);
        }
        ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fTextViewer);
        StyledText textWidget = this.fTextViewer.getTextWidget();
        this.fScrollPos = textWidget.getTopPixel();
        Point dimension = this.fCanvas.getSize();
        Rectangle r = new Rectangle(0, 0, 0, 0);
        int maxLayer = 1;
        int layer = 0;
        while (layer < maxLayer) {
            Iterator iter = this.fModel.getAnnotationIterator();
            while (iter.hasNext()) {
                int endLine;
                int startLine;
                IRegion widgetRegion;
                Position position;
                IAnnotationPresentation annotationPresentation = null;
                Annotation annotation = (Annotation)iter.next();
                int lay = 0;
                if (annotationAccessExtension != null) {
                    lay = annotationAccessExtension.getLayer(annotation);
                } else if (annotation instanceof IAnnotationPresentation) {
                    annotationPresentation = (IAnnotationPresentation)annotation;
                    lay = annotationPresentation.getLayer();
                }
                maxLayer = Math.max(maxLayer, lay + 1);
                if (lay != layer || (position = this.fModel.getPosition(annotation)) == null || (widgetRegion = extension.modelRange2WidgetRange((IRegion)new Region(position.getOffset(), position.getLength()))) == null || (startLine = extension.widgetLineOfWidgetOffset(widgetRegion.getOffset())) == -1 || (endLine = extension.widgetLineOfWidgetOffset(widgetRegion.getOffset() + Math.max(widgetRegion.getLength() - 1, 0))) == -1) continue;
                r.x = 0;
                r.y = JFaceTextUtil.computeLineHeight(textWidget, 0, startLine, startLine) - this.fScrollPos;
                r.width = dimension.x;
                int lines = endLine - startLine;
                r.height = JFaceTextUtil.computeLineHeight(textWidget, startLine, endLine + 1, lines + 1);
                if (r.y < dimension.y && annotationAccessExtension != null) {
                    annotationAccessExtension.paint(annotation, gc, this.fCanvas, r);
                    continue;
                }
                if (annotationPresentation == null) continue;
                annotationPresentation.paint(gc, this.fCanvas, r);
            }
            ++layer;
        }
    }

    public void update() {
        Display d;
        if (this.fCanvas != null && !this.fCanvas.isDisposed() && (d = this.fCanvas.getDisplay()) != null) {
            d.asyncExec(new Runnable(){

                public void run() {
                    VerticalRuler.this.redraw();
                }
            });
        }
    }

    private void redraw() {
        if (this.fCanvas != null && !this.fCanvas.isDisposed()) {
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

    public void setModel(IAnnotationModel model) {
        if (model != this.fModel) {
            if (this.fModel != null) {
                this.fModel.removeAnnotationModelListener((IAnnotationModelListener)this.fInternalListener);
            }
            this.fModel = model;
            if (this.fModel != null) {
                this.fModel.addAnnotationModelListener((IAnnotationModelListener)this.fInternalListener);
            }
            this.update();
        }
    }

    public IAnnotationModel getModel() {
        return this.fModel;
    }

    public int getWidth() {
        return this.fWidth;
    }

    public int getLineOfLastMouseButtonActivity() {
        IDocument doc = this.fTextViewer.getDocument();
        if (doc == null || this.fLastMouseButtonActivityLine >= this.fTextViewer.getDocument().getNumberOfLines()) {
            this.fLastMouseButtonActivityLine = -1;
        }
        return this.fLastMouseButtonActivityLine;
    }

    public int toDocumentLineNumber(int y_coordinate) {
        if (this.fTextViewer == null || y_coordinate == -1) {
            return -1;
        }
        StyledText text = this.fTextViewer.getTextWidget();
        int line = text.getLineIndex(y_coordinate);
        if (line == text.getLineCount() - 1 && y_coordinate > text.getLinePixel(line + 1)) {
            return -1;
        }
        return VerticalRuler.widgetLine2ModelLine(this.fTextViewer, line);
    }

    protected static final int widgetLine2ModelLine(ITextViewer viewer, int widgetLine) {
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)viewer);
            return extension.widgetLine2ModelLine(widgetLine);
        }
        try {
            IRegion r = viewer.getVisibleRegion();
            IDocument d = viewer.getDocument();
            return widgetLine += d.getLineOfOffset(r.getOffset());
        }
        catch (BadLocationException badLocationException) {
            return widgetLine;
        }
    }

    public void setFont(Font font) {
    }

    public void setLocationOfLastMouseButtonActivity(int x, int y) {
        this.fLastMouseButtonActivityLine = this.toDocumentLineNumber(y);
    }

    public void addMouseListener(MouseListener listener) {
        if (this.fCanvas != null && !this.fCanvas.isDisposed()) {
            this.fCanvas.addMouseListener(listener);
        }
    }

    public void removeMouseListener(MouseListener listener) {
        if (this.fCanvas != null && !this.fCanvas.isDisposed()) {
            this.fCanvas.removeMouseListener(listener);
        }
    }

    class InternalListener
    implements IViewportListener,
    IAnnotationModelListener,
    ITextListener {
        InternalListener() {
        }

        public void viewportChanged(int verticalPosition) {
            if (verticalPosition != VerticalRuler.this.fScrollPos) {
                VerticalRuler.this.redraw();
            }
        }

        public void modelChanged(IAnnotationModel model) {
            VerticalRuler.this.update();
        }

        public void textChanged(TextEvent e) {
            if (VerticalRuler.this.fTextViewer != null && e.getViewerRedrawState()) {
                VerticalRuler.this.redraw();
            }
        }
    }
}

