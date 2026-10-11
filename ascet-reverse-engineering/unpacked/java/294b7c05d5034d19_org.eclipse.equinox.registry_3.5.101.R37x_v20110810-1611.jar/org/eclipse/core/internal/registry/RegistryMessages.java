/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.registry;

import org.eclipse.osgi.util.NLS;

public class RegistryMessages
extends NLS {
    public static final String OWNER_NAME = "org.eclipse.equinox.registry";
    private static final String BUNDLE_NAME = "org.eclipse.core.internal.registry.messages";
    public static String bundle_not_activated;
    public static String meta_registryCacheWriteProblems;
    public static String meta_registryCacheReadProblems;
    public static String meta_regCacheIOExceptionReading;
    public static String meta_registryCacheInconsistent;
    public static String meta_unableToCreateCache;
    public static String meta_unableToReadCache;
    public static String registry_no_default;
    public static String registry_default_exists;
    public static String registry_bad_cache;
    public static String registry_non_multi_lang;
    public static String parse_error;
    public static String parse_errorNameLineColumn;
    public static String parse_internalStack;
    public static String parse_missingAttribute;
    public static String parse_missingAttributeLine;
    public static String parse_unknownAttribute;
    public static String parse_unknownAttributeLine;
    public static String parse_unknownElement;
    public static String parse_unknownElementLine;
    public static String parse_unknownTopElement;
    public static String parse_xmlParserNotAvailable;
    public static String parse_process;
    public static String parse_failedParsingManifest;
    public static String parse_nonSingleton;
    public static String parse_nonSingletonFragment;
    public static String parse_problems;
    public static String parse_duplicateExtension;
    public static String parse_duplicateExtensionPoint;
    public static String create_failedExtensionPoint;
    public static String exExt_findClassError;
    public static String exExt_instantiateClassError;
    public static String exExt_initObjectError;
    public static String exExt_extDefNotFound;
    public static String plugin_eventListenerError;
    public static String plugin_initObjectError;
    public static String plugin_instantiateClassError;
    public static String plugin_loadClassError;
    public static String log_error;
    public static String log_warning;
    public static String log_log;
    public static String adapters_badAdapterFactory;
    public static String adapters_cantInstansiate;
    static /* synthetic */ Class class$0;

    static {
        RegistryMessages.reloadMessages();
    }

    public static void reloadMessages() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.registry.RegistryMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

