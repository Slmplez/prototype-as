/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.runtime;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.runtime.IAdapterFactoryExt;
import org.eclipse.core.internal.runtime.IAdapterManagerProvider;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.core.runtime.IAdapterManager;

public final class AdapterManager
implements IAdapterManager {
    private Map adapterLookup;
    private Map classLookup;
    private final Object classLookupLock = new Object();
    private Map classSearchOrderLookup;
    private final HashMap factories = new HashMap(5);
    private final ArrayList lazyFactoryProviders = new ArrayList(1);
    private static final AdapterManager singleton = new AdapterManager();

    public static AdapterManager getDefault() {
        return singleton;
    }

    private AdapterManager() {
    }

    private void addFactoriesFor(String typeName, Map table) {
        List factoryList = (List)this.getFactories().get(typeName);
        if (factoryList == null) {
            return;
        }
        int i = 0;
        int imax = factoryList.size();
        while (i < imax) {
            int j;
            Object[] adapters;
            IAdapterFactory factory = (IAdapterFactory)factoryList.get(i);
            if (factory instanceof IAdapterFactoryExt) {
                adapters = ((IAdapterFactoryExt)((Object)factory)).getAdapterNames();
                j = 0;
                while (j < adapters.length) {
                    if (table.get(adapters[j]) == null) {
                        table.put(adapters[j], factory);
                    }
                    ++j;
                }
            } else {
                adapters = factory.getAdapterList();
                j = 0;
                while (j < adapters.length) {
                    String adapterName = ((Class)adapters[j]).getName();
                    if (table.get(adapterName) == null) {
                        table.put(adapterName, factory);
                    }
                    ++j;
                }
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void cacheClassLookup(IAdapterFactory factory, Class clazz) {
        Object object = this.classLookupLock;
        synchronized (object) {
            HashMap<String, Class> classes;
            HashMap<IAdapterFactory, HashMap<String, Class>> lookup = this.classLookup;
            if (lookup == null) {
                this.classLookup = lookup = new HashMap<IAdapterFactory, HashMap<String, Class>>(4);
            }
            if ((classes = (HashMap<String, Class>)lookup.get(factory)) == null) {
                classes = new HashMap<String, Class>(4);
                lookup.put(factory, classes);
            }
            classes.put(clazz.getName(), clazz);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Class cachedClassForName(IAdapterFactory factory, String typeName) {
        Object object = this.classLookupLock;
        synchronized (object) {
            HashMap classes;
            Class clazz = null;
            Map lookup = this.classLookup;
            if (lookup != null && (classes = (HashMap)lookup.get(factory)) != null) {
                clazz = (Class)classes.get(typeName);
            }
            return clazz;
        }
    }

    /*
     * Unable to fully structure code
     */
    private Class classForName(IAdapterFactory factory, String typeName) {
        clazz = this.cachedClassForName(factory, typeName);
        if (clazz == null) {
            if (factory instanceof IAdapterFactoryExt) {
                factory = ((IAdapterFactoryExt)factory).loadFactory(false);
            }
            if (factory != null) {
                block9: {
                    try {
                        clazz = factory.getClass().getClassLoader().loadClass(typeName);
                        break block9;
                    }
                    catch (ClassNotFoundException v0) {
                        if (typeName == null) {
                            return null;
                        }
                        adapterList = factory.getAdapterList();
                        clazz = null;
                        i = 0;
                        ** while (i < adapterList.length)
                    }
lbl-1000:
                    // 1 sources

                    {
                        if (typeName.equals(adapterList[i].getName())) {
                            clazz = adapterList[i];
                            break;
                        }
                        ++i;
                        continue;
                    }
lbl21:
                    // 2 sources

                    if (clazz == null) {
                        return null;
                    }
                }
                this.cacheClassLookup(factory, clazz);
            }
        }
        return clazz;
    }

    public String[] computeAdapterTypes(Class adaptable) {
        Set types = this.getFactories(adaptable).keySet();
        return types.toArray(new String[types.size()]);
    }

    private Map getFactories(Class adaptable) {
        HashMap table;
        Map lookup = this.adapterLookup;
        if (lookup == null) {
            this.adapterLookup = lookup = Collections.synchronizedMap(new HashMap(30));
        }
        if ((table = (HashMap)lookup.get(adaptable.getName())) == null) {
            table = new HashMap(4);
            Class[] classes = this.computeClassOrder(adaptable);
            int i = 0;
            while (i < classes.length) {
                this.addFactoriesFor(classes[i].getName(), table);
                ++i;
            }
            lookup.put(adaptable.getName(), table);
        }
        return table;
    }

    public Class[] computeClassOrder(Class adaptable) {
        Class[] classes = null;
        Map<Class, Class[]> lookup = this.classSearchOrderLookup;
        if (lookup == null) {
            this.classSearchOrderLookup = lookup = Collections.synchronizedMap(new HashMap());
        } else {
            classes = (Class[])lookup.get(adaptable);
        }
        if (classes == null) {
            classes = this.doComputeClassOrder(adaptable);
            lookup.put(adaptable, classes);
        }
        return classes;
    }

    private Class[] doComputeClassOrder(Class adaptable) {
        ArrayList classes = new ArrayList();
        Class clazz = adaptable;
        HashSet seen = new HashSet(4);
        while (clazz != null) {
            classes.add(clazz);
            clazz = clazz.getSuperclass();
        }
        Class[] classHierarchy = classes.toArray(new Class[classes.size()]);
        int i = 0;
        while (i < classHierarchy.length) {
            this.computeInterfaceOrder(classHierarchy[i].getInterfaces(), classes, seen);
            ++i;
        }
        return classes.toArray(new Class[classes.size()]);
    }

    private void computeInterfaceOrder(Class[] interfaces, Collection classes, Set seen) {
        ArrayList<Class> newInterfaces = new ArrayList<Class>(interfaces.length);
        int i = 0;
        while (i < interfaces.length) {
            Class interfac = interfaces[i];
            if (seen.add(interfac)) {
                classes.add(interfac);
                newInterfaces.add(interfac);
            }
            ++i;
        }
        Iterator it = newInterfaces.iterator();
        while (it.hasNext()) {
            this.computeInterfaceOrder(((Class)it.next()).getInterfaces(), classes, seen);
        }
    }

    public synchronized void flushLookup() {
        this.adapterLookup = null;
        this.classLookup = null;
        this.classSearchOrderLookup = null;
    }

    public Object getAdapter(Object adaptable, Class adapterType) {
        Assert.isNotNull(adaptable);
        Assert.isNotNull(adapterType);
        IAdapterFactory factory = (IAdapterFactory)this.getFactories(adaptable.getClass()).get(adapterType.getName());
        Object result = null;
        if (factory != null) {
            result = factory.getAdapter(adaptable, adapterType);
        }
        if (result == null && adapterType.isInstance(adaptable)) {
            return adaptable;
        }
        return result;
    }

    public Object getAdapter(Object adaptable, String adapterType) {
        Assert.isNotNull(adaptable);
        Assert.isNotNull(adapterType);
        return this.getAdapter(adaptable, adapterType, false);
    }

    private Object getAdapter(Object adaptable, String adapterType, boolean force) {
        Class clazz;
        IAdapterFactory factory = (IAdapterFactory)this.getFactories(adaptable.getClass()).get(adapterType);
        if (force && factory instanceof IAdapterFactoryExt) {
            factory = ((IAdapterFactoryExt)((Object)factory)).loadFactory(true);
        }
        Object result = null;
        if (factory != null && (clazz = this.classForName(factory, adapterType)) != null) {
            result = factory.getAdapter(adaptable, clazz);
        }
        if (result == null && adaptable.getClass().getName().equals(adapterType)) {
            return adaptable;
        }
        return result;
    }

    public boolean hasAdapter(Object adaptable, String adapterTypeName) {
        return this.getFactories(adaptable.getClass()).get(adapterTypeName) != null;
    }

    public int queryAdapter(Object adaptable, String adapterTypeName) {
        IAdapterFactory factory = (IAdapterFactory)this.getFactories(adaptable.getClass()).get(adapterTypeName);
        if (factory == null) {
            return 0;
        }
        if (factory instanceof IAdapterFactoryExt && (factory = ((IAdapterFactoryExt)((Object)factory)).loadFactory(false)) == null) {
            return 1;
        }
        return 2;
    }

    public Object loadAdapter(Object adaptable, String adapterTypeName) {
        return this.getAdapter(adaptable, adapterTypeName, true);
    }

    public synchronized void registerAdapters(IAdapterFactory factory, Class adaptable) {
        this.registerFactory(factory, adaptable.getName());
        this.flushLookup();
    }

    public void registerFactory(IAdapterFactory factory, String adaptableType) {
        ArrayList<IAdapterFactory> list = (ArrayList<IAdapterFactory>)this.factories.get(adaptableType);
        if (list == null) {
            list = new ArrayList<IAdapterFactory>(5);
            this.factories.put(adaptableType, list);
        }
        list.add(factory);
    }

    public synchronized void unregisterAdapters(IAdapterFactory factory) {
        Iterator it = this.factories.values().iterator();
        while (it.hasNext()) {
            ((List)it.next()).remove(factory);
        }
        this.flushLookup();
    }

    public synchronized void unregisterAdapters(IAdapterFactory factory, Class adaptable) {
        List factoryList = (List)this.factories.get(adaptable.getName());
        if (factoryList == null) {
            return;
        }
        factoryList.remove(factory);
        this.flushLookup();
    }

    public synchronized void unregisterAllAdapters() {
        this.factories.clear();
        this.flushLookup();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void registerLazyFactoryProvider(IAdapterManagerProvider factoryProvider) {
        ArrayList arrayList = this.lazyFactoryProviders;
        synchronized (arrayList) {
            this.lazyFactoryProviders.add(factoryProvider);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean unregisterLazyFactoryProvider(IAdapterManagerProvider factoryProvider) {
        ArrayList arrayList = this.lazyFactoryProviders;
        synchronized (arrayList) {
            return this.lazyFactoryProviders.remove(factoryProvider);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public HashMap getFactories() {
        ArrayList arrayList = this.lazyFactoryProviders;
        synchronized (arrayList) {
            while (this.lazyFactoryProviders.size() > 0) {
                IAdapterManagerProvider provider = (IAdapterManagerProvider)this.lazyFactoryProviders.remove(0);
                if (!provider.addFactories(this)) continue;
                this.flushLookup();
            }
        }
        return this.factories;
    }
}

