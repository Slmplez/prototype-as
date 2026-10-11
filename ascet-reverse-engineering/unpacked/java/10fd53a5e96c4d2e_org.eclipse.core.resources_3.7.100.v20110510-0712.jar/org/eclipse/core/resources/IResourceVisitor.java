/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;

public interface IResourceVisitor {
    public boolean visit(IResource var1) throws CoreException;
}

