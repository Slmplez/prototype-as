/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor
 *  org.eclipse.core.runtime.preferences.PreferenceModifyListener
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor;
import org.eclipse.core.runtime.preferences.PreferenceModifyListener;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunchConfigurationType;
import org.eclipse.debug.internal.core.LaunchConfigurationType;
import org.eclipse.debug.internal.core.LaunchManager;
import org.osgi.service.prefs.BackingStoreException;

public class PreferredDelegateModifyListener
extends PreferenceModifyListener {
    public IEclipsePreferences preApply(IEclipsePreferences node) {
        try {
            node.accept((IPreferenceNodeVisitor)new Visitor());
        }
        catch (BackingStoreException e) {
            DebugPlugin.log(e);
        }
        return node;
    }

    class Visitor
    implements IPreferenceNodeVisitor {
        Visitor() {
        }

        public boolean visit(IEclipsePreferences node) throws BackingStoreException {
            if (node.name().equals(DebugPlugin.getUniqueIdentifier())) {
                LaunchManager manager = (LaunchManager)DebugPlugin.getDefault().getLaunchManager();
                manager.resetPreferredDelegates();
                ILaunchConfigurationType[] types = manager.getLaunchConfigurationTypes();
                int i = 0;
                while (i < types.length) {
                    ((LaunchConfigurationType)types[i]).resetPreferredDelegates();
                    ++i;
                }
                return false;
            }
            return true;
        }
    }
}

