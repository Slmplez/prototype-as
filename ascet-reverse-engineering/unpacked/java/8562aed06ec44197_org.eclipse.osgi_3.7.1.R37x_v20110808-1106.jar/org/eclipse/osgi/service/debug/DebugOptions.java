/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.debug;

import java.io.File;
import java.util.Map;
import org.eclipse.osgi.service.debug.DebugTrace;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DebugOptions {
    public static final String LISTENER_SYMBOLICNAME = "listener.symbolic.name";

    public boolean getBooleanOption(String var1, boolean var2);

    public String getOption(String var1);

    public String getOption(String var1, String var2);

    public int getIntegerOption(String var1, int var2);

    public Map<String, String> getOptions();

    public void setOption(String var1, String var2);

    public void setOptions(Map<String, String> var1);

    public void removeOption(String var1);

    public boolean isDebugEnabled();

    public void setDebugEnabled(boolean var1);

    public void setFile(File var1);

    public File getFile();

    public DebugTrace newDebugTrace(String var1);

    public DebugTrace newDebugTrace(String var1, Class<?> var2);
}

