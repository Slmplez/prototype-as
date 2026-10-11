/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Display
 *  org.osgi.framework.Bundle
 */
package org.eclipse.jface.resource;

import java.net.URL;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.internal.JFaceActivator;
import org.eclipse.jface.resource.ColorRegistry;
import org.eclipse.jface.resource.DeviceResourceManager;
import org.eclipse.jface.resource.FontDescriptor;
import org.eclipse.jface.resource.FontRegistry;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Display;
import org.osgi.framework.Bundle;

public class JFaceResources {
    private static final String ICONS_PATH = "$nl$/icons/full/";
    private static final Map registries = new HashMap();
    public static final String BANNER_FONT = "org.eclipse.jface.bannerfont";
    private static final ResourceBundle bundle = ResourceBundle.getBundle("org.eclipse.jface.messages");
    private static ColorRegistry colorRegistry;
    public static final String DEFAULT_FONT = "org.eclipse.jface.defaultfont";
    public static final String DIALOG_FONT = "org.eclipse.jface.dialogfont";
    private static FontRegistry fontRegistry;
    public static final String HEADER_FONT = "org.eclipse.jface.headerfont";
    private static ImageRegistry imageRegistry;
    public static final String TEXT_FONT = "org.eclipse.jface.textfont";
    public static final String VIEWER_FONT = "org.eclipse.jface.viewerfont";
    public static final String WINDOW_FONT = "org.eclipse.jface.windowfont";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    static {
        fontRegistry = null;
        imageRegistry = null;
    }

    public static String format(String key, Object[] args) {
        return MessageFormat.format(JFaceResources.getString(key), args);
    }

    public static Font getBannerFont() {
        return JFaceResources.getFontRegistry().get(BANNER_FONT);
    }

    public static ResourceBundle getBundle() {
        return bundle;
    }

    public static ColorRegistry getColorRegistry() {
        if (colorRegistry == null) {
            colorRegistry = new ColorRegistry();
            JFaceResources.initializeDefaultColors();
        }
        return colorRegistry;
    }

    public static ResourceManager getResources(final Display toQuery) {
        ResourceManager reg = (ResourceManager)registries.get(toQuery);
        if (reg == null) {
            final DeviceResourceManager mgr = new DeviceResourceManager((Device)toQuery);
            reg = mgr;
            registries.put(toQuery, reg);
            toQuery.disposeExec(new Runnable(){

                public void run() {
                    mgr.dispose();
                    registries.remove(toQuery);
                }
            });
        }
        return reg;
    }

    public static ResourceManager getResources() {
        return JFaceResources.getResources(Display.getCurrent());
    }

    public static Font getDefaultFont() {
        return JFaceResources.getFontRegistry().defaultFont();
    }

    public static FontDescriptor getDefaultFontDescriptor() {
        return JFaceResources.getFontRegistry().defaultFontDescriptor();
    }

    public static Font getDialogFont() {
        return JFaceResources.getFontRegistry().get(DIALOG_FONT);
    }

    public static FontDescriptor getDialogFontDescriptor() {
        return JFaceResources.getFontRegistry().getDescriptor(DIALOG_FONT);
    }

    public static Font getFont(String symbolicName) {
        return JFaceResources.getFontRegistry().get(symbolicName);
    }

    public static FontDescriptor getFontDescriptor(String symbolicName) {
        return JFaceResources.getFontRegistry().getDescriptor(symbolicName);
    }

    public static FontRegistry getFontRegistry() {
        if (fontRegistry == null) {
            fontRegistry = new FontRegistry("org.eclipse.jface.resource.jfacefonts");
        }
        return fontRegistry;
    }

    public static Font getHeaderFont() {
        return JFaceResources.getFontRegistry().get(HEADER_FONT);
    }

    public static FontDescriptor getHeaderFontDescriptor() {
        return JFaceResources.getFontRegistry().getDescriptor(HEADER_FONT);
    }

    public static Image getImage(String key) {
        return JFaceResources.getImageRegistry().get(key);
    }

    public static ImageRegistry getImageRegistry() {
        if (imageRegistry == null) {
            imageRegistry = new ImageRegistry(JFaceResources.getResources(Display.getCurrent()));
            JFaceResources.initializeDefaultImages();
        }
        return imageRegistry;
    }

