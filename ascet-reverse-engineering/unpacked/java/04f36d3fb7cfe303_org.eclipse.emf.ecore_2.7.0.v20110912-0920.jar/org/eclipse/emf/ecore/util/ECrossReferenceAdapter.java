/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter$Internal
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEList$FastCompare
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EContentsEList;
import org.eclipse.emf.ecore.util.ECrossReferenceEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ECrossReferenceAdapter
implements Adapter.Internal {
    protected Set<Resource> unloadedResources = new HashSet<Resource>();
    protected Map<EObject, Resource> unloadedEObjects = new HashMap<EObject, Resource>();
    protected InverseCrossReferencer inverseCrossReferencer = this.createInverseCrossReferencer();

    public static ECrossReferenceAdapter getCrossReferenceAdapter(Notifier notifier) {
        EList adapters = notifier.eAdapters();
        int i = 0;
        int size = adapters.size();
        while (i < size) {
            Object adapter = adapters.get(i);
            if (adapter instanceof ECrossReferenceAdapter) {
                return (ECrossReferenceAdapter)adapter;
            }
            ++i;
        }
        return null;
    }

    public Collection<EStructuralFeature.Setting> getNonNavigableInverseReferences(EObject eObject) {
        return this.getNonNavigableInverseReferences(eObject, !this.resolve());
    }

    public Collection<EStructuralFeature.Setting> getNonNavigableInverseReferences(EObject eObject, boolean resolve) {
        List<EStructuralFeature.Setting> result;
        if (resolve) {
            this.resolveAll(eObject);
        }
        if ((result = (List<EStructuralFeature.Setting>)this.inverseCrossReferencer.get(eObject)) == null) {
            result = Collections.emptyList();
        }
        return result;
    }

    public Collection<EStructuralFeature.Setting> getInverseReferences(EObject eObject) {
        return this.getInverseReferences(eObject, !this.resolve());
    }

    public Collection<EStructuralFeature.Setting> getInverseReferences(EObject eObject, boolean resolve) {
        Collection nonNavigableInverseReferences;
        EObject eContainer;
        ArrayList<EStructuralFeature.Setting> result = new ArrayList<EStructuralFeature.Setting>();
        if (resolve) {
            this.resolveAll(eObject);
        }
        if ((eContainer = eObject.eContainer()) != null) {
            result.add(((InternalEObject)eContainer).eSetting(eObject.eContainmentFeature()));
        }
        if ((nonNavigableInverseReferences = (Collection)this.inverseCrossReferencer.get(eObject)) != null) {
            result.addAll(nonNavigableInverseReferences);
        }
        for (EReference eReference : eObject.eClass().getEAllReferences()) {
            EReference eOpposite = eReference.getEOpposite();
            if (eOpposite == null || eReference.isContainer() || !eObject.eIsSet(eReference)) continue;
            if (eReference.isMany()) {
                Object collection = eObject.eGet(eReference);
                Iterator j = this.resolve() ? ((Collection)collection).iterator() : ((InternalEList)collection).basicIterator();
                while (j.hasNext()) {
                    InternalEObject referencingEObject = (InternalEObject)j.next();
                    result.add(referencingEObject.eSetting(eOpposite));
                }
                continue;
            }
            result.add(((InternalEObject)eObject.eGet(eReference, this.resolve())).eSetting(eOpposite));
        }
        return result;
    }

    protected void resolveAll(EObject eObject) {
        Resource resource;
        if (!eObject.eIsProxy() && (resource = eObject.eResource()) != null) {
            URI uri = resource.getURI();
            if (uri != null) {
                ResourceSet resourceSet = resource.getResourceSet();
                if (resourceSet != null) {
                    uri = resourceSet.getURIConverter().normalize(uri);
                }
                uri = uri.appendFragment(resource.getURIFragment(eObject));
            } else {
                URI.createHierarchicalURI(null, null, (String)resource.getURIFragment(eObject));
            }
            List<EObject> proxies = this.inverseCrossReferencer.removeProxies(uri);
            if (proxies != null) {
                int i = 0;
                int size = proxies.size();
                while (i < size) {
                    EObject proxy = proxies.get(i);
                    for (EStructuralFeature.Setting setting : this.getInverseReferences(proxy, false)) {
                        this.resolveProxy(resource, eObject, proxy, setting);
                    }
                    ++i;
                }
            }
        }
    }

    protected void resolveProxy(Resource resource, EObject eObject, EObject proxy, EStructuralFeature.Setting setting) {
        InternalEList list;
        List basicList;
        int index;
        Object value = setting.get(true);
        if (setting.getEStructuralFeature().isMany() && (index = (basicList = (list = (InternalEList)value).basicList()).indexOf(proxy)) != -1) {
            list.get(index);
        }
    }

    protected boolean isIncluded(EReference eReference) {
        return eReference.getEOpposite() == null && !eReference.isDerived();
    }

    protected InverseCrossReferencer createInverseCrossReferencer() {
        return new InverseCrossReferencer();
    }

    public void notifyChanged(Notification notification) {
        this.selfAdapt(notification);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void selfAdapt(Notification notification) {
        Object notifier = notification.getNotifier();
        if (notifier instanceof EObject) {
            Object feature = notification.getFeature();
            if (!(feature instanceof EReference)) return;
            EReference reference = (EReference)feature;
            if (reference.isContainment()) {
                this.handleContainment(notification);
                return;
            } else {
                if (!this.isIncluded(reference)) return;
                this.handleCrossReference(reference, notification);
            }
            return;
        }
        if (notifier instanceof Resource) {
            switch (notification.getFeatureID(Resource.class)) {
                case 2: {
                    if (this.unloadedResources.contains(notifier)) return;
                    switch (notification.getEventType()) {
                        case 4: {
                            Resource resource = (Resource)notifier;
                            if (resource.isLoaded()) return;
                            EObject eObject = (EObject)notification.getOldValue();
                            this.unloadedEObjects.put(eObject, resource);
                            TreeIterator i = EcoreUtil.getAllProperContents(eObject, false);
                            while (i.hasNext()) {
                                this.unloadedEObjects.put((EObject)i.next(), resource);
                            }
                            return;
                        }
                        case 6: {
                            Resource resource = (Resource)notifier;
                            if (resource.isLoaded()) return;
                            List eObjects = (List)notification.getOldValue();
                            TreeIterator i = EcoreUtil.getAllProperContents(eObjects, false);
                            while (i.hasNext()) {
                                this.unloadedEObjects.put((EObject)i.next(), resource);
                            }
                            return;
                        }
                        default: {
                            this.handleContainment(notification);
                            return;
                        }
                    }
                }
                case 4: {
                    if (notification.getNewBooleanValue()) {
                        this.unloadedResources.remove(notifier);
                        for (Notifier child : ((Resource)notifier).getContents()) {
                            this.addAdapter(child);
                        }
                        return;
                    }
                    this.unloadedResources.add((Resource)notifier);
                    Iterator<Map.Entry<EObject, Resource>> i = this.unloadedEObjects.entrySet().iterator();
                    while (i.hasNext()) {
                        Map.Entry<EObject, Resource> entry = i.next();
                        if (entry.getValue() != notifier) continue;
                        i.remove();
                        EObject eObject = entry.getKey();
                        Collection settings = (Collection)this.inverseCrossReferencer.get(eObject);
                        if (settings == null) continue;
                        for (EStructuralFeature.Setting setting : settings) {
                            this.inverseCrossReferencer.addProxy(eObject, setting.getEObject());
                        }
                    }
                }
                default: {
                    return;
                }
            }
        }
        if (!(notifier instanceof ResourceSet) || notification.getFeatureID(ResourceSet.class) != 0) return;
        this.handleContainment(notification);
    }

    protected void handleContainment(Notification notification) {
        switch (notification.getEventType()) {
            case 9: {
                Notifier oldValue = (Notifier)notification.getOldValue();
                this.removeAdapter(oldValue);
                Notifier newValue = (Notifier)notification.getNewValue();
                this.addAdapter(newValue);
                break;
            }
            case 2: {
                Object newValue = notification.getNewValue();
                if (newValue == null || newValue == Boolean.TRUE || newValue == Boolean.FALSE) break;
                this.addAdapter((Notifier)newValue);
                break;
            }
            case 1: {
                Notifier newValue = (Notifier)notification.getNewValue();
                if (newValue == null) break;
                this.addAdapter(newValue);
                break;
            }
            case 3: {
                Notifier newValue = (Notifier)notification.getNewValue();
                if (newValue == null) break;
                this.addAdapter(newValue);
                break;
            }
            case 5: {
                for (Object newValue : (Collection)notification.getNewValue()) {
                    this.addAdapter((Notifier)newValue);
                }
                break;
            }
        }
    }

    protected void handleCrossReference(EReference reference, Notification notification) {
        switch (notification.getEventType()) {
            case 1: 
            case 2: 
            case 9: {
                EObject newValue;
                EObject notifier = (EObject)notification.getNotifier();
                EReference feature = (EReference)notification.getFeature();
                if (feature.isMany() && notification.getPosition() == -1) break;
                EObject oldValue = (EObject)notification.getOldValue();
                if (oldValue != null) {
                    this.inverseCrossReferencer.remove(notifier, feature, oldValue);
                }
                if ((newValue = (EObject)notification.getNewValue()) == null) break;
                this.inverseCrossReferencer.add(notifier, feature, newValue);
                break;
            }
            case 3: {
                EObject newValue = (EObject)notification.getNewValue();
                if (newValue == null) break;
                this.inverseCrossReferencer.add((EObject)notification.getNotifier(), (EReference)notification.getFeature(), newValue);
                break;
            }
            case 5: {
                EObject notifier = (EObject)notification.getNotifier();
                EReference feature = (EReference)notification.getFeature();
                for (Object newValue : (Collection)notification.getNewValue()) {
                    this.inverseCrossReferencer.add(notifier, feature, (EObject)newValue);
                }
                break;
            }
            case 4: {
                EObject oldValue = (EObject)notification.getOldValue();
                if (oldValue == null) break;
                this.inverseCrossReferencer.remove((EObject)notification.getNotifier(), (EReference)notification.getFeature(), oldValue);
                break;
            }
            case 6: {
                EObject notifier = (EObject)notification.getNotifier();
                EReference feature = (EReference)notification.getFeature();
                for (Object oldValue : (Collection)notification.getOldValue()) {
                    this.inverseCrossReferencer.remove(notifier, feature, (EObject)oldValue);
                }
                break;
            }
        }
    }

    public void setTarget(Notifier target) {
        if (target instanceof EObject) {
            this.setTarget((EObject)target);
        } else if (target instanceof Resource) {
            this.setTarget((Resource)target);
        } else if (target instanceof ResourceSet) {
            this.setTarget((ResourceSet)target);
        }
    }

    protected void setTarget(EObject target) {
        this.inverseCrossReferencer.add(target);
        Iterator i = this.resolve() ? target.eContents().iterator() : ((InternalEList)target.eContents()).basicIterator();
        while (i.hasNext()) {
            Notifier notifier = (Notifier)i.next();
            this.addAdapter(notifier);
        }
    }

    protected void setTarget(Resource target) {
        if (!target.isLoaded()) {
            this.unloadedResources.add(target);
        }
        EList<EObject> contents = target.getContents();
        int i = 0;
        int size = contents.size();
        while (i < size) {
            Notifier notifier = (Notifier)contents.get(i);
            this.addAdapter(notifier);
            ++i;
        }
    }

    protected void setTarget(ResourceSet target) {
        EList<Resource> resources = target.getResources();
        int i = 0;
        while (i < resources.size()) {
            Notifier notifier = (Notifier)resources.get(i);
            this.addAdapter(notifier);
            ++i;
        }
    }

    public void unsetTarget(Notifier target) {
        if (target instanceof EObject) {
            this.unsetTarget((EObject)target);
        } else if (target instanceof Resource) {
            this.unsetTarget((Resource)target);
        } else if (target instanceof ResourceSet) {
            this.unsetTarget((ResourceSet)target);
        }
    }

    protected void unsetTarget(EObject target) {
        Iterator<EObject> i = this.inverseCrossReferencer.getCrossReferences(target);
        while (i.hasNext()) {
            EObject crossReferencedEObject = (EObject)i.next();
            this.inverseCrossReferencer.remove(target, (EReference)i.feature(), crossReferencedEObject);
        }
        i = this.resolve() ? target.eContents().iterator() : ((InternalEList)target.eContents()).basicIterator();
        while (i.hasNext()) {
            InternalEObject internalEObject = (InternalEObject)i.next();
            Resource.Internal eDirectResource = internalEObject.eDirectResource();
            if (eDirectResource != null && eDirectResource.eAdapters().contains((Object)this)) continue;
            this.removeAdapter(internalEObject);
        }
    }

    protected void unsetTarget(Resource target) {
        EList<EObject> contents = target.getContents();
        int i = 0;
        int size = contents.size();
        while (i < size) {
            Notifier notifier = (Notifier)contents.get(i);
            this.removeAdapter(notifier);
            ++i;
        }
    }

    protected void unsetTarget(ResourceSet target) {
        EList<Resource> resources = target.getResources();
        int i = 0;
        while (i < resources.size()) {
            Notifier notifier = (Notifier)resources.get(i);
            this.removeAdapter(notifier);
            ++i;
        }
    }

    protected void addAdapter(Notifier notifier) {
        EList eAdapters = notifier.eAdapters();
        if (!eAdapters.contains(this)) {
            eAdapters.add(this);
        }
    }

    protected void removeAdapter(Notifier notifier) {
        notifier.eAdapters().remove((Object)this);
    }

    public void dump() {
        EcoreUtil.CrossReferencer.print(System.out, this.inverseCrossReferencer);
    }

    public Notifier getTarget() {
        return null;
    }

    public boolean isAdapterForType(Object type) {
        return false;
    }

    protected boolean resolve() {
        return true;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class InverseCrossReferencer
    extends EcoreUtil.CrossReferencer {
        private static final long serialVersionUID = 1L;
        protected Map<URI, List<EObject>> proxyMap;

        protected InverseCrossReferencer() {
            super((Collection<?>)null);
        }

        @Override
        protected EContentsEList.FeatureIterator<EObject> getCrossReferences(EObject eObject) {
            return new ECrossReferenceEList.FeatureIteratorImpl<EObject>(eObject){

                @Override
                protected boolean isIncluded(EStructuralFeature eStructuralFeature) {
                    return FeatureMapUtil.isFeatureMap(eStructuralFeature) || ECrossReferenceAdapter.this.isIncluded((EReference)eStructuralFeature);
                }

                @Override
                protected boolean resolve() {
                    return InverseCrossReferencer.this.resolve();
                }
            };
        }

        @Override
        protected boolean crossReference(EObject eObject, EReference eReference, EObject crossReferencedEObject) {
            return ECrossReferenceAdapter.this.isIncluded(eReference);
        }

        @Override
        protected Collection<EStructuralFeature.Setting> newCollection() {
            return new BasicEList<EStructuralFeature.Setting>(){
                private static final long serialVersionUID = 1L;

                protected Object[] newData(int capacity) {
                    return new EStructuralFeature.Setting[capacity];
                }

                public boolean add(EStructuralFeature.Setting setting) {
                    EObject eObject = setting.getEObject();
                    EStructuralFeature eStructuralFeature = setting.getEStructuralFeature();
                    EStructuralFeature.Setting[] settingData = (EStructuralFeature.Setting[])this.data;
                    int i = 0;
                    while (i < this.size) {
                        EStructuralFeature.Setting containedSetting = settingData[i];
                        if (containedSetting.getEObject() == eObject && containedSetting.getEStructuralFeature() == eStructuralFeature) {
                            return false;
                        }
                        ++i;
                    }
                    this.addUnique(setting);
                    return true;
                }
            };
        }

        public void add(EObject eObject) {
            this.handleCrossReference(eObject);
            if (!this.resolve()) {
                this.addProxy(eObject, eObject);
            }
        }

        @Override
        protected void add(InternalEObject eObject, EReference eReference, EObject crossReferencedEObject) {
            super.add(eObject, eReference, crossReferencedEObject);
            if (!this.resolve()) {
                this.addProxy(crossReferencedEObject, eObject);
            }
        }

        public void add(EObject eObject, EReference eReference, EObject crossReferencedEObject) {
            this.add((InternalEObject)eObject, eReference, crossReferencedEObject);
        }

        protected void addProxy(EObject proxy, EObject context) {
            if (proxy.eIsProxy()) {
                URI uri;
                BasicEList.FastCompare proxies;
                if (this.proxyMap == null) {
                    this.proxyMap = new HashMap<URI, List<EObject>>();
                }
                if ((proxies = this.proxyMap.get(uri = this.normalizeURI(((InternalEObject)proxy).eProxyURI(), context))) == null) {
                    proxies = new BasicEList.FastCompare();
                    this.proxyMap.put(uri, (List<EObject>)proxies);
                }
                proxies.add((EObject)proxy);
            }
        }

        public Object remove(EObject eObject) {
            if (!this.resolve()) {
                this.removeProxy(eObject, eObject);
            }
            return super.remove(eObject);
        }

        public void remove(EObject eObject, EReference eReference, EObject crossReferencedEObject) {
            BasicEList collection;
            if (!this.resolve()) {
                this.removeProxy(crossReferencedEObject, eObject);
            }
            if ((collection = (BasicEList)this.get(crossReferencedEObject)) != null) {
                EStructuralFeature.Setting[] settingData = (EStructuralFeature.Setting[])collection.data();
                int i = 0;
                int size = collection.size();
                while (i < size) {
                    EStructuralFeature.Setting setting = settingData[i];
                    if (setting.getEObject() == eObject && setting.getEStructuralFeature() == eReference) {
                        if (collection.size() == 1) {
                            super.remove(crossReferencedEObject);
                            break;
                        }
                        collection.remove(i);
                        break;
                    }
                    ++i;
                }
            }
        }

        protected void removeProxy(EObject proxy, EObject context) {
            URI uri;
            List<EObject> proxies;
            if (this.proxyMap != null && proxy.eIsProxy() && (proxies = this.proxyMap.get(uri = this.normalizeURI(((InternalEObject)proxy).eProxyURI(), context))) != null) {
                proxies.remove(proxy);
                if (proxies.isEmpty()) {
                    this.proxyMap.remove(uri);
                }
            }
        }

        protected List<EObject> removeProxies(URI uri) {
            return this.proxyMap != null ? this.proxyMap.remove(uri) : null;
        }

        protected URI normalizeURI(URI uri, EObject objectContext) {
            ResourceSet resourceSetContext;
            Resource resourceContext;
            int index;
            int length;
            String fragment = uri.fragment();
            if (fragment != null && (length = fragment.length()) > 0 && fragment.charAt(0) != '/' && fragment.charAt(length - 1) == '?' && (index = fragment.lastIndexOf(63, length - 2)) > 0) {
                uri = uri.trimFragment().appendFragment(fragment.substring(0, index));
            }
            if ((resourceContext = objectContext.eResource()) != null && (resourceSetContext = resourceContext.getResourceSet()) != null) {
                return resourceSetContext.getURIConverter().normalize(uri);
            }
            return uri;
        }

        @Override
        protected boolean resolve() {
            return ECrossReferenceAdapter.this.resolve();
        }
    }
}

