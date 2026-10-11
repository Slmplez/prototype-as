/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IVerticalRulerListener;

public interface IVerticalRulerInfoExtension {
    public IAnnotationHover getHover();

    public IAnnotationModel getModel();

    public void addVerticalRulerListener(IVerticalRulerListener var1);

    public void removeVerticalRulerListener(IVerticalRulerListener var1);
}

