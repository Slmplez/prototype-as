/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.filebuffers;

import org.eclipse.osgi.util.NLS;

final class FileBuffersMessages
extends NLS {
    private static final String BUNDLE_NAME;
    public static String ExtensionsRegistry_error_extensionPointNotFound;
    public static String ExtensionsRegistry_error_contentTypeDoesNotExist;
    public static String ResourceFileBuffer_error_fileDoesNotExist;
    public static String ResourceFileBuffer_warning_fileIsDerived;
    public static String ResourceFileBuffer_stateValidationFailed;
    public static String FileBuffer_error_outOfSync;
    public static String FileBuffer_status_error;
    public static String FileBuffer_error_queryContentDescription;
    public static String FileBufferManager_error_canNotCreateFilebuffer;
    public static String ResourceTextFileBuffer_error_charset_mapping_failed_message_arg;
    public static String ResourceTextFileBuffer_error_unsupported_encoding_message_arg;
    public static String ResourceTextFileBuffer_error_illegal_encoding_message_arg;
    public static String ResourceTextFileBuffer_task_saving;
    public static String ResourceFileBuffer_task_creatingFileBuffer;
    public static String JavaTextFileBuffer_error_closeStream;
    public static String TextFileBufferManager_error_documentSetupFailed;
    public static String TextFileBufferManager_error_documentFactoryFailed;
    public static String TextFileBufferManager_warning_documentSetupInstallsDefaultPartitioner;
    public static String DocumentInputStream_error_streamClosed;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.filebuffers.FileBuffersMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BUNDLE_NAME = clazz.getName();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.core.internal.filebuffers.FileBuffersMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz2);
    }

    private FileBuffersMessages() {
    }
}

