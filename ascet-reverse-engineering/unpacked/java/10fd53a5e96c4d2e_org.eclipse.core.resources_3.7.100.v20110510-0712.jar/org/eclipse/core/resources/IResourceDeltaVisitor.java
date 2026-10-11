/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.runtime.CoreException;

public interface IResourceDeltaVisitor {
    public boolean visit(IResourceDelta var1) throws CoreException;
}

