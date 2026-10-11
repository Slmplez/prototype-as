/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import org.eclipse.osgi.util.NLS;

public class StateMsg
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.osgi.internal.resolver.StateMessages";
    public static String BUNDLE_NOT_IN_STATE;
    public static String BUNDLE_IN_OTHER_STATE;
    public static String BUNDLE_PENDING_REMOVE_STATE;
    public static String HEADER_REQUIRED;
    public static String HEADER_PACKAGE_DUPLICATES;
    public static String HEADER_PACKAGE_JAVA;
    public static String HEADER_VERSION_ERROR;
    public static String HEADER_EXPORT_ATTR_ERROR;
    public static String HEADER_DIRECTIVE_DUPLICATES;
    public static String HEADER_ATTRIBUTE_DUPLICATES;
    public static String HEADER_EXTENSION_ERROR;
    public static String RES_ERROR_DISABLEDBUNDLE;
    public static String RES_ERROR_MISSING_PERMISSION;
    public static String RES_ERROR_MISSING_CONSTRAINT;
    public static String RES_ERROR_FRAGMENT_CONFLICT;
    public static String RES_ERROR_USES_CONFLICT;
    public static String RES_ERROR_SINGLETON_CONFLICT;
    public static String RES_ERROR_PLATFORM_FILTER;
    public static String RES_ERROR_NO_NATIVECODE_MATCH;
    public static String RES_ERROR_NATIVECODE_PATH_INVALID;
    public static String RES_ERROR_UNKNOWN;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.internal.resolver.StateMsg");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages(BUNDLE_NAME, clazz);
    }
}

