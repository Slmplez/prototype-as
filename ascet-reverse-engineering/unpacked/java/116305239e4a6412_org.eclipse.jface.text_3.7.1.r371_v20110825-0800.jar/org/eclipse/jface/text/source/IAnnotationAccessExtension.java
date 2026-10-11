/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.source.Annotation;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;

public interface IAnnotationAccessExtension {
    public static final int DEFAULT_LAYER = 0;

    public String getTypeLabel(Annotation var1);

    public int getLayer(Annotation var1);

    public void paint(Annotation var1, GC var2, Canvas var3, Rectangle var4);

    public boolean isPaintable(Annotation var1);

    public boolean isSubtype(Object var1, Object var2);

    public Object[] getSupertypes(Object var1);
}

