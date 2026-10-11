/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.compare.internal.core;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.compare.internal.core.messages";
    public static String Activator_1;
    public static String FileDiffResult_0;
    public static String FileDiffResult_1;
    public static String FileDiffResult_2;
    public static String FileDiffResult_3;
    public static String Patcher_0;
    public static String Patcher_1;
    public static String Patcher_2;
    public static String WorkspacePatcher_0;
    public static String WorkspacePatcher_1;
    public static String RangeComparatorLCS_0;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.compare.internal.core.Messages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }

    private Messages() {
    }
}

