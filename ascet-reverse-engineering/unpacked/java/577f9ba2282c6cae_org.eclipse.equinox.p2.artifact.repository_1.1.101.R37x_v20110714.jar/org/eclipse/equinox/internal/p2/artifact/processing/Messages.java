/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.artifact.processing;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.equinox.internal.p2.artifact.processing.messages";
    public static String Can_not_create_temp_dir;
    public static String Can_not_delete_temp_dir;
    public static String Empty_stream;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.artifact.processing.Messages");
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

