/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.preference.IPreferenceStore;

public final class JFacePreferences {
    public static final String ERROR_COLOR = "ERROR_COLOR";
    public static final String HYPERLINK_COLOR = "HYPERLINK_COLOR";
    public static final String ACTIVE_HYPERLINK_COLOR = "ACTIVE_HYPERLINK_COLOR";
    public static final String QUALIFIER_COLOR = "QUALIFIER_COLOR";
    public static final String DECORATIONS_COLOR = "DECORATIONS_COLOR";
    public static final String COUNTER_COLOR = "COUNTER_COLOR";
    public static final String CONTENT_ASSIST_BACKGROUND_COLOR = "CONTENT_ASSIST_BACKGROUND_COLOR";
    public static final String CONTENT_ASSIST_FOREGROUND_COLOR = "CONTENT_ASSIST_FOREGROUND_COLOR";
    private static IPreferenceStore preferenceStore;

    private JFacePreferences() {
    }

    public static IPreferenceStore getPreferenceStore() {
        return preferenceStore;
    }

    public static void setPreferenceStore(IPreferenceStore store) {
        preferenceStore = store;
    }
}

