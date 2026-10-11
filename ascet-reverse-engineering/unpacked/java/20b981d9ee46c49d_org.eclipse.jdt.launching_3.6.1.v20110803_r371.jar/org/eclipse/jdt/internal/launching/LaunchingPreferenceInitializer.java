/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.JavaRuntime;
import org.osgi.service.prefs.BackingStoreException;

public class LaunchingPreferenceInitializer
extends AbstractPreferenceInitializer {
    public void initializeDefaultPreferences() {
        IEclipsePreferences dnode = DefaultScope.INSTANCE.getNode("org.eclipse.jdt.launching");
        if (dnode == null) {
            return;
        }
        dnode.putInt(JavaRuntime.PREF_CONNECT_TIMEOUT, 20000);
        dnode.put(JavaRuntime.PREF_STRICTLY_COMPATIBLE_JRE_NOT_AVAILABLE, "warning");
        try {
            dnode.flush();
        }
        catch (BackingStoreException e) {
            LaunchingPlugin.log(e);
        }
        String launchFilter = "*.launch";
        dnode = DefaultScope.INSTANCE.getNode("org.eclipse.jdt.core");
        if (dnode == null) {
            return;
        }
        dnode.put("org.eclipse.jdt.core.builder.resourceCopyExclusionFilter", launchFilter);
        try {
            dnode.flush();
        }
        catch (BackingStoreException e) {
            LaunchingPlugin.log(e);
        }
    }
}

