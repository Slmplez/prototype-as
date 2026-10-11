/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.URL;
import java.net.URLConnection;
import org.eclipse.help.internal.HelpPlugin;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;

public class CachedEntityResolver
implements EntityResolver {
    public InputSource resolveEntity(String publicId, String systemId) {
        int index = systemId.lastIndexOf("/");
        File cachedCopy = null;
        if (index != -1) {
            cachedCopy = new File(HelpPlugin.getConfigurationDirectory(), "/DTDs");
            cachedCopy.mkdirs();
            cachedCopy = new File(cachedCopy, systemId.substring(index));
        }
        if (cachedCopy != null) {
            if (!cachedCopy.exists()) {
                try {
                    String inputLine;
                    URL system = new URL(systemId);
                    URLConnection sc = system.openConnection();
                    BufferedReader in = new BufferedReader(new InputStreamReader(sc.getInputStream()));
                    BufferedWriter out = new BufferedWriter(new FileWriter(cachedCopy));
                    while ((inputLine = in.readLine()) != null) {
                        out.write(inputLine);
                        out.newLine();
                    }
                    in.close();
                    out.flush();
                    out.close();
                }
                catch (IOException iOException) {}
            }
            try {
                InputSource is = new InputSource(new FileReader(cachedCopy));
                is.setSystemId(systemId);
                is.setPublicId(publicId);
                return is;
            }
            catch (FileNotFoundException fileNotFoundException) {}
        }
        return new InputSource(new StringReader(""));
    }
}

