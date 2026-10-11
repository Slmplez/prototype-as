/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.messages";
    public static String artifact_file_not_found;
    public static String parameter_not_set;
    public static String iu_contains_no_arifacts;
    public static String no_matching_artifact;
    public static String missing_manifest;
    public static String failed_bundleinfo;
    public static String cannot_configure_source_bundle;
    public static String error_parsing_startlevel;
    public static String artifact_not_directory;
    public static String no_bundle_pool;
    public static String error_processing_vmargs;
    public static String invalid_byte_format;
    public static String unable_to_open_file;
    public static String action_0_failed_file_1_doesNotExist;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

