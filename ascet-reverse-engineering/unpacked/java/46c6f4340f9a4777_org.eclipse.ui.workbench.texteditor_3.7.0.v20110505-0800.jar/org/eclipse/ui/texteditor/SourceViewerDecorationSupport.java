/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferenceConverter
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.CursorLinePainter
 *  org.eclipse.jface.text.IPainter
 *  org.eclipse.jface.text.ITextPresentationListener
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.ITextViewerExtension2
 *  org.eclipse.jface.text.ITextViewerExtension4
 *  org.eclipse.jface.text.MarginPainter
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.AnnotationPainter
 *  org.eclipse.jface.text.source.AnnotationPainter$BoxStrategy
 *  org.eclipse.jface.text.source.AnnotationPainter$IDrawingStrategy
 *  org.eclipse.jface.text.source.AnnotationPainter$ITextStyleStrategy
 *  org.eclipse.jface.text.source.AnnotationPainter$NullStrategy
 *  org.eclipse.jface.text.source.AnnotationPainter$UnderlineStrategy
 *  org.eclipse.jface.text.source.IAnnotationAccess
 *  org.eclipse.jface.text.source.ICharacterPairMatcher
 *  org.eclipse.jface.text.source.IOverviewRuler
 *  org.eclipse.jface.text.source.ISharedTextColors
 *  org.eclipse.jface.text.source.ISourceViewer
 *  org.eclipse.jface.text.source.MatchingCharacterPainter
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.ui.texteditor;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceConverter;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.CursorLinePainter;
import org.eclipse.jface.text.IPainter;
import org.eclipse.jface.text.ITextPresentationListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension2;
import org.eclipse.jface.text.ITextViewerExtension4;
import org.eclipse.jface.text.MarginPainter;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationPainter;
import org.eclipse.jface.text.source.IAnnotationAccess;
import org.eclipse.jface.text.source.ICharacterPairMatcher;
import org.eclipse.jface.text.source.IOverviewRuler;
import org.eclipse.jface.text.source.ISharedTextColors;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.MatchingCharacterPainter;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.ui.texteditor.AnnotationPreference;

public class SourceViewerDecorationSupport {
    private static AnnotationPainter.ITextStyleStrategy fgBoxStrategy = new AnnotationPainter.BoxStrategy(1);
    private static AnnotationPainter.ITextStyleStrategy fgDashedBoxStrategy = new AnnotationPainter.BoxStrategy(2);
    private static AnnotationPainter.IDrawingStrategy fgNullStrategy = new AnnotationPainter.NullStrategy();
    private static AnnotationPainter.ITextStyleStrategy fgUnderlineStrategy = new AnnotationPainter.UnderlineStrategy(0);
    private static AnnotationPainter.IDrawingStrategy fgIBeamStrategy = new IBeamStrategy();
    private static AnnotationPainter.ITextStyleStrategy fgSquigglesStrategy = new AnnotationPainter.UnderlineStrategy(3);
    private static AnnotationPainter.ITextStyleStrategy fgProblemUnderlineStrategy = new AnnotationPainter.UnderlineStrategy(2);
    private ISourceViewer fSourceViewer;
    private IOverviewRuler fOverviewRuler;
    private IAnnotationAccess fAnnotationAccess;
    private ISharedTextColors fSharedTextColors;
    private CursorLinePainter fCursorLinePainter;
    private MarginPainter fMarginPainter;
    private AnnotationPainter fAnnotationPainter;
    private MatchingCharacterPainter fMatchingCharacterPainter;
    private ICharacterPairMatcher fCharacterPairMatcher;
    private Map fAnnotationTypeKeyMap = new LinkedHashMap();
    private String fCursorLinePainterEnableKey;
    private String fCursorLinePainterColorKey;
    private String fMarginPainterEnableKey;
    private String fMarginPainterColorKey;
    private String fMarginPainterColumnKey;
    private String fMatchingCharacterPainterEnableKey;
    private String fMatchingCharacterPainterColorKey;
    private IPropertyChangeListener fPropertyChangeListener;
    private IPreferenceStore fPreferenceStore;
    private String fSymbolicFontName;
    private FontPropertyChangeListener fFontPropertyChangeListener;

