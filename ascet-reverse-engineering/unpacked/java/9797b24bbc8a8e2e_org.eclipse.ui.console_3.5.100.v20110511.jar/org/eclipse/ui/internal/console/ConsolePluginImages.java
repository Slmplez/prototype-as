/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.console;

import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.console.ConsolePlugin;

public class ConsolePluginImages {
    private static ImageRegistry imageRegistry;
    private static URL ICON_BASE_URL;
    private static final String LOCALTOOL = "clcl16/";
    private static final String DLCL = "dlcl16/";
    private static final String ELCL = "elcl16/";
    private static final String VIEW = "cview16/";

    static {
        ICON_BASE_URL = null;
        String pathSuffix = "icons/full/";
        ICON_BASE_URL = ConsolePlugin.getDefault().getBundle().getEntry(pathSuffix);
    }

    private static void declareImages() {
        ConsolePluginImages.declareRegistryImage("IMG_LCL_CLEAR", "clcl16/clear_co.gif");
        ConsolePluginImages.declareRegistryImage("IMG_LCL_PIN", "clcl16/pin.gif");
        ConsolePluginImages.declareRegistryImage("IMG_LCL_LOCK", "clcl16/lock_co.gif");
        ConsolePluginImages.declareRegistryImage("IMG_DLCL_CLEAR", "dlcl16/clear_co.gif");
        ConsolePluginImages.declareRegistryImage("IMG_DLCL_PIN", "dlcl16/pin.gif");
        ConsolePluginImages.declareRegistryImage("IMG_DLCL_LOCK", "dlcl16/lock_co.gif");
        ConsolePluginImages.declareRegistryImage("IMG_DLCL_CLOSE", "dlcl16/rem_co.gif");
        ConsolePluginImages.declareRegistryImage("IMG_ELCL_CLEAR", "elcl16/clear_co.gif");
        ConsolePluginImages.declareRegistryImage("IMG_ELCL_PIN", "elcl16/pin.gif");
        ConsolePluginImages.declareRegistryImage("IMG_ELCL_LOCK", "elcl16/lock_co.gif");
        ConsolePluginImages.declareRegistryImage("IMG_ELCL_CLOSE", "elcl16/rem_co.gif");
        ConsolePluginImages.declareRegistryImage("IMG_ELCL_NEW_CON", "elcl16/new_con.gif");
        ConsolePluginImages.declareRegistryImage("IMG_VIEW_CONSOLE", "cview16/console_view.gif");
    }

    private static final void declareRegistryImage(String key, String path) {
        ImageDescriptor desc = ImageDescriptor.getMissingImageDescriptor();
        try {
            desc = ImageDescriptor.createFromURL((URL)ConsolePluginImages.makeIconFileURL(path));
        }
        catch (MalformedURLException me) {
            ConsolePlugin.log(me);
        }
        imageRegistry.put(key, desc);
    }

    public static ImageRegistry getImageRegistry() {
        if (imageRegistry == null) {
            ConsolePluginImages.initializeImageRegistry();
        }
        return imageRegistry;
    }

    public static ImageRegistry initializeImageRegistry() {
        imageRegistry = new ImageRegistry(ConsolePlugin.getStandardDisplay());
        ConsolePluginImages.declareImages();
        return imageRegistry;
    }

    public static Image getImage(String key) {
        return ConsolePluginImages.getImageRegistry().get(key);
    }

    public static ImageDescriptor getImageDescriptor(String key) {
        return ConsolePluginImages.getImageRegistry().getDescriptor(key);
    }

    private static URL makeIconFileURL(String iconPath) throws MalformedURLException {
        if (ICON_BASE_URL == null) {
            throw new MalformedURLException();
        }
        return new URL(ICON_BASE_URL, iconPath);
    }
}

