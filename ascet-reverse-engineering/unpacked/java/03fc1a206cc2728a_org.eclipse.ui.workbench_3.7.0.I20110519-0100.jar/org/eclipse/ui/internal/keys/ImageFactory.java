/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.keys;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.util.ImageSupport;

final class ImageFactory {
    private static ImageRegistry imageRegistry = new ImageRegistry();
    private static Map map = new HashMap();
    static /* synthetic */ Class class$0;

    static {
        ImageFactory.put("blank", "$nl$/icons/full/obj16/blank.gif");
        ImageFactory.put("change", "$nl$/icons/full/obj16/change_obj.gif");
        ImageFactory.put("minus", "$nl$/icons/full/obj16/delete_obj.gif");
        ImageFactory.put("plus", "$nl$/icons/full/obj16/add_obj.gif");
    }

    ImageFactory() {
    }

    static Image getImage(String key) {
        ImageDescriptor imageDescriptor;
        Image image = imageRegistry.get(key);
        if (image == null && (imageDescriptor = ImageFactory.getImageDescriptor(key)) != null) {
            image = imageDescriptor.createImage(false);
            if (image == null) {
                StringBuffer stringBuffer = new StringBuffer();
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.ImageFactory");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                WorkbenchPlugin.log(stringBuffer.append(clazz).append(": error creating image for ").append(key).toString());
            }
            imageRegistry.put(key, image);
        }
        return image;
    }

    static ImageDescriptor getImageDescriptor(String key) {
        ImageDescriptor imageDescriptor = (ImageDescriptor)map.get(key);
        if (imageDescriptor == null) {
            StringBuffer stringBuffer = new StringBuffer();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.ImageFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            WorkbenchPlugin.log(stringBuffer.append(clazz).append(": no image descriptor for ").append(key).toString());
        }
        return imageDescriptor;
    }

    private static void put(String key, String value) {
        map.put(key, ImageSupport.getImageDescriptor(value));
    }
}

