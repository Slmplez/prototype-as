/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.EMFPlugin
 */
package org.eclipse.emf.ecore.impl;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EPackageRegistryImpl
extends HashMap<String, Object>
implements EPackage.Registry {
    private static final long serialVersionUID = 1L;
    protected EPackage.Registry delegateRegistry;
    protected static Map<ClassLoader, EPackage.Registry> classLoaderToRegistryMap = new WeakHashMap<ClassLoader, EPackage.Registry>();
    private static final ParentClassLoaderGetter PARENT_CLASS_LOADER_GETTER = new ParentClassLoaderGetter();
    private static final PrivilegedAction<ClassLoader> CONTEXT_CLASS_LOADER_ACTION = new PrivilegedAction<ClassLoader>(){

        @Override
        public ClassLoader run() {
            return Thread.currentThread().getContextClassLoader();
        }
    };
    private static final Map<ClassLoader, EPackage.Registry> secureClassLoaderToRegistryMap = new WeakHashMap<ClassLoader, EPackage.Registry>();

    public static EPackage.Registry createGlobalRegistry() {
        try {
            String className = System.getProperty("org.eclipse.emf.ecore.EPackage.Registry.INSTANCE");
            if (className == null) {
                if (EcorePlugin.getDefaultRegistryImplementation() != null) {
                    return EcorePlugin.getDefaultRegistryImplementation();
                }
                if (!EMFPlugin.IS_ECLIPSE_RUNNING) {
                    try {
                        SecurityManager securityManager = System.getSecurityManager();
                        if (securityManager != null) {
                            securityManager.checkPermission(new RuntimePermission("classLoader"));
                        }
                        return new Delegator();
                    }
                    catch (Throwable throwable) {
                        return new SecureDelegator();
                    }
                }
                return new EPackageRegistryImpl();
            }
            return (EPackage.Registry)Class.forName(className).newInstance();
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log(exception);
            return new EPackageRegistryImpl();
        }
    }

    public EPackageRegistryImpl() {
    }

    public EPackageRegistryImpl(EPackage.Registry delegateRegistry) {
        this.delegateRegistry = delegateRegistry;
    }

    @Override
    public EPackage getEPackage(String nsURI) {
        Object ePackage = this.get(nsURI);
        if (ePackage instanceof EPackage) {
            EPackage result = (EPackage)ePackage;
            if (result.getNsURI() == null) {
                this.initialize(result);
            }
            return result;
        }
        if (ePackage instanceof EPackage.Descriptor) {
            EPackage.Descriptor ePackageDescriptor = (EPackage.Descriptor)ePackage;
            EPackage result = ePackageDescriptor.getEPackage();
            if (result != null) {
                if (result.getNsURI() == null) {
                    this.initialize(result);
                } else {
                    this.put(nsURI, result);
                }
            }
            return result;
        }
        return this.delegatedGetEPackage(nsURI);
    }

    @Override
    public EFactory getEFactory(String nsURI) {
        Object ePackage = this.get(nsURI);
        if (ePackage instanceof EPackage) {
            EPackage result = (EPackage)ePackage;
            if (result.getNsURI() == null) {
                this.initialize(result);
            }
            return result.getEFactoryInstance();
        }
        if (ePackage instanceof EPackage.Descriptor) {
            EPackage.Descriptor ePackageDescriptor = (EPackage.Descriptor)ePackage;
            EFactory result = ePackageDescriptor.getEFactory();
            return result;
        }
        return this.delegatedGetEFactory(nsURI);
    }

    protected void initialize(EPackage ePackage) {
    }

    protected EPackage delegatedGetEPackage(String nsURI) {
        if (this.delegateRegistry != null) {
            return this.delegateRegistry.getEPackage(nsURI);
        }
        return null;
    }

    protected EFactory delegatedGetEFactory(String nsURI) {
        if (this.delegateRegistry != null) {
            return this.delegateRegistry.getEFactory(nsURI);
        }
        return null;
    }

    @Override
    public boolean containsKey(Object key) {
        return super.containsKey(key) || this.delegateRegistry != null && this.delegateRegistry.containsKey(key);
    }

    public static synchronized EPackage.Registry getRegistry(ClassLoader classLoader) {
        EPackage.Registry result = classLoaderToRegistryMap.get(classLoader);
        if (result == null && classLoader != null) {
            result = new EPackageRegistryImpl(EPackageRegistryImpl.getRegistry(classLoader.getParent()));
            classLoaderToRegistryMap.put(classLoader, result);
        }
        return result;
    }

    private static ClassLoader getContextClassLoaderSecurely() {
        return AccessController.doPrivileged(CONTEXT_CLASS_LOADER_ACTION);
    }

    private static synchronized EPackage.Registry getRegistrySecurely(ClassLoader classLoader) {
        EPackage.Registry result = secureClassLoaderToRegistryMap.get(classLoader);
        if (result == null && classLoader != null) {
            result = new EPackageRegistryImpl(EPackageRegistryImpl.getRegistrySecurely(PARENT_CLASS_LOADER_GETTER.getParent(classLoader)));
            secureClassLoaderToRegistryMap.put(classLoader, result);
        }
        return result;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Delegator
    implements EPackage.Registry {
        protected EPackage.Registry delegateRegistry(ClassLoader classLoader) {
            return EPackageRegistryImpl.getRegistry(classLoader);
        }

        protected EPackage.Registry delegateRegistry() {
            return this.delegateRegistry(this.getContextClassLoader());
        }

        protected ClassLoader getContextClassLoader() {
            return Thread.currentThread().getContextClassLoader();
        }

        protected ClassLoader getParent(ClassLoader classLoader) {
            return classLoader == null ? null : classLoader.getParent();
        }

        @Override
        public EPackage getEPackage(String key) {
            return this.delegateRegistry().getEPackage(key);
        }

        @Override
        public EFactory getEFactory(String key) {
            return this.delegateRegistry().getEFactory(key);
        }

        @Override
        public int size() {
            return this.delegateRegistry().size();
        }

        @Override
        public boolean isEmpty() {
            return this.delegateRegistry().isEmpty();
        }

        @Override
        public boolean containsKey(Object key) {
            return this.delegateRegistry().containsKey(key);
        }

        @Override
        public boolean containsValue(Object value) {
            return this.delegateRegistry().containsValue(value);
        }

        @Override
        public Object get(Object key) {
            return this.delegateRegistry().get(key);
        }

        @Override
        public Object put(String key, Object value) {
            Class<?> valueClass = value.getClass();
            if (valueClass == EPackageImpl.class) {
                return this.delegateRegistry().put(key, value);
            }
            String valueClassName = valueClass.getName();
            ClassLoader result = this.getContextClassLoader();
            ClassLoader classLoader = this.getParent(result);
            while (classLoader != null) {
                try {
                    Class<?> loadedClass = classLoader.loadClass(valueClassName);
                    if (loadedClass != valueClass) break;
                    result = classLoader;
                }
                catch (ClassNotFoundException exception) {
                    break;
                }
                classLoader = this.getParent(classLoader);
            }
            return this.delegateRegistry(result).put(key, value);
        }

        @Override
        public Object remove(Object key) {
            return this.delegateRegistry().remove(key);
        }

        @Override
        public void putAll(Map<? extends String, ? extends Object> map) {
            for (Map.Entry<? extends String, ? extends Object> entry : map.entrySet()) {
                this.put(entry.getKey(), entry.getValue());
            }
        }

        @Override
        public void clear() {
            this.delegateRegistry().clear();
        }

        @Override
        public Set<String> keySet() {
            return this.delegateRegistry().keySet();
        }

        @Override
        public Collection<Object> values() {
            return this.delegateRegistry().values();
        }

        @Override
        public Set<Map.Entry<String, Object>> entrySet() {
            return this.delegateRegistry().entrySet();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ParentClassLoaderGetter
    implements PrivilegedAction<ClassLoader> {
        private ClassLoader classLoader;

        private ParentClassLoaderGetter() {
        }

        @Override
        public ClassLoader run() {
            if (this.classLoader != null) {
                this.classLoader = this.classLoader.getParent();
            }
            return null;
        }

        public ClassLoader getParent(ClassLoader classLoader) {
            this.classLoader = classLoader;
            AccessController.doPrivileged(this);
            return this.classLoader;
        }
    }

    private static final class SecureDelegator
    extends Delegator {
        private final ParentClassLoaderGetter parentClassLoaderGetter = new ParentClassLoaderGetter();

        private SecureDelegator() {
        }

        protected EPackage.Registry delegateRegistry(ClassLoader classLoader) {
            return EPackageRegistryImpl.getRegistrySecurely(classLoader);
        }

        protected ClassLoader getContextClassLoader() {
            return EPackageRegistryImpl.getContextClassLoaderSecurely();
        }

        protected ClassLoader getParent(ClassLoader classLoader) {
            return this.parentClassLoaderGetter.getParent(classLoader);
        }
    }
}

