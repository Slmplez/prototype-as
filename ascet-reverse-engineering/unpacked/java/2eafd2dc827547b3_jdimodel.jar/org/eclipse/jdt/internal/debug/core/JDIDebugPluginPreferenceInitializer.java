/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer
 */
package org.eclipse.jdt.internal.debug.core;

import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;

public class JDIDebugPluginPreferenceInitializer
extends AbstractPreferenceInitializer {
    public void initializeDefaultPreferences() {
        Preferences prefs = JDIDebugPlugin.getDefault().getPluginPreferences();
        prefs.setDefault(JDIDebugModel.PREF_REQUEST_TIMEOUT, 3000);
        prefs.setDefault(JDIDebugModel.PREF_HCR_WITH_COMPILATION_ERRORS, true);
        prefs.setDefault(JDIDebugModel.PREF_SUSPEND_FOR_BREAKPOINTS_DURING_EVALUATION, true);
        prefs.setDefault(JDIDebugPlugin.PREF_DEFAULT_BREAKPOINT_SUSPEND_POLICY, 2);
        prefs.setDefault(JDIDebugPlugin.PREF_DEFAULT_WATCHPOINT_SUSPEND_POLICY, 0);
        prefs.setDefault(JDIDebugPlugin.PREF_SHOW_REFERENCES_IN_VAR_VIEW, false);
        prefs.setDefault(JDIDebugPlugin.PREF_ALL_REFERENCES_MAX_COUNT, 100);
        prefs.setDefault(JDIDebugPlugin.PREF_ALL_INSTANCES_MAX_COUNT, 100);
        prefs.addPropertyChangeListener((Preferences.IPropertyChangeListener)JDIDebugPlugin.getDefault());
    }
}

