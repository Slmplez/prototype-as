/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature$Setting
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.ECrossReferenceAdapter
 *  org.eclipse.sphinx.platform.util.ReflectUtil
 */
package org.eclipse.sphinx.emf.ecore;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.ECrossReferenceAdapter;
import org.eclipse.sphinx.emf.resource.ExtendedResource;
import org.eclipse.sphinx.emf.resource.ExtendedResourceAdapterFactory;
import org.eclipse.sphinx.platform.util.ReflectUtil;

public class ECrossReferenceAdapterFactory
extends AdapterFactoryImpl {
    public static ECrossReferenceAdapterFactory INSTANCE = new ECrossReferenceAdapterFactory();

    protected ECrossReferenceAdapterFactory() {
    }

    public boolean isFactoryForType(Object type) {
        return type == ECrossReferenceAdapter.class;
    }

    public ECrossReferenceAdapter adapt(Notifier target) {
        if (target != null) {
            ECrossReferenceAdapter adapter = ECrossReferenceAdapter.getCrossReferenceAdapter((Notifier)target);
            if (adapter == null) {
                adapter = (ECrossReferenceAdapter)this.adaptNew(target, ECrossReferenceAdapter.class);
            }
            return adapter;
        }
        return null;
    }

    protected Adapter createAdapter(Notifier target) {
        if (target instanceof ResourceSet || target instanceof Resource || target instanceof EObject) {
            return new ECrossReferenceAdapter(){

                protected void unsetTarget(Resource target) {
                    EList contents = target.getContents();
                    int i = 0;
                    int size = contents.size();
                    while (i < size) {
                        Notifier notifier = (Notifier)contents.get(i);
                        this.removeAdapter(notifier);
                        ++i;
                    }
                    this.unloadedResources.remove(target);
                }

                public void selfAdapt(Notification notification) {
                    Object notifier = notification.getNotifier();
                    if (notifier instanceof Resource) {
                        switch (notification.getFeatureID(Resource.class)) {
                            case 4: {
                                if (notification.getNewBooleanValue()) break;
                                this.unloadedResources.add((Resource)notifier);
                                Iterator i = this.unloadedEObjects.entrySet().iterator();
                                while (i.hasNext()) {
                                    EObject eObject;
                                    Collection settings;
                                    Map.Entry entry = i.next();
                                    if (entry.getValue() != notifier) continue;
                                    i.remove();
                                    ExtendedResource extendedResource = ExtendedResourceAdapterFactory.INSTANCE.adapt((Notifier)((Resource)notifier));
                                    if (extendedResource != null && extendedResource.getDefaultLoadOptions().get("UNLOAD_MEMORY_OPTIMIZED") == Boolean.TRUE || (settings = (Collection)this.inverseCrossReferencer.get((Object)(eObject = (EObject)entry.getKey()))) == null) continue;
                                    for (EStructuralFeature.Setting setting : settings) {
                                        try {
                                            ReflectUtil.invokeInvisibleMethod((Object)this.inverseCrossReferencer, (String)"addProxy", (Object[])new Object[]{eObject, setting.getEObject()});
                                        }
                                        catch (Exception exception) {}
                                    }
                                }
                                return;
                            }
                        }
                    }
                    super.selfAdapt(notification);
                }
            };
        }
        return null;
    }
}

