/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 */
package org.eclipse.jface.text.source;

import com.ibm.icu.text.MessageFormat;
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

    public static String getFormattedString(String key, Object[] args) {
        String format = null;
        try {
            format = fgResourceBundle.getString(key);
        }
        catch (MissingResourceException missingResourceException) {
            return "!" + key + "!";
        }
        return MessageFormat.format((String)format, (Object[])args);
    }
}

