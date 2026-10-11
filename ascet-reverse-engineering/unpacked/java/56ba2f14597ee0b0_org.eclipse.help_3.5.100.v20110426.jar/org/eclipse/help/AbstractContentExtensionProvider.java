/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IContentExtension;
import org.eclipse.help.internal.HelpPlugin;

public abstract class AbstractContentExtensionProvider {
    public abstract IContentExtension[] getContentExtensions(String var1);

    protected void contentChanged() {
        HelpPlugin.getContentExtensionManager().clearCache();
    }
}

