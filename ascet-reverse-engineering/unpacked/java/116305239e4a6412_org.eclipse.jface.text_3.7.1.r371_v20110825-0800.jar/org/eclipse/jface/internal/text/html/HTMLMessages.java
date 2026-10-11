/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 */
package org.eclipse.jface.internal.text.html;

import com.ibm.icu.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

class HTMLMessages {
    private static final String RESOURCE_BUNDLE;
    private static ResourceBundle fgResourceBundle;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.internal.text.html.HTMLMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = clazz.getName();
        fgResourceBundle = ResourceBundle.getBundle(RESOURCE_BUNDLE);
    }

    private HTMLMessages() {
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

    public static String getFormattedString(String key, Object arg) {
        String format = null;
        try {
            format = fgResourceBundle.getString(key);
        }
        catch (MissingResourceException missingResourceException) {
            return "!" + key + "!";
        }
        if (arg == null) {
            arg = "";
        }
        return MessageFormat.format((String)format, (Object[])new Object[]{arg});
    }
}

