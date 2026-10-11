/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.preferences.exchange.ILegacyPreferences
 */
package org.eclipse.core.internal.preferences.legacy;

import org.eclipse.core.internal.preferences.exchange.ILegacyPreferences;
import org.eclipse.core.internal.runtime.InternalPlatform;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;

public class InitLegacyPreferences
implements ILegacyPreferences {
    public Object init(Object object, String name) {
        Plugin plugin = null;
        if (object instanceof Plugin) {
            plugin = (Plugin)object;
        }
        if (plugin == null && InternalPlatform.getDefault().getBundle("org.eclipse.core.runtime.compatibility") != null) {
            plugin = Platform.getPlugin(name);
        }
        if (plugin == null) {
            if (InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
                InternalPlatform.message("No plug-in object available to set plug-in default preference overrides for:" + name);
            }
            return null;
        }
        if (InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
            InternalPlatform.message("Applying plug-in default preference overrides for plug-in: " + plugin.getDescriptor().getUniqueIdentifier());
        }
        plugin.internalInitializeDefaultPluginPreferences();
        return plugin;
    }
}

