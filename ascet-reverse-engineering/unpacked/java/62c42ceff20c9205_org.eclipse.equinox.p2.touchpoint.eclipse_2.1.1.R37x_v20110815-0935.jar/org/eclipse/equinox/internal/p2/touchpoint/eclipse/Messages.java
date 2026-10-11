/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.equinox.internal.p2.touchpoint.eclipse.messages";
    public static String error_loading_manipulator;
    public static String BundlePool;
    public static String failed_acquire_framework_manipulator;
    public static String failed_prepareIU;
    public static String error_saving_manipulator;
    public static String error_saving_platform_configuration;
    public static String error_saving_source_bundles_list;
    public static String error_parsing_configuration;
    public static String publisher_not_available;
    public static String artifact_write_unsupported;
    public static String iu_contains_no_arifacts;
    public static String artifact_file_not_found;
    public static String artifact_retrieval_unsupported;
    public static String bundle_pool_not_writeable;
    public static String cannot_calculate_extension_location;
    public static String parent_dir_features;
    public static String platform_config_unavailable;
    public static String unexpected_prepareiu_error;
    public static String error_validating_profile;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.touchpoint.eclipse.Messages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

