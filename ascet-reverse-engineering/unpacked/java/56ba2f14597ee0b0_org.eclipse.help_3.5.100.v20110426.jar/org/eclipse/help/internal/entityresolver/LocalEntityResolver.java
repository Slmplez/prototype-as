/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.osgi.framework.Bundle
 */
package org.eclipse.help.internal.entityresolver;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.URL;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.help.internal.HelpPlugin;
import org.osgi.framework.Bundle;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class LocalEntityResolver
implements EntityResolver {
    public InputSource resolveEntity(String publicId, String systemId) throws SAXException, IOException {
        InputStream stream;
        String dtdPath;
        Bundle helpBundle;
        URL dtdURL;
        int index = systemId.lastIndexOf("/");
        if (index >= 0 && (dtdURL = FileLocator.find((Bundle)(helpBundle = HelpPlugin.getDefault().getBundle()), (IPath)new Path(dtdPath = "dtds/internal" + systemId.substring(index)), null)) != null && (stream = dtdURL.openStream()) != null) {
            InputSource is = new InputSource(stream);
            is.setSystemId(systemId);
            is.setPublicId(publicId);
            return is;
        }
        return new InputSource(new StringReader(""));
    }
}

