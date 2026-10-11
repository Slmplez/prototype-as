/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.debug.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILogicalStructureType;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.debug.internal.core.LogicalStructureProvider;
import org.eclipse.debug.internal.core.LogicalStructureType;
import org.eclipse.debug.internal.core.Preferences;

public class LogicalStructureManager {
    private static LogicalStructureManager fgDefault;
    private List fTypes = null;
    private List fTypeProviders;
    private Map fStructureTypeSelections = null;
    private List fStructureTypeIds = null;
    public static final String PREF_STRUCTURE_SELECTIONS = "selectedStructures";
    public static final String PREF_STRUCTURE_IDS = "allStructures";

    public static LogicalStructureManager getDefault() {
        if (fgDefault == null) {
            fgDefault = new LogicalStructureManager();
        }
        return fgDefault;
    }

    public ILogicalStructureType[] getLogicalStructureTypes(IValue value) {
        this.initialize();
        Iterator iterator = this.fTypes.iterator();
        ArrayList<ILogicalStructureType> select = new ArrayList<ILogicalStructureType>();
        while (iterator.hasNext()) {
            ILogicalStructureType type = (ILogicalStructureType)iterator.next();
            if (!type.providesLogicalStructure(value)) continue;
            select.add(type);
        }
        Iterator iter = this.fTypeProviders.iterator();
        while (iter.hasNext()) {
            ILogicalStructureType[] logicalStructures = ((LogicalStructureProvider)iter.next()).getLogicalStructures(value);
            int i = 0;
            while (i < logicalStructures.length) {
                select.add(logicalStructures[i]);
                ++i;
            }
        }
        return select.toArray(new ILogicalStructureType[select.size()]);
    }

    private void loadStructureTypeSelections() {
        this.fStructureTypeSelections = new HashMap();
        String selections = Platform.getPreferencesService().getString(DebugPlugin.getUniqueIdentifier(), PREF_STRUCTURE_SELECTIONS, "", null);
        StringTokenizer tokenizer = new StringTokenizer(selections, "|");
        while (tokenizer.hasMoreTokens()) {
            String selection = tokenizer.nextToken();
            int i = selection.lastIndexOf(44);
            if (i <= 0 || i >= selection.length() - 1) continue;
            String comboKey = selection.substring(0, i + 1);
            String selected = selection.substring(i + 1, selection.length());
            this.fStructureTypeSelections.put(comboKey, new Integer(Integer.parseInt(selected)));
        }
    }

    private void storeStructureTypeSelections() {
        StringBuffer buffer = new StringBuffer();
        Iterator iter = this.fStructureTypeSelections.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = iter.next();
            buffer.append(entry.getKey());
            buffer.append(entry.getValue());
            buffer.append('|');
        }
        Preferences.setString(DebugPlugin.getUniqueIdentifier(), PREF_STRUCTURE_SELECTIONS, buffer.toString(), null);
    }

    private void loadStructureTypeIds() {
        this.fStructureTypeIds = new ArrayList();
        String types = Platform.getPreferencesService().getString(DebugPlugin.getUniqueIdentifier(), PREF_STRUCTURE_IDS, "", null);
        StringTokenizer tokenizer = new StringTokenizer(types, ",");
        while (tokenizer.hasMoreTokens()) {
            String id = tokenizer.nextToken();
            if (id.length() <= 0) continue;
            this.fStructureTypeIds.add(id);
        }
    }

    private void storeStructureTypeIds() {
        StringBuffer buffer = new StringBuffer();
        Iterator iter = this.fStructureTypeIds.iterator();
        while (iter.hasNext()) {
            buffer.append(iter.next()).append(',');
        }
        Preferences.setString(DebugPlugin.getUniqueIdentifier(), PREF_STRUCTURE_IDS, buffer.toString(), null);
    }

    public ILogicalStructureType getSelectedStructureType(ILogicalStructureType[] structureTypes) {
        if (structureTypes.length == 0) {
            return null;
        }
        String combo = this.getComboString(structureTypes);
        Integer index = (Integer)this.fStructureTypeSelections.get(combo);
        if (index == null) {
            return structureTypes[0];
        }
        if (index == -1) {
            return null;
        }
        String id = (String)this.fStructureTypeIds.get(index);
        int i = 0;
        while (i < structureTypes.length) {
            ILogicalStructureType type = structureTypes[i];
            if (type.getId().equals(id)) {
                return type;
            }
            ++i;
        }
        return structureTypes[0];
    }

    public void setEnabledType(ILogicalStructureType[] types, ILogicalStructureType selected) {
        String combo = this.getComboString(types);
        int index = -1;
        if (selected != null) {
            index = this.fStructureTypeIds.indexOf(selected.getId());
        }
        Integer integer = new Integer(index);
        this.fStructureTypeSelections.put(combo, integer);
        this.storeStructureTypeSelections();
        this.storeStructureTypeIds();
    }

    protected String getComboString(ILogicalStructureType[] types) {
        StringBuffer comboKey = new StringBuffer();
        int i = 0;
        while (i < types.length) {
            ILogicalStructureType type = types[i];
            int typeIndex = this.fStructureTypeIds.indexOf(type.getId());
            if (typeIndex == -1) {
                typeIndex = this.fStructureTypeIds.size();
                this.fStructureTypeIds.add(type.getId());
            }
            comboKey.append(typeIndex).append(',');
            ++i;
        }
        return comboKey.toString();
    }

    private synchronized void initialize() {
        if (this.fTypes == null) {
            IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "logicalStructureTypes");
            IConfigurationElement[] extensions = point.getConfigurationElements();
            this.fTypes = new ArrayList(extensions.length);
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement extension = extensions[i];
                try {
                    LogicalStructureType type = new LogicalStructureType(extension);
                    this.fTypes.add(type);
                }
                catch (CoreException e) {
                    DebugPlugin.log(e);
                }
                ++i;
            }
            point = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "logicalStructureProviders");
            extensions = point.getConfigurationElements();
            this.fTypeProviders = new ArrayList(extensions.length);
            i = 0;
            while (i < extensions.length) {
                try {
                    this.fTypeProviders.add(new LogicalStructureProvider(extensions[i]));
                }
                catch (CoreException e) {
                    DebugPlugin.log(e);
                }
                ++i;
            }
        }
        if (this.fStructureTypeSelections == null) {
            this.loadStructureTypeSelections();
        }
        if (this.fStructureTypeIds == null) {
            this.loadStructureTypeIds();
        }
    }
}

