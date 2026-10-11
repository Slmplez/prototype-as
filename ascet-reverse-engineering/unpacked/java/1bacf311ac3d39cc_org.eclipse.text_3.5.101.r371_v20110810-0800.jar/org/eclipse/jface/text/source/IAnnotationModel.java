/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

import java.util.Iterator;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationModelListener;

public interface IAnnotationModel {
    public void addAnnotationModelListener(IAnnotationModelListener var1);

    public void removeAnnotationModelListener(IAnnotationModelListener var1);

    public void connect(IDocument var1);

    public void disconnect(IDocument var1);

    public void addAnnotation(Annotation var1, Position var2);

    public void removeAnnotation(Annotation var1);

    public Iterator getAnnotationIterator();

    public Position getPosition(Annotation var1);
}

