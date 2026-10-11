/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ISourceReference;

public interface IPackageDeclaration
extends IJavaElement,
ISourceReference,
IAnnotatable {
    public String getElementName();
}

