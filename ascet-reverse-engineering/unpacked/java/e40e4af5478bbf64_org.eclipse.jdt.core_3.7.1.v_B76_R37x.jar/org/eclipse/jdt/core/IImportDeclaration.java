/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ISourceManipulation;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.JavaModelException;

public interface IImportDeclaration
extends IJavaElement,
ISourceReference,
ISourceManipulation {
    public String getElementName();

    public int getFlags() throws JavaModelException;

    public boolean isOnDemand();
}

