/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.runtime;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.core.internal.runtime.messages";
    public static String auth_notAvailable;
    public static String line_separator_platform_mac_os_9;
    public static String line_separator_platform_unix;
    public static String line_separator_platform_windows;
    public static String meta_appNotInit;
    public static String meta_exceptionParsingLog;
    public static String plugin_deactivatedLoad;
    public static String plugin_shutdownProblems;
    public static String plugin_startupProblems;
    public static String preferences_saveProblems;
    public static String parse_badPrereqOnFrag;
    public static String parse_duplicateFragment;
    public static String parse_duplicateLib;
    public static String parse_internalStack;
    public static String parse_unknownElement;
    public static String parse_unknownTopElement;
    public static String parse_unknownAttribute;
    public static String parse_error;
    public static String parse_errorProcessing;
    public static String parse_errorNameLineColumn;
    public static String parse_validExport;
    public static String parse_validMatch;
    public static String parse_unknownLibraryType;
    public static String parse_nullFragmentIdentifier;
    public static String parse_nullPluginIdentifier;
    public static String parse_duplicatePlugin;
    public static String parse_unknownEntry;
    public static String parse_missingPluginId;
    public static String parse_missingPluginName;
    public static String parse_missingFPName;
    public static String parse_missingFPVersion;
    public static String parse_missingPluginVersion;
    public static String parse_fragmentMissingAttr;
    public static String parse_pluginMissingAttr;
    public static String parse_pluginMissingIdName;
    public static String parse_fragmentMissingIdName;
    public static String parse_missingFragmentPd;
    public static String parse_extPointDisabled;
    public static String parse_extPointUnknown;
    public static String parse_unsatisfiedOptPrereq;
    public static String parse_unsatisfiedPrereq;
    public static String parse_prereqDisabled;
    public static String parse_prereqLoop;
    public static String parse_prereqOptLoop;
    public static String plugin_notPluginClass;
    public static String plugin_unableToResolve;
    public static String plugin_pluginDisabled;
    public static String plugin_instantiateClassError;
    public static String plugin_loadClassError;
    static /* synthetic */ Class class$0;

    static {
        Messages.reloadMessages();
    }

    public static void reloadMessages() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.runtime.Messages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

