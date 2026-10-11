/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IAnnotationComponentValue;

public interface IAnnotationComponent {
    public int getComponentNameIndex();

    public char[] getComponentName();

    public IAnnotationComponentValue getComponentValue();
}

