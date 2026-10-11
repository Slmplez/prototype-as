/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 */
package com.etas.ascet.importer.a2a.config;

import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;

public class PreferenceInitializer
extends AbstractPreferenceInitializer {
    public PreferenceInitializer() {
        IEclipsePreferences node = DefaultScope.INSTANCE.getNode("com.etas.ascet.importer.a2a");
        node.putBoolean("NameSpaceRequired", true);
        node.putBoolean("ProjectsRequired", true);
        node.putBoolean("TransferRequired", true);
        node.putBoolean("PromptNoASCETRunning", true);
        node.putBoolean("PromptNoDataBase", true);
        node.putBoolean("PromptOnTransfer", true);
        node.put("AsError", "");
        node.put("AsWarning", "");
        node.put("EditorPath", "");
    }

    public void initializeDefaultPreferences() {
        IEclipsePreferences node = DefaultScope.INSTANCE.getNode("com.etas.ascet.importer.a2a");
        node.putBoolean("NameSpaceRequired", true);
        node.putBoolean("ProjectsRequired", true);
        node.putBoolean("TransferRequired", true);
        node.putBoolean("PromptNoASCETRunning", true);
        node.putBoolean("PromptNoDataBase", true);
        node.putBoolean("PromptOnTransfer", true);
        node.put("AsError", "");
        node.put("AsWarning", "");
        node.put("EditorPath", "");
    }
}

