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
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$INodeChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$NodeChangeEvent
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.internal.PlatformUIPreferenceListener
 *  org.eclipse.ui.internal.WorkbenchPlugin
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.PlatformUIPreferenceListener;
import org.eclipse.ui.internal.UIPlugin;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.osgi.service.prefs.BackingStoreException;

public class UIPreferenceInitializer
extends AbstractPreferenceInitializer {
    public void initializeDefaultPreferences() {
        DefaultScope context = new DefaultScope();
        IEclipsePreferences node = context.getNode(UIPlugin.getDefault().getBundle().getSymbolicName());
        node.put("OPEN_NEW_PERSPECTIVE", "OPEN_PERSPECTIVE_REPLACE");
        node.put("PROJECT_OPEN_NEW_PERSPECTIVE", "OPEN_PERSPECTIVE_REPLACE");
        node.put("SHIFT_OPEN_NEW_PERSPECTIVE", "OPEN_PERSPECTIVE_REPLACE");
        node.put("ALTERNATE_OPEN_NEW_PERSPECTIVE", "OPEN_PERSPECTIVE_REPLACE");
        node.putBoolean("LINK_NAVIGATOR_TO_EDITOR", false);
        node.put("presentationFactoryId", "org.eclipse.ui.presentations.default");
        node.putBoolean("SHOW_TRADITIONAL_STYLE_TABS", true);
        node.putBoolean("ENABLE_ANIMATIONS", true);
        node.putBoolean("USE_COLORED_LABELS", true);
        node.put("DOCK_PERSPECTIVE_BAR", "topLeft");
        node.putBoolean("SHOW_TEXT_ON_PERSPECTIVE_BAR", true);
        node.putBoolean("SHOW_OTHER_IN_PERSPECTIVE_MENU", true);
        node.putBoolean("SHOW_OPEN_ON_PERSPECTIVE_BAR", true);
        node.put("initialFastViewBarLocation", "bottom");
        node.putBoolean("showIntro", true);
        node.put("KEY_CONFIGURATION_ID", "org.eclipse.ui.defaultAcceleratorConfiguration");
        node.putBoolean("SHOW_SYSTEM_JOBS", false);
        node.putInt("EDITOR_MINIMUM_CHARACTERS", -1);
        node.putInt("VIEW_MINIMUM_CHARACTERS", 1);
        node.putBoolean("CLOSE_EDITORS_ON_EXIT", false);
        node.putBoolean("USE_WINDOW_WORKING_SET_BY_DEFAULT", false);
        node.putBoolean("SHOW_FILTERED_TEXTS", true);
        node.putBoolean("ENABLE_DETACHED_VIEWS", true);
        node.putBoolean("PROMPT_WHEN_SAVEABLE_STILL_OPEN", true);
        node.putBoolean("ENABLE_MIN_MAX", true);
        node.putBoolean("disableNewFastView", false);
        node.putBoolean("ENABLE_32_STICKY_CLOSE_BEHAVIOR", false);
        node.putInt("VIEW_TAB_POSITION", 128);
        node.putInt("EDITOR_TAB_POSITION", 128);
        node.putBoolean("SHOW_MULTIPLE_EDITOR_TABS", true);
        node.putInt("RECENTLY_USED_WORKINGSETS_SIZE", 5);
        this.migrateInternalPreferences();
        IEclipsePreferences rootNode = (IEclipsePreferences)Platform.getPreferencesService().getRootNode().node("instance");
        final String uiName = UIPlugin.getDefault().getBundle().getSymbolicName();
        try {
            if (rootNode.nodeExists(uiName)) {
                ((IEclipsePreferences)rootNode.node(uiName)).addPreferenceChangeListener(PlatformUIPreferenceListener.getSingleton());
            }
        }
        catch (BackingStoreException e) {
            Status status = new Status(4, UIPlugin.getDefault().getBundle().getSymbolicName(), 4, e.getLocalizedMessage(), (Throwable)e);
            UIPlugin.getDefault().getLog().log((IStatus)status);
        }
        rootNode.addNodeChangeListener(new IEclipsePreferences.INodeChangeListener(){

            public void added(IEclipsePreferences.NodeChangeEvent event) {
                if (!event.getChild().name().equals(uiName)) {
                    return;
                }
                ((IEclipsePreferences)event.getChild()).addPreferenceChangeListener(PlatformUIPreferenceListener.getSingleton());
            }

            public void removed(IEclipsePreferences.NodeChangeEvent event) {
            }
        });
    }

    private void migrateInternalPreferences() {
        IPreferenceStore internalStore = WorkbenchPlugin.getDefault().getPreferenceStore();
        IPreferenceStore apiStore = PlatformUI.getPreferenceStore();
        if (internalStore.contains("VIEW_TAB_POSITION")) {
            apiStore.setValue("VIEW_TAB_POSITION", internalStore.getInt("VIEW_TAB_POSITION"));
            internalStore.setToDefault("VIEW_TAB_POSITION");
        }
        if (internalStore.contains("EDITOR_TAB_POSITION")) {
            apiStore.setValue("EDITOR_TAB_POSITION", internalStore.getInt("EDITOR_TAB_POSITION"));
            internalStore.setToDefault("EDITOR_TAB_POSITION");
        }
        if (internalStore.contains("SHOW_MULTIPLE_EDITOR_TABS")) {
            apiStore.setValue("SHOW_MULTIPLE_EDITOR_TABS", internalStore.getBoolean("SHOW_MULTIPLE_EDITOR_TABS"));
            internalStore.setToDefault("SHOW_MULTIPLE_EDITOR_TABS");
        }
    }
}

