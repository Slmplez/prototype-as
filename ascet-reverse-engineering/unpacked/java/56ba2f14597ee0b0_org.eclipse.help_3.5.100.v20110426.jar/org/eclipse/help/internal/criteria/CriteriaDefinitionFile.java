/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.criteria;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.help.internal.util.ResourceLocator;

public class CriteriaDefinitionFile {
    private String pluginId;
    private String file;
    private String locale;

    public CriteriaDefinitionFile(String pluginId, String file, String locale) {
        this.pluginId = pluginId;
        this.file = file;
        this.locale = locale;
    }

    public String getFile() {
        return this.file;
    }

    public String getLocale() {
        return this.locale;
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public InputStream getInputStream() throws IOException {
        if (this.pluginId != null) {
            return ResourceLocator.openFromPlugin(this.pluginId, this.file, this.locale);
        }
        return new FileInputStream(this.file);
    }
}

