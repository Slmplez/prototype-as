/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help;

import java.io.InputStream;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.IContext;
import org.eclipse.help.IIndex;
import org.eclipse.help.IToc;
import org.eclipse.help.internal.HelpPlugin;

public final class HelpSystem {
    private static boolean fShared;

    private HelpSystem() {
    }

    public static IContext getContext(String contextId) {
        return HelpPlugin.getContextManager().getContext(contextId, Platform.getNL());
    }

    public static IContext getContext(String contextId, String locale) {
        return HelpPlugin.getContextManager().getContext(contextId, locale);
    }

    public static IToc[] getTocs() {
        return HelpPlugin.getTocManager().getTocs(Platform.getNL());
    }

    public static IIndex getIndex() {
        return HelpPlugin.getIndexManager().getIndex(Platform.getNL());
    }

    public static InputStream getHelpContent(String href) {
        return HelpSystem.getHelpContent(href, Platform.getNL());
    }

    public static InputStream getHelpContent(String href, String locale) {
        HelpPlugin.IHelpProvider provider = HelpPlugin.getDefault().getHelpProvider();
        if (provider != null) {
            return provider.getHelpContent(href, locale);
        }
        return null;
    }

    public static boolean isShared() {
        return fShared;
    }

    public static void setShared(boolean shared) {
        fShared = shared;
    }
}

