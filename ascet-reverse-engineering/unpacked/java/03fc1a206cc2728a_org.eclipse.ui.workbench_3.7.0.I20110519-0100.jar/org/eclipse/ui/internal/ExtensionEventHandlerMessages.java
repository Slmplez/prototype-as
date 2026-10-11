/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal;

import org.eclipse.osgi.util.NLS;

public class ExtensionEventHandlerMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.ui.internal.ExtensionEventHandler";
    public static String ExtensionEventHandler_new_action_set;
    public static String ExtensionEventHandler_following_changes;
    public static String ExtensionEventHandler_change_format;
    public static String ExtensionEventHandler_need_to_reset;
    public static String ExtensionEventHandler_reset_perspective;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.ExtensionEventHandlerMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

