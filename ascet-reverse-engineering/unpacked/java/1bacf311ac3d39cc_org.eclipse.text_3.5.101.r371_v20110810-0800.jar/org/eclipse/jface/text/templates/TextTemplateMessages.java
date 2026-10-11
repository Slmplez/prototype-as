/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 */
package org.eclipse.jface.text.templates;

import com.ibm.icu.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

class TextTemplateMessages {
    private static final String RESOURCE_BUNDLE;
    private static ResourceBundle fgResourceBundle;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.text.templates.TextTemplateMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = clazz.getName();
        fgResourceBundle = ResourceBundle.getBundle(RESOURCE_BUNDLE);
    }

    private TextTemplateMessages() {
    }

    public static String getString(String key) {
        try {
            return fgResourceBundle.getString(key);
        }
        catch (MissingResourceException missingResourceException) {
            return String.valueOf('!') + key + '!';
        }
    }

    public static String getFormattedString(String key, Object arg) {
        return MessageFormat.format((String)TextTemplateMessages.getString(key), (Object[])new Object[]{arg});
    }

    public static String getFormattedString(String key, Object[] args) {
        return MessageFormat.format((String)TextTemplateMessages.getString(key), (Object[])args);
    }
}

