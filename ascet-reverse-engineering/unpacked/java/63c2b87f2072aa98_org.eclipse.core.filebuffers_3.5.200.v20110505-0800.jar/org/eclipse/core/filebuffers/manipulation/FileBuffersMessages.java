/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.filebuffers.manipulation;

import org.eclipse.osgi.util.NLS;

final class FileBuffersMessages
extends NLS {
    private static final String BUNDLE_NAME;
    public static String ConvertLineDelimitersOperation_name;
    public static String ConvertLineDelimitersOperation_task_generatingChanges;
    public static String ConvertLineDelimitersOperation_task_applyingChanges;
    public static String RemoveTrailingWhitespaceOperation_name;
    public static String RemoveTrailingWhitespaceOperation_task_generatingChanges;
    public static String RemoveTrailingWhitespaceOperation_task_applyingChanges;
    public static String FileBufferOperationRunner_task_connecting;
    public static String FileBufferOperationRunner_task_disconnecting;
    public static String FileBufferOperationRunner_task_committing;
    public static String ContainerCreator_task_creatingContainer;
    public static String ContainerCreator_destinationMustBeAContainer;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.filebuffers.manipulation.FileBuffersMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BUNDLE_NAME = clazz.getName();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.core.filebuffers.manipulation.FileBuffersMessages");
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

