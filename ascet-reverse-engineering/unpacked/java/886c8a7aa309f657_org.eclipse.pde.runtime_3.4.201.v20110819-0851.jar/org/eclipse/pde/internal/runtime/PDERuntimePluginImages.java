/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 *  org.eclipse.swt.graphics.Image
 *  org.osgi.framework.Bundle
 */
package org.eclipse.pde.internal.runtime;

import java.net.URL;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.pde.internal.runtime.PDERuntimePlugin;
import org.eclipse.swt.graphics.Image;
import org.osgi.framework.Bundle;

public class PDERuntimePluginImages {
    private static ImageRegistry PLUGIN_REGISTRY;
    public static final String ICONS_PATH = "icons/";
    private static final String PATH_OBJ = "icons/obj16/";
    private static final String PATH_DCL = "icons/dlcl16/";
    private static final String PATH_LCL = "icons/elcl16/";
    private static final String PATH_OVR = "icons/ovr16/";
    public static final String IMG_CLASS_OBJ = "class_obj.gif";
    public static final String IMG_INTERFACE_OBJ = "int_obj.gif";
    public static final String IMG_PLUGIN_OBJ = "plugin_obj.gif";
    public static final String IMG_SPY_OBJ = "pdespy_obj.gif";
    public static final String IMG_MENU_OBJ = "menu_obj.gif";
    public static final String IMG_ID_OBJ = "generic_xml_obj.gif";
    public static final String IMG_MENUSPY_OBJ = "menuspy_obj.gif";
    public static final String IMG_CONTEXTID_OBJ = "contextid_obj.gif";
    public static final String IMG_SAVE_IMAGE_AS_OBJ = "save_image_as_obj.gif";
    public static final String IMG_COPY_QNAME = "cpyqual_menu.gif";
    public static final ImageDescriptor CLASS_OBJ;
    public static final ImageDescriptor INTERFACE_OBJ;
    public static final ImageDescriptor PLUGIN_OBJ;
    public static final ImageDescriptor SPY_OBJ;
    public static final ImageDescriptor MENU_OBJ;
    public static final ImageDescriptor ID_OBJ;
    public static final ImageDescriptor MENUSPY_OBJ;
    public static final ImageDescriptor CONTEXTID_OBJ;
    public static final ImageDescriptor SAVE_IMAGE_AS_OBJ;
    public static final ImageDescriptor COPY_QNAME;
    public static final ImageDescriptor DESC_REFRESH_DISABLED;
    public static final ImageDescriptor DESC_REFRESH;
    public static final ImageDescriptor DESC_COLLAPSE_ALL;
    public static final ImageDescriptor DESC_ERROR_ST_OBJ;
    public static final ImageDescriptor DESC_ERROR_STACK_OBJ;
    public static final ImageDescriptor DESC_EXT_POINT_OBJ;
    public static final ImageDescriptor DESC_EXT_POINTS_OBJ;
    public static final ImageDescriptor DESC_EXTENSION_OBJ;
    public static final ImageDescriptor DESC_EXTENSIONS_OBJ;
    public static final ImageDescriptor DESC_GENERIC_XML_OBJ;
    public static final ImageDescriptor DESC_ATTR_XML_OBJ;
    public static final ImageDescriptor DESC_INFO_ST_OBJ;
    public static final ImageDescriptor DESC_JAVA_LIB_OBJ;
    public static final ImageDescriptor DESC_NATIVE_LIB_OBJ;
    public static final ImageDescriptor DESC_OK_ST_OBJ;
    public static final ImageDescriptor DESC_PLUGIN_OBJ;
    public static final ImageDescriptor DESC_REQ_PLUGIN_OBJ;
    public static final ImageDescriptor DESC_REQ_PLUGINS_OBJ;
    public static final ImageDescriptor DESC_RUNTIME_OBJ;
    public static final ImageDescriptor DESC_WARNING_ST_OBJ;
    public static final ImageDescriptor DESC_LOCATION;
    public static final ImageDescriptor DESC_IMP_OBJ;
    public static final ImageDescriptor DESC_EXP_OBJ;
    public static final ImageDescriptor DESC_SERVICE_OBJ;
    public static final ImageDescriptor DESC_PROPERTY_OBJ;
    public static final ImageDescriptor DESC_PLUGINS_OBJ;
    public static final ImageDescriptor DESC_FRAGMENT_OBJ;
    public static final ImageDescriptor DESC_PACKAGE_OBJ;
    public static final ImageDescriptor DESC_RUN_CO;
    public static final ImageDescriptor DESC_EXPORT_CO;
    public static final ImageDescriptor DESC_ERROR_CO;
    public static final ImageDescriptor DESC_DEFAULT_CO;

