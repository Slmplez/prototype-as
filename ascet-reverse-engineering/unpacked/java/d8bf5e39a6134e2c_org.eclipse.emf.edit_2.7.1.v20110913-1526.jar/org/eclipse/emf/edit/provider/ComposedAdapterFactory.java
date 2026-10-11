/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.UniqueEList$FastCompare
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EcoreFactory
 */
package org.eclipse.emf.edit.provider;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.provider.ChangeNotifier;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.IChangeNotifier;
import org.eclipse.emf.edit.provider.IDisposable;
import org.eclipse.emf.edit.provider.INotifyChangedListener;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ComposedAdapterFactory
implements AdapterFactory,
ComposeableAdapterFactory,
IChangeNotifier,
IDisposable {
    protected List<AdapterFactory> adapterFactories = new ArrayList<AdapterFactory>();
    protected ComposedAdapterFactory parentAdapterFactory;
    protected ChangeNotifier changeNotifier = new ChangeNotifier();
    protected Descriptor.Registry adapterFactoryDescriptorRegistry;
    private static final Object ANY_OBJECT = new Object();
    private static final Object ANY_EOBJECT = EcoreFactory.eINSTANCE.createEObject();

    public ComposedAdapterFactory() {
    }

    public ComposedAdapterFactory(Descriptor.Registry adapterFactoryDescriptorRegistry) {
        this.adapterFactoryDescriptorRegistry = adapterFactoryDescriptorRegistry;
    }

    public ComposedAdapterFactory(AdapterFactory adapterFactory) {
        this.addAdapterFactory(adapterFactory);
    }

    public ComposedAdapterFactory(AdapterFactory[] adapterFactories) {
        int i = 0;
        while (i < adapterFactories.length) {
            this.addAdapterFactory(adapterFactories[i]);
            ++i;
        }
    }

    public ComposedAdapterFactory(Collection<? extends AdapterFactory> adapterFactories) {
        for (AdapterFactory adapterFactory : adapterFactories) {
            this.addAdapterFactory(adapterFactory);
        }
    }

    public boolean isFactoryForType(Object type) {
        for (AdapterFactory adapterFactory : this.adapterFactories) {
            if (!adapterFactory.isFactoryForType(type)) continue;
            return true;
        }
        return false;
    }

    public AdapterFactory getFactoryForType(Object type) {
        return this.getFactoryForTypes(Collections.singleton(type));
    }

    public AdapterFactory getFactoryForTypes(Collection<?> types) {
        Descriptor descriptor;
        AdapterFactory result = null;
        block0: for (AdapterFactory factory : this.adapterFactories) {
            if (factory instanceof ComposedAdapterFactory) {
                AdapterFactory candidate = ((ComposedAdapterFactory)factory).getFactoryForTypes(types);
                if (candidate == null) continue;
                if (!candidate.isFactoryForType(ANY_EOBJECT) && !candidate.isFactoryForType(ANY_OBJECT)) {
                    return candidate;
                }
                if (result != null) continue;
                result = candidate;
                continue;
            }
            for (Object type : types) {
                if (!factory.isFactoryForType(type)) continue block0;
            }
            if (!factory.isFactoryForType(ANY_EOBJECT) && !factory.isFactoryForType(ANY_OBJECT)) {
                return factory;
            }
            if (result != null) continue;
            result = factory;
        }
        if (this.adapterFactoryDescriptorRegistry != null && (descriptor = this.adapterFactoryDescriptorRegistry.getDescriptor(types)) != null) {
            result = descriptor.createAdapterFactory();
            this.addAdapterFactory(result);
        }
        return result == null ? this.delegatedGetFactoryForTypes(types) : result;
    }

    protected AdapterFactory delegatedGetFactoryForTypes(Collection<?> types) {
        return null;
    }

    public Object adapt(Object target, Object type) {
        Object adapter = target;
        if (target instanceof Notifier) {
            adapter = this.adapt((Notifier)target, type);
        }
        if (!(type instanceof Class) || ((Class)type).isInstance(adapter)) {
            return adapter;
        }
        return null;
    }

    public Adapter adapt(Notifier target, Object type) {
        return this.adapt(target, type, false);
    }

    protected Adapter adapt(Notifier target, Object type, boolean isNew) {
        Adapter result = null;
        if (target instanceof EObject) {
            EObject eObject = (EObject)target;
            EClass eClass = eObject.eClass();
            if (eClass != null) {
                AdapterFactory delegateAdapterFactory;
                EPackage ePackage = eClass.getEPackage();
                ArrayList<Object> types = new ArrayList<Object>();
                types.add(ePackage);
                if (type != null) {
                    types.add(type);
                }
                if ((delegateAdapterFactory = this.getFactoryForTypes(types)) != null) {
                    Adapter adapter = result = isNew ? delegateAdapterFactory.adaptNew(target, type) : delegateAdapterFactory.adapt(target, type);
                }
                if (result == null) {
                    HashSet<EPackage> failedPackageSet = new HashSet<EPackage>();
                    failedPackageSet.add(ePackage);
                    UniqueEList.FastCompare allSuperTypes = new UniqueEList.FastCompare((Collection)eClass.getESuperTypes());
                    int i = 0;
                    while (i < allSuperTypes.size()) {
                        EClass eSuperType = (EClass)allSuperTypes.get(i);
                        EPackage eSupertypePackage = eSuperType.getEPackage();
                        if (failedPackageSet.add(eSupertypePackage)) {
                            ArrayList<Object> superTypes = new ArrayList<Object>();
                            superTypes.add(eSupertypePackage);
                            if (type != null) {
                                superTypes.add(type);
                            }
                            if ((delegateAdapterFactory = this.getFactoryForTypes(superTypes)) != null) {
                                Adapter adapter = result = isNew ? delegateAdapterFactory.adaptNew(target, type) : delegateAdapterFactory.adapt(target, type);
                                if (result != null) break;
                            }
                        }
                        allSuperTypes.addAll(eSuperType.getESuperTypes());
                        ++i;
                    }
                }
            }
        } else {
            result = isNew ? this.adapt(target, type, new HashSet<Object>(), target.getClass(), true) : this.adapt(target, type, new HashSet<Object>(), target.getClass());
        }
        return result;
    }

    protected Adapter adapt(Notifier target, Object type, Collection<Object> failedPackages, Class<?> javaClass) {
        return this.adapt(target, type, failedPackages, javaClass, false);
    }

    protected Adapter adapt(Notifier target, Object type, Collection<Object> failedPackages, Class<?> javaClass, boolean isNew) {
        Adapter result = null;
        Package javaPackage = javaClass.getPackage();
        if (failedPackages.add(javaPackage)) {
            AdapterFactory delegateAdapterFactory;
            ArrayList<Object> types = new ArrayList<Object>();
            types.add(javaPackage);
            if (type != null) {
                types.add(type);
            }
            if ((delegateAdapterFactory = this.getFactoryForTypes(types)) != null) {
                Adapter adapter = result = isNew ? delegateAdapterFactory.adaptNew(target, type) : delegateAdapterFactory.adapt(target, type);
            }
        }
        if (result == null) {
            Class<?> superclass = javaClass.getSuperclass();
            if (superclass != null) {
                result = this.adapt(target, type, failedPackages, javaClass.getSuperclass(), isNew);
            }
            if (result == null) {
                Class<?>[] interfaces = javaClass.getInterfaces();
                int i = 0;
                while (i < interfaces.length) {
                    result = this.adapt(target, type, failedPackages, interfaces[i], isNew);
                    if (result != null) break;
                    ++i;
                }
            }
        }
        return result;
    }

    public Adapter adaptNew(Notifier target, Object type) {
        return this.adapt(target, type, true);
    }

    public void adaptAllNew(Notifier target) {
        for (AdapterFactory adapterFactory : this.adapterFactories) {
            if (!adapterFactory.isFactoryForType((Object)target)) continue;
            adapterFactory.adaptAllNew(target);
        }
    }

    public void insertAdapterFactory(AdapterFactory adapterFactory) {
        if (!this.adapterFactories.contains(adapterFactory)) {
            this.adapterFactories.add(0, adapterFactory);
            if (adapterFactory instanceof ComposeableAdapterFactory) {
                ((ComposeableAdapterFactory)adapterFactory).setParentAdapterFactory(this);
            }
        }
    }

    public void addAdapterFactory(AdapterFactory adapterFactory) {
        if (!this.adapterFactories.contains(adapterFactory)) {
            this.adapterFactories.add(adapterFactory);
            if (adapterFactory instanceof ComposeableAdapterFactory) {
                ((ComposeableAdapterFactory)adapterFactory).setParentAdapterFactory(this);
            }
        }
    }

    public void removeAdapterFactory(AdapterFactory adapterFactory) {
        if (this.adapterFactories.contains(adapterFactory)) {
            this.adapterFactories.remove(adapterFactory);
            if (adapterFactory instanceof ComposeableAdapterFactory) {
                ((ComposeableAdapterFactory)adapterFactory).setParentAdapterFactory(null);
            }
        }
    }

    @Override
    public ComposeableAdapterFactory getRootAdapterFactory() {
        return this.parentAdapterFactory == null ? this : this.parentAdapterFactory.getRootAdapterFactory();
    }

    @Override
    public void setParentAdapterFactory(ComposedAdapterFactory parentAdapterFactory) {
        this.parentAdapterFactory = parentAdapterFactory;
    }

    @Override
    public void addListener(INotifyChangedListener notifyChangedListener) {
        this.changeNotifier.add(notifyChangedListener);
    }

    @Override
    public void removeListener(INotifyChangedListener notifyChangedListener) {
        this.changeNotifier.remove(notifyChangedListener);
    }

    @Override
    public void fireNotifyChanged(Notification notification) {
        this.changeNotifier.fireNotifyChanged(notification);
        if (this.parentAdapterFactory != null) {
            this.parentAdapterFactory.fireNotifyChanged(notification);
        }
    }

    @Override
    public void dispose() {
        for (AdapterFactory factory : this.adapterFactories) {
            if (!(factory instanceof IDisposable)) continue;
            ((IDisposable)factory).dispose();
        }
    }

    public static interface Descriptor {
        public AdapterFactory createAdapterFactory();

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static interface Registry {
            public static final Registry INSTANCE = EMFEditPlugin.getComposedAdapterFactoryDescriptorRegistry();

            public Descriptor getDescriptor(Collection<?> var1);

            /*
             * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
             */
            public static class Impl
            extends HashMap<Collection<?>, Object>
            implements Registry {
                private static final long serialVersionUID = 1L;
                protected Registry delegateRegistry;

                public Impl(Registry delegateRegistry) {
                    this.delegateRegistry = delegateRegistry;
                }

                @Override
                public Descriptor getDescriptor(Collection<?> types) {
                    Descriptor descriptor = (Descriptor)this.get(types);
                    return descriptor == null ? this.delegatedGetDescriptor(types) : descriptor;
                }

                protected Descriptor delegatedGetDescriptor(Collection<?> types) {
                    if (this.delegateRegistry != null) {
                        return this.delegateRegistry.getDescriptor(types);
                    }
                    return null;
                }
            }
        }
    }
}

