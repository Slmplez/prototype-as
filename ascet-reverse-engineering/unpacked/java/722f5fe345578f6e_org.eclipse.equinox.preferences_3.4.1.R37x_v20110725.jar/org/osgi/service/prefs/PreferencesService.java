/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.prefs;

import org.osgi.service.prefs.Preferences;

public interface PreferencesService {
    public Preferences getSystemPreferences();

    public Preferences getUserPreferences(String var1);

    public String[] getUsers();
}

