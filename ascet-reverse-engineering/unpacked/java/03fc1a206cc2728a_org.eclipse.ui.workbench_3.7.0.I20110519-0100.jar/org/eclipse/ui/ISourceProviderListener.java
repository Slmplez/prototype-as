/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import java.util.Map;

public interface ISourceProviderListener {
    public void sourceChanged(int var1, Map var2);

    public void sourceChanged(int var1, String var2, Object var3);
}

