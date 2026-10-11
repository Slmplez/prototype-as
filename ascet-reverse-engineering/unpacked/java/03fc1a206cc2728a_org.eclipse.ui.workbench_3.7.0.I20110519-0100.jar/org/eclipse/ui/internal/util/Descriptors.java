/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ColorDescriptor
 *  org.eclipse.jface.resource.DeviceResourceDescriptor
 *  org.eclipse.jface.resource.DeviceResourceException
 *  org.eclipse.jface.resource.FontDescriptor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.ToolItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.resource.ColorDescriptor;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.FontDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.internal.WorkbenchPlugin;

public final class Descriptors {
    private static final String DISPOSE_LIST = "Descriptors.disposeList";
    private static DisposeListener disposeListener = new DisposeListener(){

        public void widgetDisposed(DisposeEvent e) {
            Descriptors.doDispose(e.widget);
        }
    };
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    private Descriptors() {
    }

    public static void setImage(Item item, ImageDescriptor descriptor) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Image");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Descriptors.callMethod((Widget)item, "setImage", (DeviceResourceDescriptor)descriptor, clazz);
    }

    public static void setHotImage(ToolItem item, ImageDescriptor descriptor) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Image");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Descriptors.callMethod((Widget)item, "setHotImage", (DeviceResourceDescriptor)descriptor, clazz);
    }

    public static void setDisabledImage(ToolItem item, ImageDescriptor descriptor) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Image");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Descriptors.callMethod((Widget)item, "setDisabledImage", (DeviceResourceDescriptor)descriptor, clazz);
    }

    public static void setFont(TableItem item, FontDescriptor descriptor) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.swt.graphics.Font");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Descriptors.callMethod((Widget)item, "setFont", (DeviceResourceDescriptor)descriptor, clazz);
    }

    public static void setBackground(TableItem item, ColorDescriptor descriptor) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.swt.graphics.Color");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Descriptors.callMethod((Widget)item, "setBackground", (DeviceResourceDescriptor)descriptor, clazz);
    }

    public static void setForeground(TableItem item, ColorDescriptor descriptor) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.swt.graphics.Color");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Descriptors.callMethod((Widget)item, "setForeground", (DeviceResourceDescriptor)descriptor, clazz);
    }

    public static void setBackground(Control control, ColorDescriptor descriptor) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.swt.graphics.Color");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Descriptors.callMethod((Widget)control, "setBackground", (DeviceResourceDescriptor)descriptor, clazz);
    }

    public static void setForeground(Control control, ColorDescriptor descriptor) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.swt.graphics.Color");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Descriptors.callMethod((Widget)control, "setForeground", (DeviceResourceDescriptor)descriptor, clazz);
    }

    public static void setImage(Button button, ImageDescriptor descriptor) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Image");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Descriptors.callMethod((Widget)button, "setImage", (DeviceResourceDescriptor)descriptor, clazz);
    }

    public static void setImage(Label label, ImageDescriptor descriptor) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Image");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Descriptors.callMethod((Widget)label, "setImage", (DeviceResourceDescriptor)descriptor, clazz);
    }

    private static ResourceMethod getResourceMethod(Widget toCall, String methodName, Class resourceType) throws NoSuchMethodException {
        Object method;
        ArrayList oldData = toCall.getData(DISPOSE_LIST);
        if (oldData instanceof List) {
            Iterator iter = ((List)oldData).iterator();
            while (iter.hasNext()) {
                method = (ResourceMethod)iter.next();
                if (((ResourceMethod)method).id != methodName) continue;
                return method;
            }
        }
        if (oldData instanceof ResourceMethod) {
            if (((ResourceMethod)((Object)oldData)).id == methodName) {
                return (ResourceMethod)((Object)oldData);
            }
            ArrayList newList = new ArrayList();
            newList.add(oldData);
            oldData = newList;
            toCall.setData(DISPOSE_LIST, oldData);
        }
        Class<?> clazz = toCall.getClass();
        method = clazz.getMethod(methodName, resourceType);
        ResourceMethod result = new ResourceMethod((Method)method, methodName);
        if (oldData == null) {
            toCall.setData(DISPOSE_LIST, (Object)result);
            toCall.addDisposeListener(disposeListener);
        } else {
            ((List)oldData).add(result);
        }
        return result;
    }

    private static void callMethod(Widget toCall, String methodName, DeviceResourceDescriptor descriptor, Class resourceType) {
        ResourceMethod method;
        try {
            method = Descriptors.getResourceMethod(toCall, methodName, resourceType);
        }
        catch (NoSuchMethodException e) {
            WorkbenchPlugin.log(e);
            return;
        }
        method.invoke(toCall, descriptor);
    }

    private static void doDispose(Widget widget) {
        Object oldData = widget.getData(DISPOSE_LIST);
        if (oldData instanceof ArrayList) {
            ArrayList list = (ArrayList)oldData;
            ResourceMethod[] data = list.toArray(new ResourceMethod[list.size()]);
            int i = 0;
            while (i < data.length) {
                ResourceMethod method = data[i];
                method.dispose();
                ++i;
            }
        }
        if (oldData instanceof ResourceMethod) {
            ((ResourceMethod)oldData).dispose();
        }
    }

    private static final class ResourceMethod {
        Method method;
        DeviceResourceDescriptor oldDescriptor;
        String id;

        ResourceMethod(Method m, String id) {
            this.method = m;
            this.id = id;
        }

        public void invoke(Widget toCall, DeviceResourceDescriptor newDescriptor) {
            Object newResource;
            if (newDescriptor == this.oldDescriptor) {
                return;
            }
            ResourceManager mgr = JFaceResources.getResources((Display)toCall.getDisplay());
            try {
                newResource = newDescriptor == null ? null : mgr.create(newDescriptor);
            }
            catch (DeviceResourceException e1) {
                WorkbenchPlugin.log(e1);
                return;
            }
            try {
                this.method.invoke(toCall, newResource);
            }
            catch (IllegalArgumentException e) {
                throw e;
            }
            catch (IllegalAccessException e) {
                WorkbenchPlugin.log(e);
                return;
            }
            catch (InvocationTargetException e) {
                if (e.getTargetException() instanceof RuntimeException) {
                    throw (RuntimeException)e.getTargetException();
                }
                WorkbenchPlugin.log(e);
                return;
            }
            if (this.oldDescriptor != null) {
                mgr.destroy(this.oldDescriptor);
            }
            this.oldDescriptor = newDescriptor;
        }

        public void dispose() {
            if (this.oldDescriptor != null) {
                ResourceManager mgr = JFaceResources.getResources();
                mgr.destroy(this.oldDescriptor);
                this.oldDescriptor = null;
            }
        }
    }
}

