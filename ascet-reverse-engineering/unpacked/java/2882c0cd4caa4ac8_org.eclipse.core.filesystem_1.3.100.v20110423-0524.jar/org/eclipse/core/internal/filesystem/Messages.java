/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.filesystem;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.core.internal.filesystem.messages";
    public static String copying;
    public static String couldnotDelete;
    public static String couldnotDeleteReadOnly;
    public static String couldNotLoadLibrary;
    public static String couldNotMove;
    public static String couldNotRead;
    public static String couldNotWrite;
    public static String deleteProblem;
    public static String deleting;
    public static String failedCreateWrongType;
    public static String failedMove;
    public static String failedReadDuringWrite;
    public static String fileExists;
    public static String fileNotFound;
    public static String moving;
    public static String noFileSystem;
    public static String noImplDelete;
    public static String noImplWrite;
    public static String noScheme;
    public static String notAFile;
    public static String readOnlyParent;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.filesystem.Messages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

