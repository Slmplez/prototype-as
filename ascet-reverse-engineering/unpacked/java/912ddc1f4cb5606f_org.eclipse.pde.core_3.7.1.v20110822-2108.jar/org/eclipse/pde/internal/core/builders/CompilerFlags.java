/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ProjectScope
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.osgi.service.prefs.BackingStoreException;

public class CompilerFlags {
    public static final int ERROR = 0;
    public static final int WARNING = 1;
    public static final int IGNORE = 2;
    public static final int PLUGIN_FLAGS = 0;
    public static final int SCHEMA_FLAGS = 1;
    public static final int FEATURE_FLAGS = 2;
    public static final int SITE_FLAGS = 3;
    public static final String P_UNRESOLVED_IMPORTS = "compilers.p.unresolved-import";
    public static final String P_UNRESOLVED_EX_POINTS = "compilers.p.unresolved-ex-points";
    public static final String P_UNKNOWN_ELEMENT = "compilers.p.unknown-element";
    public static final String P_UNKNOWN_ATTRIBUTE = "compilers.p.unknown-attribute";
    public static final String P_UNKNOWN_CLASS = "compilers.p.unknown-class";
    public static final String P_UNKNOWN_RESOURCE = "compilers.p.unknown-resource";
    public static final String P_UNKNOWN_IDENTIFIER = "compilers.p.unknown-identifier";
    public static final String P_DISCOURAGED_CLASS = "compilers.p.discouraged-class";
    public static final String P_NO_REQUIRED_ATT = "compilers.p.no-required-att";
    public static final String P_NOT_EXTERNALIZED = "compilers.p.not-externalized-att";
    public static final String P_BUILD = "compilers.p.build";
    public static final String P_BUILD_MISSING_OUTPUT = "compilers.p.build.missing.output";
    public static final String P_BUILD_SOURCE_LIBRARY = "compilers.p.build.source.library";
    public static final String P_BUILD_OUTPUT_LIBRARY = "compilers.p.build.output.library";
    public static final String P_BUILD_SRC_INCLUDES = "compilers.p.build.src.includes";
    public static final String P_BUILD_BIN_INCLUDES = "compilers.p.build.bin.includes";
    public static final String P_BUILD_JAVA_COMPLIANCE = "compilers.p.build.java.compliance";
    public static final String P_BUILD_JAVA_COMPILER = "compilers.p.build.java.compiler";
    public static final String P_BUILD_ENCODINGS = "compilers.p.build.encodings";
    public static final String P_INCOMPATIBLE_ENV = "compilers.incompatible-environment";
    public static final String P_MISSING_EXPORT_PKGS = "compilers.p.missing-packages";
    public static final String P_DEPRECATED = "compilers.p.deprecated";
    public static final String P_INTERNAL = "compilers.p.internal";
    public static final String P_MISSING_VERSION_EXP_PKG = "compilers.p.missing-version-export-package";
    public static final String P_MISSING_VERSION_IMP_PKG = "compilers.p.missing-version-import-package";
    public static final String P_MISSING_VERSION_REQ_BUNDLE = "compilers.p.missing-version-require-bundle";
    public static final String S_CREATE_DOCS = "compilers.s.create-docs";
    public static final String S_DOC_FOLDER = "compilers.s.doc-folder";
    public static final String S_OPEN_TAGS = "compilers.s.open-tags";
    public static final String F_UNRESOLVED_PLUGINS = "compilers.f.unresolved-plugins";
    public static final String F_UNRESOLVED_FEATURES = "compilers.f.unresolved-features";

    public static int getFlag(IProject project, String flagId) {
        try {
            return Integer.parseInt(CompilerFlags.getString(project, flagId));
        }
        catch (NumberFormatException numberFormatException) {
            return 0;
        }
    }

    public static boolean getBoolean(IProject project, String flagId) {
        return Boolean.valueOf(CompilerFlags.getString(project, flagId));
    }

    public static String getString(IProject project, String flagId) {
        IScopeContext[] iScopeContextArray;
        IPreferencesService service = Platform.getPreferencesService();
        if (project == null) {
            iScopeContextArray = null;
        } else {
            IScopeContext[] iScopeContextArray2 = new IScopeContext[1];
            iScopeContextArray = iScopeContextArray2;
            iScopeContextArray2[0] = new ProjectScope(project);
        }
        IScopeContext[] contexts = iScopeContextArray;
        return service.getString("org.eclipse.pde", flagId, "", project == null ? null : contexts);
    }

    public static void save() {
        try {
            new InstanceScope().getNode("org.eclipse.pde").flush();
        }
        catch (BackingStoreException backingStoreException) {}
    }
}

