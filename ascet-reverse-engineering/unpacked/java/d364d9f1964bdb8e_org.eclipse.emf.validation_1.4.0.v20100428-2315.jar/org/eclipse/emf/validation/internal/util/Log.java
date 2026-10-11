/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.EMFPlugin
 */
package org.eclipse.emf.validation.internal.util;

import java.util.Collection;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;

public class Log {
    public static void error(int code, String message) {
        Log.error(code, message, null);
    }

    public static void error(int code, String message, Throwable throwable) {
        Log.log(4, code, message, throwable);
    }

    public static void warning(int code, String message) {
        Log.warning(code, message, null);
    }

    public static void warning(int code, String message, Throwable throwable) {
        Log.log(2, code, message, throwable);
    }

    public static void info(int code, String message) {
        Log.info(code, message, null);
    }

    public static void info(int code, String message, Throwable throwable) {
        Log.log(1, code, message, throwable);
    }

    public static void log(int severity, int code, String message) {
        Log.log(severity, code, message, null);
    }

    public static void log(int severity, int code, String message, Throwable throwable) {
        Status s = new Status(severity, EMFModelValidationPlugin.getPluginId(), code, message, throwable);
        Log.checkLoggerInstance();
        EMFModelValidationPlugin.getPlugin().log(s);
    }

    public static void log(IStatus status) {
        Log.checkLoggerInstance();
        EMFModelValidationPlugin.getPlugin().log(status);
    }

    private static void checkLoggerInstance() {
        if (!EMFPlugin.IS_ECLIPSE_RUNNING && EMFModelValidationPlugin.getPlugin() == null) {
            new EMFModelValidationPlugin.Implementation();
        }
    }

    public static void l7dError(int code, String message) {
        Log.l7dError(code, message, null);
    }

    public static void l7dError(int code, String message, Throwable exception) {
        Log.l7dLog(4, code, message, exception);
    }

    public static void l7dWarning(int code, String message) {
        Log.l7dWarning(code, message, null);
    }

    public static void l7dWarning(int code, String message, Throwable exception) {
        Log.l7dLog(2, code, message, exception);
    }

    public static void l7dInfo(int code, String message) {
        Log.l7dInfo(code, message, null);
    }

    public static void l7dInfo(int code, String message, Throwable exception) {
        Log.l7dLog(1, code, message, exception);
    }

    public static void l7dLog(int severity, int code, String message, Throwable exception) {
        Log.log(severity, code, message, exception);
    }

    public static void errorMessage(int code, String messagePattern, Object patternArgs) {
        Log.errorMessage(code, messagePattern, patternArgs, null);
    }

    public static void errorMessage(int code, String messagePattern, Object patternArgs, Throwable exception) {
        Log.message(4, code, messagePattern, patternArgs, exception);
    }

    public static void warningMessage(int code, String messagePattern, Object patternArgs) {
        Log.warningMessage(code, messagePattern, patternArgs, null);
    }

    public static void warningMessage(int code, String messagePattern, Object patternArgs, Throwable exception) {
        Log.message(2, code, messagePattern, patternArgs, exception);
    }

    public static void infoMessage(int code, String messagePattern, Object patternArgs) {
        Log.infoMessage(code, messagePattern, patternArgs, null);
    }

    public static void infoMessage(int code, String messagePattern, Object patternArgs, Throwable exception) {
        Log.message(1, code, messagePattern, patternArgs, exception);
    }

    public static void message(int severity, int code, String messagePattern, Object patternArgs) {
        Log.message(severity, code, messagePattern, patternArgs, null);
    }

    public static void message(int severity, int code, String messagePattern, Object patternArgs, Throwable exception) {
        Object[] args;
        if (patternArgs instanceof Object[]) {
            args = (Object[])patternArgs;
        } else if (patternArgs instanceof Collection) {
            Collection argsCollection = (Collection)patternArgs;
            args = argsCollection.toArray(new Object[argsCollection.size()]);
        } else {
            args = new Object[]{patternArgs};
        }
        Log.log(severity, code, EMFModelValidationPlugin.getMessage(messagePattern, args), exception);
    }

    public static void l7dMessage(int severity, int code, String messagePattern, String[] patternArgKeys) {
        Log.l7dMessage(severity, code, messagePattern, patternArgKeys, null);
    }

    public static void l7dMessage(int severity, int code, String messagePattern, String[] patternArgKeys, Throwable exception) {
        Log.log(severity, code, EMFModelValidationPlugin.getMessage(messagePattern, patternArgKeys), exception);
    }
}

