/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.win32.nls;

import org.eclipse.osgi.util.NLS;

public class WinCryptoMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.equinox.internal.security.win32.nls.messages";
    public static String encryptPasswordFailed;
    public static String decryptPasswordFailed;
    public static String newPasswordGenerated;
    static /* synthetic */ Class class$0;

    static {
        WinCryptoMessages.reloadMessages();
    }

    public static void reloadMessages() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.security.win32.nls.WinCryptoMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

