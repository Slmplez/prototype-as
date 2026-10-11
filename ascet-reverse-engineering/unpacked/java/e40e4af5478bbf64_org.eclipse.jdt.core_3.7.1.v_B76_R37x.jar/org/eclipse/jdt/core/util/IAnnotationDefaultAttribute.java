/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IAnnotationComponentValue;
import org.eclipse.jdt.core.util.IClassFileAttribute;

public interface IAnnotationDefaultAttribute
extends IClassFileAttribute {
    public IAnnotationComponentValue getMemberValue();
}

