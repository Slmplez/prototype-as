/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.JavaModelException;

public interface IOpenable {
    public void close() throws JavaModelException;

    public String findRecommendedLineSeparator() throws JavaModelException;

    public IBuffer getBuffer() throws JavaModelException;

    public boolean hasUnsavedChanges() throws JavaModelException;

    public boolean isConsistent() throws JavaModelException;

    public boolean isOpen();

    public void makeConsistent(IProgressMonitor var1) throws JavaModelException;

    public void open(IProgressMonitor var1) throws JavaModelException;

    public void save(IProgressMonitor var1, boolean var2) throws JavaModelException;
}

