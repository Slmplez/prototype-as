/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.jobs;

import java.util.Date;
import org.eclipse.osgi.util.NLS;

public class JobMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.core.internal.jobs.messages";
    public static String jobs_blocked0;
    public static String jobs_blocked1;
    public static String jobs_internalError;
    public static String jobs_waitFamSub;
    public static String jobs_waitFamSubOne;
    public static String meta_pluginProblems;
    static /* synthetic */ Class class$0;

    static {
        JobMessages.reloadMessages();
    }

    public static void reloadMessages() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.jobs.JobMessages");
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

