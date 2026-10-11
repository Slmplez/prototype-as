/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.resources;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.localstore.HistoryStore2;
import org.eclipse.core.internal.localstore.IHistoryStore;
import org.eclipse.core.internal.properties.IPropertyManager;
import org.eclipse.core.internal.properties.PropertyManager2;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;

public class ResourcesCompatibilityHelper {
    private static final String COMPATIBILITY_CLASS = "org.eclipse.core.internal.resources.ResourcesCompatibility";
    private static final String CONVERT_HISTORY_STORE = "org.eclipse.core.resources.convertHistory";
    private static final String CONVERT_PROPERTY_STORE = "org.eclipse.core.resources.convertProperties";
    private static final String ENABLE_NEW_HISTORY_STORE = "org.eclipse.core.resources.newHistory";
    private static final String ENABLE_NEW_PROPERTY_STORE = "org.eclipse.core.resources.newProperties";

    public static IHistoryStore createHistoryStore(IPath location, int limit) {
        boolean newImpl = !Boolean.FALSE.toString().equalsIgnoreCase(System.getProperty(ENABLE_NEW_HISTORY_STORE));
        boolean convert = !Boolean.FALSE.toString().equalsIgnoreCase(System.getProperty(CONVERT_HISTORY_STORE));
        try {
            return ResourcesCompatibilityHelper.createHistoryStore(location, limit, newImpl, convert, true);
        }
        catch (ClassNotFoundException classNotFoundException) {
        }
        catch (NoSuchMethodException e) {
            if (Workspace.DEBUG) {
                e.printStackTrace();
            }
        }
        catch (IllegalAccessException e) {
            if (Workspace.DEBUG) {
                e.printStackTrace();
            }
        }
        catch (InvocationTargetException e) {
            Throwable target = e.getTargetException();
            if (target instanceof RuntimeException) {
                throw (RuntimeException)target;
            }
            throw (Error)target;
        }
        IFileStore store = EFS.getLocalFileSystem().getStore(location);
        return new HistoryStore2((Workspace)ResourcesPlugin.getWorkspace(), store, limit);
    }

    public static IHistoryStore createHistoryStore(IPath location, int limit, boolean newImpl, boolean convert, boolean rename) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Class<?> clazz = Class.forName(COMPATIBILITY_CLASS);
        Method createMethod = clazz.getDeclaredMethod("createHistoryStore", IPath.class, Integer.TYPE, Boolean.TYPE, Boolean.TYPE, Boolean.TYPE);
        return (IHistoryStore)createMethod.invoke(null, location, new Integer(limit), newImpl, convert, rename);
    }

    public static IPropertyManager createPropertyManager(boolean newImpl, boolean convert) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Class<?> clazz = Class.forName(COMPATIBILITY_CLASS);
        Method createMethod = clazz.getDeclaredMethod("createPropertyManager", Boolean.TYPE, Boolean.TYPE);
        return (IPropertyManager)createMethod.invoke(null, newImpl, convert);
    }

    public static IPropertyManager createPropertyManager() {
        boolean newImpl = !Boolean.FALSE.toString().equalsIgnoreCase(System.getProperty(ENABLE_NEW_PROPERTY_STORE));
        boolean convert = !Boolean.FALSE.toString().equalsIgnoreCase(System.getProperty(CONVERT_PROPERTY_STORE));
        try {
            return ResourcesCompatibilityHelper.createPropertyManager(newImpl, convert);
        }
        catch (ClassNotFoundException classNotFoundException) {
        }
        catch (NoSuchMethodException e) {
            if (Workspace.DEBUG) {
                e.printStackTrace();
            }
        }
        catch (IllegalAccessException e) {
            if (Workspace.DEBUG) {
                e.printStackTrace();
            }
        }
        catch (InvocationTargetException e) {
            Throwable target = e.getTargetException();
            if (target instanceof RuntimeException) {
                throw (RuntimeException)target;
            }
            throw (Error)target;
        }
        return new PropertyManager2((Workspace)ResourcesPlugin.getWorkspace());
    }
}

