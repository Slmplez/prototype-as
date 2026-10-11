/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.edit.provider;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ComposedImage {
    protected List<Object> images;
    protected List<Size> imageSizes;

    public ComposedImage(Collection<?> images) {
        this.images = new ArrayList(images);
    }

    public boolean equals(Object that) {
        return that instanceof ComposedImage && ((ComposedImage)that).getImages().equals(this.images);
    }

    public int hashCode() {
        return this.images.hashCode();
    }

    public List<Object> getImages() {
        return this.images;
    }

    public Size getSize(Collection<? extends Size> imageSizes) {
        this.imageSizes = new ArrayList<Size>(imageSizes);
        Size result = new Size();
        for (Size size : imageSizes) {
            result.width = Math.max(result.width, size.width);
            result.height = Math.max(result.height, size.height);
        }
        return result;
    }

    public List<Point> getDrawPoints(Size size) {
        ArrayList<Point> results = new ArrayList<Point>();
        int i = this.imageSizes.size();
        while (i > 0) {
            Point result = new Point();
            results.add(result);
            --i;
        }
        return results;
    }

    public static class Point {
        public int x;
        public int y;
    }

    public static class Size {
        public int width;
        public int height;
    }
}

