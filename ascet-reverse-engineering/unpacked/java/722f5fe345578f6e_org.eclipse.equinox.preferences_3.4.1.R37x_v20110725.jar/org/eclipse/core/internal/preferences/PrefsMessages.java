/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.preferences;

import java.util.Date;
import org.eclipse.osgi.util.NLS;

public class PrefsMessages
extends NLS {
    public static final String OWNER_NAME = "org.eclipse.equinox.preferences";
    private static final String BUNDLE_NAME = "org.eclipse.core.internal.preferences.messages";
    public static String preferences_applyProblems;
    public static String preferences_classCastScope;
    public static String preferences_classCastListener;
    public static String preferences_classCastFilterEntry;
    public static String preferences_contextError;
    public static String preferences_errorWriting;
    public static String preferences_exportProblems;
    public static String preferences_failedDelete;
    public static String preferences_fileNotFound;
    public static String preferences_importProblems;
    public static String preferences_incompatible;
    public static String preferences_invalidExtensionSuperclass;
    public static String preferences_invalidFileFormat;
    public static String preferences_loadException;
    public static String preferences_matching;
    public static String preferences_missingClassAttribute;
    public static String preferences_missingScopeAttribute;
    public static String noRegistry;
    public static String preferences_removedNode;
    public static String preferences_saveException;
    public static String preferences_saveProblems;
    public static String preferences_validate;
    public static String preferences_validationException;
    static /* synthetic */ Class class$0;

    static {
        PrefsMessages.reloadMessages();
    }

    public static void reloadMessages() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.preferences.PrefsMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }

    public static void message(String message) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(new Date(System.currentTimeMillis()));
        buffer.append(" - [");
        buffer.append(Thread.currentThread().getName());
        buffer.append("] ");
        buffer.append(message);
        System.out.println(buffer.toString());
    }
}

