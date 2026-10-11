/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.Annotation
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.source.Annotation;

public interface IAnnotationAccess {
    public Object getType(Annotation var1);

    public boolean isMultiLine(Annotation var1);

    public boolean isTemporary(Annotation var1);
}

