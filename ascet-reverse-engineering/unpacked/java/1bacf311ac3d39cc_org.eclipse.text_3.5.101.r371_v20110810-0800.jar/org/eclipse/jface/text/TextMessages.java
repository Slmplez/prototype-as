/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 */
package org.eclipse.jface.text;

import com.ibm.icu.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

class TextMessages {
    private static final String BUNDLE_NAME = "org.eclipse.jface.text.TextMessages";
    private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle.getBundle("org.eclipse.jface.text.TextMessages");

    private TextMessages() {
    }

    public static String getString(String key) {
        try {
            return RESOURCE_BUNDLE.getString(key);
        }
        catch (MissingResourceException missingResourceException) {
            return String.valueOf('!') + key + '!';
        }
    }

    public static String getFormattedString(String key, Object arg) {
        return TextMessages.getFormattedString(key, new Object[]{arg});
    }

    public static String getFormattedString(String key, Object[] args) {
        return MessageFormat.format((String)TextMessages.getString(key), (Object[])args);
    }
}

