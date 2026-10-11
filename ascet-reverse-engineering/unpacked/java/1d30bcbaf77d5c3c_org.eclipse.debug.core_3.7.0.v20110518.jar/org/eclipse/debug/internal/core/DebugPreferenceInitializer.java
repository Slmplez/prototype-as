/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.internal.core.IInternalDebugCoreConstants;
import org.eclipse.debug.internal.core.Preferences;
import org.eclipse.debug.internal.core.StepFilterManager;

public class DebugPreferenceInitializer
extends AbstractPreferenceInitializer {
    public void initializeDefaultPreferences() {
        Preferences.setDefaultBoolean(DebugPlugin.getUniqueIdentifier(), StepFilterManager.PREF_USE_STEP_FILTERS, false);
        Preferences.setDefaultBoolean(DebugPlugin.getUniqueIdentifier(), DebugPlugin.PREF_DELETE_CONFIGS_ON_PROJECT_DELETE, false);
        Preferences.setDefaultBoolean(DebugPlugin.getUniqueIdentifier(), IInternalDebugCoreConstants.PREF_ENABLE_STATUS_HANDLERS, true);
        Preferences.setDefaultBoolean(DebugPlugin.getUniqueIdentifier(), IInternalDebugCoreConstants.PREF_BREAKPOINT_MANAGER_ENABLED_STATE, true);
        Preferences.savePreferences(DebugPlugin.getUniqueIdentifier());
    }
}

