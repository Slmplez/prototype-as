/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.util;

import java.net.URL;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.util.BundleUtility;

public final class ImageSupport {
    public static ImageDescriptor getImageDescriptor(String path) {
        URL url = BundleUtility.find("org.eclipse.ui", path);
        return ImageDescriptor.createFromURL((URL)url);
    }

    private ImageSupport() {
    }
}

