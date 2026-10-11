/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IContext;

public abstract class AbstractContextProvider {
    public abstract IContext getContext(String var1, String var2);

    public abstract String[] getPlugins();
}

