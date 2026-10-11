/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IAnnotationComponent;

public interface IAnnotation {
    public int getTypeIndex();

    public char[] getTypeName();

    public int getComponentsNumber();

    public IAnnotationComponent[] getComponents();
}

