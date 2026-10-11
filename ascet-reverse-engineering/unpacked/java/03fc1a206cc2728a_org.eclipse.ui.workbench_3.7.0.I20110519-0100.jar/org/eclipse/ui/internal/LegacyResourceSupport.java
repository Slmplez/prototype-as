/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.ui.internal.util.BundleUtility;
import org.osgi.framework.Bundle;

public final class LegacyResourceSupport {
    private static String[] resourceClassNames = new String[]{"org.eclipse.core.resources.IResource", "org.eclipse.core.resources.IContainer", "org.eclipse.core.resources.IFolder", "org.eclipse.core.resources.IProject", "org.eclipse.core.resources.IFile"};
    private static Class iresourceClass = null;
    private static Class ifileClass;
    private static Class icontributorResourceAdapterClass;
    private static Method getAdaptedResourceMethod;
    private static Method getAdaptedResourceMappingMethod;
    private static Class icontributorResourceAdapter2Class;
    private static Class defaultContributorResourceAdapterClass;
    private static Object defaultContributorResourceAdapter;
    private static Class resourceMappingClass;
    private static boolean resourceAdapterPossible;
    static /* synthetic */ Class class$0;

    static {
        icontributorResourceAdapterClass = null;
        getAdaptedResourceMethod = null;
        getAdaptedResourceMappingMethod = null;
        icontributorResourceAdapter2Class = null;
        defaultContributorResourceAdapterClass = null;
        defaultContributorResourceAdapter = null;
        resourceMappingClass = null;
        resourceAdapterPossible = true;
    }

    public static Class getFileClass() {
        if (ifileClass != null) {
            return ifileClass;
        }
        Class c = LegacyResourceSupport.loadClass("org.eclipse.core.resources", "org.eclipse.core.resources.IFile");
        if (c != null) {
            ifileClass = c;
        }
        return c;
    }

    public static Class getResourceClass() {
        if (iresourceClass != null) {
            return iresourceClass;
        }
        Class c = LegacyResourceSupport.loadClass("org.eclipse.core.resources", "org.eclipse.core.resources.IResource");
        if (c != null) {
            iresourceClass = c;
        }
        return c;
    }

    public static Class getResourceMappingClass() {
        if (resourceMappingClass != null) {
            return resourceMappingClass;
        }
        Class c = LegacyResourceSupport.loadClass("org.eclipse.core.resources", "org.eclipse.core.resources.mapping.ResourceMapping");
        if (c != null) {
            resourceMappingClass = c;
        }
        return c;
    }

    public static Class getIContributorResourceAdapterClass() {
        if (icontributorResourceAdapterClass != null) {
            return icontributorResourceAdapterClass;
        }
        Class c = LegacyResourceSupport.loadClass("org.eclipse.ui.ide", "org.eclipse.ui.IContributorResourceAdapter");
        if (c != null) {
            icontributorResourceAdapterClass = c;
        }
        return c;
    }

    public static Class getIContributorResourceAdapter2Class() {
        if (icontributorResourceAdapter2Class != null) {
            return icontributorResourceAdapter2Class;
        }
        Class c = LegacyResourceSupport.loadClass("org.eclipse.ui.ide", "org.eclipse.ui.ide.IContributorResourceAdapter2");
        if (c != null) {
            icontributorResourceAdapter2Class = c;
        }
        return c;
    }

    private static Class loadClass(String bundleName, String className) {
        if (!resourceAdapterPossible) {
            return null;
        }
        Bundle bundle = Platform.getBundle((String)bundleName);
        if (bundle == null) {
            resourceAdapterPossible = false;
            return null;
        }
        if (!BundleUtility.isActivated(bundle)) {
            resourceAdapterPossible = true;
            return null;
        }
        try {
            return bundle.loadClass(className);
        }
        catch (ClassNotFoundException classNotFoundException) {
            resourceAdapterPossible = false;
            return null;
        }
    }

    public static Class getDefaultContributorResourceAdapterClass() {
        if (defaultContributorResourceAdapterClass != null) {
            return defaultContributorResourceAdapterClass;
        }
        Class c = LegacyResourceSupport.loadClass("org.eclipse.ui.ide", "org.eclipse.ui.internal.ide.DefaultContributorResourceAdapter");
        if (c != null) {
            defaultContributorResourceAdapterClass = c;
        }
        return c;
    }

