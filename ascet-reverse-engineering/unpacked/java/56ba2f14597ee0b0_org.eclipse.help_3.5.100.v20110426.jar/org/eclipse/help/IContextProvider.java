/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IContext;

public interface IContextProvider {
    public static final int NONE = 0;
    public static final int SELECTION = 1;

    public int getContextChangeMask();

    public IContext getContext(Object var1);

    public String getSearchExpression(Object var1);
}

