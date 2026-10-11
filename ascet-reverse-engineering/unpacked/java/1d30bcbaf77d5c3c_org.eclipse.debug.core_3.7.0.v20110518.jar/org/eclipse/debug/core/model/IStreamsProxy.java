/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import java.io.IOException;
import org.eclipse.debug.core.model.IStreamMonitor;

public interface IStreamsProxy {
    public IStreamMonitor getErrorStreamMonitor();

    public IStreamMonitor getOutputStreamMonitor();

    public void write(String var1) throws IOException;
}

