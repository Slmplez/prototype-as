/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.ITocContribution;
import org.eclipse.help.internal.HelpPlugin;

public abstract class AbstractTocProvider {
    public static final int DEFAULT_PRIORITY = 10;
    public static final int TOC_FILE_PRIORITY = 20;

    public abstract ITocContribution[] getTocContributions(String var1);

    protected void contentChanged() {
        HelpPlugin.getTocManager().clearCache();
    }

    public int getPriority() {
        return 10;
    }
}

