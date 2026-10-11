/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log;

import org.eclipse.equinox.log.Logger;
import org.osgi.framework.Bundle;
import org.osgi.service.log.LogService;

public interface ExtendedLogService
extends LogService,
Logger {
    public Logger getLogger(String var1);

    public Logger getLogger(Bundle var1, String var2);
}

