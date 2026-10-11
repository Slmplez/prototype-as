/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.PreferenceModifyListener
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.PreferenceModifyListener;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class JavaCorePreferenceModifyListener
extends PreferenceModifyListener {
    static int PREFIX_LENGTH = "org.eclipse.jdt.core.classpathContainer.".length();
    JavaModel javaModel = JavaModelManager.getJavaModelManager().getJavaModel();

    public IEclipsePreferences preApply(IEclipsePreferences node) {
        Preferences instance = node.node("instance");
        this.cleanJavaCore(instance.node("org.eclipse.jdt.core"));
        return super.preApply(node);
    }

    void cleanJavaCore(Preferences preferences) {
        try {
            String[] keys = preferences.keys();
            int k = 0;
            int kl = keys.length;
            while (k < kl) {
                String key = keys[k];
                if (key.startsWith("org.eclipse.jdt.core.classpathContainer.") && !this.isJavaProjectAccessible(key)) {
                    preferences.remove(key);
                }
                ++k;
            }
        }
        catch (BackingStoreException backingStoreException) {}
    }

    boolean isJavaProjectAccessible(String propertyName) {
        String projectName;
        JavaProject project;
        int index = propertyName.indexOf(124, PREFIX_LENGTH);
        return index > 0 && (project = (JavaProject)this.javaModel.getJavaProject(projectName = propertyName.substring(PREFIX_LENGTH, index).trim())).getProject().isAccessible();
    }
}

