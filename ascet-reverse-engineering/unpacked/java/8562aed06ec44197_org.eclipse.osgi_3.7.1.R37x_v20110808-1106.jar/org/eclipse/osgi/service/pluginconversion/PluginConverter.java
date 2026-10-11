/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.pluginconversion;

import java.io.File;
import java.util.Dictionary;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PluginConverter {
    public File convertManifest(File var1, File var2, boolean var3, String var4, boolean var5, Dictionary<String, String> var6) throws PluginConversionException;

    public Dictionary<String, String> convertManifest(File var1, boolean var2, String var3, boolean var4, Dictionary<String, String> var5) throws PluginConversionException;

    public void writeManifest(File var1, Dictionary<String, String> var2, boolean var3) throws PluginConversionException;
}

