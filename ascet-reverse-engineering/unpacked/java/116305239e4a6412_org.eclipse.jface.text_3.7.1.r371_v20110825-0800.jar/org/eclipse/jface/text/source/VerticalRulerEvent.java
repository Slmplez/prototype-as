/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.Annotation
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.source.Annotation;

public class VerticalRulerEvent {
    private Annotation fAnnotation;

    public VerticalRulerEvent(Annotation annotation) {
        this.fAnnotation = annotation;
    }

    public Annotation getSelectedAnnotation() {
        return this.fAnnotation;
    }

    public void setSelectedAnnotation(Annotation annotation) {
        this.fAnnotation = annotation;
    }
}

