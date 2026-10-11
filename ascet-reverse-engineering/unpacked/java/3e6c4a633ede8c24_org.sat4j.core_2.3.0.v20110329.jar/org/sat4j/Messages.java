/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

public final class Messages {
    private static final String BUNDLE_NAME = "org.sat4j.messages";
    private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle.getBundle("org.sat4j.messages");

    private Messages() {
    }

    public static String getString(String string) {
        try {
            return RESOURCE_BUNDLE.getString(string);
        }
        catch (MissingResourceException missingResourceException) {
            return '!' + string + '!';
        }
    }
}

