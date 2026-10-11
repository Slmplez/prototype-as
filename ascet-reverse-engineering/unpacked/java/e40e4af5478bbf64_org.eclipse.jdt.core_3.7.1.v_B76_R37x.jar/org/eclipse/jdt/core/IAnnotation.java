/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.JavaModelException;

public interface IAnnotation
extends IJavaElement,
ISourceReference {
    public String getElementName();

    public IMemberValuePair[] getMemberValuePairs() throws JavaModelException;

    public int getOccurrenceCount();
}

