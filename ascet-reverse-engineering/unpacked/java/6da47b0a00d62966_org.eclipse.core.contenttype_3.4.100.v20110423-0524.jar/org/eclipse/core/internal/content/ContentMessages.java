/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.content;

import java.util.Date;
import org.eclipse.osgi.util.NLS;

public class ContentMessages
extends NLS {
    public static final String OWNER_NAME = "org.eclipse.core.contenttype";
    private static final String BUNDLE_NAME = "org.eclipse.core.internal.content.messages";
    public static String content_badInitializationData;
    public static String content_errorReadingContents;
    public static String content_errorLoadingSettings;
    public static String content_errorSavingSettings;
    public static String content_invalidContentDescriber;
    public static String content_invalidProperty;
    public static String content_missingIdentifier;
    public static String content_missingName;
    public static String content_parserConfiguration;
    static /* synthetic */ Class class$0;

    static {
        ContentMessages.reloadMessages();
    }

    public static void reloadMessages() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.content.ContentMessages");
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

