/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.commands;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.services.IDisposable;

public interface ICommandImageService
extends IDisposable {
    public static final int TYPE_DEFAULT = 0;
    public static final int TYPE_DISABLED = 1;
    public static final int TYPE_HOVER = 2;
    public static final String IMAGE_STYLE_DEFAULT = null;
    public static final String IMAGE_STYLE_TOOLBAR = "toolbar";

    public ImageDescriptor getImageDescriptor(String var1);

    public ImageDescriptor getImageDescriptor(String var1, int var2);

    public ImageDescriptor getImageDescriptor(String var1, int var2, String var3);

    public ImageDescriptor getImageDescriptor(String var1, String var2);
}

