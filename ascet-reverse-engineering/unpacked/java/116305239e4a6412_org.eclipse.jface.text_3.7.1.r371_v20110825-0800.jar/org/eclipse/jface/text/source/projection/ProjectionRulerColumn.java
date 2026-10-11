/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackAdapter
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.text.source.projection;

import java.util.Iterator;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationRulerColumn;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationAccess;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.projection.IProjectionPosition;
import org.eclipse.jface.text.source.projection.ProjectionAnnotation;
import org.eclipse.jface.text.source.projection.ProjectionAnnotationModel;
import org.eclipse.jface.text.source.projection.ProjectionSupport;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackAdapter;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

class ProjectionRulerColumn
extends AnnotationRulerColumn {
    private ProjectionAnnotation fCurrentAnnotation;
    private int fMouseDownLine;

    public ProjectionRulerColumn(IAnnotationModel model, int width, IAnnotationAccess annotationAccess) {
        super(model, width, annotationAccess);
    }

    public ProjectionRulerColumn(int width, IAnnotationAccess annotationAccess) {
        super(width, annotationAccess);
    }

    protected void mouseClicked(int line) {
        this.clearCurrentAnnotation();
        if (this.fMouseDownLine != line) {
            return;
        }
        ProjectionAnnotation annotation = this.findAnnotation(line, true);
        if (annotation != null) {
            ProjectionAnnotationModel model = (ProjectionAnnotationModel)this.getModel();
            model.toggleExpansionState(annotation);
        }
    }

    protected void mouseDown(int rulerLine) {
        this.fMouseDownLine = rulerLine;
    }

    protected void mouseDoubleClicked(int rulerLine) {
        if (this.findAnnotation(rulerLine, true) != null) {
            return;
        }
        ProjectionAnnotation annotation = this.findAnnotation(rulerLine, false);
        if (annotation != null) {
            ProjectionAnnotationModel model = (ProjectionAnnotationModel)this.getModel();
            model.toggleExpansionState(annotation);
        }
    }

    private ProjectionAnnotation findAnnotation(int line, boolean exact) {
        ProjectionAnnotation previousAnnotation = null;
        IAnnotationModel model = this.getModel();
        if (model != null) {
            IDocument document = this.getCachedTextViewer().getDocument();
            int previousDistance = Integer.MAX_VALUE;
            Iterator e = model.getAnnotationIterator();
            while (e.hasNext()) {
                int distance;
                ProjectionAnnotation annotation;
                Position p;
                Object next = e.next();
                if (!(next instanceof ProjectionAnnotation) || (p = model.getPosition((Annotation)(annotation = (ProjectionAnnotation)next))) == null || (distance = this.getDistance(annotation, p, document, line)) == -1) continue;
                if (!exact) {
                    if (distance >= previousDistance) continue;
                    previousAnnotation = annotation;
                    previousDistance = distance;
                    continue;
                }
                if (distance != 0) continue;
                previousAnnotation = annotation;
            }
        }
        return previousAnnotation;
    }

    private int getDistance(ProjectionAnnotation annotation, Position position, IDocument document, int line) {
        if (position.getOffset() > -1 && position.getLength() > -1) {
            try {
                int startLine = document.getLineOfOffset(position.getOffset());
                int endLine = document.getLineOfOffset(position.getOffset() + position.getLength());
                if (startLine <= line && line < endLine) {
                    if (annotation.isCollapsed()) {
                        int captionOffset = position instanceof IProjectionPosition ? ((IProjectionPosition)position).computeCaptionOffset(document) : 0;
                        int captionLine = document.getLineOfOffset(position.getOffset() + captionOffset);
                        if (startLine <= captionLine && captionLine < endLine) {
                            return Math.abs(line - captionLine);
                        }
                    }
                    return line - startLine;
                }
            }
            catch (BadLocationException badLocationException) {}
        }
        return -1;
    }

    private boolean clearCurrentAnnotation() {
        if (this.fCurrentAnnotation != null) {
            this.fCurrentAnnotation.setRangeIndication(false);
            this.fCurrentAnnotation = null;
            return true;
        }
        return false;
    }

    public Control createControl(CompositeRuler parentRuler, Composite parentControl) {
        Control control = super.createControl(parentRuler, parentControl);
        Color background = this.getCachedTextViewer().getTextWidget().getBackground();
        control.setBackground(background);
        control.addMouseTrackListener((MouseTrackListener)new MouseTrackAdapter(){

            public void mouseExit(MouseEvent e) {
                if (ProjectionRulerColumn.this.clearCurrentAnnotation()) {
                    ProjectionRulerColumn.this.redraw();
                }
            }
        });
        control.addMouseMoveListener(new MouseMoveListener(){

            public void mouseMove(MouseEvent e) {
                boolean redraw = false;
                ProjectionAnnotation annotation = ProjectionRulerColumn.this.findAnnotation(ProjectionRulerColumn.this.toDocumentLineNumber(e.y), false);
                if (annotation != ProjectionRulerColumn.this.fCurrentAnnotation) {
                    if (ProjectionRulerColumn.this.fCurrentAnnotation != null) {
                        ProjectionRulerColumn.this.fCurrentAnnotation.setRangeIndication(false);
                        redraw = true;
                    }
                    ProjectionRulerColumn.this.fCurrentAnnotation = annotation;
                    if (ProjectionRulerColumn.this.fCurrentAnnotation != null && !ProjectionRulerColumn.this.fCurrentAnnotation.isCollapsed()) {
                        ProjectionRulerColumn.this.fCurrentAnnotation.setRangeIndication(true);
                        redraw = true;
                    }
                }
                if (redraw) {
                    ProjectionRulerColumn.this.redraw();
                }
            }
        });
        return control;
    }

    public void setModel(IAnnotationModel model) {
        if (model instanceof IAnnotationModelExtension) {
            IAnnotationModelExtension extension = (IAnnotationModelExtension)model;
            model = extension.getAnnotationModel(ProjectionSupport.PROJECTION);
        }
        super.setModel(model);
    }

    protected boolean isPropagatingMouseListener() {
        return false;
    }

    protected boolean hasAnnotation(int lineNumber) {
        return this.findAnnotation(lineNumber, true) != null;
    }
}

