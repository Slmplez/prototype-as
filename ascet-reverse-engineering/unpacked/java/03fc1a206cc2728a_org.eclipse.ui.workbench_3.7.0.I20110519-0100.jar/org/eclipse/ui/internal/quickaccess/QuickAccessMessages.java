/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.osgi.util.NLS;

public class QuickAccessMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.ui.internal.quickaccess.messages";
    public static String QuickAccess_Perspectives;
    public static String QuickAccess_Commands;
    public static String QuickAccess_Properties;
    public static String QuickAccess_Editors;
    public static String QuickAccess_Menus;
    public static String QuickAccess_New;
    public static String QuickAccess_Preferences;
    public static String QuickAccess_Previous;
    public static String QuickAccess_Views;
    public static String QuickAccess_PressKeyToShowAllMatches;
    public static String QuickAccess_PressKeyToShowInitialMatches;
    public static String QuickAccess_StartTypingToFindMatches;
    public static String QuickAccess_AvailableCategories;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.quickaccess.QuickAccessMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }

    private QuickAccessMessages() {
    }
}

