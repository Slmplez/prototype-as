/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.pde.internal.core;

import java.util.Locale;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.core.PDECore;
import org.osgi.service.prefs.BackingStoreException;

public class PreferenceInitializer
extends AbstractPreferenceInitializer {
    public void initializeDefaultPreferences() {
        IEclipsePreferences defaultPreferences = new DefaultScope().getNode("org.eclipse.pde.core");
        IEclipsePreferences preferences = new InstanceScope().getNode("org.eclipse.pde.core");
        defaultPreferences.put("target_mode", "useThis");
        defaultPreferences.put("checkedPlugins", "[savedAll]");
        defaultPreferences.put("checkedVersionPlugins", "[savedNone]");
        if (preferences.get("target_mode", defaultPreferences.get("target_mode", "")).equals("useThis")) {
            preferences.put("platform_path", TargetPlatform.getDefaultLocation());
        } else {
            defaultPreferences.put("platform_path", TargetPlatform.getDefaultLocation());
        }
        defaultPreferences.put("org.eclipse.pde.ui.os", Platform.getOS());
        defaultPreferences.put("org.eclipse.pde.ui.ws", Platform.getWS());
        defaultPreferences.put("org.eclipse.pde.ui.nl", Locale.getDefault().toString());
        defaultPreferences.put("org.eclipse.pde.ui.arch", Platform.getOSArch());
        defaultPreferences.putBoolean("target_platform_realization", TargetPlatform.getDefaultLocation().equals(TargetPlatform.getLocation()));
        try {
            preferences.flush();
            defaultPreferences.flush();
        }
        catch (BackingStoreException bse) {
            PDECore.log(bse);
        }
        IEclipsePreferences prefs = new DefaultScope().getNode("org.eclipse.pde");
        prefs.putInt("compilers.p.unresolved-import", 0);
        prefs.putInt("compilers.p.unresolved-ex-points", 0);
        prefs.putInt("compilers.p.no-required-att", 0);
        prefs.putInt("compilers.p.unknown-element", 1);
        prefs.putInt("compilers.p.unknown-attribute", 1);
        prefs.putInt("compilers.p.deprecated", 1);
        prefs.putInt("compilers.p.internal", 1);
        prefs.putInt("compilers.p.unknown-class", 1);
        prefs.putInt("compilers.p.discouraged-class", 1);
        prefs.putInt("compilers.p.unknown-resource", 1);
        prefs.putInt("compilers.p.unknown-identifier", 1);
        prefs.putInt("compilers.p.not-externalized-att", 2);
        prefs.putInt("compilers.p.build", 1);
        prefs.putInt("compilers.p.build.missing.output", 2);
        prefs.putInt("compilers.p.build.source.library", 1);
        prefs.putInt("compilers.p.build.output.library", 1);
        prefs.putInt("compilers.p.build.src.includes", 1);
        prefs.putInt("compilers.p.build.bin.includes", 1);
        prefs.putInt("compilers.p.build.java.compliance", 1);
        prefs.putInt("compilers.p.build.java.compiler", 2);
        prefs.putInt("compilers.p.build.encodings", 2);
        prefs.putInt("compilers.incompatible-environment", 1);
        prefs.putInt("compilers.p.missing-packages", 2);
        prefs.putInt("compilers.p.missing-version-export-package", 2);
        prefs.putInt("compilers.p.missing-version-import-package", 2);
        prefs.putInt("compilers.p.missing-version-require-bundle", 2);
        prefs.putBoolean("compilers.s.create-docs", false);
        prefs.put("compilers.s.doc-folder", "doc");
        prefs.putInt("compilers.s.open-tags", 1);
        prefs.putInt("compilers.f.unresolved-plugins", 1);
        prefs.putInt("compilers.f.unresolved-features", 1);
        try {
            prefs.flush();
        }
        catch (BackingStoreException e) {
            PDECore.log(e);
        }
    }
}

