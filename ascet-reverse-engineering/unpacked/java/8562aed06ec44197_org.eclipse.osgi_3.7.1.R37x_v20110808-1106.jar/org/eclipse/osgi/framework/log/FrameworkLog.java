/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.log;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.osgi.framework.FrameworkEvent;

public interface FrameworkLog {
    public static final String SERVICE_PERFORMANCE = "performance";

    public void log(FrameworkEvent var1);

    public void log(FrameworkLogEntry var1);

    public void setWriter(Writer var1, boolean var2);

    public void setFile(File var1, boolean var2) throws IOException;

    public File getFile();

    public void setConsoleLog(boolean var1);

    public void close();
}

