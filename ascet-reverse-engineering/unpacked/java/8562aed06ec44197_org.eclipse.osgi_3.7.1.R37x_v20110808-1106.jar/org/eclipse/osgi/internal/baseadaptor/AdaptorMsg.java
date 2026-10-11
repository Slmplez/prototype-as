/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import org.eclipse.osgi.util.NLS;

public class AdaptorMsg
extends NLS {
    public static String ADAPTER_FILEEXIST_EXCEPTION;
    public static String ADAPTOR_DIRECTORY_CREATE_EXCEPTION;
    public static String ADAPTOR_DIRECTORY_EXCEPTION;
    public static String ADAPTOR_EXTENSION_IMPORT_ERROR;
    public static String ADAPTOR_EXTENSION_NATIVECODE_ERROR;
    public static String ADAPTOR_EXTENSION_REQUIRE_ERROR;
    public static String ADAPTOR_STORAGE_EXCEPTION;
    public static String ADAPTOR_STORAGE_INIT_FAILED_MSG;
    public static String ADAPTOR_STORAGE_INIT_FAILED_TITLE;
    public static String ADAPTOR_URL_CREATE_EXCEPTION;
    public static String BUNDLE_CLASSPATH_ENTRY_NOT_FOUND_EXCEPTION;
    public static String BUNDLE_NATIVECODE_EXCEPTION;
    public static String BUNDLE_READ_EXCEPTION;
    public static String MANIFEST_NOT_FOUND_EXCEPTION;
    public static String RESOURCE_NOT_FOUND_EXCEPTION;
    public static String SYSTEMBUNDLE_MISSING_MANIFEST;
    public static String SYSTEMBUNDLE_NOTRESOLVED;
    public static String URL_INVALID_BUNDLE_ID;
    public static String URL_NO_BUNDLE_FOUND;
    public static String URL_NO_BUNDLE_ID;
    private static final String BUNDLE_NAME = "org.eclipse.osgi.internal.baseadaptor.ExternalMessages";
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.internal.baseadaptor.AdaptorMsg");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages(BUNDLE_NAME, clazz);
    }
}

