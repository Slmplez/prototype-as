/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.hyperlink;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

class HyperlinkMessages {
    private static final String BUNDLE_NAME;
    private static final ResourceBundle RESOURCE_BUNDLE;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.text.hyperlink.HyperlinkMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BUNDLE_NAME = clazz.getName();
        RESOURCE_BUNDLE = ResourceBundle.getBundle(BUNDLE_NAME);
    }

    private HyperlinkMessages() {
    }

    public static String getString(String key) {
        try {
            return RESOURCE_BUNDLE.getString(key);
        }
        catch (MissingResourceException missingResourceException) {
            return String.valueOf('!') + key + '!';
        }
    }
}

