/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.natures;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.PDECore;

public class PDE {
    public static final String PLUGIN_ID = "org.eclipse.pde";
    public static final String MANIFEST_BUILDER_ID = "org.eclipse.pde.ManifestBuilder";
    public static final String SCHEMA_BUILDER_ID = "org.eclipse.pde.SchemaBuilder";
    public static final String PLUGIN_NATURE = "org.eclipse.pde.PluginNature";
    public static final String FEATURE_NATURE = "org.eclipse.pde.FeatureNature";
    public static final String SITE_NATURE = "org.eclipse.pde.UpdateSiteNature";
    public static final String FEATURE_BUILDER_ID = "org.eclipse.pde.FeatureBuilder";
    public static final String SITE_BUILDER_ID = "org.eclipse.pde.UpdateSiteBuilder";

    public static boolean hasPluginNature(IProject project) {
        try {
            return project.hasNature(PLUGIN_NATURE);
        }
        catch (CoreException e) {
            PDECore.log(e);
            return false;
        }
    }

    public static boolean hasFeatureNature(IProject project) {
        try {
            return project.hasNature(FEATURE_NATURE);
        }
        catch (CoreException e) {
            PDECore.log(e);
            return false;
        }
    }

    public static boolean hasUpdateSiteNature(IProject project) {
        try {
            return project.hasNature(SITE_NATURE);
        }
        catch (CoreException e) {
            PDECore.log(e);
            return false;
        }
    }
}

