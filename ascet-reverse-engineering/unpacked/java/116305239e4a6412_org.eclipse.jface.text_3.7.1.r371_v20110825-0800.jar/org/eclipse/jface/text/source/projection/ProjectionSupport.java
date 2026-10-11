/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.StyledTextContent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.text.source.projection;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationPainter;
import org.eclipse.jface.text.source.IAnnotationAccess;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.ISharedTextColors;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.projection.IProjectionListener;
import org.eclipse.jface.text.source.projection.ProjectionAnnotation;
import org.eclipse.jface.text.source.projection.ProjectionAnnotationHover;
import org.eclipse.jface.text.source.projection.ProjectionRulerColumn;
import org.eclipse.jface.text.source.projection.ProjectionSummary;
import org.eclipse.jface.text.source.projection.ProjectionViewer;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;

public class ProjectionSupport {
    public static final Object PROJECTION = new Object();
    private ProjectionViewer fViewer;
    private IAnnotationAccess fAnnotationAccess;
    private ISharedTextColors fSharedTextColors;
    private List fSummarizableTypes;
    private IInformationControlCreator fInformationControlCreator;
    private IInformationControlCreator fInformationPresenterControlCreator;
    private ProjectionListener fProjectionListener;
    private ProjectionAnnotationsPainter fPainter;
    private ProjectionRulerColumn fColumn;
    private AnnotationPainter.IDrawingStrategy fDrawingStrategy;
    static /* synthetic */ Class class$0;

    public ProjectionSupport(ProjectionViewer viewer, IAnnotationAccess annotationAccess, ISharedTextColors sharedTextColors) {
        this.fViewer = viewer;
        this.fAnnotationAccess = annotationAccess;
        this.fSharedTextColors = sharedTextColors;
    }

    public void addSummarizableAnnotationType(String annotationType) {
        if (this.fSummarizableTypes == null) {
            this.fSummarizableTypes = new ArrayList();
            this.fSummarizableTypes.add(annotationType);
        } else if (!this.fSummarizableTypes.contains(annotationType)) {
            this.fSummarizableTypes.add(annotationType);
        }
    }

    public void removeSummarizableAnnotationType(String annotationType) {
        if (this.fSummarizableTypes != null) {
            this.fSummarizableTypes.remove(annotationType);
        }
        if (this.fSummarizableTypes.size() == 0) {
            this.fSummarizableTypes = null;
        }
    }

    public void setHoverControlCreator(IInformationControlCreator creator) {
        this.fInformationControlCreator = creator;
    }

    public void setInformationPresenterControlCreator(IInformationControlCreator creator) {
        this.fInformationPresenterControlCreator = creator;
    }

    public void setAnnotationPainterDrawingStrategy(AnnotationPainter.IDrawingStrategy strategy) {
        this.fDrawingStrategy = strategy;
    }

    private AnnotationPainter.IDrawingStrategy getDrawingStrategy() {
        if (this.fDrawingStrategy == null) {
            this.fDrawingStrategy = new ProjectionDrawingStrategy();
        }
        return this.fDrawingStrategy;
    }

    public void install() {
        this.fViewer.setProjectionSummary(this.createProjectionSummary());
        this.fProjectionListener = new ProjectionListener();
        this.fViewer.addProjectionListener(this.fProjectionListener);
    }

    public void dispose() {
        if (this.fProjectionListener != null) {
            this.fViewer.removeProjectionListener(this.fProjectionListener);
            this.fProjectionListener = null;
        }
    }

    protected void doEnableProjection() {
        if (this.fPainter == null) {
            this.fPainter = new ProjectionAnnotationsPainter(this.fViewer, this.fAnnotationAccess);
            this.fPainter.addDrawingStrategy(PROJECTION, this.getDrawingStrategy());
            this.fPainter.addAnnotationType("org.eclipse.projection", PROJECTION);
            this.fPainter.setAnnotationTypeColor("org.eclipse.projection", this.fSharedTextColors.getColor(this.getColor()));
            this.fViewer.addPainter(this.fPainter);
        }
        if (this.fColumn == null) {
            this.fColumn = new ProjectionRulerColumn(9, this.fAnnotationAccess);
            this.fColumn.addAnnotationType("org.eclipse.projection");
            this.fColumn.setHover(this.createProjectionAnnotationHover());
            this.fViewer.addVerticalRulerColumn(this.fColumn);
        }
        this.fColumn.setModel(this.fViewer.getVisualAnnotationModel());
    }

