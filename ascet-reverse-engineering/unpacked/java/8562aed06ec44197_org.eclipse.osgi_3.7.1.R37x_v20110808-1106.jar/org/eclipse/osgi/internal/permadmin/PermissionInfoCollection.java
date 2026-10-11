/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.security.Permission;
import java.security.PermissionCollection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.internal.permadmin.BundlePermissions;
import org.eclipse.osgi.internal.permadmin.PermissionsHash;
import org.osgi.service.permissionadmin.PermissionInfo;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class PermissionInfoCollection
extends PermissionCollection {
    private static final long serialVersionUID = 3140511562980923957L;
    private static final Class<?>[] twoStringClassArray;
    private static final Class<?>[] oneStringClassArray;
    private static final Class<?>[] noArgClassArray;
    private static final Class<?>[][] permClassArrayArgs;
    private final Map<Class<? extends Permission>, PermissionCollection> cachedPermissionCollections = new HashMap<Class<? extends Permission>, PermissionCollection>();
    private final boolean hasAllPermission;
    private final PermissionInfo[] permInfos;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class[] classArray = new Class[2];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz2;
        twoStringClassArray = classArray;
        Class[] classArray2 = new Class[1];
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[0] = clazz3;
        oneStringClassArray = classArray2;
        noArgClassArray = new Class[0];
        permClassArrayArgs = new Class[][]{noArgClassArray, oneStringClassArray, twoStringClassArray};
    }

    public PermissionInfoCollection(PermissionInfo[] permInfos) {
        this.permInfos = permInfos;
        boolean tempAllPermissions = false;
        int i = 0;
        while (i < permInfos.length && !tempAllPermissions) {
            String string = permInfos[i].getType();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.security.AllPermission");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (string.equals(clazz.getName())) {
                tempAllPermissions = true;
            }
            ++i;
        }
        this.hasAllPermission = tempAllPermissions;
        this.setReadOnly();
    }

    @Override
    public void add(Permission arg0) {
        throw new SecurityException();
    }

    @Override
    public Enumeration<Permission> elements() {
        return BundlePermissions.EMPTY_ENUMERATION;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean implies(Permission perm) {
        PermissionCollection collection;
        if (this.hasAllPermission) {
            return true;
        }
        Class<?> permClass = perm.getClass();
        Map<Class<? extends Permission>, PermissionCollection> map = this.cachedPermissionCollections;
        synchronized (map) {
            collection = this.cachedPermissionCollections.get(permClass);
        }
        if (collection == null) {
            collection = perm.newPermissionCollection();
            if (collection == null) {
                collection = new PermissionsHash();
            }
            try {
                this.addPermissions(collection, permClass);
            }
            catch (Exception e) {
                throw (SecurityException)new SecurityException(new StringBuffer("Exception creating permissions: ").append(permClass).append(": ").append(e.getMessage()).toString()).initCause(e);
            }
            map = this.cachedPermissionCollections;
            synchronized (map) {
                PermissionCollection exists = this.cachedPermissionCollections.get(permClass);
                if (exists != null) {
                    collection = exists;
                } else {
                    this.cachedPermissionCollections.put(permClass, collection);
                }
            }
        }
        return collection.implies(perm);
    }

    PermissionInfo[] getPermissionInfos() {
        return this.permInfos;
    }

    private void addPermissions(PermissionCollection collection, Class<? extends Permission> permClass) throws NoSuchMethodException, IllegalAccessException, InstantiationException, InvocationTargetException {
        String permClassName = permClass.getName();
        Constructor<? extends Permission> constructor = null;
        int numArgs = -1;
        int i = permClassArrayArgs.length - 1;
        while (i >= 0) {
            try {
                constructor = permClass.getConstructor(permClassArrayArgs[i]);
                numArgs = i;
                break;
            }
            catch (NoSuchMethodException noSuchMethodException) {
                --i;
            }
        }
        if (constructor == null) {
            throw new NoSuchMethodException(new StringBuffer(String.valueOf(permClass.getName())).append(".<init>()").toString());
        }
        i = 0;
        while (i < this.permInfos.length) {
            if (this.permInfos[i].getType().equals(permClassName)) {
                File file;
                Object[] args = new String[numArgs];
                if (numArgs > 0) {
                    args[0] = this.permInfos[i].getName();
                }
                if (numArgs > 1) {
                    args[1] = this.permInfos[i].getActions();
                }
                if (!this.permInfos[i].getType().equals("java.io.FilePermission") || args[0].equals("<<ALL FILES>>") || (file = new File((String)args[0])).isAbsolute()) {
                    collection.add(constructor.newInstance(args));
                }
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void clearPermissionCache() {
        Map<Class<? extends Permission>, PermissionCollection> map = this.cachedPermissionCollections;
        synchronized (map) {
            this.cachedPermissionCollections.clear();
        }
    }
}