    public SourceViewerDecorationSupport(ISourceViewer sourceViewer, IOverviewRuler overviewRuler, IAnnotationAccess annotationAccess, ISharedTextColors sharedTextColors) {
        this.fSourceViewer = sourceViewer;
        this.fOverviewRuler = overviewRuler;
        this.fAnnotationAccess = annotationAccess;
        this.fSharedTextColors = sharedTextColors;
    }

    public void install(IPreferenceStore store) {
        this.fPreferenceStore = store;
        if (this.fPreferenceStore != null) {
            this.fPropertyChangeListener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    SourceViewerDecorationSupport.this.handlePreferenceStoreChanged(event);
                }
            };
            this.fPreferenceStore.addPropertyChangeListener(this.fPropertyChangeListener);
        }
        this.updateTextDecorations();
        this.updateOverviewDecorations();
    }

    private void updateTextDecorations() {
        StyledText widget = this.fSourceViewer.getTextWidget();
        if (widget == null || widget.isDisposed()) {
            return;
        }
        if (this.areMatchingCharactersShown()) {
            this.showMatchingCharacters();
        } else {
            this.hideMatchingCharacters();
        }
        if (this.isCursorLineShown()) {
            this.showCursorLine();
        } else {
            this.hideCursorLine();
        }
        if (this.isMarginShown()) {
            this.showMargin();
        } else {
            this.hideMargin();
        }
        Iterator e = this.fAnnotationTypeKeyMap.keySet().iterator();
        while (e.hasNext()) {
            Object type = e.next();
            if (this.areAnnotationsHighlighted(type) || this.areAnnotationsShown(type)) {
                this.showAnnotations(type, false);
                continue;
            }
            this.hideAnnotations(type, false);
        }
        this.updateAnnotationPainter();
    }

    private Object getAnnotationDecorationType(Object annotationType) {
        AnnotationPreference info;
        if (this.areAnnotationsHighlighted(annotationType)) {
            return null;
        }
        if (this.areAnnotationsShown(annotationType) && this.fPreferenceStore != null && (info = (AnnotationPreference)this.fAnnotationTypeKeyMap.get(annotationType)) != null) {
            String key = info.getTextStylePreferenceKey();
            if (key != null) {
                return this.fPreferenceStore.getString(key);
            }
            return "SQUIGGLES";
        }
        return "NONE";
    }

    public void updateOverviewDecorations() {
        if (this.fOverviewRuler != null) {
            Iterator e = this.fAnnotationTypeKeyMap.keySet().iterator();
            while (e.hasNext()) {
                Object type = e.next();
                if (this.isAnnotationOverviewShown(type)) {
                    this.showAnnotationOverview(type, false);
                    continue;
                }
                this.hideAnnotationOverview(type, false);
            }
            this.fOverviewRuler.update();
        }
    }

    public void uninstall() {
        if (this.fPreferenceStore != null) {
            this.fPreferenceStore.removePropertyChangeListener(this.fPropertyChangeListener);
            this.fPropertyChangeListener = null;
            this.fPreferenceStore = null;
        }
    }

    public void dispose() {
        this.uninstall();
        this.updateTextDecorations();
        this.updateOverviewDecorations();
        if (this.fFontPropertyChangeListener != null) {
            JFaceResources.getFontRegistry().removeListener((IPropertyChangeListener)this.fFontPropertyChangeListener);
            this.fFontPropertyChangeListener = null;
        }
        this.fOverviewRuler = null;
        this.fMatchingCharacterPainter = null;
        this.fAnnotationPainter = null;
        this.fCursorLinePainter = null;
        this.fMarginPainter = null;
        if (this.fAnnotationTypeKeyMap != null) {
            this.fAnnotationTypeKeyMap.clear();
        }
    }

    public void setCharacterPairMatcher(ICharacterPairMatcher pairMatcher) {
        this.fCharacterPairMatcher = pairMatcher;
    }

    public void setAnnotationPainterPreferenceKeys(Object type, String colorKey, String editorKey, String overviewRulerKey, int layer) {
        AnnotationPreference info = new AnnotationPreference(type, colorKey, editorKey, overviewRulerKey, layer);
        this.fAnnotationTypeKeyMap.put(type, info);
    }

    public void setAnnotationPreference(AnnotationPreference info) {
        this.fAnnotationTypeKeyMap.put(info.getAnnotationType(), info);
    }

    public void setCursorLinePainterPreferenceKeys(String enableKey, String colorKey) {
        this.fCursorLinePainterEnableKey = enableKey;
        this.fCursorLinePainterColorKey = colorKey;
    }

    public void setMarginPainterPreferenceKeys(String enableKey, String colorKey, String columnKey) {
        this.fMarginPainterEnableKey = enableKey;
        this.fMarginPainterColorKey = colorKey;
        this.fMarginPainterColumnKey = columnKey;
    }

    public void setMatchingCharacterPainterPreferenceKeys(String enableKey, String colorKey) {
        this.fMatchingCharacterPainterEnableKey = enableKey;
        this.fMatchingCharacterPainterColorKey = colorKey;
    }

    public void setSymbolicFontName(String symbolicFontName) {
        this.fSymbolicFontName = symbolicFontName;
    }

    private AnnotationPreference getAnnotationPreferenceInfo(String preferenceKey) {
        Iterator e = this.fAnnotationTypeKeyMap.values().iterator();
        while (e.hasNext()) {
            AnnotationPreference info = (AnnotationPreference)e.next();
            if (info == null || !info.isPreferenceKey(preferenceKey)) continue;
            return info;
        }
        return null;
    }

    protected void handlePreferenceStoreChanged(PropertyChangeEvent event) {
        String p = event.getProperty();
        if (this.fMatchingCharacterPainterEnableKey != null && this.fMatchingCharacterPainterEnableKey.equals(p) && this.fCharacterPairMatcher != null) {
            if (this.areMatchingCharactersShown()) {
                this.showMatchingCharacters();
            } else {
                this.hideMatchingCharacters();
            }
            return;
        }
        if (this.fMatchingCharacterPainterColorKey != null && this.fMatchingCharacterPainterColorKey.equals(p)) {
            if (this.fMatchingCharacterPainter != null) {
                this.fMatchingCharacterPainter.setColor(this.getColor(this.fMatchingCharacterPainterColorKey));
                this.fMatchingCharacterPainter.paint(16);
            }
            return;
        }
        if (this.fCursorLinePainterEnableKey != null && this.fCursorLinePainterEnableKey.equals(p)) {
            if (this.isCursorLineShown()) {
                this.showCursorLine();
            } else {
                this.hideCursorLine();
            }
            return;
        }
        if (this.fCursorLinePainterColorKey != null && this.fCursorLinePainterColorKey.equals(p)) {
            if (this.fCursorLinePainter != null) {
                this.hideCursorLine();
                this.showCursorLine();
            }
            return;
        }
        if (this.fMarginPainterEnableKey != null && this.fMarginPainterEnableKey.equals(p)) {
            if (this.isMarginShown()) {
                this.showMargin();
            } else {
                this.hideMargin();
            }
            return;
        }
        if (this.fMarginPainterColorKey != null && this.fMarginPainterColorKey.equals(p)) {
            if (this.fMarginPainter != null) {
                this.fMarginPainter.setMarginRulerColor(this.getColor(this.fMarginPainterColorKey));
                this.fMarginPainter.paint(16);
            }
            return;
        }
        if (this.fMarginPainterColumnKey != null && this.fMarginPainterColumnKey.equals(p)) {
            if (this.fMarginPainter != null && this.fPreferenceStore != null) {
                this.fMarginPainter.setMarginRulerColumn(this.fPreferenceStore.getInt(this.fMarginPainterColumnKey));
                this.fMarginPainter.paint(16);
            }
            return;
        }
        AnnotationPreference info = this.getAnnotationPreferenceInfo(p);
        if (info != null) {
            if (info.getColorPreferenceKey().equals(p)) {
                Color color = this.getColor(info.getColorPreferenceKey());
                if (this.fAnnotationPainter != null) {
                    this.fAnnotationPainter.setAnnotationTypeColor(info.getAnnotationType(), color);
                    this.fAnnotationPainter.paint(16);
                }
                this.setAnnotationOverviewColor(info.getAnnotationType(), color);
                return;
            }
            Object type = info.getAnnotationType();
            if (info.getTextPreferenceKey().equals(p) || info.getTextStylePreferenceKey() != null && info.getTextStylePreferenceKey().equals(p) || info.getHighlightPreferenceKey() != null && info.getHighlightPreferenceKey().equals(p)) {
                if (this.areAnnotationsHighlighted(type) || this.areAnnotationsShown(type)) {
                    this.showAnnotations(type, true);
                } else {
                    this.hideAnnotations(type, true);
                }
                return;
            }
            if (info.getOverviewRulerPreferenceKey().equals(p)) {
                if (this.isAnnotationOverviewShown(info.getAnnotationType())) {
                    this.showAnnotationOverview(info.getAnnotationType(), true);
                } else {
                    this.hideAnnotationOverview(info.getAnnotationType(), true);
                }
                return;
            }
        }
    }

    private Color getColor(String key) {
        if (this.fPreferenceStore != null) {
            RGB rgb = PreferenceConverter.getColor((IPreferenceStore)this.fPreferenceStore, (String)key);
            return this.getColor(rgb);
        }
        return null;
    }

    private Color getColor(RGB rgb) {
        return this.fSharedTextColors.getColor(rgb);
    }

    private Color getAnnotationTypeColor(Object annotationType) {
        AnnotationPreference info = (AnnotationPreference)this.fAnnotationTypeKeyMap.get(annotationType);
        if (info != null) {
            return this.getColor(info.getColorPreferenceKey());
        }
        return null;
    }

    private int getAnnotationTypeLayer(Object annotationType) {
        AnnotationPreference info = (AnnotationPreference)this.fAnnotationTypeKeyMap.get(annotationType);
        if (info != null) {
            return info.getPresentationLayer();
        }
        return 0;
    }

    private void showMatchingCharacters() {
        if (this.fMatchingCharacterPainter == null && this.fSourceViewer instanceof ITextViewerExtension2) {
            this.fMatchingCharacterPainter = new MatchingCharacterPainter(this.fSourceViewer, this.fCharacterPairMatcher);
            this.fMatchingCharacterPainter.setColor(this.getColor(this.fMatchingCharacterPainterColorKey));
            ITextViewerExtension2 extension = (ITextViewerExtension2)this.fSourceViewer;
            extension.addPainter((IPainter)this.fMatchingCharacterPainter);
        }
    }

    private void hideMatchingCharacters() {
        if (this.fMatchingCharacterPainter != null && this.fSourceViewer instanceof ITextViewerExtension2) {
            ITextViewerExtension2 extension = (ITextViewerExtension2)this.fSourceViewer;
            extension.removePainter((IPainter)this.fMatchingCharacterPainter);
            this.fMatchingCharacterPainter.deactivate(true);
            this.fMatchingCharacterPainter.dispose();
            this.fMatchingCharacterPainter = null;
        }
    }

    private boolean areMatchingCharactersShown() {
        if (this.fPreferenceStore != null && this.fMatchingCharacterPainterEnableKey != null) {
            return this.fPreferenceStore.getBoolean(this.fMatchingCharacterPainterEnableKey);
        }
        return false;
    }

    private void showCursorLine() {
        if (this.fCursorLinePainter == null && this.fSourceViewer instanceof ITextViewerExtension2) {
            this.fCursorLinePainter = new CursorLinePainter((ITextViewer)this.fSourceViewer);
            this.fCursorLinePainter.setHighlightColor(this.getColor(this.fCursorLinePainterColorKey));
            ITextViewerExtension2 extension = (ITextViewerExtension2)this.fSourceViewer;
            extension.addPainter((IPainter)this.fCursorLinePainter);
        }
    }

    private void hideCursorLine() {
        if (this.fCursorLinePainter != null && this.fSourceViewer instanceof ITextViewerExtension2) {
            ITextViewerExtension2 extension = (ITextViewerExtension2)this.fSourceViewer;
            extension.removePainter((IPainter)this.fCursorLinePainter);
            this.fCursorLinePainter.deactivate(true);
            this.fCursorLinePainter.dispose();
            this.fCursorLinePainter = null;
        }
    }

    private boolean isCursorLineShown() {
        if (this.fPreferenceStore != null && this.fCursorLinePainterEnableKey != null) {
            return this.fPreferenceStore.getBoolean(this.fCursorLinePainterEnableKey);
        }
        return false;
    }

    private void showMargin() {
        if (this.fMarginPainter == null && this.fSourceViewer instanceof ITextViewerExtension2) {
            this.fMarginPainter = new MarginPainter((ITextViewer)this.fSourceViewer);
            this.fMarginPainter.setMarginRulerColor(this.getColor(this.fMarginPainterColorKey));
            if (this.fPreferenceStore != null) {
                this.fMarginPainter.setMarginRulerColumn(this.fPreferenceStore.getInt(this.fMarginPainterColumnKey));
            }
            ITextViewerExtension2 extension = (ITextViewerExtension2)this.fSourceViewer;
            extension.addPainter((IPainter)this.fMarginPainter);
            this.fFontPropertyChangeListener = new FontPropertyChangeListener();
            JFaceResources.getFontRegistry().addListener((IPropertyChangeListener)this.fFontPropertyChangeListener);
        }
    }

    private void hideMargin() {
        if (this.fMarginPainter != null && this.fSourceViewer instanceof ITextViewerExtension2) {
            JFaceResources.getFontRegistry().removeListener((IPropertyChangeListener)this.fFontPropertyChangeListener);
            this.fFontPropertyChangeListener = null;
            ITextViewerExtension2 extension = (ITextViewerExtension2)this.fSourceViewer;
            extension.removePainter((IPainter)this.fMarginPainter);
            this.fMarginPainter.deactivate(true);
            this.fMarginPainter.dispose();
            this.fMarginPainter = null;
        }
    }

    private boolean isMarginShown() {
        if (this.fPreferenceStore != null && this.fMarginPainterEnableKey != null) {
            return this.fPreferenceStore.getBoolean(this.fMarginPainterEnableKey);
        }
        return false;
    }

    private void showAnnotations(Object annotationType, boolean updatePainter) {
        if (this.fSourceViewer instanceof ITextViewerExtension2) {
            if (this.fAnnotationPainter == null) {
                this.fAnnotationPainter = this.createAnnotationPainter();
                if (this.fSourceViewer instanceof ITextViewerExtension4) {
                    ((ITextViewerExtension4)this.fSourceViewer).addTextPresentationListener((ITextPresentationListener)this.fAnnotationPainter);
                }
                ITextViewerExtension2 extension = (ITextViewerExtension2)this.fSourceViewer;
                extension.addPainter((IPainter)this.fAnnotationPainter);
            }
            this.fAnnotationPainter.setAnnotationTypeColor(annotationType, this.getAnnotationTypeColor(annotationType));
            Object decorationType = this.getAnnotationDecorationType(annotationType);
            if (decorationType != null) {
                this.fAnnotationPainter.addAnnotationType(annotationType, decorationType);
            } else {
                this.fAnnotationPainter.addHighlightAnnotationType(annotationType);
            }
            if (updatePainter) {
                this.updateAnnotationPainter();
            }
        }
    }

    protected AnnotationPainter createAnnotationPainter() {
        AnnotationPainter painter = new AnnotationPainter(this.fSourceViewer, this.fAnnotationAccess);
        painter.addDrawingStrategy((Object)"NONE", fgNullStrategy);
        painter.addDrawingStrategy((Object)"IBEAM", fgIBeamStrategy);
        painter.addTextStyleStrategy((Object)"SQUIGGLES", fgSquigglesStrategy);
        painter.addTextStyleStrategy((Object)"PROBLEM_UNDERLINE", fgProblemUnderlineStrategy);
        painter.addTextStyleStrategy((Object)"BOX", fgBoxStrategy);
        painter.addTextStyleStrategy((Object)"DASHED_BOX", fgDashedBoxStrategy);
        painter.addTextStyleStrategy((Object)"UNDERLINE", fgUnderlineStrategy);
        return painter;
    }

    private void updateAnnotationPainter() {
        if (this.fAnnotationPainter == null) {
            return;
        }
        this.fAnnotationPainter.paint(16);
        if (!this.fAnnotationPainter.isPaintingAnnotations()) {
            if (this.fSourceViewer instanceof ITextViewerExtension2) {
                ITextViewerExtension2 extension = (ITextViewerExtension2)this.fSourceViewer;
                extension.removePainter((IPainter)this.fAnnotationPainter);
            }
            if (this.fSourceViewer instanceof ITextViewerExtension4) {
                ((ITextViewerExtension4)this.fSourceViewer).removeTextPresentationListener((ITextPresentationListener)this.fAnnotationPainter);
            }
            this.fAnnotationPainter.deactivate(true);
            this.fAnnotationPainter.dispose();
            this.fAnnotationPainter = null;
        }
    }

    private void hideAnnotations(Object annotationType, boolean updatePainter) {
        if (this.fAnnotationPainter != null) {
            this.fAnnotationPainter.removeAnnotationType(annotationType);
            if (updatePainter) {
                this.updateAnnotationPainter();
            }
        }
    }

    private boolean areAnnotationsShown(Object annotationType) {
        AnnotationPreference info;
        if (this.fPreferenceStore != null && (info = (AnnotationPreference)this.fAnnotationTypeKeyMap.get(annotationType)) != null) {
            String key = info.getTextPreferenceKey();
            return key != null && this.fPreferenceStore.getBoolean(key);
        }
        return false;
    }

    private boolean areAnnotationsHighlighted(Object annotationType) {
        AnnotationPreference info;
        if (this.fPreferenceStore != null && (info = (AnnotationPreference)this.fAnnotationTypeKeyMap.get(annotationType)) != null) {
            return info.getHighlightPreferenceKey() != null && this.fPreferenceStore.getBoolean(info.getHighlightPreferenceKey());
        }
        return false;
    }

    private boolean isAnnotationOverviewShown(Object annotationType) {
        AnnotationPreference info;
        if (this.fPreferenceStore != null && this.fOverviewRuler != null && (info = (AnnotationPreference)this.fAnnotationTypeKeyMap.get(annotationType)) != null) {
            return this.fPreferenceStore.getBoolean(info.getOverviewRulerPreferenceKey());
        }
        return false;
    }

    private void showAnnotationOverview(Object annotationType, boolean update) {
        if (this.fOverviewRuler != null) {
            this.fOverviewRuler.setAnnotationTypeColor(annotationType, this.getAnnotationTypeColor(annotationType));
            this.fOverviewRuler.setAnnotationTypeLayer(annotationType, this.getAnnotationTypeLayer(annotationType));
            this.fOverviewRuler.addAnnotationType(annotationType);
            if (update) {
                this.fOverviewRuler.update();
            }
        }
    }

    private void hideAnnotationOverview(Object annotationType, boolean update) {
        if (this.fOverviewRuler != null) {
            this.fOverviewRuler.removeAnnotationType(annotationType);
            if (update) {
                this.fOverviewRuler.update();
            }
        }
    }

    public void hideAnnotationOverview() {
        if (this.fOverviewRuler != null) {
            Iterator e = this.fAnnotationTypeKeyMap.keySet().iterator();
            while (e.hasNext()) {
                this.fOverviewRuler.removeAnnotationType(e.next());
            }
            this.fOverviewRuler.update();
        }
    }

    private void setAnnotationOverviewColor(Object annotationType, Color color) {
        if (this.fOverviewRuler != null) {
            this.fOverviewRuler.setAnnotationTypeColor(annotationType, color);
            this.fOverviewRuler.update();
        }
    }

    private class FontPropertyChangeListener
    implements IPropertyChangeListener {
        private FontPropertyChangeListener() {
        }

        public void propertyChange(PropertyChangeEvent event) {
            if (SourceViewerDecorationSupport.this.fMarginPainter != null && SourceViewerDecorationSupport.this.fSymbolicFontName != null && SourceViewerDecorationSupport.this.fSymbolicFontName.equals(event.getProperty())) {
                SourceViewerDecorationSupport.this.fMarginPainter.initialize();
            }
        }
    }

    private static final class IBeamStrategy
    implements AnnotationPainter.IDrawingStrategy {
        private IBeamStrategy() {
        }

        public void draw(Annotation annotation, GC gc, StyledText textWidget, int offset, int length, Color color) {
            if (gc != null) {
                Point left = textWidget.getLocationAtOffset(offset);
                int x1 = left.x;
                int y1 = left.y;
                gc.setForeground(color);
                gc.drawLine(x1, y1, x1, left.y + textWidget.getLineHeight(offset) - 1);
            } else {
                int contentLength = textWidget.getCharCount();
                if (offset >= contentLength) {
                    textWidget.redraw();
                    return;
                }
                char ch = textWidget.getTextRange(offset, 1).charAt(0);
                if (ch == '\r' || ch == '\n') {
                    int nextLine = textWidget.getLineAtOffset(offset) + 1;
                    if (nextLine >= textWidget.getLineCount()) {
                        textWidget.redraw();
                        return;
                    }
                    int nextLineOffset = textWidget.getOffsetAtLine(nextLine);
                    length = nextLineOffset - offset;
                } else {
                    length = 1;
                }
                textWidget.redrawRange(offset, length, true);
            }
        }
    }
}

