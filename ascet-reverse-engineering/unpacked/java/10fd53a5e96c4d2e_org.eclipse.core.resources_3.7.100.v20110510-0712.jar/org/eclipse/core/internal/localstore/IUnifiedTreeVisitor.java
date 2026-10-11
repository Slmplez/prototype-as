/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.internal.localstore;

import org.eclipse.core.internal.localstore.UnifiedTreeNode;
import org.eclipse.core.runtime.CoreException;

public interface IUnifiedTreeVisitor {
    public boolean visit(UnifiedTreeNode var1) throws CoreException;
}

