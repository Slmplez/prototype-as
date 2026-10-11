/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.runtime;

import org.eclipse.osgi.util.NLS;

public class CommonMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.core.internal.runtime.commonMessages";
    public static String ok;
    public static String meta_couldNotCreate;
    public static String meta_instanceDataUnspecified;
    public static String meta_noDataModeSpecified;
    public static String meta_notDir;
    public static String meta_readonly;
    public static String meta_pluginProblems;
    public static String url_badVariant;
    public static String url_createConnection;
    public static String url_invalidURL;
    public static String url_noaccess;
    public static String url_noOutput;
    public static String url_resolveFragment;
    public static String url_resolvePlugin;
    public static String parse_doubleSeparatorVersion;
    public static String parse_emptyPluginVersion;
    public static String parse_fourElementPluginVersion;
    public static String parse_numericMajorComponent;
    public static String parse_numericMinorComponent;
    public static String parse_numericServiceComponent;
    public static String parse_oneElementPluginVersion;
    public static String parse_postiveMajor;
    public static String parse_postiveMinor;
    public static String parse_postiveService;
    public static String parse_separatorEndVersion;
    public static String parse_separatorStartVersion;
    public static String activator_not_available;
    static /* synthetic */ Class class$0;

    static {
        CommonMessages.reloadMessages();
    }

    public static void reloadMessages() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.runtime.CommonMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

