/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.ISourceReference;

public interface IImportContainer
extends IJavaElement,
IParent,
ISourceReference {
    public IImportDeclaration getImport(String var1);
}

