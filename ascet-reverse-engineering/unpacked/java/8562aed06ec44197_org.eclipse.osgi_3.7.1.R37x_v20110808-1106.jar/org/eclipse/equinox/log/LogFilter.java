/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log;

import org.osgi.framework.Bundle;

public interface LogFilter {
    public boolean isLoggable(Bundle var1, String var2, int var3);
}

