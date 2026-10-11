/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.Preferences$PropertyChangeEvent
 */
package org.eclipse.team.internal.core;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.team.internal.core.TeamPlugin;

public class UserStringMappings
implements Preferences.IPropertyChangeListener {
    public static final Integer BINARY = new Integer(2);
    public static final Integer TEXT = new Integer(1);
    public static final Integer UNKNOWN = new Integer(0);
    private static final String PREF_TEAM_SEPARATOR = "\n";
    private final Preferences fPreferences;
    private final String fKey;
    private Map fMap;

    public UserStringMappings(String key) {
        this.fKey = key;
        this.fPreferences = TeamPlugin.getPlugin().getPluginPreferences();
        this.fPreferences.addPropertyChangeListener((Preferences.IPropertyChangeListener)this);
    }

    public Map referenceMap() {
        if (this.fMap == null) {
            this.fMap = this.loadMappingsFromPreferences();
        }
        return this.fMap;
    }

    public void addStringMappings(String[] names, int[] types) {
        Assert.isTrue((names.length == types.length ? 1 : 0) != 0);
        Map map = this.referenceMap();
        int i = 0;
        while (i < names.length) {
            switch (types[i]) {
                case 2: {
                    map.put(names[i], BINARY);
                    break;
                }
                case 1: {
                    map.put(names[i], TEXT);
                    break;
                }
                case 0: {
                    map.put(names[i], UNKNOWN);
                }
            }
            ++i;
        }
        this.save();
    }

    public void setStringMappings(String[] names, int[] types) {
        Assert.isTrue((names.length == types.length ? 1 : 0) != 0);
        this.referenceMap().clear();
        this.addStringMappings(names, types);
    }

    public int getType(String string) {
        if (string == null) {
            return 0;
        }
        Integer type = (Integer)this.referenceMap().get(string);
        return type != null ? type : 0;
    }

    public void propertyChange(Preferences.PropertyChangeEvent event) {
        if (event.getProperty().equals(this.fKey)) {
            this.fMap = null;
        }
    }

    public void save() {
        StringBuffer buffer = new StringBuffer();
        Iterator e = this.fMap.keySet().iterator();
        while (e.hasNext()) {
            String filename = (String)e.next();
            buffer.append(filename);
            buffer.append(PREF_TEAM_SEPARATOR);
            Integer type = (Integer)this.fMap.get(filename);
            buffer.append(type);
            buffer.append(PREF_TEAM_SEPARATOR);
        }
        TeamPlugin.getPlugin().getPluginPreferences().setValue(this.fKey, buffer.toString());
    }

    protected Map loadMappingsFromPreferences() {
        HashMap<String, Integer> result = new HashMap<String, Integer>();
        if (!this.fPreferences.contains(this.fKey)) {
            return result;
        }
        String prefTypes = this.fPreferences.getString(this.fKey);
        StringTokenizer tok = new StringTokenizer(prefTypes, PREF_TEAM_SEPARATOR);
        try {
            while (tok.hasMoreElements()) {
                String name = tok.nextToken();
                String mode = tok.nextToken();
                result.put(name, Integer.valueOf(mode));
            }
        }
        catch (NoSuchElementException noSuchElementException) {}
        return result;
    }
}

