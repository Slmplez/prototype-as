/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.ScrollBar
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.source.AnnotationBarHoverManager;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationHoverExtension;
import org.eclipse.jface.text.source.IOverviewRuler;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.ScrollBar;

class OverviewRulerHoverManager
extends AnnotationBarHoverManager {
    public OverviewRulerHoverManager(IOverviewRuler ruler, ISourceViewer sourceViewer, IAnnotationHover annotationHover, IInformationControlCreator creator) {
        super(ruler, sourceViewer, annotationHover, creator);
        ScrollBar verticalBar;
        this.setAnchor(ANCHOR_LEFT);
        StyledText textWidget = sourceViewer.getTextWidget();
        if (textWidget != null && (verticalBar = textWidget.getVerticalBar()) != null) {
            this.setMargins(verticalBar.getSize().x, 5);
        }
    }

    protected void computeInformation() {
        Point location = this.getHoverEventLocation();
        int line = this.getVerticalRulerInfo().toDocumentLineNumber(location.y);
        IAnnotationHover hover = this.getAnnotationHover();
        IInformationControlCreator controlCreator = null;
        if (hover instanceof IAnnotationHoverExtension) {
            controlCreator = ((IAnnotationHoverExtension)((Object)hover)).getHoverControlCreator();
        }
        this.setCustomInformationControlCreator(controlCreator);
        this.setInformation(hover.getHoverInfo(this.getSourceViewer(), line), this.computeArea(location.y));
    }

    private Rectangle computeArea(int y) {
        IOverviewRuler overviewRuler = (IOverviewRuler)this.getVerticalRulerInfo();
        int hover_height = overviewRuler.getAnnotationHeight();
        int hover_width = this.getVerticalRulerInfo().getControl().getSize().x;
        int hover_y = y;
        boolean hasAnnotation = true;
        while (hasAnnotation && hover_y > y - hover_height) {
            hasAnnotation = overviewRuler.hasAnnotation(--hover_y);
        }
        return new Rectangle(0, ++hover_y, hover_width, hover_height);
    }
}

