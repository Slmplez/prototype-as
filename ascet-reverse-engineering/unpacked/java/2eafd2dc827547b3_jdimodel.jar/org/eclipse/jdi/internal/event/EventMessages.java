/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.jdi.internal.event;

import org.eclipse.osgi.util.NLS;

public class EventMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.jdi.internal.event.EventMessages";
    public static String EventImpl_Read_invalid_EventKind___1;
    public static String EventIteratorImpl_EventSets_are_unmodifiable_1;
    public static String EventSetImpl_Invalid_suspend_policy_encountered___1;
    public static String EventSetImpl_EventSets_are_unmodifiable_3;
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

