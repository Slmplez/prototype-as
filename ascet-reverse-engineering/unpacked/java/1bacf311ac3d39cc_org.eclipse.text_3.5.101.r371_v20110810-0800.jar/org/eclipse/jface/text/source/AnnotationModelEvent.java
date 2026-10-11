/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;

public class AnnotationModelEvent {
    private IAnnotationModel fAnnotationModel;
    private Set fAddedAnnotations = new HashSet();
    private Map fRemovedAnnotations = new HashMap();
    private Set fChangedAnnotations = new HashSet();
    private boolean fIsWorldChange;
    private Object fModificationStamp;

    public AnnotationModelEvent(IAnnotationModel model) {
        this(model, true);
    }

    public AnnotationModelEvent(IAnnotationModel model, boolean isWorldChange) {
        this.fAnnotationModel = model;
        this.fIsWorldChange = isWorldChange;
    }

    public IAnnotationModel getAnnotationModel() {
        return this.fAnnotationModel;
    }

    public void annotationAdded(Annotation annotation) {
        this.fAddedAnnotations.add(annotation);
        this.fIsWorldChange = false;
    }

    public Annotation[] getAddedAnnotations() {
        int size = this.fAddedAnnotations.size();
        Annotation[] added = new Annotation[size];
        this.fAddedAnnotations.toArray(added);
        return added;
    }

    public void annotationRemoved(Annotation annotation) {
        this.annotationRemoved(annotation, null);
    }

    public void annotationRemoved(Annotation annotation, Position position) {
        this.fRemovedAnnotations.put(annotation, position);
        this.fIsWorldChange = false;
    }

    public Annotation[] getRemovedAnnotations() {
        int size = this.fRemovedAnnotations.size();
        Annotation[] removed = new Annotation[size];
        this.fRemovedAnnotations.keySet().toArray(removed);
        return removed;
    }

    public Position getPositionOfRemovedAnnotation(Annotation annotation) {
        return (Position)this.fRemovedAnnotations.get(annotation);
    }

    public void annotationChanged(Annotation annotation) {
        this.fChangedAnnotations.add(annotation);
        this.fIsWorldChange = false;
    }

    public Annotation[] getChangedAnnotations() {
        int size = this.fChangedAnnotations.size();
        Annotation[] changed = new Annotation[size];
        this.fChangedAnnotations.toArray(changed);
        return changed;
    }

    public boolean isEmpty() {
        return !this.fIsWorldChange && this.fAddedAnnotations.isEmpty() && this.fRemovedAnnotations.isEmpty() && this.fChangedAnnotations.isEmpty();
    }

    public boolean isWorldChange() {
        return this.fIsWorldChange;
    }

    void markWorldChange(boolean isWorldChange) {
        this.fIsWorldChange = isWorldChange;
    }

    public boolean isValid() {
        if (this.fModificationStamp != null && this.fAnnotationModel instanceof IAnnotationModelExtension) {
            IAnnotationModelExtension extension = (IAnnotationModelExtension)((Object)this.fAnnotationModel);
            return this.fModificationStamp == extension.getModificationStamp();
        }
        return true;
    }

    public void markSealed() {
        if (this.fAnnotationModel instanceof IAnnotationModelExtension) {
            IAnnotationModelExtension extension = (IAnnotationModelExtension)((Object)this.fAnnotationModel);
            this.fModificationStamp = extension.getModificationStamp();
        }
    }
}

