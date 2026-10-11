/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;

public class PreferenceInitializer
extends AbstractPreferenceInitializer {
    public static final String PREF_OPERATIONS_PER_SNAPSHOT = "snapshots.operations";
    public static final String PREF_DELTA_EXPIRATION = "delta.expiration";
    public static final boolean PREF_AUTO_REFRESH_DEFAULT = false;
    public static final boolean PREF_LIGHTWEIGHT_AUTO_REFRESH_DEFAULT = false;
    public static final boolean PREF_DISABLE_LINKING_DEFAULT = false;
    public static final String PREF_ENCODING_DEFAULT = "";
    public static final boolean PREF_AUTO_BUILDING_DEFAULT = true;
    public static final String PREF_BUILD_ORDER_DEFAULT = "";
    public static final int PREF_MAX_BUILD_ITERATIONS_DEFAULT = 10;
    public static final boolean PREF_DEFAULT_BUILD_ORDER_DEFAULT = true;
    public static final long PREF_SNAPSHOT_INTERVAL_DEFAULT = 300000L;
    public static final int PREF_OPERATIONS_PER_SNAPSHOT_DEFAULT = 100;
    public static final boolean PREF_APPLY_FILE_STATE_POLICY_DEFAULT = true;
    public static final long PREF_FILE_STATE_LONGEVITY_DEFAULT = 604800000L;
    public static final long PREF_MAX_FILE_STATE_SIZE_DEFAULT = 0x100000L;
    public static final int PREF_MAX_FILE_STATES_DEFAULT = 50;
    public static final long PREF_DELTA_EXPIRATION_DEFAULT = 2592000000L;

    public void initializeDefaultPreferences() {
        IEclipsePreferences node = DefaultScope.INSTANCE.getNode("org.eclipse.core.resources");
        node.putBoolean("refresh.enabled", false);
        node.putBoolean("refresh.lightweight.enabled", false);
        node.putBoolean("description.disableLinking", false);
        node.putBoolean("description.autobuilding", true);
        node.put("description.buildorder", "");
        node.putInt("description.maxbuilditerations", 10);
        node.putBoolean("description.defaultbuildorder", true);
        node.putBoolean("description.applyfilestatepolicy", true);
        node.putLong("description.filestatelongevity", 604800000L);
        node.putLong("description.maxfilestatesize", 0x100000L);
        node.putInt("description.maxfilestates", 50);
        node.putLong("description.snapshotinterval", 300000L);
        node.putInt(PREF_OPERATIONS_PER_SNAPSHOT, 100);
        node.putLong(PREF_DELTA_EXPIRATION, 2592000000L);
        node.put("encoding", "");
    }
}

