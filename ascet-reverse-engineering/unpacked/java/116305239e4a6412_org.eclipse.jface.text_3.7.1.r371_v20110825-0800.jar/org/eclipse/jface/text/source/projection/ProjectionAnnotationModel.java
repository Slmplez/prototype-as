/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.AnnotationModel
 */
package org.eclipse.jface.text.source.projection;

import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationModel;
import org.eclipse.jface.text.source.projection.ProjectionAnnotation;

public class ProjectionAnnotationModel
extends AnnotationModel {
    public void collapse(Annotation annotation) {
        ProjectionAnnotation projection;
        if (annotation instanceof ProjectionAnnotation && !(projection = (ProjectionAnnotation)annotation).isCollapsed()) {
            projection.markCollapsed();
            this.modifyAnnotation(projection, true);
        }
    }

    public void expand(Annotation annotation) {
        ProjectionAnnotation projection;
        if (annotation instanceof ProjectionAnnotation && (projection = (ProjectionAnnotation)annotation).isCollapsed()) {
            projection.markExpanded();
            this.modifyAnnotation(projection, true);
        }
    }

    public void toggleExpansionState(Annotation annotation) {
        if (annotation instanceof ProjectionAnnotation) {
            ProjectionAnnotation projection = (ProjectionAnnotation)annotation;
            if (projection.isCollapsed()) {
                projection.markExpanded();
            } else {
                projection.markCollapsed();
            }
            this.modifyAnnotation(projection, true);
        }
    }

    public boolean expandAll(int offset, int length) {
        return this.expandAll(offset, length, true);
    }

    public boolean collapseAll(int offset, int length) {
        boolean collapsing = false;
        Iterator iterator = this.getAnnotationIterator();
        while (iterator.hasNext()) {
            Position position;
            ProjectionAnnotation annotation = (ProjectionAnnotation)iterator.next();
            if (annotation.isCollapsed() || (position = this.getPosition(annotation)) == null || !position.overlapsWith(offset, length)) continue;
            annotation.markCollapsed();
            this.modifyAnnotation(annotation, false);
            collapsing = true;
        }
        if (collapsing) {
            this.fireModelChanged();
        }
        return collapsing;
    }

    protected boolean expandAll(int offset, int length, boolean fireModelChanged) {
        boolean expanding = false;
        Iterator iterator = this.getAnnotationIterator();
        while (iterator.hasNext()) {
            Position position;
            ProjectionAnnotation annotation = (ProjectionAnnotation)iterator.next();
            if (!annotation.isCollapsed() || (position = this.getPosition(annotation)) == null || !position.overlapsWith(offset, length)) continue;
            annotation.markExpanded();
            this.modifyAnnotation(annotation, false);
            expanding = true;
        }
        if (expanding && fireModelChanged) {
            this.fireModelChanged();
        }
        return expanding;
    }

    public void modifyAnnotations(Annotation[] deletions, Map additions, Annotation[] modifications) {
        try {
            this.replaceAnnotations(deletions, additions, false);
            if (modifications != null) {
                int i = 0;
                while (i < modifications.length) {
                    this.modifyAnnotation(modifications[i], false);
                    ++i;
                }
            }
        }
        catch (BadLocationException badLocationException) {}
        this.fireModelChanged();
    }
}