    static {
        CLASS_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_CLASS_OBJ);
        INTERFACE_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_INTERFACE_OBJ);
        PLUGIN_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_PLUGIN_OBJ);
        SPY_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_SPY_OBJ);
        MENU_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_MENU_OBJ);
        ID_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_ID_OBJ);
        MENUSPY_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_MENUSPY_OBJ);
        CONTEXTID_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_CONTEXTID_OBJ);
        SAVE_IMAGE_AS_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_SAVE_IMAGE_AS_OBJ);
        COPY_QNAME = PDERuntimePluginImages.create(PATH_LCL, IMG_COPY_QNAME);
        DESC_REFRESH_DISABLED = PDERuntimePluginImages.create(PATH_DCL, "refresh.gif");
        DESC_REFRESH = PDERuntimePluginImages.create(PATH_LCL, "refresh.gif");
        DESC_COLLAPSE_ALL = PDERuntimePluginImages.create(PATH_LCL, "collapseall.gif");
        DESC_ERROR_ST_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "error_st_obj.gif");
        DESC_ERROR_STACK_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "error_stack.gif");
        DESC_EXT_POINT_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "ext_point_obj.gif");
        DESC_EXT_POINTS_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "ext_points_obj.gif");
        DESC_EXTENSION_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "extension_obj.gif");
        DESC_EXTENSIONS_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "extensions_obj.gif");
        DESC_GENERIC_XML_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_ID_OBJ);
        DESC_ATTR_XML_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "attr_xml_obj.gif");
        DESC_INFO_ST_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "info_st_obj.gif");
        DESC_JAVA_LIB_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "java_lib_obj.gif");
        DESC_NATIVE_LIB_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "native_lib_obj.gif");
        DESC_OK_ST_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "ok_st_obj.gif");
        DESC_PLUGIN_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_PLUGIN_OBJ);
        DESC_REQ_PLUGIN_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "req_plugin_obj.gif");
        DESC_REQ_PLUGINS_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "req_plugins_obj.gif");
        DESC_RUNTIME_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "runtime_obj.gif");
        DESC_WARNING_ST_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "warning_st_obj.gif");
        DESC_LOCATION = PDERuntimePluginImages.create(PATH_OBJ, "location_obj.gif");
        DESC_IMP_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "bundle-importer.gif");
        DESC_EXP_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "bundle-exporter.gif");
        DESC_SERVICE_OBJ = PDERuntimePluginImages.create(PATH_OBJ, IMG_INTERFACE_OBJ);
        DESC_PROPERTY_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "property_obj.gif");
        DESC_PLUGINS_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "plugins_obj.gif");
        DESC_FRAGMENT_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "frgmt_obj.gif");
        DESC_PACKAGE_OBJ = PDERuntimePluginImages.create(PATH_OBJ, "package_obj.gif");
        DESC_RUN_CO = PDERuntimePluginImages.create(PATH_OVR, "run_co.gif");
        DESC_EXPORT_CO = PDERuntimePluginImages.create(PATH_OVR, "export_co.gif");
        DESC_ERROR_CO = PDERuntimePluginImages.create(PATH_OVR, "error_co.gif");
        DESC_DEFAULT_CO = PDERuntimePluginImages.create(PATH_OVR, "default_co.gif");
    }

    private static final void initialize() {
        PLUGIN_REGISTRY = PDERuntimePlugin.getDefault().getImageRegistry();
        PDERuntimePluginImages.manage(IMG_CLASS_OBJ, CLASS_OBJ);
        PDERuntimePluginImages.manage(IMG_INTERFACE_OBJ, INTERFACE_OBJ);
        PDERuntimePluginImages.manage(IMG_PLUGIN_OBJ, PLUGIN_OBJ);
        PDERuntimePluginImages.manage(IMG_SPY_OBJ, SPY_OBJ);
        PDERuntimePluginImages.manage(IMG_MENU_OBJ, MENU_OBJ);
        PDERuntimePluginImages.manage(IMG_ID_OBJ, ID_OBJ);
        PDERuntimePluginImages.manage(IMG_MENUSPY_OBJ, MENUSPY_OBJ);
        PDERuntimePluginImages.manage(IMG_CONTEXTID_OBJ, CONTEXTID_OBJ);
        PDERuntimePluginImages.manage(IMG_SAVE_IMAGE_AS_OBJ, SAVE_IMAGE_AS_OBJ);
        PDERuntimePluginImages.manage(IMG_COPY_QNAME, COPY_QNAME);
    }

    private static ImageDescriptor create(String prefix, String name) {
        return ImageDescriptor.createFromURL((URL)PDERuntimePluginImages.makeIconURL(prefix, name));
    }

    public static Image get(String key) {
        if (PLUGIN_REGISTRY == null) {
            PDERuntimePluginImages.initialize();
        }
        return PLUGIN_REGISTRY.get(key);
    }

    private static URL makeIconURL(String prefix, String name) {
        String path = "$nl$/" + prefix + name;
        return FileLocator.find((Bundle)PDERuntimePlugin.getDefault().getBundle(), (IPath)new Path(path), null);
    }

    public static Image manage(String key, ImageDescriptor desc) {
        Image image = desc.createImage();
        PLUGIN_REGISTRY.put(key, image);
        return image;
    }
}

