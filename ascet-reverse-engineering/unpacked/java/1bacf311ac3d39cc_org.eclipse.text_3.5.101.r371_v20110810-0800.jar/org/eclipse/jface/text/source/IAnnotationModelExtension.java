/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

import java.util.Map;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationModel;

public interface IAnnotationModelExtension {
    public void addAnnotationModel(Object var1, IAnnotationModel var2);

    public IAnnotationModel getAnnotationModel(Object var1);

    public IAnnotationModel removeAnnotationModel(Object var1);

    public void replaceAnnotations(Annotation[] var1, Map var2) throws ClassCastException;

    public void modifyAnnotationPosition(Annotation var1, Position var2);

    public void removeAllAnnotations();

    public Object getModificationStamp();
}

