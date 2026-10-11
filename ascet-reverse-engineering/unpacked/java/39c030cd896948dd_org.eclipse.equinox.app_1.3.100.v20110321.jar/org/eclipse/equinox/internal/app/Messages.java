/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.app;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String MESSAGES_NAME = "org.eclipse.equinox.internal.app.messages";
    public static String application_invalidExtension;
    public static String application_noIdFound;
    public static String application_notFound;
    public static String application_returned;
    public static String application_errorStartDefault;
    public static String application_error_stopping;
    public static String application_error_state_stopped;
    public static String application_error_starting;
    public static String application_error_noMainThread;
    public static String application_instance_stopped;
    public static String provider_invalid;
    public static String provider_invalid_general;
    public static String product_notFound;
    public static String scheduled_app_removed;
    public static String scheduled_app_launch_error;
    public static String persistence_error_saving;
    public static String singleton_running;
    public static String apps_running;
    public static String main_running;
    public static String max_running;
    public static String console_help_app_commands_header;
    public static String console_help_activeapps_description;
    public static String console_help_apps_description;
    public static String console_help_arguments;
    public static String console_help_lockapp_description;
    public static String console_help_schedapp_arguments;
    public static String console_help_schedapp_description;
    public static String console_help_startapp_description;
    public static String console_help_stopapp_description;
    public static String console_help_unlockapp_description;
    public static String console_help_unschedapp_description;
    static /* synthetic */ Class class$0;

    static {
        Messages.reloadMessages();
    }

    public static void reloadMessages() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.app.Messages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)MESSAGES_NAME, (Class)clazz);
    }
}

