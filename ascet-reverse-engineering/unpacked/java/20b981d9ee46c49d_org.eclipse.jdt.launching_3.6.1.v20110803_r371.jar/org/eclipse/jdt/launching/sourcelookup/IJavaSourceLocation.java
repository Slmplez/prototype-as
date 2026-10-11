/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.jdt.launching.sourcelookup;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;

public interface IJavaSourceLocation
extends IAdaptable {
    public Object findSourceElement(String var1) throws CoreException;

    public String getMemento() throws CoreException;

    public void initializeFrom(String var1) throws CoreException;
}

