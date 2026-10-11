/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor
 *  org.eclipse.core.runtime.preferences.PreferenceModifyListener
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor;
import org.eclipse.core.runtime.preferences.PreferenceModifyListener;
import org.eclipse.pde.internal.core.PDECore;
import org.osgi.service.prefs.BackingStoreException;

public class TargetPreferenceModifyListener
extends PreferenceModifyListener {
    public IEclipsePreferences preApply(IEclipsePreferences node) {
        try {
            node.accept((IPreferenceNodeVisitor)new Visitor());
        }
        catch (BackingStoreException e) {
            PDECore.log(e);
        }
        return node;
    }

    class Visitor
    implements IPreferenceNodeVisitor {
        Visitor() {
        }

        public boolean visit(IEclipsePreferences node) throws BackingStoreException {
            if (node.name().equals("org.eclipse.pde.core")) {
                node.remove("additional_locations");
                node.remove("org.eclipse.pde.ui.arch");
                node.remove("checkedPlugins");
                node.remove("checkedVersionPlugins");
                node.remove("implicit_dependencies");
                node.remove("org.eclipse.pde.ui.nl");
                node.remove("platform_path");
                node.remove("pooled_bundles");
                node.remove("pooled_urls");
                node.remove("program_args");
                node.remove("org.eclipse.pde.ui.os");
                int i = 0;
                while (i < 4) {
                    StringBuffer key = new StringBuffer();
                    key.append("saved_platform");
                    key.append(i);
                    node.remove(key.toString());
                    ++i;
                }
                node.remove("target_mode");
                node.remove("target_platform_realization");
                node.remove("target.profile");
                node.remove("vm_args");
                node.remove("workspace_target_handle");
                node.remove("org.eclipse.pde.ui.ws");
                return false;
            }
            return true;
        }
    }
}

