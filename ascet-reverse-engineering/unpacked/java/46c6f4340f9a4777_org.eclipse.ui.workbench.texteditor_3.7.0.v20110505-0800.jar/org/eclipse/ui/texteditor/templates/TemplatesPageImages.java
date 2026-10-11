/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 *  org.eclipse.swt.graphics.Image
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.texteditor.templates;

import java.net.URL;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.osgi.framework.Bundle;

class TemplatesPageImages {
    static final String PREFIX_ELCL = "org.eclipse.ui.workbench.texteditor.elcl.";
    static final String PREFIX_DLCL = "org.eclipse.ui.workbench.texteditor.dlcl.";
    static final String PREFIX_OBJ = "org.eclipse.ui.workbench.texteditor.obj.";
    public static final String IMG_ELCL_TEMPLATE_NEW = "org.eclipse.ui.workbench.texteditor.elcl.new_template.gif";
    public static final String IMG_ELCL_TEMPLATE_DELETE = "org.eclipse.ui.workbench.texteditor.elcl.delete_template.gif";
    public static final String IMG_ELCL_TEMPLATE_EDIT = "org.eclipse.ui.workbench.texteditor.elcl.edit_template.gif";
    public static final String IMG_ELCL_TEMPLATE_INSERT = "org.eclipse.ui.workbench.texteditor.elcl.insert_template.gif";
    public static final String IMG_ELCL_TEMPLATE_LINK = "org.eclipse.ui.workbench.texteditor.elcl.link_to_editor.gif";
    public static final String IMG_ELCL_TEMPLATE_COLLAPSE_ALL = "org.eclipse.ui.workbench.texteditor.elcl.collapseall.gif";
    public static final String IMG_DLCL_TEMPLATE_DELETE = "org.eclipse.ui.workbench.texteditor.dlcl.delete_template.gif";
    public static final String IMG_DLCL_TEMPLATE_EDIT = "org.eclipse.ui.workbench.texteditor.dlcl.edit_template.gif";
    public static final String IMG_DLCL_TEMPLATE_INSERT = "org.eclipse.ui.workbench.texteditor.dlcl.insert_template.gif";
    public static final String IMG_OBJ_PREVIEW = "org.eclipse.ui.workbench.texteditor.obj.preview.gif";
    public static final String IMG_OBJ_CONTEXT = "org.eclipse.ui.workbench.texteditor.obj.context.gif";
    public static final String IMG_OBJ_TEMPLATE = "org.eclipse.ui.workbench.texteditor.obj.template_obj.gif";
    private static ImageRegistry fgImageRegistry;
    private static String ICONS_PATH;
    private static final String ELCL;
    private static final String DLCL;
    private static final String OBJ;

    static {
        ICONS_PATH = "$nl$/icons/full/";
        ELCL = String.valueOf(ICONS_PATH) + "elcl16/";
        DLCL = String.valueOf(ICONS_PATH) + "dlcl16/";
        OBJ = String.valueOf(ICONS_PATH) + "obj16/";
    }

    TemplatesPageImages() {
    }

    private static void declareImages() {
        TemplatesPageImages.declareRegistryImage(IMG_ELCL_TEMPLATE_NEW, String.valueOf(ELCL) + "new_template.gif");
        TemplatesPageImages.declareRegistryImage(IMG_ELCL_TEMPLATE_INSERT, String.valueOf(ELCL) + "insert_template.gif");
        TemplatesPageImages.declareRegistryImage(IMG_DLCL_TEMPLATE_INSERT, String.valueOf(DLCL) + "insert_template.gif");
        TemplatesPageImages.declareRegistryImage(IMG_ELCL_TEMPLATE_DELETE, String.valueOf(ELCL) + "delete_template.gif");
        TemplatesPageImages.declareRegistryImage(IMG_DLCL_TEMPLATE_DELETE, String.valueOf(DLCL) + "delete_template.gif");
        TemplatesPageImages.declareRegistryImage(IMG_ELCL_TEMPLATE_EDIT, String.valueOf(ELCL) + "edit_template.gif");
        TemplatesPageImages.declareRegistryImage(IMG_DLCL_TEMPLATE_EDIT, String.valueOf(DLCL) + "edit_template.gif");
        TemplatesPageImages.declareRegistryImage(IMG_ELCL_TEMPLATE_LINK, String.valueOf(ELCL) + "link_to_editor.gif");
        TemplatesPageImages.declareRegistryImage(IMG_ELCL_TEMPLATE_COLLAPSE_ALL, String.valueOf(ELCL) + "collapseall.gif");
        TemplatesPageImages.declareRegistryImage(IMG_OBJ_PREVIEW, String.valueOf(OBJ) + "preview.gif");
        TemplatesPageImages.declareRegistryImage(IMG_OBJ_CONTEXT, String.valueOf(OBJ) + "context.gif");
        TemplatesPageImages.declareRegistryImage(IMG_OBJ_TEMPLATE, String.valueOf(OBJ) + "template_obj.gif");
    }

    private static final void declareRegistryImage(String key, String path) {
        ImageDescriptor desc = ImageDescriptor.getMissingImageDescriptor();
        Bundle bundle = Platform.getBundle((String)"org.eclipse.ui.workbench.texteditor");
        URL url = null;
        if (bundle != null) {
            url = FileLocator.find((Bundle)bundle, (IPath)new Path(path), null);
            desc = ImageDescriptor.createFromURL((URL)url);
        }
        fgImageRegistry.put(key, desc);
    }

    public static ImageRegistry getImageRegistry() {
        if (fgImageRegistry == null) {
            TemplatesPageImages.initializeImageRegistry();
        }
        return fgImageRegistry;
    }

    public static ImageRegistry initializeImageRegistry() {
        fgImageRegistry = TextEditorPlugin.getDefault().getImageRegistry();
        TemplatesPageImages.declareImages();
        return fgImageRegistry;
    }

    public static Image get(String key) {
        return TemplatesPageImages.getImageRegistry().get(key);
    }

    public static ImageDescriptor getDescriptor(String key) {
        return TemplatesPageImages.getImageRegistry().getDescriptor(key);
    }
}

