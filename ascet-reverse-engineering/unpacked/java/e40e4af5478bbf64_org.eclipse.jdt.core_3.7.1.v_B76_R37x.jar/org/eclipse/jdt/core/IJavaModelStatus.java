/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.core.IJavaElement;

public interface IJavaModelStatus
extends IStatus {
    public IJavaElement[] getElements();

    public IPath getPath();

    public String getString();

    public boolean isDoesNotExist();
}

