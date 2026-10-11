/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IParameterAnnotation;

public interface IRuntimeInvisibleParameterAnnotationsAttribute
extends IClassFileAttribute {
    public int getParametersNumber();

    public IParameterAnnotation[] getParameterAnnotations();
}

