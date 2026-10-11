/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.source.IVerticalRuler;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.widgets.Control;

public interface IOverviewRuler
extends IVerticalRuler {
    public boolean hasAnnotation(int var1);

    public int getAnnotationHeight();

    public void setAnnotationTypeColor(Object var1, Color var2);

    public void setAnnotationTypeLayer(Object var1, int var2);

    public void addAnnotationType(Object var1);

    public void removeAnnotationType(Object var1);

    public void addHeaderAnnotationType(Object var1);

    public void removeHeaderAnnotationType(Object var1);

    public Control getHeaderControl();
}

