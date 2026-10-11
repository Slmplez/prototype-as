/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ant.internal.core;

import java.util.Map;

public abstract class AbstractEclipseBuildLogger {
    public static final String ANT_PROCESS_ID = "org.eclipse.ant.core.ANT_PROCESS_ID";
    protected String fProcessId = null;

    public void configure(Map userProperties) {
        this.fProcessId = (String)userProperties.remove(ANT_PROCESS_ID);
    }
}

