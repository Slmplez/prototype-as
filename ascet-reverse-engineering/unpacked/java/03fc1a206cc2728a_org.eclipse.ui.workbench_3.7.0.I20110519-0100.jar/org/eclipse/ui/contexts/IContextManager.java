/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.contexts;

import java.util.SortedSet;
import org.eclipse.ui.contexts.IContext;
import org.eclipse.ui.contexts.IContextManagerListener;

public interface IContextManager {
    public void addContextManagerListener(IContextManagerListener var1);

    public IContext getContext(String var1);

    public SortedSet getDefinedContextIds();

    public SortedSet getEnabledContextIds();

    public void removeContextManagerListener(IContextManagerListener var1);
}

