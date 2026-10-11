/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.ui.internal.PlatformUIPreferenceListener;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.osgi.service.prefs.BackingStoreException;

public class WorkbenchPreferenceInitializer
extends AbstractPreferenceInitializer {
    public void initializeDefaultPreferences() {
        DefaultScope context = new DefaultScope();
        IEclipsePreferences node = context.getNode(WorkbenchPlugin.getDefault().getBundle().getSymbolicName());
        node.putBoolean("shouldPromptForEnablement", true);
        node.putBoolean("EDITORLIST_PULLDOWN_ACTIVE", false);
        node.putBoolean("EDITORLIST_DISPLAY_FULL_NAME", false);
        node.putBoolean("STICKY_CYCLE", false);
        node.putBoolean("REUSE_OPEN_EDITORS_BOOLEAN", false);
        node.putBoolean("REUSE_DIRTY_EDITORS", true);
        node.putInt("REUSE_OPEN_EDITORS", 8);
        node.putBoolean("OPEN_ON_SINGLE_CLICK", false);
        node.putBoolean("SELECT_ON_HOVER", false);
        node.putBoolean("OPEN_AFTER_DELAY", false);
        node.putInt("RECENT_FILES", 4);
        node.putBoolean("DISABLE_OPEN_EDITOR_IN_PLACE", false);
        node.putBoolean("USE_IPERSISTABLE_EDITORS", true);
        node.putBoolean("coolBarVisible", true);
        node.putBoolean("perspectiveBarVisible", true);
        node.putInt("EDITOR_TAB_WIDTH", 3);
        node.putInt("OPEN_VIEW_MODE", 0);
        node.putBoolean("FVB_HIDE", false);
        node.putInt("OPEN_PERSPECTIVE_MODE", 0);
        node.put("ENABLED_DECORATORS", "");
        node.putInt("EDITORLIST_SELECTION_SCOPE", 1);
        node.putInt("EDITORLIST_SORT_CRITERIA", 0);
        node.putBoolean("COLOR_ICONS", true);
        node.putInt("KEYS_PREFERENCE_SELECTED_TAB", 0);
        node.putBoolean("MULTI_KEY_ASSIST", true);
        node.putInt("MULTI_KEY_ASSIST_TIME", 1000);
        node.putBoolean("ENABLE_CONFIGURABLE_PROJECT_WIZARD", false);
        node.putInt("SINGLE_CLICK_METHOD", 0);
        node.putBoolean("ENABLE_COOL_BARS", true);
        node.putBoolean("ENABLE_NEW_MENUS", true);
        node.putBoolean("DISABLE_DIALOG_FONT", false);
        node.putBoolean("SHOW_MEMORY_MONITOR", false);
        node.putInt("HeapStatus.updateInterval", 500);
        node.putBoolean("HeapStatus.showMax", false);
        node.putBoolean("overridepresentation", false);
        IEclipsePreferences rootNode = (IEclipsePreferences)Platform.getPreferencesService().getRootNode().node("instance");
        String workbenchName = WorkbenchPlugin.getDefault().getBundle().getSymbolicName();
        try {
            if (rootNode.nodeExists(workbenchName)) {
                ((IEclipsePreferences)rootNode.node(workbenchName)).addPreferenceChangeListener(PlatformUIPreferenceListener.getSingleton());
            }
        }
        catch (BackingStoreException e) {
            Status status = new Status(4, WorkbenchPlugin.getDefault().getBundle().getSymbolicName(), 4, e.getLocalizedMessage(), (Throwable)e);
            WorkbenchPlugin.getDefault().getLog().log((IStatus)status);
        }
    }
}

