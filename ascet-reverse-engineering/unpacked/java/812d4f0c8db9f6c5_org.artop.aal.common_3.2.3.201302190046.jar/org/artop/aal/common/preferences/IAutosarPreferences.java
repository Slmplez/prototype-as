/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.sphinx.platform.preferences.BooleanWorkspacePreference
 *  org.eclipse.sphinx.platform.preferences.IWorkspacePreference
 *  org.eclipse.sphinx.platform.preferences.IntegerWorkspacePreference
 */
package org.artop.aal.common.preferences;

import org.artop.aal.common.Activator;
import org.artop.aal.common.preferences.IAutosarPreferenceConstants;
import org.eclipse.sphinx.platform.preferences.BooleanWorkspacePreference;
import org.eclipse.sphinx.platform.preferences.IWorkspacePreference;
import org.eclipse.sphinx.platform.preferences.IntegerWorkspacePreference;

public interface IAutosarPreferences {
    public static final IWorkspacePreference<Boolean> XSD_VALIDATION_ON_LOAD = new BooleanWorkspacePreference(Activator.getPlugin().getSymbolicName(), "xsd_validation_on_load", Boolean.valueOf(IAutosarPreferenceConstants.PREF_XSD_VALIDATION_ON_LOAD_DEFAULT));
    public static final IWorkspacePreference<Integer> XSD_VALIDATION_SEVERITY_LEVEL = new IntegerWorkspacePreference(Activator.getPlugin().getSymbolicName(), "xsd_validation_severity_level", Integer.valueOf(1));
    public static final IWorkspacePreference<Boolean> LIMIT_PROBLEM_INDICATION_ON_LOAD = new BooleanWorkspacePreference(Activator.getPlugin().getSymbolicName(), "limit_problem_indication_on_load", Boolean.valueOf(IAutosarPreferenceConstants.PREF_LIMIT_PROBLEM_INDICATION_ON_LOAD_DEFAULT));
    public static final IWorkspacePreference<Integer> MAX_PROBLEM_REPORTED_ON_LOAD = new IntegerWorkspacePreference(Activator.getPlugin().getSymbolicName(), "max_problem_reported_on_load", Integer.valueOf(10));
    public static final IWorkspacePreference<Boolean> SYNC_UUIDS = new BooleanWorkspacePreference(Activator.getPlugin().getSymbolicName(), "sync_uuids", Boolean.valueOf(IAutosarPreferenceConstants.PREF_SYNC_UUIDS_DEFAULT));
}

