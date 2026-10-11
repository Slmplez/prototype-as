/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 */
package org.eclipse.team.core.mapping;

import java.util.EventListener;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.team.core.mapping.ISynchronizationScope;

public interface ISynchronizationScopeChangeListener
extends EventListener {
    public void scopeChanged(ISynchronizationScope var1, ResourceMapping[] var2, ResourceTraversal[] var3);
}

