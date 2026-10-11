/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import java.io.InputStream;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;

class ImageDataLoader {
    ImageDataLoader() {
    }

    public static ImageData[] load(InputStream stream) {
        return new ImageLoader().load(stream);
    }

    public static ImageData[] load(String filename) {
        return new ImageLoader().load(filename);
    }
}

