/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.fieldassist;

import org.eclipse.swt.graphics.Image;

public class FieldDecoration {
    private Image image;
    private String description;

    public FieldDecoration(Image image, String description) {
        this.image = image;
        this.description = description;
    }

    public Image getImage() {
        return this.image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

