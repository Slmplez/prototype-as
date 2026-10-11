/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IParameterValues
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.preference.PreferenceManager
 */
package org.eclipse.ui.internal.registry;

import java.util.Map;
import java.util.TreeMap;
import org.eclipse.core.commands.IParameterValues;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;

public final class PreferencePageParameterValues
implements IParameterValues {
    private Map preferenceMap;

    public PreferencePageParameterValues() {
        Platform.getExtensionRegistry().addRegistryChangeListener(new IRegistryChangeListener(){

            public void registryChanged(IRegistryChangeEvent event) {
                if (event.getExtensionDeltas("org.eclipse.ui", "preferencePages").length > 0) {
                    PreferencePageParameterValues.this.preferenceMap = null;
                }
            }
        });
    }

    private final void collectParameterValues(Map values, IPreferenceNode[] preferenceNodes, String namePrefix) {
        int i = 0;
        while (i < preferenceNodes.length) {
            IPreferenceNode preferenceNode = preferenceNodes[i];
            String name = namePrefix == null ? preferenceNode.getLabelText() : String.valueOf(namePrefix) + WorkbenchMessages.PreferencePageParameterValues_pageLabelSeparator + preferenceNode.getLabelText();
            String value = preferenceNode.getId();
            values.put(name, value);
            this.collectParameterValues(values, preferenceNode.getSubNodes(), name);
            ++i;
        }
    }

    public final Map getParameterValues() {
        if (this.preferenceMap == null) {
            this.preferenceMap = new TreeMap();
            PreferenceManager preferenceManager = PlatformUI.getWorkbench().getPreferenceManager();
            this.collectParameterValues(this.preferenceMap, preferenceManager.getRootSubNodes(), null);
        }
        return this.preferenceMap;
    }
}

