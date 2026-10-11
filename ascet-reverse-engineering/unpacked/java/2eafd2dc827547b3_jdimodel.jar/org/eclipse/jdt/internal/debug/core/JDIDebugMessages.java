/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.jdt.internal.debug.core;

import org.eclipse.osgi.util.NLS;

public class JDIDebugMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.jdt.internal.debug.core.JDIDebugMessages";
    public static String EventDispatcher_0;
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
}

