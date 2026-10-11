/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader.buddy;

import java.io.IOException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Enumeration;
import org.eclipse.osgi.internal.loader.buddy.IBuddyPolicy;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemPolicy
implements IBuddyPolicy {
    public static final byte BOOT = 0;
    public static final byte EXT = 1;
    public static final byte APP = 2;
    private static SystemPolicy[] instances = new SystemPolicy[3];
    private ClassLoader classLoader;
    static /* synthetic */ Class class$0;

    public static SystemPolicy getInstance(final byte type) {
        if (instances[type] == null) {
            SystemPolicy.instances[type] = new SystemPolicy();
            SystemPolicy.instances[type].classLoader = AccessController.doPrivileged(new PrivilegedAction<ClassLoader>(){

                @Override
                public ClassLoader run() {
                    return SystemPolicy.createClassLoader(type);
                }
            });
        }
        return instances[type];
    }

    public SystemPolicy() {
    }

    public SystemPolicy(ClassLoader parent) {
        this.classLoader = parent;
    }

    static ClassLoader createClassLoader(byte type) {
        switch (type) {
            case 2: {
                if (ClassLoader.getSystemClassLoader() != null) {
                    return ClassLoader.getSystemClassLoader();
                }
                return new ParentClassLoader();
            }
            case 0: {
                return new ParentClassLoader();
            }
            case 1: {
                if (ClassLoader.getSystemClassLoader() != null) {
                    return ClassLoader.getSystemClassLoader().getParent();
                }
                return new ParentClassLoader();
            }
        }
        return null;
    }

    @Override
    public Class<?> loadClass(String name) {
        try {
            return this.classLoader.loadClass(name);
        }
        catch (ClassNotFoundException classNotFoundException) {
            return null;
        }
    }

    @Override
    public URL loadResource(String name) {
        return this.classLoader.getResource(name);
    }

    @Override
    public Enumeration<URL> loadResources(String name) {
        try {
            return this.classLoader.getResources(name);
        }
        catch (IOException iOException) {
            return null;
        }
    }

    private static class ParentClassLoader
    extends ClassLoader {
        protected ParentClassLoader() {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            super(clazz.getClassLoader());
        }
    }
}

