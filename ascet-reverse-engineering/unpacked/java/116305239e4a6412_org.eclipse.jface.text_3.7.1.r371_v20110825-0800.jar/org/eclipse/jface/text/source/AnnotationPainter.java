/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Platform
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
 *  org.eclipse.swt.SWTException
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.text.source;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IPaintPositionManager;
import org.eclipse.jface.text.IPainter;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextPresentationListener;
import org.eclipse.jface.text.ITextViewerExtension2;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationModelEvent;
import org.eclipse.jface.text.source.IAnnotationAccess;
import org.eclipse.jface.text.source.IAnnotationAccessExtension;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelListener;
import org.eclipse.jface.text.source.IAnnotationModelListenerExtension;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;

public class AnnotationPainter
implements IPainter,
PaintListener,
IAnnotationModelListener,
IAnnotationModelListenerExtension,
ITextPresentationListener {
    private static boolean DEBUG = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface.text/debug/AnnotationPainter"));
    private static final IDrawingStrategy SQUIGGLES_STRATEGY = new SquigglesStrategy();
    private static final IDrawingStrategy NULL_STRATEGY = new NullStrategy();
    private static final Object SQUIGGLES = new Object();
    private static final ITextStyleStrategy HIGHLIGHTING_STRATEGY = new HighlightingStrategy();
    private static final Object HIGHLIGHTING = new Object();
    private boolean fIsActive = false;
    private boolean fIsPainting = false;
    private volatile boolean fIsSettingModel = false;
    private ISourceViewer fSourceViewer;
    private StyledText fTextWidget;
    private IAnnotationModel fModel;
    private IAnnotationAccess fAnnotationAccess;
    private Map fDecorationsMap = new HashMap();
    private Map fHighlightedDecorationsMap = new HashMap();
    private Object fDecorationMapLock = new Object();
    private Object fHighlightedDecorationsMapLock = new Object();
    private Map fAnnotationType2Color = new HashMap();
    private Map fCachedAnnotationType2Color = new HashMap();
    private Position fCurrentHighlightAnnotationRange = null;
    private Position fTotalHighlightAnnotationRange = null;
    private Position fCurrentDrawRange = null;
    private Position fTotalDrawRange = null;
    private ITextInputListener fTextInputListener;
    private boolean fInputDocumentAboutToBeChanged;
    private Map fAnnotationType2PaintingStrategyId = new HashMap();
    private Map fCachedAnnotationType2PaintingStrategy = new HashMap();
    private Map fPaintingStrategyId2PaintingStrategy = new HashMap();
    private ReusableRegion fReusableRegion = new ReusableRegion();

    public AnnotationPainter(ISourceViewer sourceViewer, IAnnotationAccess access) {
        this.fSourceViewer = sourceViewer;
        this.fAnnotationAccess = access;
        this.fTextWidget = sourceViewer.getTextWidget();
        this.fPaintingStrategyId2PaintingStrategy.put(SQUIGGLES, SQUIGGLES_STRATEGY);
        this.fPaintingStrategyId2PaintingStrategy.put(HIGHLIGHTING, HIGHLIGHTING_STRATEGY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private boolean hasDecorations() {
        Object object = this.fDecorationMapLock;
        synchronized (object) {
            return !this.fDecorationsMap.isEmpty();
        }
    }

    private void enablePainting() {
        if (!this.fIsPainting && this.hasDecorations()) {
            this.fIsPainting = true;
            this.fTextWidget.addPaintListener((PaintListener)this);
            this.handleDrawRequest(null);
        }
    }

    private void disablePainting(boolean redraw) {
        if (this.fIsPainting) {
            this.fIsPainting = false;
            this.fTextWidget.removePaintListener((PaintListener)this);
            if (redraw && this.hasDecorations()) {
                this.handleDrawRequest(null);
            }
        }
    }

    private void setModel(IAnnotationModel model) {
        if (this.fModel != model) {
            if (this.fModel != null) {
                this.fModel.removeAnnotationModelListener((IAnnotationModelListener)this);
            }
            this.fModel = model;
            if (this.fModel != null) {
                try {
                    this.fIsSettingModel = true;
                    this.fModel.addAnnotationModelListener((IAnnotationModelListener)this);
                }
                finally {
                    this.fIsSettingModel = false;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void catchupWithModel(AnnotationModelEvent event) {
        Iterator<Annotation> e;
        HashMap<Annotation, Decoration> highlightedDecorationsMap;
        HashMap<Annotation, Decoration> decorationsMap;
        Object object = this.fDecorationMapLock;
        synchronized (object) {
            if (this.fDecorationsMap == null) {
                return;
            }
        }
        if (this.fModel == null) {
            object = this.fDecorationMapLock;
            synchronized (object) {
                this.fDecorationsMap.clear();
            }
            object = this.fHighlightedDecorationsMapLock;
            synchronized (object) {
                this.fHighlightedDecorationsMap.clear();
            }
            return;
        }
        IRegion clippingRegion = this.computeClippingRegion(null, true);
        IDocument document = this.fSourceViewer.getDocument();
        int highlightAnnotationRangeStart = Integer.MAX_VALUE;
        int highlightAnnotationRangeEnd = -1;
        int drawRangeStart = Integer.MAX_VALUE;
        int drawRangeEnd = -1;
        Object object2 = this.fDecorationMapLock;
        synchronized (object2) {
            decorationsMap = new HashMap<Annotation, Decoration>(this.fDecorationsMap);
        }
        object2 = this.fHighlightedDecorationsMapLock;
        synchronized (object2) {
            highlightedDecorationsMap = new HashMap<Annotation, Decoration>(this.fHighlightedDecorationsMap);
        }
        boolean isWorldChange = false;
        if (event == null || event.isWorldChange()) {
            isWorldChange = true;
            if (DEBUG && event == null) {
                System.out.println("AP: INTERNAL CHANGE");
            }
            Iterator iter = decorationsMap.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry entry = iter.next();
                Annotation annotation = (Annotation)entry.getKey();
                Decoration decoration = (Decoration)entry.getValue();
                this.drawDecoration(decoration, null, annotation, clippingRegion, document);
            }
            decorationsMap.clear();
            highlightedDecorationsMap.clear();
            e = this.fModel.getAnnotationIterator();
        } else {
            Annotation[] removedAnnotations = event.getRemovedAnnotations();
            int i = 0;
            int length = removedAnnotations.length;
            while (i < length) {
                Position position;
                Annotation annotation = removedAnnotations[i];
                Decoration decoration = (Decoration)highlightedDecorationsMap.remove(annotation);
                if (decoration != null && (position = decoration.fPosition) != null) {
                    highlightAnnotationRangeStart = Math.min(highlightAnnotationRangeStart, position.offset);
                    highlightAnnotationRangeEnd = Math.max(highlightAnnotationRangeEnd, position.offset + position.length);
                }
                if ((decoration = (Decoration)decorationsMap.remove(annotation)) != null) {
                    this.drawDecoration(decoration, null, annotation, clippingRegion, document);
                    position = decoration.fPosition;
                    if (position != null) {
                        drawRangeStart = Math.min(drawRangeStart, position.offset);
                        drawRangeEnd = Math.max(drawRangeEnd, position.offset + position.length);
                    }
                }
                ++i;
            }
            Annotation[] changedAnnotations = event.getChangedAnnotations();
            int i2 = 0;
            int length2 = changedAnnotations.length;
            while (i2 < length2) {
                Decoration oldDecoration;
                Annotation annotation = changedAnnotations[i2];
                boolean isHighlighting = false;
                Decoration decoration = (Decoration)highlightedDecorationsMap.get(annotation);
                if (decoration != null) {
                    isHighlighting = true;
                    if ((decoration = this.getDecoration(annotation, decoration)) == null) {
                        highlightedDecorationsMap.remove(annotation);
                    }
                } else if ((decoration = this.getDecoration(annotation, decoration)) != null && decoration.fPaintingStrategy instanceof ITextStyleStrategy) {
                    highlightedDecorationsMap.put(annotation, decoration);
                    isHighlighting = true;
                }
                boolean usesDrawingStrategy = !isHighlighting && decoration != null;
                Position position = null;
                position = decoration == null ? this.fModel.getPosition(annotation) : decoration.fPosition;
                if (position != null && !position.isDeleted()) {
                    if (isHighlighting) {
                        highlightAnnotationRangeStart = Math.min(highlightAnnotationRangeStart, position.offset);
                        highlightAnnotationRangeEnd = Math.max(highlightAnnotationRangeEnd, position.offset + position.length);
                    }
                    if (usesDrawingStrategy) {
                        drawRangeStart = Math.min(drawRangeStart, position.offset);
                        drawRangeEnd = Math.max(drawRangeEnd, position.offset + position.length);
                    }
                } else {
                    highlightedDecorationsMap.remove(annotation);
                }
                if (usesDrawingStrategy && (oldDecoration = (Decoration)decorationsMap.get(annotation)) != null) {
                    this.drawDecoration(oldDecoration, null, annotation, clippingRegion, document);
                    if (decoration != null) {
                        decorationsMap.put(annotation, decoration);
                    } else {
                        decorationsMap.remove(annotation);
                    }
                }
                ++i2;
            }
            e = Arrays.asList(event.getAddedAnnotations()).iterator();
        }
        while (e.hasNext()) {
            Annotation annotation = (Annotation)e.next();
            Decoration pp = this.getDecoration(annotation, null);
            if (pp == null) continue;
            if (pp.fPaintingStrategy instanceof IDrawingStrategy) {
                decorationsMap.put(annotation, pp);
                drawRangeStart = Math.min(drawRangeStart, ((Decoration)pp).fPosition.offset);
                drawRangeEnd = Math.max(drawRangeEnd, ((Decoration)pp).fPosition.offset + ((Decoration)pp).fPosition.length);
                continue;
            }
            if (!(pp.fPaintingStrategy instanceof ITextStyleStrategy)) continue;
            highlightedDecorationsMap.put(annotation, pp);
            highlightAnnotationRangeStart = Math.min(highlightAnnotationRangeStart, ((Decoration)pp).fPosition.offset);
            highlightAnnotationRangeEnd = Math.max(highlightAnnotationRangeEnd, ((Decoration)pp).fPosition.offset + ((Decoration)pp).fPosition.length);
        }
        Object object3 = this.fDecorationMapLock;
        synchronized (object3) {
            this.fDecorationsMap = decorationsMap;
            this.updateDrawRanges(drawRangeStart, drawRangeEnd, isWorldChange);
        }
        object3 = this.fHighlightedDecorationsMapLock;
        synchronized (object3) {
            this.fHighlightedDecorationsMap = highlightedDecorationsMap;
            this.updateHighlightRanges(highlightAnnotationRangeStart, highlightAnnotationRangeEnd, isWorldChange);
        }
    }

    private void updateHighlightRanges(int highlightAnnotationRangeStart, int highlightAnnotationRangeEnd, boolean isWorldChange) {
        if (highlightAnnotationRangeStart != Integer.MAX_VALUE) {
            int maxRangeStart = highlightAnnotationRangeStart;
            int maxRangeEnd = highlightAnnotationRangeEnd;
            if (this.fTotalHighlightAnnotationRange != null) {
                maxRangeStart = Math.min(maxRangeStart, this.fTotalHighlightAnnotationRange.offset);
                maxRangeEnd = Math.max(maxRangeEnd, this.fTotalHighlightAnnotationRange.offset + this.fTotalHighlightAnnotationRange.length);
            }
            if (this.fTotalHighlightAnnotationRange == null) {
                this.fTotalHighlightAnnotationRange = new Position(0);
            }
            if (this.fCurrentHighlightAnnotationRange == null) {
                this.fCurrentHighlightAnnotationRange = new Position(0);
            }
            if (isWorldChange) {
                this.fTotalHighlightAnnotationRange.offset = highlightAnnotationRangeStart;
                this.fTotalHighlightAnnotationRange.length = highlightAnnotationRangeEnd - highlightAnnotationRangeStart;
                this.fCurrentHighlightAnnotationRange.offset = maxRangeStart;
                this.fCurrentHighlightAnnotationRange.length = maxRangeEnd - maxRangeStart;
            } else {
                this.fTotalHighlightAnnotationRange.offset = maxRangeStart;
                this.fTotalHighlightAnnotationRange.length = maxRangeEnd - maxRangeStart;
                this.fCurrentHighlightAnnotationRange.offset = highlightAnnotationRangeStart;
                this.fCurrentHighlightAnnotationRange.length = highlightAnnotationRangeEnd - highlightAnnotationRangeStart;
            }
        } else if (isWorldChange) {
            this.fCurrentHighlightAnnotationRange = this.fTotalHighlightAnnotationRange;
            this.fTotalHighlightAnnotationRange = null;
        } else {
            this.fCurrentHighlightAnnotationRange = null;
        }
        this.adaptToDocumentLength(this.fCurrentHighlightAnnotationRange);
        this.adaptToDocumentLength(this.fTotalHighlightAnnotationRange);
    }

    private void updateDrawRanges(int drawRangeStart, int drawRangeEnd, boolean isWorldChange) {
        if (drawRangeStart != Integer.MAX_VALUE) {
            int maxRangeStart = drawRangeStart;
            int maxRangeEnd = drawRangeEnd;
            if (this.fTotalDrawRange != null) {
                maxRangeStart = Math.min(maxRangeStart, this.fTotalDrawRange.offset);
                maxRangeEnd = Math.max(maxRangeEnd, this.fTotalDrawRange.offset + this.fTotalDrawRange.length);
            }
            if (this.fTotalDrawRange == null) {
                this.fTotalDrawRange = new Position(0);
            }
            if (this.fCurrentDrawRange == null) {
                this.fCurrentDrawRange = new Position(0);
            }
            if (isWorldChange) {
                this.fTotalDrawRange.offset = drawRangeStart;
                this.fTotalDrawRange.length = drawRangeEnd - drawRangeStart;
                this.fCurrentDrawRange.offset = maxRangeStart;
                this.fCurrentDrawRange.length = maxRangeEnd - maxRangeStart;
            } else {
                this.fTotalDrawRange.offset = maxRangeStart;
                this.fTotalDrawRange.length = maxRangeEnd - maxRangeStart;
                this.fCurrentDrawRange.offset = drawRangeStart;
                this.fCurrentDrawRange.length = drawRangeEnd - drawRangeStart;
            }
        } else if (isWorldChange) {
            this.fCurrentDrawRange = this.fTotalDrawRange;
            this.fTotalDrawRange = null;
        } else {
            this.fCurrentDrawRange = null;
        }
        this.adaptToDocumentLength(this.fCurrentDrawRange);
        this.adaptToDocumentLength(this.fTotalDrawRange);
    }

    private void adaptToDocumentLength(Position position) {
        if (position == null) {
            return;
        }
        int length = this.fSourceViewer.getDocument().getLength();
        position.offset = Math.min(position.offset, length);
        position.length = Math.min(position.length, length - position.offset);
    }

    private Decoration getDecoration(Annotation annotation, Decoration decoration) {
        if (annotation.isMarkedDeleted()) {
            return null;
        }
        String type = annotation.getType();
        Object paintingStrategy = this.getPaintingStrategy(type);
        if (paintingStrategy == null || paintingStrategy instanceof NullStrategy) {
            return null;
        }
        Color color = this.getColor(type);
        if (color == null) {
            return null;
        }
        Position position = this.fModel.getPosition(annotation);
        if (position == null || position.isDeleted()) {
            return null;
        }
        if (decoration == null) {
            decoration = new Decoration();
        }
        decoration.fPosition = position;
        decoration.fColor = color;
        if (this.fAnnotationAccess instanceof IAnnotationAccessExtension) {
            IAnnotationAccessExtension extension = (IAnnotationAccessExtension)((Object)this.fAnnotationAccess);
            decoration.fLayer = extension.getLayer(annotation);
        } else {
            decoration.fLayer = 0;
        }
        decoration.fPaintingStrategy = paintingStrategy;
        return decoration;
    }

    private Object getPaintingStrategy(String type) {
        Object strategy = this.fCachedAnnotationType2PaintingStrategy.get(type);
        if (strategy != null) {
            return strategy;
        }
        strategy = this.fPaintingStrategyId2PaintingStrategy.get(this.fAnnotationType2PaintingStrategyId.get(type));
        if (strategy != null) {
            this.fCachedAnnotationType2PaintingStrategy.put(type, strategy);
            return strategy;
        }
        if (this.fAnnotationAccess instanceof IAnnotationAccessExtension) {
            IAnnotationAccessExtension ext = (IAnnotationAccessExtension)((Object)this.fAnnotationAccess);
            Object[] sts = ext.getSupertypes(type);
            int i = 0;
            while (i < sts.length) {
                strategy = this.fPaintingStrategyId2PaintingStrategy.get(this.fAnnotationType2PaintingStrategyId.get(sts[i]));
                if (strategy != null) {
                    this.fCachedAnnotationType2PaintingStrategy.put(type, strategy);
                    return strategy;
                }
                ++i;
            }
        }
        this.fCachedAnnotationType2PaintingStrategy.put(type, NULL_STRATEGY);
        return null;
    }

    private Color getColor(Object annotationType) {
        IAnnotationAccessExtension extension;
        Object[] superTypes;
        Color color = (Color)this.fCachedAnnotationType2Color.get(annotationType);
        if (color != null) {
            return color;
        }
        color = (Color)this.fAnnotationType2Color.get(annotationType);
        if (color != null) {
            this.fCachedAnnotationType2Color.put(annotationType, color);
            return color;
        }
        if (this.fAnnotationAccess instanceof IAnnotationAccessExtension && (superTypes = (extension = (IAnnotationAccessExtension)((Object)this.fAnnotationAccess)).getSupertypes(annotationType)) != null) {
            int i = 0;
            while (i < superTypes.length) {
                color = (Color)this.fAnnotationType2Color.get(superTypes[i]);
                if (color != null) {
                    this.fCachedAnnotationType2Color.put(annotationType, color);
                    return color;
                }
                ++i;
            }
        }
        return null;
    }

    private void updatePainting(AnnotationModelEvent event) {
        this.disablePainting(event == null);
        this.catchupWithModel(event);
        if (!this.fInputDocumentAboutToBeChanged) {
            this.invalidateTextPresentation();
        }
        this.enablePainting();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void invalidateTextPresentation() {
        Region r = null;
        Object object = this.fHighlightedDecorationsMapLock;
        synchronized (object) {
            if (this.fCurrentHighlightAnnotationRange != null) {
                r = new Region(this.fCurrentHighlightAnnotationRange.getOffset(), this.fCurrentHighlightAnnotationRange.getLength());
            }
        }
        if (r == null) {
            return;
        }
        if (this.fSourceViewer instanceof ITextViewerExtension2) {
            if (DEBUG) {
                System.out.println("AP: invalidating offset: " + r.getOffset() + ", length= " + r.getLength());
            }
            ((ITextViewerExtension2)((Object)this.fSourceViewer)).invalidateTextPresentation(r.getOffset(), r.getLength());
        } else {
            this.fSourceViewer.invalidateTextPresentation();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void applyTextPresentation(TextPresentation tp) {
        HashSet decorations;
        Object object = this.fHighlightedDecorationsMapLock;
        synchronized (object) {
            if (this.fHighlightedDecorationsMap == null || this.fHighlightedDecorationsMap.isEmpty()) {
                return;
            }
            decorations = new HashSet(this.fHighlightedDecorationsMap.entrySet());
        }
        IRegion region = tp.getExtent();
        if (DEBUG) {
            System.out.println("AP: applying text presentation offset: " + region.getOffset() + ", length= " + region.getLength());
        }
        int layer = 0;
        int maxLayer = 1;
        while (layer < maxLayer) {
            Iterator iter = decorations.iterator();
            while (iter.hasNext()) {
                ITextViewerExtension5 extension3;
                Map.Entry entry = (Map.Entry)iter.next();
                Annotation a = (Annotation)entry.getKey();
                if (a.isMarkedDeleted()) continue;
                Decoration pp = (Decoration)entry.getValue();
                maxLayer = Math.max(maxLayer, pp.fLayer + 1);
                if (pp.fLayer != layer) continue;
                Position p = pp.fPosition;
                if (this.fSourceViewer instanceof ITextViewerExtension5 ? (extension3 = (ITextViewerExtension5)((Object)this.fSourceViewer)).modelRange2WidgetRange((IRegion)new Region(p.getOffset(), p.getLength())) == null : !this.fSourceViewer.overlapsWithVisibleRegion(p.offset, p.length)) continue;
                int regionEnd = region.getOffset() + region.getLength();
                int pEnd = p.getOffset() + p.getLength();
                if (pEnd < region.getOffset() || regionEnd <= p.getOffset()) continue;
                int start = Math.max(p.getOffset(), region.getOffset());
                int end = Math.min(regionEnd, pEnd);
                int length = Math.max(end - start, 0);
                StyleRange styleRange = new StyleRange(start, length, null, null);
                ((ITextStyleStrategy)pp.fPaintingStrategy).applyTextStyle(styleRange, pp.fColor);
                tp.mergeStyleRange(styleRange);
            }
            ++layer;
        }
    }

    public synchronized void modelChanged(IAnnotationModel model) {
        if (DEBUG) {
            System.err.println("AP: OLD API of AnnotationModelListener called");
        }
        this.modelChanged(new AnnotationModelEvent(model));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void modelChanged(final AnnotationModelEvent event) {
        Display textWidgetDisplay;
        try {
            StyledText textWidget = this.fTextWidget;
            if (textWidget == null || textWidget.isDisposed()) {
                return;
            }
            textWidgetDisplay = textWidget.getDisplay();
        }
        catch (SWTException ex) {
            if (ex.code != 24) throw ex;
            return;
        }
        if (this.fIsSettingModel) {
            if (textWidgetDisplay != Display.getCurrent()) return;
            this.updatePainting(event);
            return;
        } else {
            if (DEBUG && event != null && event.isWorldChange()) {
                System.out.println("AP: WORLD CHANGED, stack trace follows:");
                new Throwable().printStackTrace(System.out);
            }
            textWidgetDisplay.asyncExec(new Runnable(){

                public void run() {
                    if (AnnotationPainter.this.fTextWidget != null && !AnnotationPainter.this.fTextWidget.isDisposed()) {
                        AnnotationPainter.this.updatePainting(event);
                    }
                }
            });
        }
    }

    public void setAnnotationTypeColor(Object annotationType, Color color) {
        if (color != null) {
            this.fAnnotationType2Color.put(annotationType, color);
        } else {
            this.fAnnotationType2Color.remove(annotationType);
        }
        this.fCachedAnnotationType2Color.clear();
    }

    public void addAnnotationType(Object annotationType) {
        this.addAnnotationType(annotationType, SQUIGGLES);
    }

    public void addAnnotationType(Object annotationType, Object strategyID) {
        this.fAnnotationType2PaintingStrategyId.put(annotationType, strategyID);
        this.fCachedAnnotationType2PaintingStrategy.clear();
        if (this.fTextInputListener == null) {
            this.fTextInputListener = new ITextInputListener(){

                public void inputDocumentAboutToBeChanged(IDocument oldInput, IDocument newInput) {
                    AnnotationPainter.this.fInputDocumentAboutToBeChanged = true;
                }

                public void inputDocumentChanged(IDocument oldInput, IDocument newInput) {
                    AnnotationPainter.this.fInputDocumentAboutToBeChanged = false;
                }
            };
            this.fSourceViewer.addTextInputListener(this.fTextInputListener);
        }
    }

    public void addDrawingStrategy(Object id, IDrawingStrategy strategy) {
        if (id == null) {
            throw new IllegalArgumentException();
        }
        this.fPaintingStrategyId2PaintingStrategy.put(id, strategy);
        this.fCachedAnnotationType2PaintingStrategy.clear();
    }

    public void addTextStyleStrategy(Object id, ITextStyleStrategy strategy) {
        if (id == null) {
            throw new IllegalArgumentException();
        }
        this.fPaintingStrategyId2PaintingStrategy.put(id, strategy);
        this.fCachedAnnotationType2PaintingStrategy.clear();
    }

    public void addHighlightAnnotationType(Object annotationType) {
        this.addAnnotationType(annotationType, HIGHLIGHTING);
    }

    public void removeAnnotationType(Object annotationType) {
        this.fCachedAnnotationType2PaintingStrategy.clear();
        this.fAnnotationType2PaintingStrategyId.remove(annotationType);
        if (this.fAnnotationType2PaintingStrategyId.isEmpty() && this.fTextInputListener != null) {
            this.fSourceViewer.removeTextInputListener(this.fTextInputListener);
            this.fTextInputListener = null;
            this.fInputDocumentAboutToBeChanged = false;
        }
    }

    public void removeHighlightAnnotationType(Object annotationType) {
        this.removeAnnotationType(annotationType);
    }

    public void removeAllAnnotationTypes() {
        this.fCachedAnnotationType2PaintingStrategy.clear();
        this.fAnnotationType2PaintingStrategyId.clear();
        if (this.fTextInputListener != null) {
            this.fSourceViewer.removeTextInputListener(this.fTextInputListener);
            this.fTextInputListener = null;
        }
    }

    public boolean isPaintingAnnotations() {
        return !this.fAnnotationType2PaintingStrategyId.isEmpty();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void dispose() {
        if (this.fAnnotationType2Color != null) {
            this.fAnnotationType2Color.clear();
            this.fAnnotationType2Color = null;
        }
        if (this.fCachedAnnotationType2Color != null) {
            this.fCachedAnnotationType2Color.clear();
            this.fCachedAnnotationType2Color = null;
        }
        if (this.fCachedAnnotationType2PaintingStrategy != null) {
            this.fCachedAnnotationType2PaintingStrategy.clear();
            this.fCachedAnnotationType2PaintingStrategy = null;
        }
        if (this.fAnnotationType2PaintingStrategyId != null) {
            this.fAnnotationType2PaintingStrategyId.clear();
            this.fAnnotationType2PaintingStrategyId = null;
        }
        this.fTextWidget = null;
        this.fSourceViewer = null;
        this.fAnnotationAccess = null;
        this.fModel = null;
        Object object = this.fDecorationMapLock;
        synchronized (object) {
            this.fDecorationsMap = null;
        }
        object = this.fHighlightedDecorationsMapLock;
        synchronized (object) {
            this.fHighlightedDecorationsMap = null;
        }
    }

    private int getInclusiveTopIndexStartOffset() {
        if (this.fTextWidget != null && !this.fTextWidget.isDisposed()) {
            int top = JFaceTextUtil.getPartialTopIndex(this.fSourceViewer);
            try {
                IDocument document = this.fSourceViewer.getDocument();
                return document.getLineOffset(top);
            }
            catch (BadLocationException badLocationException) {}
        }
        return -1;
    }

    private int getExclusiveBottomIndexEndOffset() {
        if (this.fTextWidget != null && !this.fTextWidget.isDisposed()) {
            int bottom = JFaceTextUtil.getPartialBottomIndex(this.fSourceViewer);
            try {
                IDocument document = this.fSourceViewer.getDocument();
                if (bottom >= document.getNumberOfLines()) {
                    bottom = document.getNumberOfLines() - 1;
                }
                return document.getLineOffset(bottom) + document.getLineLength(bottom);
            }
            catch (BadLocationException badLocationException) {}
        }
        return -1;
    }

    public void paintControl(PaintEvent event) {
        if (this.fTextWidget != null) {
            this.handleDrawRequest(event);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void handleDrawRequest(PaintEvent event) {
        ArrayList decorations;
        if (this.fTextWidget == null) {
            return;
        }
        IRegion clippingRegion = this.computeClippingRegion(event, false);
        if (clippingRegion == null) {
            return;
        }
        int vOffset = clippingRegion.getOffset();
        int vLength = clippingRegion.getLength();
        GC gc = event != null ? event.gc : null;
        Object object = this.fDecorationMapLock;
        synchronized (object) {
            decorations = new ArrayList(this.fDecorationsMap.size());
            decorations.addAll(this.fDecorationsMap.entrySet());
        }
        ArrayList toBeDrawn = new ArrayList(10);
        Iterator e = decorations.iterator();
        while (e.hasNext()) {
            Map.Entry entry = (Map.Entry)e.next();
            Annotation a = (Annotation)entry.getKey();
            Decoration pp = (Decoration)entry.getValue();
            if (a.isMarkedDeleted() || this.skip(a) || !this.regionsTouchOrOverlap(pp.fPosition.getOffset(), pp.fPosition.getLength(), vOffset, vLength)) continue;
            int i = toBeDrawn.size();
            while (i <= pp.fLayer) {
                toBeDrawn.add(new LinkedList());
                ++i;
            }
            ((List)toBeDrawn.get(pp.fLayer)).add(entry);
        }
        IDocument document = this.fSourceViewer.getDocument();
        Iterator it = toBeDrawn.iterator();
        while (it.hasNext()) {
            List layer = (List)it.next();
            Iterator e2 = layer.iterator();
            while (e2.hasNext()) {
                Map.Entry entry = (Map.Entry)e2.next();
                Annotation a = (Annotation)entry.getKey();
                Decoration pp = (Decoration)entry.getValue();
                this.drawDecoration(pp, gc, a, clippingRegion, document);
            }
        }
    }

    private void drawDecoration(Decoration pp, GC gc, Annotation annotation, IRegion clippingRegion, IDocument document) {
        if (clippingRegion == null) {
            return;
        }
        if (!(pp.fPaintingStrategy instanceof IDrawingStrategy)) {
            return;
        }
        IDrawingStrategy drawingStrategy = (IDrawingStrategy)pp.fPaintingStrategy;
        int clippingOffset = clippingRegion.getOffset();
        int clippingLength = clippingRegion.getLength();
        Position p = pp.fPosition;
        try {
            int startLine = document.getLineOfOffset(p.getOffset());
            int lastInclusive = Math.max(p.getOffset(), p.getOffset() + p.getLength() - 1);
            int endLine = document.getLineOfOffset(lastInclusive);
            int i = startLine;
            while (i <= endLine) {
                IRegion widgetRange;
                int lineOffset = document.getLineOffset(i);
                int paintStart = Math.max(lineOffset, p.getOffset());
                String lineDelimiter = document.getLineDelimiter(i);
                int delimiterLength = lineDelimiter != null ? lineDelimiter.length() : 0;
                int paintLength = Math.min(lineOffset + document.getLineLength(i) - delimiterLength, p.getOffset() + p.getLength()) - paintStart;
                if (paintLength >= 0 && this.regionsTouchOrOverlap(paintStart, paintLength, clippingOffset, clippingLength) && (widgetRange = this.getWidgetRange(paintStart, paintLength)) != null) {
                    drawingStrategy.draw(annotation, gc, this.fTextWidget, widgetRange.getOffset(), widgetRange.getLength(), pp.fColor);
                }
                ++i;
            }
        }
        catch (BadLocationException badLocationException) {}
    }

    private IRegion computeClippingRegion(PaintEvent event, boolean isClearing) {
        int widgetEndOffset;
        int widgetOffset;
        if (event == null) {
            if (!isClearing && this.fCurrentDrawRange != null) {
                return new Region(this.fCurrentDrawRange.offset, this.fCurrentDrawRange.length);
            }
            int vOffset = this.getInclusiveTopIndexStartOffset();
            if (vOffset == -1) {
                return null;
            }
            int vLength = this.getExclusiveBottomIndexEndOffset() - vOffset;
            return new Region(vOffset, vLength);
        }
        try {
            int widgetClippingStartOffset = this.fTextWidget.getOffsetAtLocation(new Point(0, event.y));
            int firstWidgetLine = this.fTextWidget.getLineAtOffset(widgetClippingStartOffset);
            widgetOffset = this.fTextWidget.getOffsetAtLine(firstWidgetLine);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            try {
                int firstVisibleLine = JFaceTextUtil.getPartialTopIndex(this.fTextWidget);
                widgetOffset = this.fTextWidget.getOffsetAtLine(firstVisibleLine);
            }
            catch (IllegalArgumentException illegalArgumentException2) {
                widgetOffset = 0;
            }
        }
        try {
            int widgetClippingEndOffset = this.fTextWidget.getOffsetAtLocation(new Point(0, event.y + event.height));
            int lastWidgetLine = this.fTextWidget.getLineAtOffset(widgetClippingEndOffset);
            widgetEndOffset = this.fTextWidget.getOffsetAtLine(lastWidgetLine + 1);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            try {
                int lastVisibleLine = JFaceTextUtil.getPartialBottomIndex(this.fTextWidget);
                widgetEndOffset = lastVisibleLine == this.fTextWidget.getLineCount() - 1 ? this.fTextWidget.getCharCount() : this.fTextWidget.getOffsetAtLine(lastVisibleLine + 1) - 1;
            }
            catch (IllegalArgumentException illegalArgumentException3) {
                widgetEndOffset = this.fTextWidget.getCharCount();
            }
        }
        IRegion clippingRegion = this.getModelRange(widgetOffset, widgetEndOffset - widgetOffset);
        return clippingRegion;
    }

    protected boolean skip(Annotation annotation) {
        return false;
    }

    private IRegion getWidgetRange(int modelOffset, int modelLength) {
        int length;
        if (modelOffset == Integer.MAX_VALUE) {
            return null;
        }
        if (this.fSourceViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fSourceViewer);
            this.fReusableRegion.setOffset(modelOffset);
            this.fReusableRegion.setLength(modelLength);
            return extension.modelRange2WidgetRange(this.fReusableRegion);
        }
        IRegion region = this.fSourceViewer.getVisibleRegion();
        int offset = region.getOffset();
        if (this.regionsTouchOrOverlap(modelOffset, modelLength, offset, length = region.getLength())) {
            int p1 = Math.max(offset, modelOffset);
            int p2 = Math.min(offset + length, modelOffset + modelLength);
            this.fReusableRegion.setOffset(p1 - offset);
            this.fReusableRegion.setLength(p2 - p1);
            return this.fReusableRegion;
        }
        return null;
    }

    private IRegion getModelRange(int offset, int length) {
        if (offset == Integer.MAX_VALUE) {
            return null;
        }
        if (this.fSourceViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fSourceViewer);
            return extension.widgetRange2ModelRange((IRegion)new Region(offset, length));
        }
        IRegion region = this.fSourceViewer.getVisibleRegion();
        return new Region(region.getOffset() + offset, length);
    }

    private boolean regionsTouchOrOverlap(int offset1, int length1, int offset2, int length2) {
        return offset1 <= offset2 + length2 && offset2 <= offset1 + length1;
    }

    public void deactivate(boolean redraw) {
        if (this.fIsActive) {
            this.fIsActive = false;
            this.disablePainting(redraw);
            this.setModel(null);
            this.catchupWithModel(null);
        }
    }

    protected boolean isRepaintReason(int reason) {
        return 16 == reason || 8 == reason;
    }

    protected IAnnotationModel findAnnotationModel(ISourceViewer sourceViewer) {
        if (sourceViewer != null) {
            return sourceViewer.getAnnotationModel();
        }
        return null;
    }

    public void paint(int reason) {
        if (this.fSourceViewer.getDocument() == null) {
            this.deactivate(false);
            return;
        }
        if (!this.fIsActive) {
            IAnnotationModel model = this.findAnnotationModel(this.fSourceViewer);
            if (model != null) {
                this.fIsActive = true;
                this.setModel(model);
            }
        } else if (this.isRepaintReason(reason)) {
            this.updatePainting(null);
        }
    }

    public void setPositionManager(IPaintPositionManager manager) {
    }

    public static final class BoxStrategy
    implements ITextStyleStrategy {
        int fBorderStyle;

        public BoxStrategy(int style) {
            Assert.isLegal((style == 2 || style == 4 || style == 1 ? 1 : 0) != 0);
            this.fBorderStyle = style;
        }

        public void applyTextStyle(StyleRange styleRange, Color annotationColor) {
            styleRange.borderStyle = this.fBorderStyle;
            styleRange.borderColor = annotationColor;
        }
    }

    private static class Decoration {
        private Position fPosition;
        private Color fColor;
        private int fLayer;
        private Object fPaintingStrategy;

        private Decoration() {
        }
    }

    public static final class HighlightingStrategy
    implements ITextStyleStrategy {
        public void applyTextStyle(StyleRange styleRange, Color annotationColor) {
            styleRange.background = annotationColor;
        }
    }

    public static interface IDrawingStrategy {
        public void draw(Annotation var1, GC var2, StyledText var3, int var4, int var5, Color var6);
    }

    public static interface ITextStyleStrategy {
        public void applyTextStyle(StyleRange var1, Color var2);
    }

    public static final class NullStrategy
    implements IDrawingStrategy {
        public void draw(Annotation annotation, GC gc, StyledText textWidget, int offset, int length, Color color) {
        }
    }

    private static class ReusableRegion
    extends Position
    implements IRegion {
        private ReusableRegion() {
        }
    }

    public static class SquigglesStrategy
    implements IDrawingStrategy {
        public void draw(Annotation annotation, GC gc, StyledText textWidget, int offset, int length, Color color) {
            if (gc != null) {
                if (length < 1) {
                    return;
                }
                Point left = textWidget.getLocationAtOffset(offset);
                Point right = textWidget.getLocationAtOffset(offset + length);
                Rectangle rect = textWidget.getTextBounds(offset, offset + length - 1);
                left.x = rect.x;
                right.x = rect.x + rect.width;
                int[] polyline = this.computePolyline(left, right, textWidget.getBaseline(offset), textWidget.getLineHeight(offset));
                gc.setLineWidth(0);
                gc.setLineStyle(1);
                gc.setForeground(color);
                gc.drawPolyline(polyline);
            } else {
                textWidget.redrawRange(offset, length, true);
            }
        }

        private int[] computePolyline(Point left, Point right, int baseline, int lineHeight) {
            int peaks = (right.x - left.x) / 4;
            if (peaks == 0 && right.x - left.x > 2) {
                peaks = 1;
            }
            int leftX = left.x;
            int length = (2 * peaks + 1) * 2;
            if (length < 0) {
                return new int[0];
            }
            int[] coordinates = new int[length];
            int top = left.y + Math.min(baseline + 1, lineHeight - 2 - 1);
            int bottom = top + 2;
            int i = 0;
            while (i < peaks) {
                int index = 4 * i;
                coordinates[index] = leftX + 4 * i;
                coordinates[index + 1] = bottom;
                coordinates[index + 2] = coordinates[index] + 2;
                coordinates[index + 3] = top;
                ++i;
            }
            coordinates[length - 2] = Math.min(Math.max(0, right.x - 1), left.x + 4 * peaks);
            coordinates[length - 1] = bottom;
            return coordinates;
        }
    }

    public static final class UnderlineStrategy
    implements ITextStyleStrategy {
        int fUnderlineStyle;

        public UnderlineStrategy(int style) {
            Assert.isLegal((style == 0 || style == 1 || style == 2 || style == 3 ? 1 : 0) != 0);
            this.fUnderlineStyle = style;
        }

        public void applyTextStyle(StyleRange styleRange, Color annotationColor) {
            styleRange.underline = true;
            styleRange.underlineStyle = this.fUnderlineStyle;
            styleRange.underlineColor = annotationColor;
        }
    }
}

