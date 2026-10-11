/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IFile;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;

public interface ICompilationUnitLocator {
    public ICompilationUnit fromIFile(IFile var1);
}

