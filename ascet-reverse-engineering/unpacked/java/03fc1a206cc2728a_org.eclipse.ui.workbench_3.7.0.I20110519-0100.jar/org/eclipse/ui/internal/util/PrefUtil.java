/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.ui.internal.util;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.osgi.service.prefs.BackingStoreException;

public class PrefUtil {
    private static ICallback uiCallback;
    private static IPreferenceStore uiPreferenceStore;

    private PrefUtil() {
    }

    public static final void setUICallback(ICallback callback) {
        Assert.isTrue((uiCallback == null ? 1 : 0) != 0);
        uiCallback = callback;
    }

    public static IPreferenceStore getAPIPreferenceStore() {
        if (uiPreferenceStore == null) {
            Assert.isNotNull((Object)uiCallback);
            uiPreferenceStore = uiCallback.getPreferenceStore();
        }
        return uiPreferenceStore;
    }

    public static IPreferenceStore getInternalPreferenceStore() {
        return WorkbenchPlugin.getDefault().getPreferenceStore();
    }

    public static void savePrefs() {
        PrefUtil.saveAPIPrefs();
        PrefUtil.saveInternalPrefs();
    }

    public static void saveAPIPrefs() {
        Assert.isNotNull((Object)uiCallback);
        uiCallback.savePreferences();
    }

    public static void saveInternalPrefs() {
        try {
            InstanceScope.INSTANCE.getNode(WorkbenchPlugin.PI_WORKBENCH).flush();
        }
        catch (BackingStoreException e) {
            WorkbenchPlugin.log(e);
        }
    }

    public static interface ICallback {
        public IPreferenceStore getPreferenceStore();

        public void savePreferences();
    }
}

