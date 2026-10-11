/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.console;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class ConsoleResourceBundleMessages {
    private static final String BUNDLE_NAME = "org.eclipse.ui.internal.console.ConsoleResourceBundleMessages";
    private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle.getBundle("org.eclipse.ui.internal.console.ConsoleResourceBundleMessages");

    private ConsoleResourceBundleMessages() {
    }

    public static String getString(String key) {
        try {
            return RESOURCE_BUNDLE.getString(key);
        }
        catch (MissingResourceException missingResourceException) {
            return String.valueOf('!') + key + '!';
        }
    }

    public static ResourceBundle getBundle() {
        return RESOURCE_BUNDLE;
    }
}

