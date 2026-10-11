/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.jface.text.source.IAnnotationModelExtension2
 *  org.eclipse.jface.text.source.IAnnotationModelListener
 *  org.eclipse.jface.util.Util
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Cursor
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

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationAccess;
import org.eclipse.jface.text.source.IAnnotationAccessExtension;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.IAnnotationModelExtension2;
import org.eclipse.jface.text.source.IAnnotationModelListener;
import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.jface.text.source.IVerticalRulerInfo;
import org.eclipse.jface.text.source.IVerticalRulerInfoExtension;
import org.eclipse.jface.text.source.IVerticalRulerListener;
import org.eclipse.jface.text.source.SourceViewer;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Cursor;
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

public class AnnotationRulerColumn
implements IVerticalRulerColumn,
IVerticalRulerInfo,
IVerticalRulerInfoExtension {
    private static final boolean IS_MAC = Util.isMac();
    private CompositeRuler fParentRuler;
    private ITextViewer fCachedTextViewer;
    private StyledText fCachedTextWidget;
    private Canvas fCanvas;
    private IAnnotationModel fModel;
    private int fScrollPos;
    private Image fBuffer;
    private InternalListener fInternalListener = new InternalListener();
    private int fWidth;
    private boolean fAllowSetModel = true;
    private Set fConfiguredAnnotationTypes = new HashSet();
    private Map fAllowedAnnotationTypes = new HashMap();
    private IAnnotationAccessExtension fAnnotationAccessExtension;
    private IAnnotationHover fHover;
    private List fCachedAnnotations = new ArrayList();
    private Comparator fTupleComparator = new TupleComparator();
    private Cursor fHitDetectionCursor;
    private Cursor fLastCursor;
    private MouseListener fMouseListener;

    public AnnotationRulerColumn(IAnnotationModel model, int width, IAnnotationAccess annotationAccess) {
        this(width, annotationAccess);
        this.fAllowSetModel = false;
        this.fModel = model;
        this.fModel.addAnnotationModelListener((IAnnotationModelListener)this.fInternalListener);
    }

    public AnnotationRulerColumn(int width, IAnnotationAccess annotationAccess) {
        this.fWidth = width;
        if (annotationAccess instanceof IAnnotationAccessExtension) {
            this.fAnnotationAccessExtension = (IAnnotationAccessExtension)((Object)annotationAccess);
        }
    }

    public AnnotationRulerColumn(IAnnotationModel model, int width) {
        this.fWidth = width;
        this.fAllowSetModel = false;
        this.fModel = model;
        this.fModel.addAnnotationModelListener((IAnnotationModelListener)this.fInternalListener);
    }

    public AnnotationRulerColumn(int width) {
        this.fWidth = width;
    }

    public Control getControl() {
        return this.fCanvas;
    }

    public int getWidth() {
        return this.fWidth;
    }

    public Control createControl(CompositeRuler parentRuler, Composite parentControl) {
        this.fParentRuler = parentRuler;
        this.fCachedTextViewer = parentRuler.getTextViewer();
        this.fCachedTextWidget = this.fCachedTextViewer.getTextWidget();
        this.fHitDetectionCursor = parentControl.getDisplay().getSystemCursor(21);
        this.fCanvas = this.createCanvas(parentControl);
        this.fCanvas.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent event) {
                if (AnnotationRulerColumn.this.fCachedTextViewer != null) {
                    AnnotationRulerColumn.this.doubleBufferPaint(event.gc);
                }
            }
        });
        this.fCanvas.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                AnnotationRulerColumn.this.handleDispose();
                AnnotationRulerColumn.this.fCachedTextViewer = null;
                AnnotationRulerColumn.this.fCachedTextWidget = null;
            }
        });
        this.fMouseListener = new MouseListener(){

            public void mouseUp(MouseEvent event) {
                int lineNumber;
                if (AnnotationRulerColumn.this.isPropagatingMouseListener()) {
                    AnnotationRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
                    lineNumber = AnnotationRulerColumn.this.fParentRuler.getLineOfLastMouseButtonActivity();
                } else {
                    lineNumber = AnnotationRulerColumn.this.fParentRuler.toDocumentLineNumber(event.y);
                }
                if (1 == event.button) {
                    AnnotationRulerColumn.this.mouseClicked(lineNumber);
                }
            }

            public void mouseDown(MouseEvent event) {
                int lineNumber;
                if (AnnotationRulerColumn.this.isPropagatingMouseListener()) {
                    AnnotationRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
                    lineNumber = AnnotationRulerColumn.this.fParentRuler.getLineOfLastMouseButtonActivity();
                } else {
                    lineNumber = AnnotationRulerColumn.this.fParentRuler.toDocumentLineNumber(event.y);
                }
                if (1 == event.button) {
                    AnnotationRulerColumn.this.mouseDown(lineNumber);
                }
            }

            public void mouseDoubleClick(MouseEvent event) {
                int lineNumber;
                if (AnnotationRulerColumn.this.isPropagatingMouseListener()) {
                    AnnotationRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
                    lineNumber = AnnotationRulerColumn.this.fParentRuler.getLineOfLastMouseButtonActivity();
                } else {
                    lineNumber = AnnotationRulerColumn.this.fParentRuler.toDocumentLineNumber(event.y);
                }
                if (1 == event.button) {
                    AnnotationRulerColumn.this.mouseDoubleClicked(lineNumber);
                }
            }
        };
        this.fCanvas.addMouseListener(this.fMouseListener);
        this.fCanvas.addMouseMoveListener(new MouseMoveListener(){

            public void mouseMove(MouseEvent e) {
                AnnotationRulerColumn.this.handleMouseMove(e);
            }
        });
        if (this.fCachedTextViewer != null) {
            this.fCachedTextViewer.addViewportListener(this.fInternalListener);
            this.fCachedTextViewer.addTextListener(this.fInternalListener);
        }
        return this.fCanvas;
    }

    private Canvas createCanvas(Composite parent) {
        return new Canvas(parent, 786432){

            public void addMouseListener(MouseListener listener) {
                if (AnnotationRulerColumn.this.isPropagatingMouseListener() || listener == AnnotationRulerColumn.this.fMouseListener) {
                    super.addMouseListener(listener);
                }
            }
        };
    }

    protected boolean isPropagatingMouseListener() {
        return true;
    }

    protected void mouseDown(int rulerLine) {
    }

    protected void mouseDoubleClicked(int rulerLine) {
    }

    protected void mouseClicked(int rulerLine) {
    }

    private void handleMouseMove(MouseEvent event) {
        this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
        if (this.fCachedTextViewer != null) {
            Cursor cursor;
            int line = this.toDocumentLineNumber(event.y);
            Cursor cursor2 = cursor = this.hasAnnotation(line) ? this.fHitDetectionCursor : null;
            if (cursor != this.fLastCursor) {
                this.fCanvas.setCursor(cursor);
                this.fLastCursor = cursor;
            }
        }
    }

    protected boolean hasAnnotation(int lineNumber) {
        IDocument d;
        IAnnotationModel model;
        block6: {
            model = this.fModel;
            if (this.fModel instanceof IAnnotationModelExtension) {
                model = ((IAnnotationModelExtension)this.fModel).getAnnotationModel(SourceViewer.MODEL_ANNOTATION_MODEL);
            }
            if (model == null) {
                return false;
            }
            try {
                d = this.fCachedTextViewer.getDocument();
                if (d != null) break block6;
                return false;
            }
            catch (BadLocationException badLocationException) {
                return false;
            }
        }
        IRegion line = d.getLineInformation(lineNumber);
        int lineStart = line.getOffset();
        int lineLength = line.getLength();
        Iterator e = this.fModel instanceof IAnnotationModelExtension2 ? ((IAnnotationModelExtension2)this.fModel).getAnnotationIterator(lineStart, lineLength + 1, true, true) : model.getAnnotationIterator();
        while (e.hasNext()) {
            Position p;
            Annotation a = (Annotation)e.next();
            if (a.isMarkedDeleted() || this.skip(a) || (p = model.getPosition(a)) == null || p.isDeleted() || !p.overlapsWith(lineStart, lineLength) && (p.length != 0 || p.offset != lineStart + lineLength)) continue;
            return true;
        }
        return false;
    }

    private void handleDispose() {
        if (this.fCachedTextViewer != null) {
            this.fCachedTextViewer.removeViewportListener(this.fInternalListener);
            this.fCachedTextViewer.removeTextListener(this.fInternalListener);
        }
        if (this.fModel != null) {
            this.fModel.removeAnnotationModelListener((IAnnotationModelListener)this.fInternalListener);
        }
        if (this.fBuffer != null) {
            this.fBuffer.dispose();
            this.fBuffer = null;
        }
        this.fConfiguredAnnotationTypes.clear();
        this.fAllowedAnnotationTypes.clear();
        this.fAnnotationAccessExtension = null;
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
        gc.setFont(this.fCachedTextWidget.getFont());
        try {
            gc.setBackground(this.fCanvas.getBackground());
            gc.fillRectangle(0, 0, size.x, size.y);
            if (this.fCachedTextViewer instanceof ITextViewerExtension5) {
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

    protected int getInclusiveTopIndexStartOffset() {
        if (this.fCachedTextWidget == null || this.fCachedTextWidget.isDisposed()) {
            return -1;
        }
        IDocument document = this.fCachedTextViewer.getDocument();
        if (document == null) {
            return -1;
        }
        int top = JFaceTextUtil.getPartialTopIndex(this.fCachedTextViewer);
        try {
            return document.getLineOffset(top);
        }
        catch (BadLocationException badLocationException) {
            return -1;
        }
    }

    private int getExclusiveBottomIndexEndOffset() {
        if (this.fCachedTextWidget == null || this.fCachedTextWidget.isDisposed()) {
            return -1;
        }
        IDocument document = this.fCachedTextViewer.getDocument();
        if (document == null) {
            return -1;
        }
        int bottom = JFaceTextUtil.getPartialBottomIndex(this.fCachedTextViewer);
        try {
            if (bottom >= document.getNumberOfLines()) {
                bottom = document.getNumberOfLines() - 1;
            }
            return document.getLineOffset(bottom) + document.getLineLength(bottom);
        }
        catch (BadLocationException badLocationException) {
            return -1;
        }
    }

    protected void doPaint(GC gc) {
        if (this.fModel == null || this.fCachedTextViewer == null) {
            return;
        }
        int topLeft = this.getInclusiveTopIndexStartOffset();
        int bottomRight = this.getExclusiveBottomIndexEndOffset();
        int viewPort = bottomRight - topLeft;
        this.fScrollPos = this.fCachedTextWidget.getTopPixel();
        Point dimension = this.fCanvas.getSize();
        IDocument doc = this.fCachedTextViewer.getDocument();
        if (doc == null) {
            return;
        }
        int topLine = -1;
        int bottomLine = -1;
        try {
            IRegion region = this.fCachedTextViewer.getVisibleRegion();
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
            Iterator iter = this.fModel instanceof IAnnotationModelExtension2 ? ((IAnnotationModelExtension2)this.fModel).getAnnotationIterator(topLeft, viewPort + 1, true, true) : this.fModel.getAnnotationIterator();
            while (iter.hasNext()) {
                int viewPortSize;
                Position position;
                Annotation annotation = (Annotation)iter.next();
                int lay = 0;
                if (this.fAnnotationAccessExtension != null) {
                    lay = this.fAnnotationAccessExtension.getLayer(annotation);
                }
                maxLayer = Math.max(maxLayer, lay + 1);
                if (lay != layer || this.skip(annotation) || (position = this.fModel.getPosition(annotation)) == null) continue;
                int n = viewPortSize = position.getLength() == 0 ? viewPort + 1 : viewPort;
                if (!position.overlapsWith(topLeft, viewPortSize)) continue;
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
                    r.y = JFaceTextUtil.computeLineHeight(this.fCachedTextWidget, 0, startLine -= topLine, startLine) - this.fScrollPos;
                    r.width = dimension.x;
                    int lines = (endLine -= topLine) - startLine;
                    r.height = JFaceTextUtil.computeLineHeight(this.fCachedTextWidget, startLine, endLine + 1, lines + 1);
                    if (r.y >= dimension.y || this.fAnnotationAccessExtension == null) continue;
                    this.fAnnotationAccessExtension.paint(annotation, gc, this.fCanvas, r);
                }
                catch (BadLocationException badLocationException) {}
            }
            ++layer;
        }
    }

    protected void doPaint1(GC gc) {
        if (this.fModel == null || this.fCachedTextViewer == null) {
            return;
        }
        ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fCachedTextViewer);
        this.fScrollPos = this.fCachedTextWidget.getTopPixel();
        Point dimension = this.fCanvas.getSize();
        int vOffset = this.getInclusiveTopIndexStartOffset();
        int vLength = this.getExclusiveBottomIndexEndOffset() - vOffset;
        Rectangle r = new Rectangle(0, 0, 0, 0);
        ReusableRegion range = new ReusableRegion();
        int minLayer = Integer.MAX_VALUE;
        int maxLayer = Integer.MIN_VALUE;
        this.fCachedAnnotations.clear();
        Iterator iter = this.fModel instanceof IAnnotationModelExtension2 ? ((IAnnotationModelExtension2)this.fModel).getAnnotationIterator(vOffset, vLength + 1, true, true) : this.fModel.getAnnotationIterator();
        while (iter.hasNext()) {
            int extendedVLength;
            Position position;
            Annotation annotation = (Annotation)iter.next();
            if (this.skip(annotation) || (position = this.fModel.getPosition(annotation)) == null) continue;
            int n = extendedVLength = position.getLength() == 0 ? vLength + 1 : vLength;
            if (!position.overlapsWith(vOffset, extendedVLength)) continue;
            int lay = 0;
            if (this.fAnnotationAccessExtension != null) {
                lay = this.fAnnotationAccessExtension.getLayer(annotation);
            }
            minLayer = Math.min(minLayer, lay);
            maxLayer = Math.max(maxLayer, lay);
            this.fCachedAnnotations.add(new Tuple(annotation, position));
        }
        Collections.sort(this.fCachedAnnotations, this.fTupleComparator);
        int layer = minLayer;
        while (layer <= maxLayer) {
            int i = 0;
            int n = this.fCachedAnnotations.size();
            while (i < n) {
                Tuple tuple = (Tuple)this.fCachedAnnotations.get(i);
                Annotation annotation = tuple.annotation;
                Position position = tuple.position;
                int lay = 0;
                if (this.fAnnotationAccessExtension != null) {
                    lay = this.fAnnotationAccessExtension.getLayer(annotation);
                }
                if (lay == layer) {
                    int endLine;
                    int startLine;
                    range.setOffset(position.getOffset());
                    range.setLength(position.getLength());
                    IRegion widgetRegion = extension.modelRange2WidgetRange(range);
                    if (widgetRegion != null && (startLine = extension.widgetLineOfWidgetOffset(widgetRegion.getOffset())) != -1 && (endLine = extension.widgetLineOfWidgetOffset(widgetRegion.getOffset() + Math.max(widgetRegion.getLength() - 1, 0))) != -1) {
                        r.x = 0;
                        r.y = JFaceTextUtil.computeLineHeight(this.fCachedTextWidget, 0, startLine, startLine) - this.fScrollPos;
                        r.width = dimension.x;
                        int lines = endLine - startLine;
                        r.height = JFaceTextUtil.computeLineHeight(this.fCachedTextWidget, startLine, endLine + 1, lines + 1);
                        if (r.y < dimension.y && this.fAnnotationAccessExtension != null) {
                            this.fAnnotationAccessExtension.paint(annotation, gc, this.fCanvas, r);
                        }
                    }
                }
                ++i;
            }
            ++layer;
        }
        this.fCachedAnnotations.clear();
    }

    private void postRedraw() {
        Display d;
        if (this.fCanvas != null && !this.fCanvas.isDisposed() && (d = this.fCanvas.getDisplay()) != null) {
            d.asyncExec(new Runnable(){

                public void run() {
                    AnnotationRulerColumn.this.redraw();
                }
            });
        }
    }

    public void redraw() {
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
        if (this.fAllowSetModel && model != this.fModel) {
            if (this.fModel != null) {
                this.fModel.removeAnnotationModelListener((IAnnotationModelListener)this.fInternalListener);
            }
            this.fModel = model;
            if (this.fModel != null) {
                this.fModel.addAnnotationModelListener((IAnnotationModelListener)this.fInternalListener);
            }
            this.postRedraw();
        }
    }

    public void setFont(Font font) {
    }

    protected ITextViewer getCachedTextViewer() {
        return this.fCachedTextViewer;
    }

    public IAnnotationModel getModel() {
        return this.fModel;
    }

    public void addAnnotationType(Object annotationType) {
        this.fConfiguredAnnotationTypes.add(annotationType);
        this.fAllowedAnnotationTypes.clear();
    }

    public int getLineOfLastMouseButtonActivity() {
        return this.fParentRuler.getLineOfLastMouseButtonActivity();
    }

    public int toDocumentLineNumber(int y_coordinate) {
        return this.fParentRuler.toDocumentLineNumber(y_coordinate);
    }

    public void removeAnnotationType(Object annotationType) {
        this.fConfiguredAnnotationTypes.remove(annotationType);
        this.fAllowedAnnotationTypes.clear();
    }

    private boolean skip(Annotation annotation) {
        String annotationType = annotation.getType();
        Boolean allowed = (Boolean)this.fAllowedAnnotationTypes.get(annotationType);
        if (allowed != null) {
            return allowed == false;
        }
        boolean skip = this.skip(annotationType);
        this.fAllowedAnnotationTypes.put(annotationType, !skip ? Boolean.TRUE : Boolean.FALSE);
        return skip;
    }

    private boolean skip(Object annotationType) {
        if (this.fAnnotationAccessExtension != null) {
            Iterator e = this.fConfiguredAnnotationTypes.iterator();
            while (e.hasNext()) {
                if (!this.fAnnotationAccessExtension.isSubtype(annotationType, e.next())) continue;
                return false;
            }
            return true;
        }
        return !this.fConfiguredAnnotationTypes.contains(annotationType);
    }

    public IAnnotationHover getHover() {
        return this.fHover;
    }

    public void setHover(IAnnotationHover hover) {
        this.fHover = hover;
    }

    public void addVerticalRulerListener(IVerticalRulerListener listener) {
        throw new UnsupportedOperationException();
    }

    public void removeVerticalRulerListener(IVerticalRulerListener listener) {
        throw new UnsupportedOperationException();
    }

    class InternalListener
    implements IViewportListener,
    IAnnotationModelListener,
    ITextListener {
        InternalListener() {
        }

        public void viewportChanged(int verticalPosition) {
            if (verticalPosition != AnnotationRulerColumn.this.fScrollPos) {
                AnnotationRulerColumn.this.redraw();
            }
        }

        public void modelChanged(IAnnotationModel model) {
            AnnotationRulerColumn.this.postRedraw();
        }

        public void textChanged(TextEvent e) {
            if (e.getViewerRedrawState()) {
                AnnotationRulerColumn.this.postRedraw();
            }
        }
    }

    private static class ReusableRegion
    extends Position
    implements IRegion {
        private ReusableRegion() {
        }
    }

    private static class Tuple {
        Annotation annotation;
        Position position;

        Tuple(Annotation annotation, Position position) {
            this.annotation = annotation;
            this.position = position;
        }
    }

    private static class TupleComparator
    implements Comparator {
        private TupleComparator() {
        }

        public int compare(Object o1, Object o2) {
            Position p1 = ((Tuple)o1).position;
            Position p2 = ((Tuple)o2).position;
            return p1.getOffset() - p2.getOffset();
        }
    }
}