    protected void doDisableProjection() {
        if (this.fPainter != null) {
            this.fViewer.removePainter(this.fPainter);
            this.fPainter.dispose();
            this.fPainter = null;
        }
        if (this.fColumn != null) {
            this.fViewer.removeVerticalRulerColumn(this.fColumn);
            this.fColumn = null;
        }
    }

    private ProjectionSummary createProjectionSummary() {
        ProjectionSummary summary = new ProjectionSummary(this.fViewer, this.fAnnotationAccess);
        if (this.fSummarizableTypes != null) {
            int size = this.fSummarizableTypes.size();
            int i = 0;
            while (i < size) {
                summary.addAnnotationType((String)this.fSummarizableTypes.get(i));
                ++i;
            }
        }
        return summary;
    }

    private IAnnotationHover createProjectionAnnotationHover() {
        ProjectionAnnotationHover hover = new ProjectionAnnotationHover();
        hover.setHoverControlCreator(this.fInformationControlCreator);
        hover.setInformationPresenterControlCreator(this.fInformationPresenterControlCreator);
        return hover;
    }

    public Object getAdapter(ISourceViewer viewer, Class required) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.text.source.projection.ProjectionAnnotationModel");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(required) && viewer instanceof ProjectionViewer) {
            ProjectionViewer projectionViewer = (ProjectionViewer)viewer;
            return projectionViewer.getProjectionAnnotationModel();
        }
        return null;
    }

    private RGB getColor() {
        Color c = Display.getDefault().getSystemColor(16);
        return c.getRGB();
    }

    private static class ProjectionAnnotationsPainter
    extends AnnotationPainter {
        public ProjectionAnnotationsPainter(ISourceViewer sourceViewer, IAnnotationAccess access) {
            super(sourceViewer, access);
        }

        protected IAnnotationModel findAnnotationModel(ISourceViewer sourceViewer) {
            if (sourceViewer instanceof ProjectionViewer) {
                ProjectionViewer projectionViewer = (ProjectionViewer)sourceViewer;
                return projectionViewer.getProjectionAnnotationModel();
            }
            return null;
        }

        protected boolean skip(Annotation annotation) {
            if (annotation instanceof ProjectionAnnotation) {
                return !((ProjectionAnnotation)annotation).isCollapsed();
            }
            return super.skip(annotation);
        }
    }

    private static class ProjectionDrawingStrategy
    implements AnnotationPainter.IDrawingStrategy {
        private ProjectionDrawingStrategy() {
        }

        public void draw(Annotation annotation, GC gc, StyledText textWidget, int offset, int length, Color color) {
            ProjectionAnnotation projectionAnnotation;
            if (annotation instanceof ProjectionAnnotation && (projectionAnnotation = (ProjectionAnnotation)annotation).isCollapsed()) {
                if (gc != null) {
                    StyledTextContent content = textWidget.getContent();
                    int line = content.getLineAtOffset(offset);
                    int lineStart = content.getOffsetAtLine(line);
                    String text = content.getLine(line);
                    int lineLength = text == null ? 0 : text.length();
                    int lineEnd = lineStart + lineLength;
                    Point p = textWidget.getLocationAtOffset(lineEnd);
                    Color c = gc.getForeground();
                    gc.setForeground(color);
                    FontMetrics metrics = gc.getFontMetrics();
                    int baseline = textWidget.getBaseline(offset);
                    int descent = Math.min(2, textWidget.getLineHeight(offset) - baseline);
                    int ascent = metrics.getAscent();
                    int leading = baseline - ascent;
                    int height = ascent + descent;
                    int width = metrics.getAverageCharWidth();
                    gc.drawRectangle(p.x, p.y + leading, width, height);
                    int third = width / 3;
                    int dotsVertical = p.y + baseline - 1;
                    gc.drawPoint(p.x + third, dotsVertical);
                    gc.drawPoint(p.x + width - third, dotsVertical);
                    gc.setForeground(c);
                } else {
                    textWidget.redrawRange(offset, length, true);
                }
            }
        }
    }

    private class ProjectionListener
    implements IProjectionListener {
        private ProjectionListener() {
        }

        public void projectionEnabled() {
            ProjectionSupport.this.doEnableProjection();
        }

        public void projectionDisabled() {
            ProjectionSupport.this.doDisableProjection();
        }
    }
}

