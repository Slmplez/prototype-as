/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.program.Program
 */
package org.eclipse.ui.internal.misc;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.program.Program;
import org.eclipse.ui.internal.WorkbenchImages;

public class ExternalProgramImageDescriptor
extends ImageDescriptor {
    public Program program;

    public ExternalProgramImageDescriptor(Program program) {
        this.program = program;
    }

    public boolean equals(Object o) {
        if (!(o instanceof ExternalProgramImageDescriptor)) {
            return false;
        }
        ExternalProgramImageDescriptor other = (ExternalProgramImageDescriptor)((Object)o);
        String otherName = other.program.getName();
        if (otherName == null) {
            return other.program.equals((Object)this.program);
        }
        return otherName.equals(this.program.getName());
    }

    public Image getImage() {
        return this.createImage();
    }

    public ImageData getImageData() {
        ImageData data = null;
        ImageData defaultImage = WorkbenchImages.getImageDescriptor("IMG_OBJ_FILE").getImageData();
        if (defaultImage == null) {
            return null;
        }
        if (this.program == null || (data = this.program.getImageData()) == null) {
            return defaultImage;
        }
        if (data.height > defaultImage.height || data.width > defaultImage.width) {
            return defaultImage;
        }
        return data;
    }

    public int hashCode() {
        String programName = this.program.getName();
        if (programName == null) {
            return this.program.hashCode();
        }
        return programName.hashCode();
    }
}

