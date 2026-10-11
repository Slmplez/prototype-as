/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

class JFaceTextMessages {
    private static final String RESOURCE_BUNDLE = "org.eclipse.jface.text.JFaceTextMessages";
    private static ResourceBundle fgResourceBundle = ResourceBundle.getBundle("org.eclipse.jface.text.JFaceTextMessages");

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

