/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.views.log;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.ui.internal.views.log.ILogFileProvider;

public class LogFilesManager {
    private static List logFileProviders = new ArrayList();

    public static void addLogFileProvider(ILogFileProvider provider) {
        if (!logFileProviders.contains(provider)) {
            logFileProviders.add(provider);
        }
    }

    public static void removeLogFileProvider(ILogFileProvider provider) {
        logFileProviders.remove(provider);
    }

    static Map getLogSources() {
        ILogFileProvider[] providers = logFileProviders.toArray(new ILogFileProvider[logFileProviders.size()]);
        HashMap result = new HashMap(providers.length);
        int i = 0;
        while (i < providers.length) {
            ILogFileProvider provider = providers[i];
            Map sources = provider.getLogSources();
            result.putAll(sources);
            ++i;
        }
        return result;
    }
}

