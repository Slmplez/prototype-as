/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IClassFileAttribute;

public interface IRuntimeInvisibleAnnotationsAttribute
extends IClassFileAttribute {
    public int getAnnotationsNumber();

    public IAnnotation[] getAnnotations();
}

