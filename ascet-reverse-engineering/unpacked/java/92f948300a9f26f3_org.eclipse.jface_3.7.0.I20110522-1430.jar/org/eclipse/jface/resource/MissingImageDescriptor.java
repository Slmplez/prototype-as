/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.ImageData
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.ImageData;

class MissingImageDescriptor
extends ImageDescriptor {
    private static MissingImageDescriptor instance;

    private MissingImageDescriptor() {
    }

    public ImageData getImageData() {
        return DEFAULT_IMAGE_DATA;
    }

    static MissingImageDescriptor getInstance() {
        if (instance == null) {
            instance = new MissingImageDescriptor();
        }
        return instance;
    }
}

