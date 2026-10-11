/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor
 *  org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.artop.aal.common.internal.preferences;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.artop.aal.common.Activator;
import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.aal.common.preferences.IAutosarPreferenceConstants;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

public class AutosarPreferenceInitializer
extends AbstractPreferenceInitializer {
    public void initializeDefaultPreferences() {
        IEclipsePreferences defaultPreferences = this.getDefaultPreferences();
        if (defaultPreferences == null) {
            RuntimeException ex = new RuntimeException("Failed to retrieve default preferences for " + AutosarReleaseDescriptor.INSTANCE.getName() + ".");
            PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)ex);
        }
        defaultPreferences.put("autosar_release", IAutosarPreferenceConstants.PREF_AUTOSAR_RELEASE_DEFAULT);
        defaultPreferences.put("autosar_resource_version", "same_as_in_original_resource");
        defaultPreferences.putBoolean("xsd_validation_on_load", IAutosarPreferenceConstants.PREF_XSD_VALIDATION_ON_LOAD_DEFAULT);
        defaultPreferences.putInt("xsd_validation_severity_level", 1);
        defaultPreferences.putBoolean("limit_problem_indication_on_load", IAutosarPreferenceConstants.PREF_LIMIT_PROBLEM_INDICATION_ON_LOAD_DEFAULT);
        defaultPreferences.putInt("max_problem_reported_on_load", 10);
        defaultPreferences.putBoolean("use_binary_resource", IAutosarPreferenceConstants.PREF_USE_BINARY_RESOURCE_DEFAULT);
        defaultPreferences.putBoolean("sync_uuids", IAutosarPreferenceConstants.PREF_SYNC_UUIDS_DEFAULT);
        defaultPreferences.putBoolean("apply_max_performance_settings", IAutosarPreferenceConstants.PREF_APPLY_MAX_PERFORMANCE_SETTINGS_DEFAULT);
    }

    private IEclipsePreferences getDefaultPreferences() {
        DefaultScope defaultScope = new DefaultScope();
        return defaultScope.getNode(Activator.getPlugin().getSymbolicName());
    }

    public static String getAutosarReleaseDefault() {
        List descriptors = MetaModelDescriptorRegistry.INSTANCE.getDescriptors((IMetaModelDescriptor)AutosarReleaseDescriptor.INSTANCE);
        if (descriptors.size() == 0) {
            return "";
        }
        ArrayList sortedDescriptors = new ArrayList(descriptors);
        Collections.sort(sortedDescriptors);
        return ((AutosarReleaseDescriptor)sortedDescriptors.get(sortedDescriptors.size() - 1)).getIdentifier();
    }
}

