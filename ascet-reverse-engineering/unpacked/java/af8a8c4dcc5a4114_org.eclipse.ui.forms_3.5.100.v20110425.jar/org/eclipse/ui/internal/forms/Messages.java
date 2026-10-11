/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.forms;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.ui.internal.forms.Messages";
    public static String FormDialog_defaultTitle;
    public static String FormText_copy;
    public static String Form_tooltip_minimize;
    public static String Form_tooltip_restore;
    public static String MessageManager_sMessageSummary;
    public static String MessageManager_sWarningSummary;
    public static String MessageManager_sErrorSummary;
    public static String MessageManager_pMessageSummary;
    public static String MessageManager_pWarningSummary;
    public static String MessageManager_pErrorSummary;
    public static String ToggleHyperlink_accessibleColumn;
    public static String ToggleHyperlink_accessibleName;
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