    private static Object getDefaultContributorResourceAdapter() {
        if (defaultContributorResourceAdapter != null) {
            return defaultContributorResourceAdapter;
        }
        Class c = LegacyResourceSupport.getDefaultContributorResourceAdapterClass();
        if (c != null) {
            try {
                Method m = c.getDeclaredMethod("getDefault", new Class[0]);
                defaultContributorResourceAdapter = m.invoke(null, new Object[0]);
                return defaultContributorResourceAdapter;
            }
            catch (SecurityException securityException) {
            }
            catch (NoSuchMethodException noSuchMethodException) {
            }
            catch (IllegalArgumentException illegalArgumentException) {
            }
            catch (IllegalAccessException illegalAccessException) {
            }
            catch (InvocationTargetException invocationTargetException) {}
        }
        return null;
    }

    public static boolean isResourceType(String objectClassName) {
        int i = 0;
        while (i < resourceClassNames.length) {
            if (resourceClassNames[i].equals(objectClassName)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static boolean isResourceMappingType(String objectClassName) {
        return objectClassName.equals("org.eclipse.core.resources.mapping.ResourceMapping");
    }

    private static boolean isInstanceOf(Class clazz, String type) {
        if (clazz.getName().equals(type)) {
            return true;
        }
        Class superClass = clazz.getSuperclass();
        if (superClass != null && LegacyResourceSupport.isInstanceOf(superClass, type)) {
            return true;
        }
        Class<?>[] interfaces = clazz.getInterfaces();
        int i = 0;
        while (i < interfaces.length) {
            if (LegacyResourceSupport.isInstanceOf(interfaces[i], type)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static Object getAdaptedContributorResource(Object object) {
        Class resourceClass = LegacyResourceSupport.getResourceClass();
        if (resourceClass == null) {
            return null;
        }
        if (resourceClass.isInstance(object)) {
            return null;
        }
        if (object instanceof IAdaptable) {
            IAdaptable adaptable = (IAdaptable)object;
            Class contributorResourceAdapterClass = LegacyResourceSupport.getIContributorResourceAdapterClass();
            if (contributorResourceAdapterClass == null) {
                return adaptable.getAdapter(resourceClass);
            }
            Object resourceAdapter = adaptable.getAdapter(contributorResourceAdapterClass);
            if (resourceAdapter == null && (resourceAdapter = LegacyResourceSupport.getDefaultContributorResourceAdapter()) == null) {
                return null;
            }
            Method m = LegacyResourceSupport.getContributorResourceAdapterGetAdaptedResourceMethod();
            if (m != null) {
                try {
                    return m.invoke(resourceAdapter, adaptable);
                }
                catch (IllegalArgumentException illegalArgumentException) {
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (InvocationTargetException invocationTargetException) {}
            }
        }
        return null;
    }

    private static Method getContributorResourceAdapterGetAdaptedResourceMethod() {
        if (getAdaptedResourceMethod != null) {
            return getAdaptedResourceMethod;
        }
        Class c = LegacyResourceSupport.getIContributorResourceAdapterClass();
        if (c != null) {
            try {
                Class[] classArray = new Class[1];
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.core.runtime.IAdaptable");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz;
                getAdaptedResourceMethod = c.getDeclaredMethod("getAdaptedResource", classArray);
                return getAdaptedResourceMethod;
            }
            catch (SecurityException securityException) {
            }
            catch (NoSuchMethodException noSuchMethodException) {}
        }
        return null;
    }

    private static Method getContributorResourceAdapter2GetAdaptedResourceMappingMethod() {
        if (getAdaptedResourceMappingMethod != null) {
            return getAdaptedResourceMappingMethod;
        }
        Class c = LegacyResourceSupport.getIContributorResourceAdapter2Class();
        if (c != null) {
            try {
                Class[] classArray = new Class[1];
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.core.runtime.IAdaptable");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz;
                getAdaptedResourceMappingMethod = c.getDeclaredMethod("getAdaptedResourceMapping", classArray);
                return getAdaptedResourceMappingMethod;
            }
            catch (SecurityException securityException) {
            }
            catch (NoSuchMethodException noSuchMethodException) {}
        }
        return null;
    }

    public static Object getAdaptedContributorResourceMapping(Object object) {
        Class resourceMappingClass = LegacyResourceSupport.getResourceMappingClass();
        if (resourceMappingClass == null) {
            return null;
        }
        if (resourceMappingClass.isInstance(object)) {
            return null;
        }
        if (object instanceof IAdaptable) {
            Object r;
            Object resourceMappingAdapter;
            IAdaptable adaptable = (IAdaptable)object;
            Class contributorResourceAdapterClass = LegacyResourceSupport.getIContributorResourceAdapterClass();
            if (contributorResourceAdapterClass == null) {
                return adaptable.getAdapter(resourceMappingClass);
            }
            Class contributorResourceAdapter2Class = LegacyResourceSupport.getIContributorResourceAdapter2Class();
            if (contributorResourceAdapter2Class == null) {
                return adaptable.getAdapter(resourceMappingClass);
            }
            Object resourceAdapter = adaptable.getAdapter(contributorResourceAdapterClass);
            if (resourceAdapter != null && contributorResourceAdapter2Class.isInstance(resourceAdapter)) {
                resourceMappingAdapter = resourceAdapter;
            } else {
                resourceMappingAdapter = LegacyResourceSupport.getDefaultContributorResourceAdapter();
                if (resourceMappingAdapter == null) {
                    return null;
                }
            }
            Method m = LegacyResourceSupport.getContributorResourceAdapter2GetAdaptedResourceMappingMethod();
            if (m != null) {
                try {
                    Object result = m.invoke(resourceMappingAdapter, adaptable);
                    if (result != null) {
                        return result;
                    }
                }
                catch (IllegalArgumentException illegalArgumentException) {
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (InvocationTargetException invocationTargetException) {}
            }
            if ((r = LegacyResourceSupport.getAdaptedContributorResource(object)) != null) {
                return Platform.getAdapterManager().getAdapter(r, resourceMappingClass);
            }
            return null;
        }
        return Platform.getAdapterManager().getAdapter(object, resourceMappingClass);
    }

    public static IStructuredSelection adaptSelection(IStructuredSelection selection, String objectClass) {
        ArrayList<Object> newSelection = new ArrayList<Object>(10);
        Iterator it = selection.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            Object adaptedElement = LegacyResourceSupport.getAdapter(element, objectClass);
            if (adaptedElement == null) continue;
            newSelection.add(adaptedElement);
        }
        return new StructuredSelection(newSelection);
    }

    public static Object getAdapter(Object element, String objectClass) {
        Object adaptedElement = null;
        if (LegacyResourceSupport.isInstanceOf(element.getClass(), objectClass)) {
            adaptedElement = element;
        } else if (LegacyResourceSupport.isResourceType(objectClass)) {
            adaptedElement = LegacyResourceSupport.getAdaptedResource(element);
        } else if (LegacyResourceSupport.isResourceMappingType(objectClass)) {
            Object resource;
            adaptedElement = LegacyResourceSupport.getAdaptedResourceMapping(element);
            if (adaptedElement == null && (resource = LegacyResourceSupport.getAdaptedResource(element)) != null) {
                adaptedElement = ((IAdaptable)resource).getAdapter(LegacyResourceSupport.getResourceMappingClass());
            }
        } else {
            adaptedElement = Platform.getAdapterManager().loadAdapter(element, objectClass);
        }
        return adaptedElement;
    }

    public static Object getAdaptedResource(Object element) {
        Class resourceClass = LegacyResourceSupport.getResourceClass();
        Object adaptedValue = null;
        if (resourceClass != null) {
            adaptedValue = resourceClass.isInstance(element) ? element : LegacyResourceSupport.getAdaptedContributorResource(element);
        }
        return adaptedValue;
    }

    public static Object getAdaptedResourceMapping(Object element) {
        Class resourceMappingClass = LegacyResourceSupport.getResourceMappingClass();
        Object adaptedValue = null;
        if (resourceMappingClass != null) {
            adaptedValue = resourceMappingClass.isInstance(element) ? element : LegacyResourceSupport.getAdaptedContributorResourceMapping(element);
        }
        return adaptedValue;
    }

    private LegacyResourceSupport() {
    }
}

