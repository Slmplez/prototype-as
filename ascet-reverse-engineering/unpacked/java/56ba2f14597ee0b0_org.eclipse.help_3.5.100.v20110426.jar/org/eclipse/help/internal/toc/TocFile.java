/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.toc;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.help.internal.util.ResourceLocator;

public class TocFile {
    private String pluginId;
    private String file;
    private boolean isPrimary;
    private String locale;
    private String extraDir;
    private String category;

    public TocFile(String pluginId, String file, boolean isPrimary, String locale, String extradir, String category) {
        this.pluginId = pluginId;
        this.file = file;
        this.isPrimary = isPrimary;
        this.locale = locale;
        this.extraDir = extradir;
        this.category = category;
    }

    public String getCategory() {
        return this.category;
    }

    public String getExtraDir() {
        return this.extraDir;
    }

    public String getFile() {
        return this.file;
    }

    public InputStream getInputStream() throws IOException {
        if (this.pluginId != null) {
            return ResourceLocator.openFromPlugin(this.pluginId, this.file, this.locale);
        }
        return new FileInputStream(this.file);
    }

    public String getLocale() {
        return this.locale;
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public boolean isPrimary() {
        return this.isPrimary;
    }
}

