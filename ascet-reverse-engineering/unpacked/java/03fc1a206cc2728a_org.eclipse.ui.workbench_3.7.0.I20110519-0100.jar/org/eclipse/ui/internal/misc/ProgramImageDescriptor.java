/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 */
package org.eclipse.ui.internal.misc;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.ui.internal.WorkbenchImages;

public class ProgramImageDescriptor
extends ImageDescriptor {
    private String filename;
    private int offset;

    public ProgramImageDescriptor(String fullPath, int offsetInFile) {
        this.filename = fullPath;
        this.offset = offsetInFile;
    }

    public boolean equals(Object o) {
        if (!(o instanceof ProgramImageDescriptor)) {
            return false;
        }
        ProgramImageDescriptor other = (ProgramImageDescriptor)((Object)o);
        return this.filename.equals(other.filename) && this.offset == other.offset;
    }

    public Image getImage() {
        return this.createImage();
    }

    public ImageData getImageData() {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_FILE").getImageData();
    }

    public int hashCode() {
        return this.filename.hashCode() + this.offset;
    }
}

