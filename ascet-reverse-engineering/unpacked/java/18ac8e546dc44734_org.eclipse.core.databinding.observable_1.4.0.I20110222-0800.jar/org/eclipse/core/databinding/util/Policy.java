/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.databinding.util;

import org.eclipse.core.databinding.util.ILogger;
import org.eclipse.core.runtime.IStatus;

public class Policy {
    public static final boolean DEFAULT = false;
    public static final String JFACE_DATABINDING = "org.eclipse.core.databinding";
    private static ILogger log;

    private static ILogger getDummyLog() {
        return new ILogger(){

            public void log(IStatus status) {
                System.err.println(status.toString());
                if (status.getException() != null) {
                    status.getException().printStackTrace(System.err);
                }
            }
        };
    }

    public static synchronized void setLog(ILogger logger) {
        log = logger;
    }

    public static synchronized ILogger getLog() {
        if (log == null) {
            log = Policy.getDummyLog();
        }
        return log;
    }
}

