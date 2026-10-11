/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.jdi.internal.request;

import org.eclipse.osgi.util.NLS;

public class RequestMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.jdi.internal.request.RequestMessages";
    public static String EventRequestImpl___not_enabled__1;
    public static String EventRequestImpl____2;
    public static String EventRequestImpl_Invalid_suspend_policy_encountered___3;
    public static String EventRequestImpl_Invalid_step_size_encountered___4;
    public static String EventRequestImpl_Invalid_step_depth_encountered___5;
    public static String EventRequestManagerImpl_EventRequest_type_of__0__is_unknown_1;
    public static String EventRequestManagerImpl_Got_event_of_unknown_type_2;
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

