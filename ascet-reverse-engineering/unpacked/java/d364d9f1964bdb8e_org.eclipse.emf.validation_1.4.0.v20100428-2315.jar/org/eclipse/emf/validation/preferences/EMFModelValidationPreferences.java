/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Preferences
 */
package org.eclipse.emf.validation.preferences;

import org.eclipse.core.runtime.Preferences;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.service.ConstraintRegistry;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

public class EMFModelValidationPreferences {
    static final String CONSTRAINT_DISABLED_PREFIX = "con.disabled/";
    private static final Preferences prefs = EMFModelValidationPlugin.getPlugin().getPluginPreferences();

    private EMFModelValidationPreferences() {
    }

    public static void save() {
        EMFModelValidationPlugin.getPlugin().savePluginPreferences();
    }

    public static boolean isConstraintDisabled(String id) {
        return prefs.getBoolean(CONSTRAINT_DISABLED_PREFIX + id);
    }

    public static boolean isConstraintDisabledByDefault(String id) {
        return prefs.getDefaultBoolean(CONSTRAINT_DISABLED_PREFIX + id);
    }

    public static void setConstraintDisabled(String id, boolean disabled) {
        String prefName = CONSTRAINT_DISABLED_PREFIX + id;
        IConstraintDescriptor constraint = ConstraintRegistry.getInstance().getDescriptor(id);
        prefs.setValue(prefName, disabled);
        if (constraint != null) {
            constraint.setEnabled(!disabled);
        } else {
            prefs.setToDefault(prefName);
        }
    }

    public static void setConstraintDisabledDefault(String id, boolean disabled) {
        String prefName = CONSTRAINT_DISABLED_PREFIX + id;
        prefs.setDefault(prefName, disabled);
    }
}

