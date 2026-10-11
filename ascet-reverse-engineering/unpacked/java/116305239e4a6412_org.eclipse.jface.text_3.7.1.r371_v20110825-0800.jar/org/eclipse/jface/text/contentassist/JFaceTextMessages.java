/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.contentassist;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

class JFaceTextMessages {
    private static final String RESOURCE_BUNDLE;
    private static ResourceBundle fgResourceBundle;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.text.contentassist.JFaceTextMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = clazz.getName();
        fgResourceBundle = ResourceBundle.getBundle(RESOURCE_BUNDLE);
    }

    private JFaceTextMessages() {
    }

    public static String getString(String key) {
        try {
            return fgResourceBundle.getString(key);
        }
        catch (MissingResourceException missingResourceException) {
            return "!" + key + "!";
        }
    }
}

