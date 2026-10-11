/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.boot.PlatformURLConnection
 *  org.eclipse.core.internal.boot.PlatformURLHandler
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import org.eclipse.core.internal.boot.PlatformURLConnection;
import org.eclipse.core.internal.boot.PlatformURLHandler;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.NLS;

public class PlatformURLResourceConnection
extends PlatformURLConnection {
    public static final String RESOURCE = "resource";
    public static final String RESOURCE_URL_STRING = "platform:/resource/";
    private static URL rootURL;

    public PlatformURLResourceConnection(URL url) {
        super(url);
    }

    protected boolean allowCaching() {
        return false;
    }

    protected URL resolve() throws IOException {
        String filePath = this.url.getFile().trim();
        IPath spec = new Path(filePath = URLDecoder.decode(filePath, "UTF-8")).makeRelative();
        if (!spec.segment(0).equals(RESOURCE)) {
            throw new IOException(NLS.bind((String)Messages.url_badVariant, (Object)this.url));
        }
        int count = spec.segmentCount();
        if (count == 1) {
            return rootURL;
        }
        IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(spec.segment(1));
        if (!project.exists()) {
            String message = NLS.bind((String)Messages.url_couldNotResolve_projectDoesNotExist, (Object)project.getName(), (Object)this.url.toExternalForm());
            throw new IOException(message);
        }
        IResource resource = null;
        IPath result = null;
        if (count == 2) {
            resource = project;
        } else {
            spec = spec.removeFirstSegments(2);
            resource = project.getFile(spec);
        }
        result = resource.getLocation();
        if (result == null) {
            URI uri = resource.getLocationURI();
            if (uri != null) {
                try {
                    URL url2 = uri.toURL();
                    if (url2.getProtocol().equals("file")) {
                        return url2;
                    }
                }
                catch (MalformedURLException malformedURLException) {
                    String message = NLS.bind((String)Messages.url_couldNotResolve_URLProtocolHandlerCanNotResolveURL, (Object)uri.toString(), (Object)this.url.toExternalForm());
                    throw new IOException(message);
                }
            }
            String message = NLS.bind((String)Messages.url_couldNotResolve_resourceLocationCanNotBeDetermined, (Object)resource.getFullPath(), (Object)this.url.toExternalForm());
            throw new IOException(message);
        }
        return new URL("file", "", result.toString());
    }

    public static void startup(IPath root) {
        if (rootURL != null) {
            return;
        }
        try {
            rootURL = root.toFile().toURL();
        }
        catch (MalformedURLException malformedURLException) {
            return;
        }
        PlatformURLHandler.register((String)RESOURCE, PlatformURLResourceConnection.class);
    }
}

