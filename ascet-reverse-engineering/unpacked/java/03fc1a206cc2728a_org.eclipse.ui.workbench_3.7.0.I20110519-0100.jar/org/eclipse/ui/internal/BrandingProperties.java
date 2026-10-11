/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.osgi.framework.Bundle;

public abstract class BrandingProperties {
    public static URL getUrl(String value, Bundle definingBundle) {
        block3: {
            try {
                if (value != null) {
                    return new URL(value);
                }
            }
            catch (MalformedURLException malformedURLException) {
                if (definingBundle == null) break block3;
                return Platform.find((Bundle)definingBundle, (IPath)new Path(value));
            }
        }
        return null;
    }

    public static ImageDescriptor getImage(String value, Bundle definingBundle) {
        URL url = BrandingProperties.getUrl(value, definingBundle);
        return url == null ? null : ImageDescriptor.createFromURL((URL)url);
    }

    public static URL[] getURLs(String value, Bundle definingBundle) {
        if (value == null) {
            return null;
        }
        StringTokenizer tokens = new StringTokenizer(value, ",");
        ArrayList<URL> array = new ArrayList<URL>(10);
        while (tokens.hasMoreTokens()) {
            array.add(BrandingProperties.getUrl(tokens.nextToken().trim(), definingBundle));
        }
        return array.toArray(new URL[array.size()]);
    }

    public static ImageDescriptor[] getImages(String value, Bundle definingBundle) {
        URL[] urls = BrandingProperties.getURLs(value, definingBundle);
        if (urls == null || urls.length <= 0) {
            return null;
        }
        ImageDescriptor[] images = new ImageDescriptor[urls.length];
        int i = 0;
        while (i < images.length) {
            images[i] = ImageDescriptor.createFromURL((URL)urls[i]);
            ++i;
        }
        return images;
    }
}

