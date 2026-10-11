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
 *  org.eclipse.jface.text.source.AnnotationModelEvent
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelListener
 *  org.eclipse.jface.text.source.IAnnotationModelListenerExtension
 *  org.eclipse.jface.util.Util
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackAdapter
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.ScrollBar
 */
package org.eclipse.jface.text.source;

import java.util.ArrayList;
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
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationModelEvent;
import org.eclipse.jface.text.source.IAnnotationAccess;
import org.eclipse.jface.text.source.IAnnotationAccessExtension;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelListener;
import org.eclipse.jface.text.source.IAnnotationModelListenerExtension;
import org.eclipse.jface.text.source.IOverviewRuler;
import org.eclipse.jface.text.source.ISharedTextColors;
import org.eclipse.jface.text.source.JFaceTextMessages;
import org.eclipse.jface.text.source.projection.AnnotationBag;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackAdapter;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.ScrollBar;

public class OverviewRuler
implements IOverviewRuler {
    private static final boolean DEBUG_DRAW = false;
    private static final boolean DEBUG_COMPUTE_Y = false;
    private static final boolean DEBUG_TO_DOCUMENT_LINE_NUMBER = false;
    private static final boolean IS_MAC = Util.isMac();
    private static final int INSET = 2;
    private static final int ANNOTATION_HEIGHT = 4;
    private static boolean ANNOTATION_HEIGHT_SCALABLE = true;
    private IAnnotationModel fModel;
    private ITextViewer fTextViewer;
    private Canvas fCanvas;
    private Canvas fHeader;
    private Image fBuffer;
    private InternalListener fInternalListener = new InternalListener();
    private int fWidth;
    private Cursor fHitDetectionCursor;
    private Cursor fLastCursor;
    private int fLastMouseButtonActivityLine = -1;
    private int fAnnotationHeight = -1;
    private IAnnotationAccess fAnnotationAccess;
    private HeaderPainter fHeaderPainter;
    private Set fConfiguredAnnotationTypes = new HashSet();
    private Set fConfiguredHeaderAnnotationTypes = new HashSet();
    private Map fAnnotationTypes2Colors = new HashMap();
    private ISharedTextColors fSharedTextColors;
    private List fAnnotationsSortedByLayer = new ArrayList();
    private List fLayersSortedByLayer = new ArrayList();
    private Map fAllowedAnnotationTypes = new HashMap();
    private Map fAllowedHeaderAnnotationTypes = new HashMap();
    private List fCachedAnnotations = new ArrayList();
    private Object fRunnableLock = new Object();
    private boolean fIsRunnablePosted = false;
    private Runnable fRunnable = new Runnable(){

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void run() {
            Object object = OverviewRuler.this.fRunnableLock;
            synchronized (object) {
                OverviewRuler.this.fIsRunnablePosted = false;
            }
            OverviewRuler.this.redraw();
            OverviewRuler.this.updateHeader();
        }
    };
    private boolean fIsTemporaryAnnotationDiscolored;

    public OverviewRuler(IAnnotationAccess annotationAccess, int width, ISharedTextColors sharedColors) {
        this(annotationAccess, width, sharedColors, false);
    }

    public OverviewRuler(IAnnotationAccess annotationAccess, int width, ISharedTextColors sharedColors, boolean discolorTemporaryAnnotation) {
        this.fAnnotationAccess = annotationAccess;
        this.fWidth = width;
        this.fSharedTextColors = sharedColors;
        this.fIsTemporaryAnnotationDiscolored = discolorTemporaryAnnotation;
    }

    public Control getControl() {
        return this.fCanvas;
    }

    public int getWidth() {
        return this.fWidth;
    }

    public void setModel(IAnnotationModel model) {
        if (model != this.fModel || model != null) {
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

    public Control createControl(Composite parent, ITextViewer textViewer) {
        this.fTextViewer = textViewer;
        this.fHitDetectionCursor = parent.getDisplay().getSystemCursor(21);
        this.fHeader = new Canvas(parent, 0);
        if (this.fAnnotationAccess instanceof IAnnotationAccessExtension) {
            this.fHeader.addMouseTrackListener((MouseTrackListener)new MouseTrackAdapter(){

                public void mouseEnter(MouseEvent e) {
                    OverviewRuler.this.updateHeaderToolTipText();
                }
            });
        }
        this.fCanvas = new Canvas(parent, 262144);
        this.fCanvas.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent event) {
                if (OverviewRuler.this.fTextViewer != null) {
                    OverviewRuler.this.doubleBufferPaint(event.gc);
                }
            }
        });
        this.fCanvas.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent event) {
                OverviewRuler.this.handleDispose();
                OverviewRuler.this.fTextViewer = null;
            }
        });
        this.fCanvas.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDown(MouseEvent event) {
                OverviewRuler.this.handleMouseDown(event);
            }
        });
        this.fCanvas.addMouseMoveListener(new MouseMoveListener(){

            public void mouseMove(MouseEvent event) {
                OverviewRuler.this.handleMouseMove(event);
            }
        });
        if (this.fTextViewer != null) {
            this.fTextViewer.addTextListener(this.fInternalListener);
        }
        return this.fCanvas;
    }

    private void handleDispose() {
        if (this.fTextViewer != null) {
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
        this.fConfiguredAnnotationTypes.clear();
        this.fAllowedAnnotationTypes.clear();
        this.fConfiguredHeaderAnnotationTypes.clear();
        this.fAllowedHeaderAnnotationTypes.clear();
        this.fAnnotationTypes2Colors.clear();
        this.fAnnotationsSortedByLayer.clear();
        this.fLayersSortedByLayer.clear();
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
        try {
            gc.setBackground(this.fCanvas.getBackground());
            gc.fillRectangle(0, 0, size.x, size.y);
            this.cacheAnnotations();
            this.doPaint(gc);
        }
        finally {
            gc.dispose();
        }
        dest.drawImage(this.fBuffer, 0, 0);
    }

    private void cacheAnnotations() {
        this.fCachedAnnotations.clear();
        if (this.fModel != null) {
            Iterator iter = this.fModel.getAnnotationIterator();
            while (iter.hasNext()) {
                Annotation annotation = (Annotation)iter.next();
                if (annotation.isMarkedDeleted() || this.skip(annotation.getType())) continue;
                this.fCachedAnnotations.add(annotation);
            }
        }
    }

    private void doPaint(GC gc) {
        Rectangle r = new Rectangle(0, 0, 0, 0);
        int hh = 4;
        IDocument document = this.fTextViewer.getDocument();
        StyledText textWidget = this.fTextViewer.getTextWidget();
        ITextViewerExtension5 extension = null;
        IRegion visible = null;
        if (this.fTextViewer instanceof ITextViewerExtension5) {
            extension = (ITextViewerExtension5)((Object)this.fTextViewer);
        } else {
            visible = this.fTextViewer.getVisibleRegion();
        }
        WidgetInfos infos = null;
        Iterator iterator = this.fAnnotationsSortedByLayer.iterator();
        while (iterator.hasNext()) {
            Object annotationType = iterator.next();
            if (this.skip(annotationType)) continue;
            int[] style = new int[]{4, 2};
            int t = 0;
            while (t < style.length) {
                boolean areColorsComputed = false;
                Color fill = null;
                Color stroke = null;
                FilterIterator e = new FilterIterator(annotationType, style[t], this.fCachedAnnotations.iterator());
                while (e.hasNext()) {
                    Annotation a = (Annotation)e.next();
                    Position p = this.fModel.getPosition(a);
                    if (p == null || visible != null && !p.overlapsWith(visible.getOffset(), visible.getLength())) continue;
                    int annotationOffset = p.getOffset();
                    int annotationLength = p.getLength();
                    IRegion widgetRegion = null;
                    if (visible != null) {
                        annotationOffset = Math.max(p.getOffset(), visible.getOffset());
                        int annotationEnd = Math.min(p.getOffset() + p.getLength(), visible.getOffset() + visible.getLength());
                        annotationLength = annotationEnd - annotationOffset;
                    } else {
                        widgetRegion = extension.modelRange2WidgetRange((IRegion)new Region(annotationOffset, annotationLength));
                        if (widgetRegion == null) continue;
                    }
                    if (infos == null) {
                        infos = new WidgetInfos(textWidget, this.fCanvas);
                        r.x = 2;
                        r.width = infos.bounds.width - 4;
                    }
                    try {
                        int startOffset = visible != null ? annotationOffset - visible.getOffset() : widgetRegion.getOffset();
                        int startLine = textWidget.getLineAtOffset(startOffset);
                        int yy = this.computeY(startLine, infos);
                        if (ANNOTATION_HEIGHT_SCALABLE) {
                            int numbersOfLines = document.getNumberOfLines(annotationOffset, annotationLength);
                            IRegion lastLine = document.getLineInformationOfOffset(annotationOffset + annotationLength);
                            if (lastLine.getOffset() == annotationOffset + annotationLength) {
                                int yy2 = this.computeY(startLine + (numbersOfLines -= 2), infos);
                                hh = Math.max(yy2 - yy, 4);
                            } else {
                                hh = 4;
                            }
                        }
                        this.fAnnotationHeight = hh;
                        if (!areColorsComputed) {
                            fill = this.getFillColor(annotationType, style[t] == 2);
                            stroke = this.getStrokeColor(annotationType, style[t] == 2);
                            areColorsComputed = true;
                        }
                        if (fill != null) {
                            gc.setBackground(fill);
                            gc.fillRectangle(2, yy, infos.bounds.width - 4, hh);
                        }
                        if (stroke == null) continue;
                        gc.setForeground(stroke);
                        r.y = yy;
                        if (yy + hh == infos.bounds.height) {
                            --r.y;
                        }
                        r.height = hh;
                        gc.setLineWidth(0);
                        gc.drawRectangle(r);
                    }
                    catch (BadLocationException badLocationException) {}
                }
                ++t;
            }
        }
    }

    private int computeY(int startLine, WidgetInfos infos) {
        int yy = infos.bounds.height > infos.writable || infos.invisibleLines <= 0.0 ? Math.max(0, (2 * startLine + 1) * infos.writable / (infos.maxLines * 2) - infos.bounds.y) : ((double)(startLine + 1) < infos.visibleLines / 2.0 ? (int)((double)(startLine * infos.thumbHeight) / infos.visibleLines) : ((double)infos.maxLines - infos.visibleLines / 2.0 <= (double)startLine ? (int)((double)(infos.bounds.height - 1) - (double)infos.thumbHeight / 2.0 + ((double)startLine - ((double)infos.maxLines - infos.visibleLines / 2.0) + 1.0) * (double)infos.thumbHeight / infos.visibleLines) : (int)((double)infos.thumbHeight / 2.0 + ((double)(startLine + 1) - infos.visibleLines / 2.0) * (double)(infos.bounds.height - 1 - infos.thumbHeight) / infos.invisibleLines)));
        yy -= 2;
        yy = Math.max(0, Math.min(yy, infos.bounds.height - 1 - 4));
        return yy;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void update() {
        Display d;
        if (this.fCanvas != null && !this.fCanvas.isDisposed() && (d = this.fCanvas.getDisplay()) != null) {
            Object object = this.fRunnableLock;
            synchronized (object) {
                if (this.fIsRunnablePosted) {
                    return;
                }
                this.fIsRunnablePosted = true;
            }
            d.asyncExec(this.fRunnable);
        }
    }

    private void redraw() {
        if (this.fTextViewer == null || this.fModel == null) {
            return;
        }
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

    private int[] toLineNumbers(int y_coordinate, boolean annotationRect) {
        int i;
        int[] pixels;
        WidgetInfos infos = new WidgetInfos(this.fTextViewer.getTextWidget(), this.fCanvas);
        if (y_coordinate >= infos.writable || y_coordinate >= infos.bounds.height || y_coordinate < 0) {
            return new int[]{-1, -1};
        }
        if (annotationRect && 4 >= infos.bounds.height / infos.maxLines) {
            annotationRect = false;
        }
        int[] lines = new int[2];
        int pixelEnd = Math.min(infos.bounds.height, y_coordinate + 2 + 1);
        if (annotationRect) {
            pixels = new int[]{pixelEnd};
        } else {
            int pixelStart = Math.max(y_coordinate - 2 + 1, 0);
            pixels = new int[]{pixelStart, pixelEnd};
        }
        if (infos.bounds.height > infos.writable || infos.invisibleLines <= 0.0) {
            i = 0;
            while (i < pixels.length) {
                lines[i] = (int)((double)((pixels[i] + infos.bounds.y) * infos.maxLines) / (double)infos.writable);
                ++i;
            }
        } else if (y_coordinate < infos.thumbHeight / 2) {
            i = 0;
            while (i < pixels.length) {
                lines[i] = (int)((double)pixels[i] * infos.visibleLines / (double)infos.thumbHeight);
                ++i;
            }
        } else if (infos.bounds.height - 1 - infos.thumbHeight / 2 < y_coordinate) {
            i = 0;
            while (i < pixels.length) {
                lines[i] = (int)(((double)(pixels[i] - (infos.bounds.height - 1)) + (double)infos.thumbHeight / 2.0) * infos.visibleLines / (double)infos.thumbHeight - 1.0 + ((double)infos.maxLines - infos.visibleLines / 2.0));
                ++i;
            }
        } else {
            i = 0;
            while (i < pixels.length) {
                lines[i] = (int)(((double)pixels[i] - (double)infos.thumbHeight / 2.0) * infos.invisibleLines / (double)(infos.bounds.height - 1 - infos.thumbHeight) - 1.0 + infos.visibleLines / 2.0);
                ++i;
            }
        }
        if (y_coordinate < 4 && y_coordinate < infos.bounds.y) {
            lines[0] = 0;
        } else if (lines[0] < 0) {
            lines[0] = 0;
        }
        if (annotationRect) {
            int y0 = this.computeY(lines[0], infos);
            if (y_coordinate < y0 || y0 + 4 < y_coordinate) {
                lines[0] = -1;
                lines[1] = -1;
                return lines;
            }
            lines[1] = lines[0];
        }
        if (lines[1] > infos.maxLines) {
            lines[1] = infos.maxLines;
        }
        if (this.fTextViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fTextViewer);
            lines[0] = extension.widgetLine2ModelLine(lines[0]);
            lines[1] = extension.widgetLine2ModelLine(lines[1]);
        } else {
            try {
                IRegion visible = this.fTextViewer.getVisibleRegion();
                int lineNumber = this.fTextViewer.getDocument().getLineOfOffset(visible.getOffset());
                lines[0] = lines[0] + lineNumber;
                lines[1] = lines[1] + lineNumber;
            }
            catch (BadLocationException badLocationException) {}
        }
        return lines;
    }

    private Position getAnnotationPosition(int[] lineNumbers) {
        if (lineNumbers[0] == -1) {
            return null;
        }
        Position found = null;
        try {
            IDocument d = this.fTextViewer.getDocument();
            IRegion line = d.getLineInformation(lineNumbers[0]);
            int start = line.getOffset();
            line = d.getLineInformation(lineNumbers[lineNumbers.length - 1]);
            int end = line.getOffset() + line.getLength();
            int i = this.fAnnotationsSortedByLayer.size() - 1;
            while (i >= 0) {
                Object annotationType = this.fAnnotationsSortedByLayer.get(i);
                FilterIterator e = new FilterIterator(annotationType, 6);
                while (e.hasNext() && found == null) {
                    Position p;
                    Annotation a = (Annotation)e.next();
                    if (a.isMarkedDeleted() || this.skip(a.getType()) || (p = this.fModel.getPosition(a)) == null) continue;
                    int posOffset = p.getOffset();
                    int posEnd = posOffset + p.getLength();
                    IRegion region = d.getLineInformationOfOffset(posEnd);
                    if (posEnd > posOffset && region.getOffset() == posEnd) {
                        region = d.getLineInformationOfOffset(--posEnd);
                    }
                    if (posOffset > end || posEnd < start) continue;
                    found = p;
                }
                --i;
            }
        }
        catch (BadLocationException badLocationException) {}
        return found;
    }

    private int findBestMatchingLineNumber(int[] lineNumbers) {
        Position pos;
        block4: {
            if (lineNumbers == null || lineNumbers.length < 1) {
                return -1;
            }
            try {
                pos = this.getAnnotationPosition(lineNumbers);
                if (pos != null) break block4;
                return -1;
            }
            catch (BadLocationException badLocationException) {
                return -1;
            }
        }
        return this.fTextViewer.getDocument().getLineOfOffset(pos.getOffset());
    }

    private void handleMouseDown(MouseEvent event) {
        if (this.fTextViewer != null) {
            Position p;
            int[] lines = this.toLineNumbers(event.y, true);
            if (lines[0] == -1) {
                lines = this.toLineNumbers(event.y, false);
            }
            if ((p = this.getAnnotationPosition(lines)) == null && event.button == 1) {
                try {
                    p = new Position(this.fTextViewer.getDocument().getLineInformation(lines[0]).getOffset(), 0);
                }
                catch (BadLocationException badLocationException) {}
            }
            if (p != null) {
                this.fTextViewer.revealRange(p.getOffset(), p.getLength());
                this.fTextViewer.setSelectedRange(p.getOffset(), p.getLength());
            }
            this.fTextViewer.getTextWidget().setFocus();
        }
        this.fLastMouseButtonActivityLine = this.toDocumentLineNumber(event.y);
    }

    private void handleMouseMove(MouseEvent event) {
        if (this.fTextViewer != null) {
            Cursor cursor;
            int[] lines = this.toLineNumbers(event.y, true);
            Position p = this.getAnnotationPosition(lines);
            Cursor cursor2 = cursor = p != null ? this.fHitDetectionCursor : null;
            if (cursor != this.fLastCursor) {
                this.fCanvas.setCursor(cursor);
                this.fLastCursor = cursor;
            }
        }
    }

    public void addAnnotationType(Object annotationType) {
        this.fConfiguredAnnotationTypes.add(annotationType);
        this.fAllowedAnnotationTypes.clear();
    }

    public void removeAnnotationType(Object annotationType) {
        this.fConfiguredAnnotationTypes.remove(annotationType);
        this.fAllowedAnnotationTypes.clear();
    }

    public void setAnnotationTypeLayer(Object annotationType, int layer) {
        int j = this.fAnnotationsSortedByLayer.indexOf(annotationType);
        if (j != -1) {
            this.fAnnotationsSortedByLayer.remove(j);
            this.fLayersSortedByLayer.remove(j);
        }
        if (layer >= 0) {
            int i = 0;
            int size = this.fLayersSortedByLayer.size();
            while (i < size && layer >= (Integer)this.fLayersSortedByLayer.get(i)) {
                ++i;
            }
            Integer layerObj = new Integer(layer);
            this.fLayersSortedByLayer.add(i, layerObj);
            this.fAnnotationsSortedByLayer.add(i, annotationType);
        }
    }

    public void setAnnotationTypeColor(Object annotationType, Color color) {
        if (color != null) {
            this.fAnnotationTypes2Colors.put(annotationType, color);
        } else {
            this.fAnnotationTypes2Colors.remove(annotationType);
        }
    }

    private boolean skip(Object annotationType) {
        return !this.contains(annotationType, this.fAllowedAnnotationTypes, this.fConfiguredAnnotationTypes);
    }

    private boolean skipInHeader(Object annotationType) {
        return !this.contains(annotationType, this.fAllowedHeaderAnnotationTypes, this.fConfiguredHeaderAnnotationTypes);
    }

    private boolean contains(Object annotationType, Map allowed, Set configured) {
        Boolean cached = (Boolean)allowed.get(annotationType);
        if (cached != null) {
            return cached;
        }
        boolean covered = this.isCovered(annotationType, configured);
        allowed.put(annotationType, covered ? Boolean.TRUE : Boolean.FALSE);
        return covered;
    }

    private boolean isCovered(Object annotationType, Set configured) {
        if (this.fAnnotationAccess instanceof IAnnotationAccessExtension) {
            IAnnotationAccessExtension extension = (IAnnotationAccessExtension)((Object)this.fAnnotationAccess);
            Iterator e = configured.iterator();
            while (e.hasNext()) {
                if (!extension.isSubtype(annotationType, e.next())) continue;
                return true;
            }
            return false;
        }
        return configured.contains(annotationType);
    }

    private static RGB interpolate(RGB fg, RGB bg, double scale) {
        return new RGB((int)((1.0 - scale) * (double)fg.red + scale * (double)bg.red), (int)((1.0 - scale) * (double)fg.green + scale * (double)bg.green), (int)((1.0 - scale) * (double)fg.blue + scale * (double)bg.blue));
    }

    private static double greyLevel(RGB rgb) {
        if (rgb.red == rgb.green && rgb.green == rgb.blue) {
            return rgb.red;
        }
        return 0.299 * (double)rgb.red + 0.587 * (double)rgb.green + 0.114 * (double)rgb.blue + 0.5;
    }

    private static boolean isDark(RGB rgb) {
        return OverviewRuler.greyLevel(rgb) > 128.0;
    }

    private Color getColor(Object annotationType, double scale) {
        Color base = this.findColor(annotationType);
        if (base == null) {
            return null;
        }
        RGB baseRGB = base.getRGB();
        RGB background = this.fCanvas.getBackground().getRGB();
        boolean darkBase = OverviewRuler.isDark(baseRGB);
        boolean darkBackground = OverviewRuler.isDark(background);
        if (darkBase && darkBackground) {
            background = new RGB(255, 255, 255);
        } else if (!darkBase && !darkBackground) {
            background = new RGB(0, 0, 0);
        }
        return this.fSharedTextColors.getColor(OverviewRuler.interpolate(baseRGB, background, scale));
    }

    private Color findColor(Object annotationType) {
        IAnnotationAccessExtension extension;
        Object[] superTypes;
        Color color = (Color)this.fAnnotationTypes2Colors.get(annotationType);
        if (color != null) {
            return color;
        }
        if (this.fAnnotationAccess instanceof IAnnotationAccessExtension && (superTypes = (extension = (IAnnotationAccessExtension)((Object)this.fAnnotationAccess)).getSupertypes(annotationType)) != null) {
            int i = 0;
            while (i < superTypes.length) {
                color = (Color)this.fAnnotationTypes2Colors.get(superTypes[i]);
                if (color != null) {
                    return color;
                }
                ++i;
            }
        }
        return null;
    }

    private Color getStrokeColor(Object annotationType, boolean temporary) {
        return this.getColor(annotationType, temporary && this.fIsTemporaryAnnotationDiscolored ? 0.5 : 0.2);
    }

    private Color getFillColor(Object annotationType, boolean temporary) {
        return this.getColor(annotationType, temporary && this.fIsTemporaryAnnotationDiscolored ? 0.9 : 0.75);
    }

    public int getLineOfLastMouseButtonActivity() {
        if (this.fLastMouseButtonActivityLine >= this.fTextViewer.getDocument().getNumberOfLines()) {
            this.fLastMouseButtonActivityLine = -1;
        }
        return this.fLastMouseButtonActivityLine;
    }

    public int toDocumentLineNumber(int y_coordinate) {
        int bestLine;
        if (this.fTextViewer == null || y_coordinate == -1) {
            return -1;
        }
        int[] lineNumbers = this.toLineNumbers(y_coordinate, true);
        if (lineNumbers[0] == -1) {
            lineNumbers = this.toLineNumbers(y_coordinate, false);
        }
        if ((bestLine = this.findBestMatchingLineNumber(lineNumbers)) == -1 && lineNumbers.length > 0) {
            return lineNumbers[0];
        }
        return bestLine;
    }

    public IAnnotationModel getModel() {
        return this.fModel;
    }

    public int getAnnotationHeight() {
        return this.fAnnotationHeight;
    }

    public boolean hasAnnotation(int y) {
        return this.findBestMatchingLineNumber(this.toLineNumbers(y, true)) != -1;
    }

    public Control getHeaderControl() {
        return this.fHeader;
    }

    public void addHeaderAnnotationType(Object annotationType) {
        this.fConfiguredHeaderAnnotationTypes.add(annotationType);
        this.fAllowedHeaderAnnotationTypes.clear();
    }

    public void removeHeaderAnnotationType(Object annotationType) {
        this.fConfiguredHeaderAnnotationTypes.remove(annotationType);
        this.fAllowedHeaderAnnotationTypes.clear();
    }

    private void updateHeader() {
        if (this.fHeader == null || this.fHeader.isDisposed()) {
            return;
        }
        this.fHeader.setToolTipText(null);
        Object colorType = null;
        int i = this.fAnnotationsSortedByLayer.size() - 1;
        block0: while (i >= 0) {
            Object annotationType = this.fAnnotationsSortedByLayer.get(i);
            if (!this.skipInHeader(annotationType) && !this.skip(annotationType)) {
                FilterIterator e = new FilterIterator(annotationType, 14, this.fCachedAnnotations.iterator());
                while (e.hasNext()) {
                    if (e.next() == null) continue;
                    colorType = annotationType;
                    break block0;
                }
            }
            --i;
        }
        Color color = null;
        if (colorType != null) {
            color = this.findColor(colorType);
        }
        if (color == null) {
            if (this.fHeaderPainter != null) {
                this.fHeaderPainter.setColor(null);
            }
        } else {
            if (this.fHeaderPainter == null) {
                this.fHeaderPainter = new HeaderPainter();
                this.fHeader.addPaintListener((PaintListener)this.fHeaderPainter);
            }
            this.fHeaderPainter.setColor(color);
        }
        this.fHeader.redraw();
    }

    private void updateHeaderToolTipText() {
        if (this.fHeader == null || this.fHeader.isDisposed()) {
            return;
        }
        if (this.fHeader.getToolTipText() != null) {
            return;
        }
        String overview = "";
        int i = this.fAnnotationsSortedByLayer.size() - 1;
        while (i >= 0) {
            Object annotationType = this.fAnnotationsSortedByLayer.get(i);
            if (!this.skipInHeader(annotationType) && !this.skip(annotationType)) {
                int count = 0;
                String annotationTypeLabel = null;
                FilterIterator e = new FilterIterator(annotationType, 14, this.fCachedAnnotations.iterator());
                while (e.hasNext()) {
                    Annotation annotation = (Annotation)e.next();
                    if (annotation == null) continue;
                    if (annotationTypeLabel == null) {
                        annotationTypeLabel = ((IAnnotationAccessExtension)((Object)this.fAnnotationAccess)).getTypeLabel(annotation);
                    }
                    ++count;
                }
                if (annotationTypeLabel != null) {
                    if (overview.length() > 0) {
                        overview = String.valueOf(overview) + "\n";
                    }
                    overview = String.valueOf(overview) + JFaceTextMessages.getFormattedString("OverviewRulerHeader.toolTipTextEntry", new Object[]{annotationTypeLabel, new Integer(count)});
                }
            }
            --i;
        }
        if (overview.length() > 0) {
            this.fHeader.setToolTipText(overview);
        }
    }

    class FilterIterator
    implements Iterator {
        static final int TEMPORARY = 2;
        static final int PERSISTENT = 4;
        static final int IGNORE_BAGS = 8;
        private Iterator fIterator;
        private Object fType;
        private Annotation fNext;
        private int fStyle;

        public FilterIterator(Object annotationType, int style) {
            this.fType = annotationType;
            this.fStyle = style;
            if (OverviewRuler.this.fModel != null) {
                this.fIterator = OverviewRuler.this.fModel.getAnnotationIterator();
                this.skip();
            }
        }

        public FilterIterator(Object annotationType, int style, Iterator iterator) {
            this.fType = annotationType;
            this.fStyle = style;
            this.fIterator = iterator;
            this.skip();
        }

        private void skip() {
            boolean temp = (this.fStyle & 2) != 0;
            boolean pers = (this.fStyle & 4) != 0;
            boolean ignr = (this.fStyle & 8) != 0;
            while (this.fIterator.hasNext()) {
                Annotation next = (Annotation)this.fIterator.next();
                if (next.isMarkedDeleted() || ignr && next instanceof AnnotationBag) continue;
                this.fNext = next;
                String annotationType = next.getType();
                if (this.fType != null && !this.fType.equals(annotationType) && (OverviewRuler.this.fConfiguredAnnotationTypes.contains(annotationType) || !this.isSubtype(annotationType))) continue;
                if (temp && pers) {
                    return;
                }
                if (pers && next.isPersistent()) {
                    return;
                }
                if (!temp || next.isPersistent()) continue;
                return;
            }
            this.fNext = null;
        }

        private boolean isSubtype(Object annotationType) {
            if (OverviewRuler.this.fAnnotationAccess instanceof IAnnotationAccessExtension) {
                IAnnotationAccessExtension extension = (IAnnotationAccessExtension)((Object)OverviewRuler.this.fAnnotationAccess);
                return extension.isSubtype(annotationType, this.fType);
            }
            return this.fType.equals(annotationType);
        }

        public boolean hasNext() {
            return this.fNext != null;
        }

        public Object next() {
            try {
                Annotation annotation = this.fNext;
                return annotation;
            }
            finally {
                if (this.fIterator != null) {
                    this.skip();
                }
            }
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    class HeaderPainter
    implements PaintListener {
        private Color fIndicatorColor;
        private Color fSeparatorColor;

        public HeaderPainter() {
            this.fSeparatorColor = OverviewRuler.this.fHeader.getDisplay().getSystemColor(18);
        }

        public void setColor(Color color) {
            this.fIndicatorColor = color;
        }

        private void drawBevelRect(GC gc, int x, int y, int w, int h, Color topLeft, Color bottomRight) {
            gc.setForeground(topLeft);
            gc.drawLine(x, y, x + w - 1, y);
            gc.drawLine(x, y, x, y + h - 1);
            gc.setForeground(bottomRight);
            gc.drawLine(x + w, y, x + w, y + h);
            gc.drawLine(x, y + h, x + w, y + h);
        }

        public void paintControl(PaintEvent e) {
            boolean isTall;
            if (this.fIndicatorColor == null) {
                return;
            }
            Point s = OverviewRuler.this.fHeader.getSize();
            e.gc.setBackground(this.fIndicatorColor);
            Rectangle headerBounds = OverviewRuler.this.fHeader.getBounds();
            boolean isOnTop = headerBounds.y + headerBounds.height <= ((OverviewRuler)OverviewRuler.this).fCanvas.getLocation().y;
            boolean bl = isTall = s.y > s.x + 8;
            int y = !isOnTop ? s.y - 12 : (isTall ? 4 : (s.y - 8) / 2);
            Rectangle r = new Rectangle(2, y, s.x - 4, 8);
            e.gc.fillRectangle(r);
            this.drawBevelRect(e.gc, r.x, r.y, r.width - 1, r.height - 1, this.fSeparatorColor, this.fSeparatorColor);
            e.gc.setForeground(this.fSeparatorColor);
            e.gc.setLineWidth(0);
            if (!isOnTop || !isTall) {
                e.gc.drawLine(0, s.y - 1, s.x - 1, s.y - 1);
            }
        }
    }

    class InternalListener
    implements ITextListener,
    IAnnotationModelListener,
    IAnnotationModelListenerExtension {
        InternalListener() {
        }

        public void textChanged(TextEvent e) {
            if (OverviewRuler.this.fTextViewer != null && e.getDocumentEvent() == null && e.getViewerRedrawState()) {
                OverviewRuler.this.redraw();
            }
        }

        public void modelChanged(IAnnotationModel model) {
            OverviewRuler.this.update();
        }

        public void modelChanged(AnnotationModelEvent event) {
            if (!event.isValid()) {
                return;
            }
            if (event.isWorldChange()) {
                OverviewRuler.this.update();
                return;
            }
            Annotation[] annotations = event.getAddedAnnotations();
            int length = annotations.length;
            int i = 0;
            while (i < length) {
                if (!OverviewRuler.this.skip(annotations[i].getType())) {
                    OverviewRuler.this.update();
                    return;
                }
                ++i;
            }
            annotations = event.getRemovedAnnotations();
            length = annotations.length;
            i = 0;
            while (i < length) {
                if (!OverviewRuler.this.skip(annotations[i].getType())) {
                    OverviewRuler.this.update();
                    return;
                }
                ++i;
            }
            annotations = event.getChangedAnnotations();
            length = annotations.length;
            i = 0;
            while (i < length) {
                if (!OverviewRuler.this.skip(annotations[i].getType())) {
                    OverviewRuler.this.update();
                    return;
                }
                ++i;
            }
        }
    }

    static class WidgetInfos {
        int maxLines;
        int thumbHeight;
        double visibleLines;
        double invisibleLines;
        Rectangle bounds;
        int writable;

        public WidgetInfos(StyledText textWidget, Canvas canvas) {
            this.maxLines = textWidget.getLineCount();
            this.bounds = canvas.getBounds();
            this.writable = JFaceTextUtil.computeLineHeight(textWidget, 0, this.maxLines, this.maxLines);
            ScrollBar verticalBar = textWidget.getVerticalBar();
            this.thumbHeight = verticalBar != null ? Math.max(Math.min(this.bounds.height, verticalBar.getThumbBounds().height), 0) : 0;
            int partialTopIndex = JFaceTextUtil.getPartialTopIndex(textWidget);
            int topLineHeight = textWidget.getLineHeight(textWidget.getOffsetAtLine(partialTopIndex));
            int topLinePixel = textWidget.getLinePixel(partialTopIndex);
            double topIndex = (double)partialTopIndex - (double)topLinePixel / (double)topLineHeight;
            int partialBottomIndex = JFaceTextUtil.getPartialBottomIndex(textWidget);
            int bottomLineHeight = textWidget.getLineHeight(textWidget.getOffsetAtLine(partialBottomIndex));
            int bottomLinePixel = textWidget.getLinePixel(partialBottomIndex);
            double bottomIndex = (double)partialBottomIndex - ((double)bottomLinePixel - (double)textWidget.getClientArea().height) / (double)bottomLineHeight;
            this.visibleLines = bottomIndex - topIndex;
            this.invisibleLines = (double)this.maxLines - this.visibleLines;
        }
    }
}