    private static void initializeDefaultImages() {
        Class<?> clazz;
        Bundle bundle = null;
        try {
            bundle = JFaceActivator.getBundle();
        }
        catch (NoClassDefFoundError noClassDefFoundError) {}
        if ((clazz = class$0) == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.wizard.Wizard");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JFaceResources.declareImage(bundle, "org.eclipse.jface.wizard.Wizard.pageImage", "$nl$/icons/full/page.gif", clazz, "images/page.gif");
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jface.dialogs.Dialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JFaceResources.declareImage(bundle, "dialog_messasge_info_image", "$nl$/icons/full/message_info.gif", clazz2, "images/message_info.gif");
        Class<?> clazz3 = class$1;
        if (clazz3 == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jface.dialogs.Dialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JFaceResources.declareImage(bundle, "dialog_messasge_warning_image", "$nl$/icons/full/message_warning.gif", clazz3, "images/message_warning.gif");
        Class<?> clazz4 = class$1;
        if (clazz4 == null) {
            try {
                clazz4 = class$1 = Class.forName("org.eclipse.jface.dialogs.Dialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JFaceResources.declareImage(bundle, "dialog_message_error_image", "$nl$/icons/full/message_error.gif", clazz4, "images/message_error.gif");
        Class<?> clazz5 = class$1;
        if (clazz5 == null) {
            try {
                clazz5 = class$1 = Class.forName("org.eclipse.jface.dialogs.Dialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JFaceResources.declareImage(bundle, "dialog_help_image", "$nl$/icons/full/help.gif", clazz5, "images/help.gif");
        Class<?> clazz6 = class$2;
        if (clazz6 == null) {
            try {
                clazz6 = class$2 = Class.forName("org.eclipse.jface.dialogs.TitleAreaDialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JFaceResources.declareImage(bundle, "dialog_title_banner_image", "$nl$/icons/full/title_banner.png", clazz6, "images/title_banner.gif");
        Class<?> clazz7 = class$3;
        if (clazz7 == null) {
            try {
                clazz7 = class$3 = Class.forName("org.eclipse.jface.preference.PreferenceDialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JFaceResources.declareImage(bundle, "preference_dialog_title_image", "$nl$/icons/full/pref_dialog_title.gif", clazz7, "images/pref_dialog_title.gif");
        Class<?> clazz8 = class$4;
        if (clazz8 == null) {
            try {
                clazz8 = class$4 = Class.forName("org.eclipse.jface.dialogs.PopupDialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JFaceResources.declareImage(bundle, "popup_menu_image", "$nl$/icons/full/popup_menu.gif", clazz8, "images/popup_menu.gif");
        Class<?> clazz9 = class$4;
        if (clazz9 == null) {
            try {
                clazz9 = class$4 = Class.forName("org.eclipse.jface.dialogs.PopupDialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JFaceResources.declareImage(bundle, "popup_menu_image_diabled", "$nl$/icons/full/popup_menu_disabled.gif", clazz9, "images/popup_menu_disabled.gif");
    }

    private static final void declareImage(Object bundle, String key, String path, Class fallback, String fallbackPath) {
        URL url;
        ImageDescriptor descriptor = null;
        if (bundle != null && (url = FileLocator.find((Bundle)((Bundle)bundle), (IPath)new Path(path), null)) != null) {
            descriptor = ImageDescriptor.createFromURL(url);
        }
        if (descriptor == null) {
            descriptor = ImageDescriptor.createFromFile(fallback, fallbackPath);
        }
        imageRegistry.put(key, descriptor);
    }

    public static String getString(String key) {
        try {
            return bundle.getString(key);
        }
        catch (MissingResourceException missingResourceException) {
            return key;
        }
    }

    public static String[] getStrings(String[] keys) {
        Assert.isNotNull((Object)keys);
        int length = keys.length;
        String[] result = new String[length];
        int i = 0;
        while (i < length) {
            result[i] = JFaceResources.getString(keys[i]);
            ++i;
        }
        return result;
    }

    public static Font getTextFont() {
        return JFaceResources.getFontRegistry().get(TEXT_FONT);
    }

    public static FontDescriptor getTextFontDescriptor() {
        return JFaceResources.getFontRegistry().getDescriptor(TEXT_FONT);
    }

    public static Font getViewerFont() {
        return JFaceResources.getFontRegistry().get(VIEWER_FONT);
    }

    public static void setFontRegistry(FontRegistry registry) {
        Assert.isTrue((fontRegistry == null ? 1 : 0) != 0, (String)"Font registry can only be set once.");
        fontRegistry = registry;
    }

    private JFaceResources() {
    }

    private static void initializeDefaultColors() {
    }
}

