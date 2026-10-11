/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.contexts;

import org.eclipse.ui.contexts.IContextListener;
import org.eclipse.ui.contexts.NotDefinedException;

public interface IContext
extends Comparable {
    public void addContextListener(IContextListener var1);

    public String getId();

    public String getName() throws NotDefinedException;

    public String getParentId() throws NotDefinedException;

    public boolean isDefined();

    public boolean isEnabled();

    public void removeContextListener(IContextListener var1);
}

