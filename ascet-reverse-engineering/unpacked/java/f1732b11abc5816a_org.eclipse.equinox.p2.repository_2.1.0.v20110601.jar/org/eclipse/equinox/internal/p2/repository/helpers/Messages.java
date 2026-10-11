/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.repository.helpers;

import org.eclipse.osgi.util.NLS;

class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.equinox.internal.p2.repository.helpers.messages";
    public static String repoMan_adding;
    public static String repoMan_exists;
    public static String repoMan_failedRead;
    public static String repoMan_internalError;
    public static String repoMan_notExists;
    public static String repoMan_unknownType;
    public static String repoManAuthenticationFailedFor_0;
    public static String DestinationNotModifiable;
    public static String locationMustBeAbsolute;
    public static String schemeNotSupported;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.repository.helpers.Messages");
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

