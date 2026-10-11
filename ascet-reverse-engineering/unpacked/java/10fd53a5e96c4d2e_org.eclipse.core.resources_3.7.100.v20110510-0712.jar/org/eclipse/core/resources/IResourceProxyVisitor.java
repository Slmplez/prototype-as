/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.runtime.CoreException;

public interface IResourceProxyVisitor {
    public boolean visit(IResourceProxy var1) throws CoreException;
}

