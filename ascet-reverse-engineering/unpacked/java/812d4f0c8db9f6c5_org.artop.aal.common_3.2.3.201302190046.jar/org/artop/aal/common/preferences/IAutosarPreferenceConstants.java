/*
 * Decompiled with CFR 0.152.
 */
package org.artop.aal.common.preferences;

import org.artop.aal.common.internal.preferences.AutosarPreferenceInitializer;

public interface IAutosarPreferenceConstants {
    public static final String AUTOSAR_PREFERENCE_PAGE_ID = "org.artop.aal.workspace.ui.preferencePages.autosar";
    public static final String AUTOSAR_RELEASE_PREFERENCE_PAGE_ID = "org.artop.aal.workspace.ui.preferencePages.autosar.release";
    public static final String AUTOSAR_APPEARANCE_PREFERENCE_PAGE_ID = "org.artop.aal.workspace.ui.preferencePages.autosar.appearance";
    public static final String PREF_AUTOSAR_RELEASE = "autosar_release";
    public static final String PREF_AUTOSAR_RELEASE_DEFAULT = AutosarPreferenceInitializer.getAutosarReleaseDefault();
    public static final String PREF_AUTOSAR_RESOURCE_VERSION = "autosar_resource_version";
    public static final String PREF_VALUE_AUTO_CONVERSION_MODE = "same_as_in_original_resource";
    public static final String PREF_AUTOSAR_RESOURCE_VERSION_DEFAULT = "same_as_in_original_resource";
    public static final String PREF_XSD_VALIDATION_ON_LOAD = "xsd_validation_on_load";
    public static final boolean PREF_XSD_VALIDATION_ON_LOAD_DEFAULT = Boolean.FALSE;
    public static final String PREF_XSD_VALIDATION_SEVERITY_LEVEL = "xsd_validation_severity_level";
    public static final int SEVERITY_ERROR = 2;
    public static final int SEVERITY_WARNING = 1;
    public static final int SEVERITY_INFO = 0;
    public static final int PREF_XSD_VALIDATION_SEVERITY_LEVEL_DEFAULT = 1;
    public static final String PREF_LIMIT_PROBLEM_INDICATION_ON_LOAD = "limit_problem_indication_on_load";
    public static final boolean PREF_LIMIT_PROBLEM_INDICATION_ON_LOAD_DEFAULT = Boolean.TRUE;
    public static final String PREF_MAX_PROBLEM_REPORTED_ON_LOAD = "max_problem_reported_on_load";
    public static final int PREF_MAX_PROBLEM_REPORTED_ON_LOAD_DEFAULT = 10;
    public static final String PREF_SYNC_UUIDS = "sync_uuids";
    public static final boolean PREF_SYNC_UUIDS_DEFAULT = Boolean.FALSE;
    public static final String PREF_APPLY_MAX_PERFORMANCE_SETTINGS = "apply_max_performance_settings";
    public static final boolean PREF_APPLY_MAX_PERFORMANCE_SETTINGS_DEFAULT = Boolean.TRUE;
    public static final String PREF_USE_BINARY_RESOURCE = "use_binary_resource";
    public static final boolean PREF_USE_BINARY_RESOURCE_DEFAULT = Boolean.FALSE;
}

