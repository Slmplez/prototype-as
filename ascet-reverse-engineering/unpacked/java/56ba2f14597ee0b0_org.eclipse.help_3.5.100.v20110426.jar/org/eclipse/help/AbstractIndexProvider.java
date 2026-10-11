/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IIndexContribution;
import org.eclipse.help.internal.HelpPlugin;

public abstract class AbstractIndexProvider {
    public abstract IIndexContribution[] getIndexContributions(String var1);

    protected void contentChanged() {
        HelpPlugin.getIndexManager().clearCache();
    }
}

