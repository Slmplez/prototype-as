/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.swt.graphics.Image;

public interface IAnnotationImageProvider {
    public Image getManagedImage(Annotation var1);

    public String getImageDescriptorId(Annotation var1);

    public ImageDescriptor getImageDescriptor(String var1);
}

