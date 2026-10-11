/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.JavaModelException;

public interface IAnnotatable {
    public IAnnotation getAnnotation(String var1);

    public IAnnotation[] getAnnotations() throws JavaModelException;
}

