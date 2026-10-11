/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.pde.internal.core;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Platform;
import org.eclipse.pde.internal.core.PDECore;

public class NLResourceHelper {
    public static final String KEY_PREFIX = "%";
    public static final String KEY_DOUBLE_PREFIX = "%%";
    private PropertyResourceBundle bundle = null;
    private String fNLFileBasePath;

    public NLResourceHelper(String name, URL[] locations) {
        InputStream stream = null;
        try {
            try {
                stream = this.getResourceStream(name, locations);
                if (stream != null) {
                    this.bundle = new PropertyResourceBundle(stream);
                    stream.close();
                }
            }
            catch (IOException e) {
                PDECore.logException(e);
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException e2) {
                    PDECore.logException(e2);
                }
            }
        }
        finally {
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException e) {
                PDECore.logException(e);
            }
        }
    }

    public void dispose() {
        this.bundle = null;
    }

    private InputStream getResourceStream(String name, URL[] locations) {
        URLClassLoader resourceLoader = new URLClassLoader(locations, null);
        StringTokenizer tokenizer = new StringTokenizer(Platform.getNL(), "_");
        String language = tokenizer.nextToken();
        String country = tokenizer.hasMoreTokens() ? tokenizer.nextToken() : "";
        String variant = tokenizer.hasMoreTokens() ? tokenizer.nextToken() : "";
        String suffix1 = "_" + language + "_" + country + "_" + variant;
        String suffix2 = "_" + language + "_" + country;
        String suffix3 = "_" + language;
        String suffix4 = "";
        String[] suffices = new String[]{suffix1, suffix2, suffix3, suffix4};
        InputStream stream = null;
        int i = 0;
        while (i < suffices.length) {
            String candidateFileName = String.valueOf(name) + suffices[i];
            stream = resourceLoader.getResourceAsStream(String.valueOf(candidateFileName) + ".properties");
            if (stream != null) {
                this.fNLFileBasePath = candidateFileName;
                break;
            }
            ++i;
        }
        return stream;
    }

    public String getResourceString(String value) {
        String dflt;
        String s = value.trim();
        if (!s.startsWith(KEY_PREFIX)) {
            return s;
        }
        if (s.startsWith(KEY_DOUBLE_PREFIX)) {
            return s.substring(1);
        }
        int ix = s.indexOf(" ");
        String key = ix == -1 ? s : s.substring(0, ix);
        String string = dflt = ix == -1 ? s : s.substring(ix + 1);
        if (this.bundle == null) {
            return dflt;
        }
        try {
            return this.bundle.getString(key.substring(1));
        }
        catch (MissingResourceException missingResourceException) {
            return dflt;
        }
    }

    public boolean resourceExists(String value) {
        if (this.bundle == null) {
            return false;
        }
        try {
            this.bundle.getString(value.trim().substring(1));
            return true;
        }
        catch (MissingResourceException missingResourceException) {
            return false;
        }
    }

    public String getNLFileBasePath() {
        return this.fNLFileBasePath;
    }
}

