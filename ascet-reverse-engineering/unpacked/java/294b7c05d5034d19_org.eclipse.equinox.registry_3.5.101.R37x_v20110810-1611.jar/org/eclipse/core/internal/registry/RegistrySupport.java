/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.registry;

import java.util.ResourceBundle;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.runtime.IStatus;

public class RegistrySupport {
    public static String translate(String key, ResourceBundle resources) {
        if (key == null) {
            return null;
        }
        if (resources == null) {
            return key;
        }
        String trimmedKey = key.trim();
        if (trimmedKey.length() == 0) {
            return key;
        }
        if (trimmedKey.charAt(0) != '%') {
            return key;
        }
        return resources.getString(trimmedKey.substring(1));
    }

    public static void log(IStatus status, String prefix) {
        String statusMsg;
        String message = status.getMessage();
        int severity = status.getSeverity();
        switch (severity) {
            case 4: {
                statusMsg = RegistryMessages.log_error;
                break;
            }
            case 2: {
                statusMsg = RegistryMessages.log_warning;
                break;
            }
            default: {
                statusMsg = RegistryMessages.log_log;
            }
        }
        statusMsg = String.valueOf(statusMsg) + message;
        if (prefix != null) {
            statusMsg = String.valueOf(prefix) + statusMsg;
        }
        System.out.println(statusMsg);
        IStatus[] children = status.getChildren();
        if (children.length != 0) {
            String newPrefix = prefix == null ? "\t" : String.valueOf(prefix) + "\t";
            int i = 0;
            while (i < children.length) {
                RegistrySupport.log(children[i], newPrefix);
                ++i;
            }
        }
    }
}

