/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.Annotation
 */
package org.eclipse.jface.text.source.projection;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.jface.text.source.Annotation;

public class AnnotationBag
extends Annotation {
    private Set fAnnotations;

    public AnnotationBag(String type) {
        super(type, false, null);
    }

    public void add(Annotation annotation) {
        if (this.fAnnotations == null) {
            this.fAnnotations = new HashSet(2);
        }
        this.fAnnotations.add(annotation);
    }

    public void remove(Annotation annotation) {
        if (this.fAnnotations != null) {
            this.fAnnotations.remove(annotation);
            if (this.fAnnotations.isEmpty()) {
                this.fAnnotations = null;
            }
        }
    }

    public boolean isEmpty() {
        return this.fAnnotations == null;
    }

    public Iterator iterator() {
        if (!this.isEmpty()) {
            return this.fAnnotations.iterator();
        }
        return null;
    }
}

