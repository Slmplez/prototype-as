/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 */
package org.eclipse.core.resources.ant;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;

public class Policy {
    private static final String bundleName = "org.eclipse.core.resources.ant.messages";
    private static ResourceBundle bundle = ResourceBundle.getBundle("org.eclipse.core.resources.ant.messages", Locale.getDefault());

    public static String bind(String id) {
        return Policy.bind(id, null);
    }

    public static IProgressMonitor monitorFor(IProgressMonitor monitor) {
        if (monitor == null) {
            return new NullProgressMonitor();
        }
        return monitor;
    }

    public static String bind(String id, String binding) {
        return Policy.bind(id, new String[]{binding});
    }

    public static String bind(String id, String binding1, String binding2) {
        return Policy.bind(id, new String[]{binding1, binding2});
    }

    public static String bind(String id, String[] bindings) {
        if (id == null) {
            return "No message available";
        }
        String message = null;
        try {
            message = bundle.getString(id);
        }
        catch (MissingResourceException missingResourceException) {
            return "Missing message: " + id + " in: " + bundleName;
        }
        if (bindings == null) {
            return message;
        }
        return MessageFormat.format(message, bindings);
    }
}

