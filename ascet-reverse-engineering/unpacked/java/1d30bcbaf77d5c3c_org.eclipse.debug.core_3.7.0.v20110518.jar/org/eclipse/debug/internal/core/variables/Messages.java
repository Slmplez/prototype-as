/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.debug.internal.core.variables;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.debug.internal.core.variables.Messages";
    public static String ResourceResolver_0;
    public static String ResourceResolver_1;
    public static String ResourceResolver_2;
    public static String WorkspaceResolver_0;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName(BUNDLE_NAME);
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

