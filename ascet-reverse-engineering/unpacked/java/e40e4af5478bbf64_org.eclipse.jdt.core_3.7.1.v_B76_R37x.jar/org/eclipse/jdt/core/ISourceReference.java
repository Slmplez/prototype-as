/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;

public interface ISourceReference {
    public boolean exists();

    public String getSource() throws JavaModelException;

    public ISourceRange getSourceRange() throws JavaModelException;

    public ISourceRange getNameRange() throws JavaModelException;
}

