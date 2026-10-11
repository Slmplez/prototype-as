/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.AbstractTreeIterator
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.ECollections
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.util;

import java.io.PrintStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Random;
import java.util.RandomAccess;
import java.util.StringTokenizer;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.AbstractTreeIterator;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.ECollections;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EContentsEList;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcoreUtil {
    protected static final String GEN_MODEL_PACKAGE_NS_URI = "http://www.eclipse.org/emf/2002/GenModel";
    public static final int GET = 0;
    public static final int SET = 1;
    public static final int IS_SET = 2;
    public static final int UNSET = 3;
    static final String[] ACCESSOR_KEYS = new String[]{"suppressedGetVisibility", "suppressedSetVisibility", "suppressedIsSetVisibility", "suppressedUnsetVisibility"};
    static final String TRUE = "true";
    static final String OPERATION_VISIBILITY_KEY = "suppressedVisibility";

    public static Adapter getExistingAdapter(Notifier notifier, Object type) {
        return EcoreUtil.getAdapter((List<Adapter>)notifier.eAdapters(), type);
    }

    public static Adapter getRegisteredAdapter(EObject eObject, Object type) {
        AdapterFactory factory;
        ResourceSet resourceSet;
        Resource resource;
        Adapter result = EcoreUtil.getExistingAdapter(eObject, type);
        if (result == null && (resource = eObject.eResource()) != null && (resourceSet = resource.getResourceSet()) != null && (factory = EcoreUtil.getAdapterFactory(resourceSet.getAdapterFactories(), type)) != null) {
            result = factory.adaptNew((Notifier)eObject, type);
        }
        return result;
    }

    public static Adapter getRegisteredAdapter(Resource resource, Object type) {
        AdapterFactory factory;
        ResourceSet resourceSet;
        Adapter result = EcoreUtil.getExistingAdapter(resource, type);
        if (result == null && (resourceSet = resource.getResourceSet()) != null && (factory = EcoreUtil.getAdapterFactory(resourceSet.getAdapterFactories(), type)) != null) {
            result = factory.adaptNew((Notifier)resource, type);
        }
        return result;
    }

    public static Adapter getAdapter(List<Adapter> adapters, Object type) {
        int i = 0;
        int size = adapters.size();
        while (i < size) {
            Adapter adapter = adapters.get(i);
            if (adapter.isAdapterForType(type)) {
                return adapter;
            }
            ++i;
        }
        return null;
    }

    public static AdapterFactory getAdapterFactory(List<AdapterFactory> adapterFactories, Object type) {
        int i = 0;
        int size = adapterFactories.size();
        while (i < size) {
            AdapterFactory factory = adapterFactories.get(i);
            if (factory.isFactoryForType(type)) {
                return factory;
            }
            ++i;
        }
        return null;
    }

    public static EObject resolve(EObject proxy, ResourceSet resourceSet) {
        URI proxyURI = ((InternalEObject)proxy).eProxyURI();
        if (proxyURI != null) {
            try {
                EObject resolvedObject = null;
                if (resourceSet != null) {
                    try {
                        resolvedObject = resourceSet.getEObject(proxyURI, true);
                    }
                    catch (RuntimeException exception) {
                        resolvedObject = resourceSet.getEObject(proxyURI, false);
                    }
                } else {
                    Resource resource;
                    EPackage ePackage = EPackage.Registry.INSTANCE.getEPackage(proxyURI.trimFragment().toString());
                    if (ePackage != null && (resource = ePackage.eResource()) != null) {
                        resolvedObject = resource.getEObject(proxyURI.fragment().toString());
                    }
                }
                if (resolvedObject != null && resolvedObject != proxy) {
                    return EcoreUtil.resolve(resolvedObject, resourceSet);
                }
            }
            catch (RuntimeException runtimeException) {
                // empty catch block
            }
        }
        return proxy;
    }

    public static EObject resolve(EObject proxy, Resource resourceContext) {
        return EcoreUtil.resolve(proxy, resourceContext != null ? resourceContext.getResourceSet() : null);
    }

    public static EObject resolve(EObject proxy, EObject objectContext) {
        Resource resourceContext = objectContext != null ? objectContext.eResource() : null;
        return EcoreUtil.resolve(proxy, resourceContext != null ? resourceContext.getResourceSet() : null);
    }

    public static void resolveAll(ResourceSet resourceSet) {
        EList<Resource> resources = resourceSet.getResources();
        int i = 0;
        while (i < resources.size()) {
            EcoreUtil.resolveAll((Resource)resources.get(i));
            ++i;
        }
    }

    public static void resolveAll(Resource resource) {
        for (EObject eObject : resource.getContents()) {
            EcoreUtil.resolveAll(eObject);
        }
    }

    public static void resolveAll(EObject eObject) {
        eObject.eContainer();
        EcoreUtil.resolveCrossReferences(eObject);
        TreeIterator<EObject> i = eObject.eAllContents();
        while (i.hasNext()) {
            EObject childEObject = (EObject)i.next();
            EcoreUtil.resolveCrossReferences(childEObject);
        }
    }

    private static void resolveCrossReferences(EObject eObject) {
        Iterator i = eObject.eCrossReferences().iterator();
        while (i.hasNext()) {
            i.next();
        }
    }

    public static Object getObjectByType(Collection<?> objects, EClassifier type) {
        for (Object object : objects) {
            if (!type.isInstance(object)) continue;
            return object;
        }
        return null;
    }

    public static <T> Collection<T> getObjectsByType(Collection<?> objects, EClassifier type) {
        ArrayList result = new ArrayList();
        for (Object object : objects) {
            if (!type.isInstance(object)) continue;
            Object t = object;
            result.add(t);
        }
        return result;
    }

    public static <T extends EObject> T copy(T eObject) {
        Copier copier = new Copier();
        EObject result = copier.copy(eObject);
        copier.copyReferences();
        EObject t = result;
        return (T)t;
    }

    public static <T> Collection<T> copyAll(Collection<? extends T> eObjects) {
        Copier copier = new Copier();
        Collection<? extends T> result = copier.copyAll(eObjects);
        copier.copyReferences();
        return result;
    }

    public static EObject getRootContainer(EObject eObject) {
        EObject result = eObject;
        if (eObject != null) {
            int count = 0;
            EObject parent = eObject.eContainer();
            while (parent != null) {
                if (++count > 100000) {
                    return EcoreUtil.getRootContainer(parent);
                }
                result = parent;
                if (parent == eObject) {
                    throw new IllegalStateException("There is a cycle in the containment hierarchy of " + eObject);
                }
                parent = parent.eContainer();
            }
        }
        return result;
    }

    public static EObject getRootContainer(EObject eObject, boolean resolve) {
        if (resolve) {
            return EcoreUtil.getRootContainer(eObject);
        }
        EObject result = eObject;
        if (eObject != null) {
            int count = 0;
            InternalEObject parent = ((InternalEObject)eObject).eInternalContainer();
            while (parent != null) {
                if (++count > 100000) {
                    return EcoreUtil.getRootContainer(parent, false);
                }
                result = parent;
                if (parent == eObject) {
                    throw new IllegalStateException("There is a cycle in the containment hierarchy of " + eObject);
                }
                parent = parent.eInternalContainer();
            }
        }
        return result;
    }

    public static boolean isAncestor(EObject ancestorEObject, EObject eObject) {
        if (eObject != null) {
            if (eObject == ancestorEObject) {
                return true;
            }
            int count = 0;
            InternalEObject eContainer = ((InternalEObject)eObject).eInternalContainer();
            while (eContainer != null && eContainer != eObject) {
                if (++count > 100000) {
                    return EcoreUtil.isAncestor(ancestorEObject, (EObject)eContainer);
                }
                if (eContainer == ancestorEObject) {
                    return true;
                }
                eContainer = eContainer.eInternalContainer();
            }
        }
        return false;
    }

    public static boolean isAncestor(Resource ancestorResource, EObject eObject) {
        InternalEObject parent = (InternalEObject)eObject;
        while (parent != null) {
            if (parent.eDirectResource() == ancestorResource) {
                return true;
            }
            parent = parent.eInternalContainer();
        }
        return false;
    }

    public static boolean isAncestor(ResourceSet ancestorResourceSet, EObject eObject) {
        InternalEObject parent = (InternalEObject)eObject;
        while (parent != null) {
            Resource.Internal resource = parent.eDirectResource();
            if (resource != null && resource.getResourceSet() == ancestorResourceSet) {
                return true;
            }
            parent = parent.eInternalContainer();
        }
        return false;
    }

    public static boolean isAncestor(Collection<?> ancestorEMFObjects, EObject eObject) {
        InternalEObject parent = (InternalEObject)eObject;
        while (parent != null) {
            if (ancestorEMFObjects.contains(parent)) {
                return true;
            }
            Resource.Internal resource = parent.eDirectResource();
            if (resource != null && (ancestorEMFObjects.contains(resource) || ancestorEMFObjects.contains(resource.getResourceSet()))) {
                return true;
            }
            parent = parent.eInternalContainer();
        }
        return false;
    }

    public static List<EObject> filterDescendants(Collection<? extends EObject> eObjects) {
        ArrayList<EObject> result = new ArrayList<EObject>(eObjects.size());
        block0: for (EObject eObject : eObjects) {
            int i = 0;
            int size = result.size();
            while (i < size) {
                EObject rootEObject = (EObject)result.get(i);
                if (rootEObject == eObject || EcoreUtil.isAncestor(rootEObject, eObject)) continue block0;
                if (EcoreUtil.isAncestor(eObject, rootEObject)) {
                    result.remove(i);
                    --size;
                    continue;
                }
                ++i;
            }
            result.add(eObject);
        }
        return result;
    }

    public static <T> TreeIterator<T> getAllContents(Collection<?> emfObjects) {
        return new ContentTreeIterator(emfObjects);
    }

    public static <T> TreeIterator<T> getAllContents(Collection<?> emfObjects, boolean resolve) {
        return new ContentTreeIterator(emfObjects, resolve);
    }

    public static <T> TreeIterator<T> getAllContents(EObject eObject, boolean resolve) {
        return new ContentTreeIterator<T>(eObject, resolve){
            private static final long serialVersionUID = 1L;

            @Override
            public Iterator<T> getChildren(Object object) {
                return this.getEObjectChildren((EObject)object);
            }
        };
    }

    public static <T> TreeIterator<T> getAllContents(Resource resource, boolean resolve) {
        return new ContentTreeIterator<T>(resource.getContents(), resolve){
            private static final long serialVersionUID = 1L;

            @Override
            public Iterator<T> getChildren(Object object) {
                return object == this.object ? ((List)this.object).iterator() : this.getEObjectChildren((EObject)object);
            }
        };
    }

    public static <T> TreeIterator<T> getAllContents(ResourceSet resourceSet, boolean resolve) {
        return new ContentTreeIterator(resourceSet, resolve);
    }

    public static <T> TreeIterator<T> getAllProperContents(Collection<?> emfObjects, boolean resolve) {
        return new ContentTreeIterator<T>(emfObjects, resolve){
            private static final long serialVersionUID = 1L;

            @Override
            public Iterator<EObject> getEObjectChildren(EObject eObject) {
                return new ProperContentIterator<EObject>(eObject, this.isResolveProxies());
            }
        };
    }

    public static <T> TreeIterator<T> getAllProperContents(EObject eObject, boolean resolve) {
        return new ContentTreeIterator<T>(eObject, resolve){
            private static final long serialVersionUID = 1L;

            @Override
            public Iterator<T> getChildren(Object object) {
                return new ProperContentIterator((EObject)object, this.isResolveProxies());
            }
        };
    }

    public static <T> TreeIterator<T> getAllProperContents(Resource resource, boolean resolve) {
        return new ContentTreeIterator<T>(resource.getContents(), resolve){
            private static final long serialVersionUID = 1L;

            @Override
            public Iterator<T> getChildren(Object object) {
                if (object == this.object) {
                    Iterator result = ((Collection)object).iterator();
                    return result;
                }
                return new ProperContentIterator((EObject)object, this.isResolveProxies());
            }
        };
    }

    public static <T> TreeIterator<T> getAllProperContents(ResourceSet resourceSet, boolean resolve) {
        return new ContentTreeIterator<T>(resourceSet, resolve){
            private static final long serialVersionUID = 1L;

            @Override
            public Iterator<EObject> getEObjectChildren(EObject eObject) {
                return new ProperContentIterator<EObject>(eObject, this.isResolveProxies());
            }
        };
    }

    public static boolean equals(EObject eObject1, EObject eObject2) {
        EqualityHelper equalityHelper = new EqualityHelper();
        return equalityHelper.equals(eObject1, eObject2);
    }

    public static String getIdentification(EObject eObject) {
        StringBuffer result = new StringBuffer(eObject.getClass().getName());
        EClass eClass = eObject.eClass();
        if (eClass.getInstanceClassName() == null) {
            result.append('/');
            result.append(eClass.getEPackage().getNsURI());
            result.append('#');
            result.append(eClass.getName());
        }
        result.append('@');
        result.append(Integer.toHexString(eObject.hashCode()));
        result.append('{');
        result.append(EcoreUtil.getURI(eObject));
        result.append('}');
        return result.toString();
    }

    public static URI getURI(EObject eObject) {
        URI proxyURI = ((InternalEObject)eObject).eProxyURI();
        if (proxyURI != null) {
            return proxyURI;
        }
        Resource resource = eObject.eResource();
        if (resource != null) {
            return resource.getURI().appendFragment(resource.getURIFragment(eObject));
        }
        String id = EcoreUtil.getID(eObject);
        if (id != null) {
            return URI.createURI((String)("#" + id));
        }
        InternalEObject internalEObject = (InternalEObject)eObject;
        ArrayList<String> uriFragmentPath = new ArrayList<String>();
        HashSet<InternalEObject> visited = new HashSet<InternalEObject>();
        InternalEObject container = internalEObject.eInternalContainer();
        while (container != null && visited.add(container)) {
            uriFragmentPath.add(container.eURIFragmentSegment(internalEObject.eContainingFeature(), internalEObject));
            internalEObject = container;
            container = internalEObject.eInternalContainer();
        }
        StringBuffer result = new StringBuffer("#//");
        int i = uriFragmentPath.size() - 1;
        while (i >= 0) {
            result.append('/');
            result.append((String)uriFragmentPath.get(i));
            --i;
        }
        return URI.createURI((String)result.toString());
    }

    @Deprecated
    public static int indexOf(List<?> list, Object o, int fromIndex) {
        return ECollections.indexOf(list, (Object)o, (int)fromIndex);
    }

    @Deprecated
    public static <T> void setEList(EList<T> eList, Collection<? extends T> prototypeCollection) {
        ECollections.setEList(eList, new ArrayList<T>(prototypeCollection));
    }

    @Deprecated
    public static <T> void setEList(EList<T> eList, List<? extends T> prototypeList) {
        ECollections.setEList(eList, prototypeList);
    }

    public static void remove(EStructuralFeature.Setting setting, Object value) {
        if (FeatureMapUtil.isMany(setting.getEObject(), setting.getEStructuralFeature())) {
            ((List)setting.get(false)).remove(value);
        } else {
            setting.unset();
        }
    }

    public static void replace(EStructuralFeature.Setting setting, Object oldValue, Object newValue) {
        if (FeatureMapUtil.isMany(setting.getEObject(), setting.getEStructuralFeature())) {
            List list = (List)setting.get(false);
            list.set(list.indexOf(oldValue), newValue);
        } else {
            setting.set(newValue);
        }
    }

    public static void remove(EObject eObject, EStructuralFeature eStructuralFeature, Object value) {
        if (FeatureMapUtil.isMany(eObject, eStructuralFeature)) {
            ((List)eObject.eGet(eStructuralFeature)).remove(value);
        } else {
            eObject.eUnset(eStructuralFeature);
        }
    }

    public static void replace(EObject eObject, EStructuralFeature eStructuralFeature, Object oldValue, Object newValue) {
        if (FeatureMapUtil.isMany(eObject, eStructuralFeature)) {
            List list = (List)eObject.eGet(eStructuralFeature);
            list.set(list.indexOf(oldValue), newValue);
        } else {
            eObject.eSet(eStructuralFeature, newValue);
        }
    }

    public static void remove(EObject eObject) {
        Resource.Internal resource;
        InternalEObject internalEObject = (InternalEObject)eObject;
        InternalEObject container = internalEObject.eInternalContainer();
        if (container != null) {
            EReference feature = eObject.eContainmentFeature();
            if (FeatureMapUtil.isMany(container, feature)) {
                ((EList)container.eGet(feature)).remove((Object)eObject);
            } else {
                container.eUnset(feature);
            }
        }
        if ((resource = internalEObject.eDirectResource()) != null) {
            resource.getContents().remove((Object)eObject);
        }
    }

    public static void replace(EObject eObject, EObject replacementEObject) {
        Resource.Internal resource;
        Object list;
        EObject container = eObject.eContainer();
        if (container != null) {
            EReference feature = eObject.eContainmentFeature();
            if (FeatureMapUtil.isMany(container, feature)) {
                list = (List)container.eGet(feature);
                list.set(list.indexOf(eObject), replacementEObject);
            } else {
                container.eSet(feature, replacementEObject);
            }
        }
        if ((resource = ((InternalEObject)eObject).eDirectResource()) != null) {
            list = resource.getContents();
            list.set(list.indexOf(eObject), (EObject)replacementEObject);
        }
    }

    public static void delete(EObject eObject) {
        ResourceSet resourceSet;
        EObject rootEObject = EcoreUtil.getRootContainer(eObject);
        Resource resource = rootEObject.eResource();
        Collection<EStructuralFeature.Setting> usages = resource == null ? UsageCrossReferencer.find(eObject, rootEObject) : ((resourceSet = resource.getResourceSet()) == null ? UsageCrossReferencer.find(eObject, resource) : UsageCrossReferencer.find(eObject, resourceSet));
        for (EStructuralFeature.Setting setting : usages) {
            if (!setting.getEStructuralFeature().isChangeable()) continue;
            EcoreUtil.remove(setting, eObject);
        }
        EcoreUtil.remove(eObject);
    }

    public static void delete(EObject eObject, boolean recursive) {
        if (recursive) {
            ResourceSet resourceSet;
            EObject rootEObject = EcoreUtil.getRootContainer(eObject);
            Resource resource = rootEObject.eResource();
            HashSet<EObject> eObjects = new HashSet<EObject>();
            HashSet<InternalEObject> crossResourceEObjects = new HashSet<InternalEObject>();
            eObjects.add(eObject);
            TreeIterator<EObject> j = eObject.eAllContents();
            while (j.hasNext()) {
                InternalEObject internalEObject = (InternalEObject)j.next();
                if (internalEObject.eDirectResource() != null) {
                    crossResourceEObjects.add(internalEObject);
                    continue;
                }
                eObjects.add(internalEObject);
            }
            Map<EObject, Collection<EStructuralFeature.Setting>> usages = resource == null ? UsageCrossReferencer.findAll(eObjects, rootEObject) : ((resourceSet = resource.getResourceSet()) == null ? UsageCrossReferencer.findAll(eObjects, resource) : UsageCrossReferencer.findAll(eObjects, resourceSet));
            for (Map.Entry<EObject, Collection<EStructuralFeature.Setting>> entry : usages.entrySet()) {
                EObject deletedEObject = entry.getKey();
                Collection<EStructuralFeature.Setting> settings = entry.getValue();
                for (EStructuralFeature.Setting setting : settings) {
                    if (eObjects.contains(setting.getEObject()) || !setting.getEStructuralFeature().isChangeable()) continue;
                    EcoreUtil.remove(setting, deletedEObject);
                }
            }
            EcoreUtil.remove(eObject);
            for (EObject eObject2 : crossResourceEObjects) {
                EcoreUtil.remove(eObject2.eContainer(), eObject2.eContainmentFeature(), eObject2);
            }
        } else {
            EcoreUtil.delete(eObject);
        }
    }

    public static EObject create(EClass eClass) {
        return eClass.getEPackage().getEFactoryInstance().create(eClass);
    }

    public static Object createFromString(EDataType eDataType, String literal) {
        return eDataType.getEPackage().getEFactoryInstance().createFromString(eDataType, literal);
    }

    public static String convertToString(EDataType eDataType, Object value) {
        return eDataType.getEPackage().getEFactoryInstance().convertToString(eDataType, value);
    }

    public static String getID(EObject eObject) {
        EClass eClass = eObject.eClass();
        EAttribute eIDAttribute = eClass.getEIDAttribute();
        return eIDAttribute == null || !eObject.eIsSet(eIDAttribute) ? null : EcoreUtil.convertToString(eIDAttribute.getEAttributeType(), eObject.eGet(eIDAttribute));
    }

    public static void setID(EObject eObject, String id) {
        EClass eClass = eObject.eClass();
        EAttribute eIDAttribute = eClass.getEIDAttribute();
        if (eIDAttribute == null) {
            throw new IllegalArgumentException("The object doesn't have an ID feature.");
        }
        if (id == null) {
            eObject.eUnset(eIDAttribute);
        } else {
            eObject.eSet(eIDAttribute, EcoreUtil.createFromString(eIDAttribute.getEAttributeType(), id));
        }
    }

    public static Class<?> wrapperClassFor(Class<?> javaClass) {
        if (javaClass == null) {
            return null;
        }
        if (javaClass.isPrimitive()) {
            if (javaClass == Boolean.TYPE) {
                return Boolean.class;
            }
            if (javaClass == Integer.TYPE) {
                return Integer.class;
            }
            if (javaClass == Float.TYPE) {
                return Float.class;
            }
            if (javaClass == Double.TYPE) {
                return Double.class;
            }
            if (javaClass == Long.TYPE) {
                return Long.class;
            }
            if (javaClass == Short.TYPE) {
                return Short.class;
            }
            if (javaClass == Byte.TYPE) {
                return Byte.class;
            }
            return Character.class;
        }
        return javaClass;
    }

    public static String getDocumentation(EModelElement eModelElement) {
        EAnnotation eAnnotation = eModelElement.getEAnnotation(GEN_MODEL_PACKAGE_NS_URI);
        return eAnnotation == null ? null : (String)eAnnotation.getDetails().get((Object)"documentation");
    }

    public static void setDocumentation(EModelElement eModelElement, String documentation) {
        EAnnotation eAnnotation = eModelElement.getEAnnotation(GEN_MODEL_PACKAGE_NS_URI);
        if (documentation == null) {
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"documentation");
            }
        } else {
            if (eAnnotation == null) {
                eAnnotation = EcoreFactory.eINSTANCE.createEAnnotation();
                eAnnotation.setSource(GEN_MODEL_PACKAGE_NS_URI);
                eModelElement.getEAnnotations().add((Object)eAnnotation);
            }
            eAnnotation.getDetails().put((Object)"documentation", (Object)documentation);
        }
    }

    public static List<String> getConstraints(EModelElement eModelElement) {
        String constraints;
        EAnnotation eAnnotation = eModelElement.getEAnnotation("http://www.eclipse.org/emf/2002/Ecore");
        if (eAnnotation != null && (constraints = (String)eAnnotation.getDetails().get((Object)"constraints")) != null) {
            ArrayList<String> result = new ArrayList<String>();
            StringTokenizer stringTokenizer = new StringTokenizer(constraints);
            while (stringTokenizer.hasMoreTokens()) {
                String constraint = stringTokenizer.nextToken();
                result.add(constraint);
            }
            return result;
        }
        return Collections.emptyList();
    }

    public static void setConstraints(EModelElement eModelElement, List<String> constraints) {
        EAnnotation eAnnotation = eModelElement.getEAnnotation("http://www.eclipse.org/emf/2002/Ecore");
        if (constraints == null || constraints.isEmpty()) {
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"constraints");
            }
        } else {
            if (eAnnotation == null) {
                eAnnotation = EcoreFactory.eINSTANCE.createEAnnotation();
                eAnnotation.setSource("http://www.eclipse.org/emf/2002/Ecore");
                eModelElement.getEAnnotations().add((Object)eAnnotation);
            }
            StringBuffer value = new StringBuffer();
            Iterator<String> i = constraints.iterator();
            while (i.hasNext()) {
                value.append(i.next());
                if (!i.hasNext()) continue;
                value.append(' ');
            }
            eAnnotation.getDetails().put((Object)"constraints", (Object)value.toString());
        }
    }

    public static String getAnnotation(EModelElement eModelElement, String sourceURI, String key) {
        EAnnotation eAnnotation = eModelElement.getEAnnotation(sourceURI);
        return eAnnotation == null ? null : (String)eAnnotation.getDetails().get((Object)key);
    }

    public static void setAnnotation(EModelElement eModelElement, String sourceURI, String key, String value) {
        EAnnotation eAnnotation = eModelElement.getEAnnotation(sourceURI);
        if (eAnnotation == null) {
            eAnnotation = EcoreFactory.eINSTANCE.createEAnnotation();
            eAnnotation.setSource(sourceURI);
            eModelElement.getEAnnotations().add((Object)eAnnotation);
        }
        eAnnotation.getDetails().put((Object)key, (Object)value);
    }

    public static boolean isSuppressedVisibility(EStructuralFeature eStructuralFeature, int accessor) {
        if (accessor < 0 || accessor > 3) {
            throw new IllegalArgumentException("Invalid accessor identifier: " + accessor);
        }
        EAnnotation eAnnotation = eStructuralFeature.getEAnnotation(GEN_MODEL_PACKAGE_NS_URI);
        return eAnnotation == null ? false : TRUE.equalsIgnoreCase((String)eAnnotation.getDetails().get((Object)ACCESSOR_KEYS[accessor]));
    }

    public static void setSuppressedVisibility(EStructuralFeature eStructuralFeature, int accessor, boolean suppress) {
        if (accessor < 0 || accessor > 3) {
            throw new IllegalArgumentException("Invalid accessor identifier: " + accessor);
        }
        EAnnotation eAnnotation = eStructuralFeature.getEAnnotation(GEN_MODEL_PACKAGE_NS_URI);
        if (!suppress) {
            if (eAnnotation != null) {
                eAnnotation.getDetails().removeKey((Object)ACCESSOR_KEYS[accessor]);
            }
        } else {
            if (eAnnotation == null) {
                eAnnotation = EcoreFactory.eINSTANCE.createEAnnotation();
                eAnnotation.setSource(GEN_MODEL_PACKAGE_NS_URI);
                eStructuralFeature.getEAnnotations().add((Object)eAnnotation);
            }
            eAnnotation.getDetails().put((Object)ACCESSOR_KEYS[accessor], (Object)TRUE);
        }
    }

    public static boolean isSuppressedVisibility(EOperation eOperation) {
        EAnnotation eAnnotation = eOperation.getEAnnotation(GEN_MODEL_PACKAGE_NS_URI);
        return eAnnotation == null ? false : TRUE.equalsIgnoreCase((String)eAnnotation.getDetails().get((Object)OPERATION_VISIBILITY_KEY));
    }

    public static void setSuppressedVisibility(EOperation eOperation, boolean suppress) {
        EAnnotation eAnnotation = eOperation.getEAnnotation(GEN_MODEL_PACKAGE_NS_URI);
        if (!suppress) {
            if (eAnnotation != null) {
                eAnnotation.getDetails().removeKey((Object)OPERATION_VISIBILITY_KEY);
            }
        } else {
            if (eAnnotation == null) {
                eAnnotation = EcoreFactory.eINSTANCE.createEAnnotation();
                eAnnotation.setSource(GEN_MODEL_PACKAGE_NS_URI);
                eOperation.getEAnnotations().add((Object)eAnnotation);
            }
            eAnnotation.getDetails().put((Object)OPERATION_VISIBILITY_KEY, (Object)TRUE);
        }
    }

    public static String generateUUID() {
        return UUID.generate();
    }

    public static void generateUUID(byte[] uuid) {
        UUID.generate(uuid);
    }

    public static void freeze(EPackage ePackage) {
        try {
            ((EPackageImpl)ePackage).freeze();
        }
        catch (ClassCastException classCastException) {
            // empty catch block
        }
    }

    public static Diagnostic computeDiagnostic(Resource resource, boolean includeWarnings) {
        Object diagnostic;
        if (resource.getErrors().isEmpty() && (!includeWarnings || resource.getWarnings().isEmpty())) {
            return Diagnostic.OK_INSTANCE;
        }
        BasicDiagnostic basicDiagnostic = new BasicDiagnostic();
        for (Resource.Diagnostic resourceDiagnostic : resource.getErrors()) {
            diagnostic = null;
            diagnostic = resourceDiagnostic instanceof Throwable ? BasicDiagnostic.toDiagnostic((Throwable)((Throwable)((Object)resourceDiagnostic))) : new BasicDiagnostic(4, "org.eclipse.emf.ecore.resource", 0, resourceDiagnostic.getMessage(), new Object[]{resourceDiagnostic});
            basicDiagnostic.add(diagnostic);
        }
        if (includeWarnings) {
            for (Resource.Diagnostic resourceDiagnostic : resource.getWarnings()) {
                diagnostic = null;
                diagnostic = resourceDiagnostic instanceof Throwable ? BasicDiagnostic.toDiagnostic((Throwable)((Throwable)((Object)resourceDiagnostic))) : new BasicDiagnostic(2, "org.eclipse.emf.ecore.resource", 0, resourceDiagnostic.getMessage(), new Object[]{resourceDiagnostic});
                basicDiagnostic.add(diagnostic);
            }
        }
        return basicDiagnostic;
    }

    public static String toJavaInstanceTypeName(EGenericType eGenericType) {
        return EGenericTypeConverter.INSTANCE.toJavaInstanceTypeName(eGenericType);
    }

    public static boolean isInvariant(EOperation eOperation) {
        return eOperation.getEType() == EcorePackage.Literals.EBOOLEAN && eOperation.getEParameters().size() == 2 && ((EParameter)eOperation.getEParameters().get(0)).getEType() == EcorePackage.Literals.EDIAGNOSTIC_CHAIN && ((EParameter)eOperation.getEParameters().get(1)).getEType() == EcorePackage.Literals.EMAP;
    }

    public static List<String> getValidationDelegates(EPackage ePackage) {
        String validationDelegates;
        EAnnotation eAnnotation = ePackage.getEAnnotation("http://www.eclipse.org/emf/2002/Ecore");
        if (eAnnotation != null && (validationDelegates = (String)eAnnotation.getDetails().get((Object)"validationDelegates")) != null) {
            ArrayList<String> result = new ArrayList<String>();
            StringTokenizer stringTokenizer = new StringTokenizer(validationDelegates);
            while (stringTokenizer.hasMoreTokens()) {
                String validationDelegate = stringTokenizer.nextToken();
                result.add(validationDelegate);
            }
            return result;
        }
        return Collections.emptyList();
    }

    public static void setValidationDelegates(EPackage ePackage, List<String> validationDelegates) {
        EAnnotation eAnnotation = ePackage.getEAnnotation("http://www.eclipse.org/emf/2002/Ecore");
        if (validationDelegates == null || validationDelegates.isEmpty()) {
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"validationDelegates");
            }
        } else {
            if (eAnnotation == null) {
                eAnnotation = EcoreFactory.eINSTANCE.createEAnnotation();
                eAnnotation.setSource("http://www.eclipse.org/emf/2002/Ecore");
                ePackage.getEAnnotations().add((Object)eAnnotation);
            }
            StringBuffer value = new StringBuffer();
            Iterator<String> i = validationDelegates.iterator();
            while (i.hasNext()) {
                value.append(i.next());
                if (!i.hasNext()) continue;
                value.append(' ');
            }
            eAnnotation.getDetails().put((Object)"validationDelegates", (Object)value.toString());
        }
    }

    public static List<String> getSettingDelegates(EPackage ePackage) {
        String settingDelegates;
        EAnnotation eAnnotation = ePackage.getEAnnotation("http://www.eclipse.org/emf/2002/Ecore");
        if (eAnnotation != null && (settingDelegates = (String)eAnnotation.getDetails().get((Object)"settingDelegates")) != null) {
            ArrayList<String> result = new ArrayList<String>();
            StringTokenizer stringTokenizer = new StringTokenizer(settingDelegates);
            while (stringTokenizer.hasMoreTokens()) {
                String settingDelegate = stringTokenizer.nextToken();
                result.add(settingDelegate);
            }
            return result;
        }
        return Collections.emptyList();
    }

    public static void setSettingDelegates(EPackage ePackage, List<String> settingDelegates) {
        EAnnotation eAnnotation = ePackage.getEAnnotation("http://www.eclipse.org/emf/2002/Ecore");
        if (settingDelegates == null || settingDelegates.isEmpty()) {
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"settingDelegates");
            }
        } else {
            if (eAnnotation == null) {
                eAnnotation = EcoreFactory.eINSTANCE.createEAnnotation();
                eAnnotation.setSource("http://www.eclipse.org/emf/2002/Ecore");
                ePackage.getEAnnotations().add((Object)eAnnotation);
            }
            StringBuffer value = new StringBuffer();
            Iterator<String> i = settingDelegates.iterator();
            while (i.hasNext()) {
                value.append(i.next());
                if (!i.hasNext()) continue;
                value.append(' ');
            }
            eAnnotation.getDetails().put((Object)"settingDelegates", (Object)value.toString());
        }
    }

    public static EStructuralFeature.Internal.SettingDelegate.Factory getSettingDelegateFactory(EStructuralFeature eStructuralFeature) {
        for (String settingDelegate : EcoreUtil.getSettingDelegates(eStructuralFeature.getEContainingClass().getEPackage())) {
            if (eStructuralFeature.getEAnnotation(settingDelegate) == null) continue;
            return EStructuralFeature.Internal.SettingDelegate.Factory.Registry.INSTANCE.getFactory(settingDelegate);
        }
        return null;
    }

    public static List<String> getInvocationDelegates(EPackage ePackage) {
        String invocationDelegates;
        EAnnotation eAnnotation = ePackage.getEAnnotation("http://www.eclipse.org/emf/2002/Ecore");
        if (eAnnotation != null && (invocationDelegates = (String)eAnnotation.getDetails().get((Object)"invocationDelegates")) != null) {
            ArrayList<String> result = new ArrayList<String>();
            StringTokenizer stringTokenizer = new StringTokenizer(invocationDelegates);
            while (stringTokenizer.hasMoreTokens()) {
                String invocationDelegate = stringTokenizer.nextToken();
                result.add(invocationDelegate);
            }
            return result;
        }
        return Collections.emptyList();
    }

    public static void setInvocationDelegates(EPackage ePackage, List<String> invocationDelegates) {
        EAnnotation eAnnotation = ePackage.getEAnnotation("http://www.eclipse.org/emf/2002/Ecore");
        if (invocationDelegates == null || invocationDelegates.isEmpty()) {
            if (eAnnotation != null) {
                eAnnotation.getDetails().remove((Object)"invocationDelegates");
            }
        } else {
            if (eAnnotation == null) {
                eAnnotation = EcoreFactory.eINSTANCE.createEAnnotation();
                eAnnotation.setSource("http://www.eclipse.org/emf/2002/Ecore");
                ePackage.getEAnnotations().add((Object)eAnnotation);
            }
            StringBuffer value = new StringBuffer();
            Iterator<String> i = invocationDelegates.iterator();
            while (i.hasNext()) {
                value.append(i.next());
                if (!i.hasNext()) continue;
                value.append(' ');
            }
            eAnnotation.getDetails().put((Object)"invocationDelegates", (Object)value.toString());
        }
    }

    public static EOperation.Internal.InvocationDelegate.Factory getInvocationDelegateFactory(EOperation eOperation) {
        for (String invocationDelegate : EcoreUtil.getInvocationDelegates(eOperation.getEContainingClass().getEPackage())) {
            if (eOperation.getEAnnotation(invocationDelegate) == null) continue;
            return EOperation.Internal.InvocationDelegate.Factory.Registry.INSTANCE.getFactory(invocationDelegate);
        }
        return null;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static abstract class AbstractFilteredSettingsIterator<E>
    implements Iterator<E> {
        protected List<EStructuralFeature.Setting> list;
        protected int size;
        protected int index;
        protected Iterator<EStructuralFeature.Setting> iterator;
        protected EStructuralFeature.Setting preparedResult;
        protected EReference eReference;
        protected EClass eClass;

        public AbstractFilteredSettingsIterator(List<EStructuralFeature.Setting> list, EReference eReference, EClass eClass) {
            if (list instanceof RandomAccess) {
                this.list = list;
                this.size = list.size();
            } else {
                this.iterator = list.iterator();
            }
            this.eReference = eReference;
            this.eClass = eClass;
        }

        public AbstractFilteredSettingsIterator(Collection<EStructuralFeature.Setting> collection, EReference eReference, EClass eClass) {
            if (collection instanceof RandomAccess) {
                this.list = (List)collection;
                this.size = this.list.size();
            } else {
                this.iterator = collection.iterator();
            }
            this.eReference = eReference;
            this.eClass = eClass;
        }

        public AbstractFilteredSettingsIterator(Iterator<EStructuralFeature.Setting> iterator, EReference eReference, EClass eClass) {
            this.iterator = iterator;
            this.eReference = eReference;
            this.eClass = eClass;
        }

        protected boolean isIncluded(EStructuralFeature.Setting setting) {
            return !(this.eReference != null && setting.getEStructuralFeature() != this.eReference || this.eClass != null && !this.eClass.isInstance(setting.getEObject()));
        }

        /*
         * Unable to fully structure code
         */
        @Override
        public boolean hasNext() {
            block2: {
                block3: {
                    if (this.preparedResult != null) break block2;
                    if (this.iterator != null) ** GOTO lbl12
                    while (this.index < this.size) {
                        if (!this.isIncluded(setting = this.list.get(this.index++))) continue;
                        this.preparedResult = setting;
                        return true;
                    }
                    break block3;
lbl-1000:
                    // 1 sources

                    {
                        setting = this.iterator.next();
                        if (!this.isIncluded(setting)) continue;
                        this.preparedResult = setting;
                        return true;
lbl12:
                        // 2 sources

                        ** while (this.iterator.hasNext())
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public E next() {
            if (this.hasNext()) {
                E result = this.yield(this.preparedResult);
                this.preparedResult = null;
                return result;
            }
            throw new NoSuchElementException();
        }

        protected abstract E yield(EStructuralFeature.Setting var1);

        @Override
        public void remove() {
            if (this.iterator == null) {
                this.list.remove(this.index - 1);
            } else {
                this.iterator.remove();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ContentTreeIterator<E>
    extends AbstractTreeIterator<E> {
        private static final long serialVersionUID = 1L;
        protected boolean isResolveProxies;
        protected ResourcesIterator resourceSetIterator;

        protected ContentTreeIterator(Collection<?> emfObjects) {
            super(emfObjects, false);
        }

        protected ContentTreeIterator(Object object, boolean isResolveProxies) {
            super(object, false);
            this.isResolveProxies = isResolveProxies;
        }

        public Iterator<E> getChildren(Object object) {
            if (object instanceof EObject) {
                return this.getEObjectChildren((EObject)object);
            }
            if (object instanceof Resource) {
                return this.getResourceChildren((Resource)object);
            }
            if (object instanceof ResourceSet) {
                return this.getResourceSetChildren((ResourceSet)object);
            }
            if (object == this.object) {
                return ((Collection)object).iterator();
            }
            return this.getObjectChildren(object);
        }

        protected Iterator<? extends EObject> getEObjectChildren(EObject eObject) {
            return this.isResolveProxies() ? eObject.eContents().iterator() : ((InternalEList)eObject.eContents()).basicIterator();
        }

        protected boolean isResolveProxies() {
            return this.isResolveProxies;
        }

        protected Iterator<EObject> getResourceChildren(Resource resource) {
            return resource.getContents().iterator();
        }

        public boolean hasNext() {
            Iterator iterator;
            if (!this.includeRoot && this.data == null) {
                this.nextPruneIterator = this.getChildren(this.object);
                this.add(this.nextPruneIterator);
                iterator = this.nextPruneIterator;
            } else {
                if (this.data == null) {
                    return true;
                }
                if (this.isEmpty()) {
                    return false;
                }
                iterator = (Iterator)this.data[this.size - 1];
            }
            if (iterator == this.resourceSetIterator && !this.resourceSetIterator.reallyHasNext()) {
                this.next();
                return this.hasNext();
            }
            return iterator.hasNext();
        }

        protected Iterator<Resource> getResourceSetChildren(ResourceSet resourceSet) {
            this.resourceSetIterator = new ResourcesIterator((List<? extends Resource>)resourceSet.getResources());
            return this.resourceSetIterator;
        }

        protected Iterator<E> getObjectChildren(Object object) {
            return ECollections.emptyEList().iterator();
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        protected static class ResourcesIterator
        implements Iterator<Resource> {
            protected List<? extends Resource> resources;
            protected int index = 0;

            public ResourcesIterator(List<? extends Resource> resources) {
                this.resources = resources;
            }

            public boolean reallyHasNext() {
                return this.index < this.resources.size();
            }

            @Override
            public boolean hasNext() {
                return this.index <= this.resources.size();
            }

            @Override
            public Resource next() {
                if (this.index >= this.resources.size()) {
                    ++this.index;
                    return null;
                }
                return this.resources.get(this.index++);
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Copier
    extends HashMap<EObject, EObject> {
        private static final long serialVersionUID = 1L;
        protected boolean resolveProxies = true;
        protected boolean useOriginalReferences = true;

        public Copier() {
        }

        public Copier(boolean resolveProxies) {
            this.resolveProxies = resolveProxies;
        }

        public Copier(boolean resolveProxies, boolean useOriginalReferences) {
            this.resolveProxies = resolveProxies;
            this.useOriginalReferences = useOriginalReferences;
        }

        public <T> Collection<T> copyAll(Collection<? extends T> eObjects) {
            ArrayList<EObject> result = new ArrayList<EObject>(eObjects.size());
            for (T object : eObjects) {
                EObject t = this.copy((EObject)object);
                result.add(t);
            }
            return result;
        }

        public EObject copy(EObject eObject) {
            if (eObject == null) {
                return null;
            }
            EObject copyEObject = this.createCopy(eObject);
            this.put(eObject, copyEObject);
            EClass eClass = eObject.eClass();
            int i = 0;
            int size = eClass.getFeatureCount();
            while (i < size) {
                EStructuralFeature eStructuralFeature = eClass.getEStructuralFeature(i);
                if (eStructuralFeature.isChangeable() && !eStructuralFeature.isDerived()) {
                    if (eStructuralFeature instanceof EAttribute) {
                        this.copyAttribute((EAttribute)eStructuralFeature, eObject, copyEObject);
                    } else {
                        EReference eReference = (EReference)eStructuralFeature;
                        if (eReference.isContainment()) {
                            this.copyContainment(eReference, eObject, copyEObject);
                        }
                    }
                }
                ++i;
            }
            this.copyProxyURI(eObject, copyEObject);
            return copyEObject;
        }

        protected void copyProxyURI(EObject eObject, EObject copyEObject) {
            if (eObject.eIsProxy()) {
                ((InternalEObject)copyEObject).eSetProxyURI(((InternalEObject)eObject).eProxyURI());
            }
        }

        protected EObject createCopy(EObject eObject) {
            return EcoreUtil.create(this.getTarget(eObject.eClass()));
        }

        protected EClass getTarget(EClass eClass) {
            return eClass;
        }

        protected EStructuralFeature getTarget(EStructuralFeature eStructuralFeature) {
            return eStructuralFeature;
        }

        protected void copyContainment(EReference eReference, EObject eObject, EObject copyEObject) {
            if (eObject.eIsSet(eReference)) {
                if (eReference.isMany()) {
                    List source = (List)eObject.eGet(eReference);
                    List target = (List)copyEObject.eGet(this.getTarget(eReference));
                    if (source.isEmpty()) {
                        target.clear();
                    } else {
                        target.addAll(this.copyAll(source));
                    }
                } else {
                    EObject childEObject = (EObject)eObject.eGet(eReference);
                    copyEObject.eSet(this.getTarget(eReference), childEObject == null ? null : this.copy(childEObject));
                }
            }
        }

        protected void copyAttribute(EAttribute eAttribute, EObject eObject, EObject copyEObject) {
            if (eObject.eIsSet(eAttribute)) {
                if (FeatureMapUtil.isFeatureMap(eAttribute)) {
                    FeatureMap featureMap = (FeatureMap)eObject.eGet(eAttribute);
                    int i = 0;
                    int size = featureMap.size();
                    while (i < size) {
                        Object value;
                        EStructuralFeature feature = featureMap.getEStructuralFeature(i);
                        if (feature instanceof EReference && ((EReference)feature).isContainment() && (value = featureMap.getValue(i)) != null) {
                            this.copy((EObject)value);
                        }
                        ++i;
                    }
                } else if (eAttribute.isMany()) {
                    List source = (List)eObject.eGet(eAttribute);
                    List target = (List)copyEObject.eGet(this.getTarget(eAttribute));
                    if (source.isEmpty()) {
                        target.clear();
                    } else {
                        target.addAll(source);
                    }
                } else {
                    copyEObject.eSet(this.getTarget(eAttribute), eObject.eGet(eAttribute));
                }
            }
        }

        public void copyReferences() {
            for (Map.Entry entry : this.entrySet()) {
                EObject eObject = (EObject)entry.getKey();
                EObject copyEObject = (EObject)entry.getValue();
                EClass eClass = eObject.eClass();
                int j = 0;
                int size = eClass.getFeatureCount();
                while (j < size) {
                    block9: {
                        EStructuralFeature eStructuralFeature;
                        block10: {
                            eStructuralFeature = eClass.getEStructuralFeature(j);
                            if (!eStructuralFeature.isChangeable() || eStructuralFeature.isDerived()) break block9;
                            if (!(eStructuralFeature instanceof EReference)) break block10;
                            EReference eReference = (EReference)eStructuralFeature;
                            if (!eReference.isContainment() && !eReference.isContainer()) {
                                this.copyReference(eReference, eObject, copyEObject);
                            }
                            break block9;
                        }
                        if (!FeatureMapUtil.isFeatureMap(eStructuralFeature)) break block9;
                        FeatureMap featureMap = (FeatureMap)eObject.eGet(eStructuralFeature);
                        FeatureMap copyFeatureMap = (FeatureMap)copyEObject.eGet(this.getTarget(eStructuralFeature));
                        int copyFeatureMapSize = copyFeatureMap.size();
                        int k = 0;
                        int featureMapSize = featureMap.size();
                        while (k < featureMapSize) {
                            block8: {
                                block11: {
                                    Object copyReferencedEObject;
                                    EStructuralFeature feature;
                                    block12: {
                                        feature = featureMap.getEStructuralFeature(k);
                                        if (!(feature instanceof EReference)) break block11;
                                        Object referencedEObject = featureMap.getValue(k);
                                        copyReferencedEObject = this.get(referencedEObject);
                                        if (copyReferencedEObject != null || referencedEObject == null) break block12;
                                        EReference reference = (EReference)feature;
                                        if (!this.useOriginalReferences || reference.isContainment() || reference.getEOpposite() != null) break block8;
                                        copyReferencedEObject = referencedEObject;
                                    }
                                    if (!copyFeatureMap.add(feature, copyReferencedEObject)) {
                                        int l = 0;
                                        while (l < copyFeatureMapSize) {
                                            if (copyFeatureMap.getEStructuralFeature(l) == feature && copyFeatureMap.getValue(l) == copyReferencedEObject) {
                                                copyFeatureMap.move(copyFeatureMap.size() - 1, l);
                                                --copyFeatureMapSize;
                                                break block8;
                                            }
                                            ++l;
                                        }
                                    }
                                    break block8;
                                }
                                copyFeatureMap.add((FeatureMap.Entry)featureMap.get(k));
                            }
                            ++k;
                        }
                    }
                    ++j;
                }
            }
        }

        protected void copyReference(EReference eReference, EObject eObject, EObject copyEObject) {
            if (eObject.eIsSet(eReference)) {
                if (eReference.isMany()) {
                    InternalEList source = (InternalEList)eObject.eGet(eReference);
                    InternalEList target = (InternalEList)copyEObject.eGet(this.getTarget(eReference));
                    if (source.isEmpty()) {
                        target.clear();
                    } else {
                        boolean isBidirectional = eReference.getEOpposite() != null;
                        int index = 0;
                        Iterator k = this.resolveProxies ? source.iterator() : source.basicIterator();
                        while (k.hasNext()) {
                            EObject referencedEObject = (EObject)k.next();
                            EObject copyReferencedEObject = (EObject)this.get(referencedEObject);
                            if (copyReferencedEObject == null) {
                                if (!this.useOriginalReferences || isBidirectional) continue;
                                target.addUnique(index, referencedEObject);
                                ++index;
                                continue;
                            }
                            if (isBidirectional) {
                                int position = target.indexOf(copyReferencedEObject);
                                if (position == -1) {
                                    target.addUnique(index, copyReferencedEObject);
                                } else if (index != position) {
                                    target.move(index, copyReferencedEObject);
                                }
                            } else {
                                target.addUnique(index, copyReferencedEObject);
                            }
                            ++index;
                        }
                    }
                } else {
                    Object referencedEObject = eObject.eGet(eReference, this.resolveProxies);
                    if (referencedEObject == null) {
                        copyEObject.eSet(this.getTarget(eReference), null);
                    } else {
                        Object copyReferencedEObject = this.get(referencedEObject);
                        if (copyReferencedEObject == null) {
                            if (this.useOriginalReferences && eReference.getEOpposite() == null) {
                                copyEObject.eSet(this.getTarget(eReference), referencedEObject);
                            }
                        } else {
                            copyEObject.eSet(this.getTarget(eReference), copyReferencedEObject);
                        }
                    }
                }
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class CrossReferencer
    extends HashMap<EObject, Collection<EStructuralFeature.Setting>> {
        private static final long serialVersionUID = 1L;
        protected Collection<?> emfObjects;

        protected CrossReferencer(EObject eObject) {
            this.emfObjects = Collections.singleton(eObject);
        }

        protected CrossReferencer(Resource resource) {
            this.emfObjects = Collections.singleton(resource);
        }

        protected CrossReferencer(ResourceSet resourceSet) {
            this.emfObjects = Collections.singleton(resourceSet);
        }

        protected CrossReferencer(Collection<?> emfObjects) {
            this.emfObjects = emfObjects;
        }

        protected boolean containment(EObject eObject) {
            return true;
        }

        protected boolean crossReference(EObject eObject, EReference eReference, EObject crossReferencedEObject) {
            return true;
        }

        protected boolean resolve() {
            return true;
        }

        protected Collection<EStructuralFeature.Setting> newCollection() {
            return new ArrayList<EStructuralFeature.Setting>();
        }

        protected Collection<EStructuralFeature.Setting> getCollection(Object key) {
            Collection<EStructuralFeature.Setting> result = (Collection<EStructuralFeature.Setting>)this.get(key);
            if (result == null) {
                result = this.newCollection();
                this.put((EObject)key, result);
            }
            return result;
        }

        protected TreeIterator<Notifier> newContentsIterator() {
            return new ContentTreeIterator(this.emfObjects);
        }

        protected void crossReference() {
            TreeIterator<Notifier> contents = this.newContentsIterator();
            while (contents.hasNext()) {
                Object content = contents.next();
                if (!(content instanceof EObject)) continue;
                EObject eObject = (EObject)content;
                if (this.containment(eObject)) {
                    this.handleCrossReference(eObject);
                    continue;
                }
                contents.prune();
            }
        }

        protected EContentsEList.FeatureIterator<EObject> getCrossReferences(EObject eObject) {
            return (EContentsEList.FeatureIterator)(this.resolve() ? eObject.eCrossReferences().iterator() : ((InternalEList)eObject.eCrossReferences()).basicIterator());
        }

        protected void handleCrossReference(EObject eObject) {
            InternalEObject internalEObject = (InternalEObject)eObject;
            EContentsEList.FeatureIterator<EObject> crossReferences = this.getCrossReferences(internalEObject);
            while (crossReferences.hasNext()) {
                EReference eReference;
                EObject crossReferencedEObject = (EObject)crossReferences.next();
                if (crossReferencedEObject == null || !this.crossReference(internalEObject, eReference = (EReference)crossReferences.feature(), crossReferencedEObject)) continue;
                this.add(internalEObject, eReference, crossReferencedEObject);
            }
        }

        protected void add(InternalEObject eObject, EReference eReference, EObject crossReferencedEObject) {
            this.getCollection(crossReferencedEObject).add(eObject.eSetting(eReference));
        }

        protected void done() {
            this.emfObjects = null;
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(Collection<?> emfObjects) {
            CrossReferencer result = new CrossReferencer(emfObjects);
            result.crossReference();
            result.done();
            return result;
        }

        @Override
        public String toString() {
            StringBuffer result = new StringBuffer("{");
            for (Map.Entry entry : this.entrySet()) {
                EObject eObject = (EObject)entry.getKey();
                result.append(EcoreUtil.getIdentification(eObject));
                result.append("=[");
                Collection collection = (Collection)entry.getValue();
                Iterator j = collection.iterator();
                while (j.hasNext()) {
                    EStructuralFeature.Setting setting = (EStructuralFeature.Setting)j.next();
                    EStructuralFeature eStructuralFeature = setting.getEStructuralFeature();
                    result.append(eStructuralFeature.getName());
                    result.append("<-");
                    result.append(EcoreUtil.getIdentification(setting.getEObject()));
                    if (!j.hasNext()) continue;
                    result.append(", ");
                }
                result.append(']');
            }
            result.append('}');
            return result.toString();
        }

        public static void print(PrintStream out, Map<EObject, Collection<EStructuralFeature.Setting>> crossReferenceMap) {
            out.println('{');
            for (Map.Entry<EObject, Collection<EStructuralFeature.Setting>> entry : crossReferenceMap.entrySet()) {
                EObject eObject = entry.getKey();
                out.print(" ");
                out.print(EcoreUtil.getIdentification(eObject));
                Collection<EStructuralFeature.Setting> collection = entry.getValue();
                if (collection.isEmpty()) {
                    out.println(" =[]");
                    continue;
                }
                out.println(" =[");
                Iterator<EStructuralFeature.Setting> j = collection.iterator();
                while (j.hasNext()) {
                    EStructuralFeature.Setting setting = j.next();
                    EStructuralFeature eStructuralFeature = setting.getEStructuralFeature();
                    out.print("   ");
                    out.print(eStructuralFeature.getName());
                    out.print("<-");
                    out.print(EcoreUtil.getIdentification(setting.getEObject()));
                    if (!j.hasNext()) continue;
                    out.println(",");
                }
                out.println(']');
            }
            out.println('}');
        }

        public static void print(PrintStream out, Collection<EStructuralFeature.Setting> settings) {
            if (settings.isEmpty()) {
                out.println("[]");
            } else {
                out.println("[");
                Iterator<EStructuralFeature.Setting> j = settings.iterator();
                while (j.hasNext()) {
                    EStructuralFeature.Setting setting = j.next();
                    EStructuralFeature eStructuralFeature = setting.getEStructuralFeature();
                    out.print(" ");
                    out.print(eStructuralFeature.getName());
                    out.print("<-");
                    out.print(EcoreUtil.getIdentification(setting.getEObject()));
                    if (!j.hasNext()) continue;
                    out.println(",");
                }
                out.println(']');
            }
        }
    }

    public static class EGenericTypeConverter {
        public static EGenericTypeConverter INSTANCE = new EGenericTypeConverter();

        public String toJavaInstanceTypeName(EGenericType eGenericType) {
            StringBuilder result = new StringBuilder();
            this.convertJavaInstanceTypeName(result, eGenericType);
            return result.toString();
        }

        public void convertJavaInstanceTypeName(StringBuilder result, EGenericType eGenericType) {
            EClassifier eClassifier = eGenericType.getEClassifier();
            if (eClassifier != null) {
                String instanceTypeName = this.getInstanceTypeName(eClassifier);
                EList<EGenericType> eTypeArguments = eGenericType.getETypeArguments();
                if (eTypeArguments.isEmpty()) {
                    result.append(instanceTypeName);
                } else {
                    int index = instanceTypeName.indexOf(91);
                    result.append(index == -1 ? instanceTypeName : instanceTypeName.substring(0, index));
                    result.append('<');
                    int i = 0;
                    int size = eTypeArguments.size();
                    while (i < size) {
                        if (i != 0) {
                            result.append(", ");
                        }
                        this.convertJavaInstanceTypeName(result, (EGenericType)eTypeArguments.get(i));
                        ++i;
                    }
                    result.append('>');
                    if (index != -1) {
                        result.append(instanceTypeName.substring(index));
                    }
                }
            } else {
                ETypeParameter eTypeParameter = eGenericType.getETypeParameter();
                if (eTypeParameter != null) {
                    result.append(eTypeParameter.getName());
                } else {
                    result.append('?');
                    EGenericType eUpperBound = eGenericType.getEUpperBound();
                    if (eUpperBound != null) {
                        result.append(" extends ");
                        this.convertJavaInstanceTypeName(result, eUpperBound);
                    } else {
                        EGenericType eLowerBound = eGenericType.getELowerBound();
                        if (eLowerBound != null) {
                            result.append(" super ");
                            this.convertJavaInstanceTypeName(result, eLowerBound);
                        }
                    }
                }
            }
        }

        protected String getInstanceTypeName(EClassifier eClassifier) {
            return eClassifier.getInstanceTypeName();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class EqualityHelper
    extends HashMap<EObject, EObject> {
        private static final long serialVersionUID = 1L;

        public boolean equals(EObject eObject1, EObject eObject2) {
            if (eObject1 == null) {
                return eObject2 == null;
            }
            if (eObject2 == null) {
                return false;
            }
            Object eObject1MappedValue = this.get(eObject1);
            if (eObject1MappedValue != null) {
                return eObject1MappedValue == eObject2;
            }
            Object eObject2MappedValue = this.get(eObject2);
            if (eObject2MappedValue != null) {
                return eObject2MappedValue == eObject1;
            }
            if (eObject1 == eObject2) {
                this.put(eObject1, eObject2);
                this.put(eObject2, eObject1);
                return true;
            }
            if (eObject1.eIsProxy()) {
                if (((InternalEObject)eObject1).eProxyURI().equals((Object)((InternalEObject)eObject2).eProxyURI())) {
                    this.put(eObject1, eObject2);
                    this.put(eObject2, eObject1);
                    return true;
                }
                return false;
            }
            if (eObject2.eIsProxy()) {
                return false;
            }
            EClass eClass = eObject1.eClass();
            if (eClass != eObject2.eClass()) {
                return false;
            }
            this.put(eObject1, eObject2);
            this.put(eObject2, eObject1);
            int i = 0;
            int size = eClass.getFeatureCount();
            while (i < size) {
                EStructuralFeature feature = eClass.getEStructuralFeature(i);
                if (!feature.isDerived() && !this.haveEqualFeature(eObject1, eObject2, feature)) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        public boolean equals(List<EObject> list1, List<EObject> list2) {
            int size = list1.size();
            if (size != list2.size()) {
                return false;
            }
            int i = 0;
            while (i < size) {
                EObject eObject2;
                EObject eObject1 = list1.get(i);
                if (!this.equals(eObject1, eObject2 = list2.get(i))) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        protected boolean haveEqualFeature(EObject eObject1, EObject eObject2, EStructuralFeature feature) {
            return eObject1.eIsSet(feature) == eObject2.eIsSet(feature) && (feature instanceof EReference ? this.haveEqualReference(eObject1, eObject2, (EReference)feature) : this.haveEqualAttribute(eObject1, eObject2, (EAttribute)feature));
        }

        protected boolean haveEqualReference(EObject eObject1, EObject eObject2, EReference reference) {
            Object value1 = eObject1.eGet(reference);
            Object value2 = eObject2.eGet(reference);
            return reference.isMany() ? this.equals((List)value1, (List)value2) : this.equals((EObject)value1, (EObject)value2);
        }

        protected boolean haveEqualAttribute(EObject eObject1, EObject eObject2, EAttribute attribute) {
            Object value1 = eObject1.eGet(attribute);
            Object value2 = eObject2.eGet(attribute);
            if (value1 == null) {
                return value2 == null;
            }
            if (value2 == null) {
                return false;
            }
            if (FeatureMapUtil.isFeatureMap(attribute)) {
                FeatureMap featureMap1 = (FeatureMap)value1;
                FeatureMap featureMap2 = (FeatureMap)value2;
                return this.equalFeatureMaps(featureMap1, featureMap2);
            }
            return value1.equals(value2);
        }

        protected boolean equalFeatureMaps(FeatureMap featureMap1, FeatureMap featureMap2) {
            int size = featureMap1.size();
            if (size != featureMap2.size()) {
                return false;
            }
            int i = 0;
            while (i < size) {
                Object value2;
                EStructuralFeature feature = featureMap1.getEStructuralFeature(i);
                if (feature != featureMap2.getEStructuralFeature(i)) {
                    return false;
                }
                Object value1 = featureMap1.getValue(i);
                if (!this.equalFeatureMapValues(value1, value2 = featureMap2.getValue(i), feature)) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        protected boolean equalFeatureMapValues(Object value1, Object value2, EStructuralFeature feature) {
            if (feature instanceof EReference) {
                return this.equals((EObject)value1, (EObject)value2);
            }
            return value1 == null ? value2 == null : value1.equals(value2);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ExternalCrossReferencer
    extends CrossReferencer {
        private static final long serialVersionUID = 1L;

        protected ExternalCrossReferencer(Collection<?> emfObjects) {
            super(emfObjects);
        }

        protected ExternalCrossReferencer(EObject eObject) {
            super(eObject);
        }

        protected ExternalCrossReferencer(Resource resource) {
            super(Collections.singleton(resource));
        }

        protected ExternalCrossReferencer(ResourceSet resourceSet) {
            super(Collections.singleton(resourceSet));
        }

        @Override
        protected boolean crossReference(EObject eObject, EReference eReference, EObject crossReferencedEObject) {
            return !EcoreUtil.isAncestor(this.emfObjects, crossReferencedEObject);
        }

        protected Map<EObject, Collection<EStructuralFeature.Setting>> findExternalCrossReferences() {
            this.crossReference();
            this.done();
            return this;
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(EObject eObject) {
            return new ExternalCrossReferencer(eObject).findExternalCrossReferences();
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(Resource resource) {
            return new ExternalCrossReferencer(resource).findExternalCrossReferences();
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(ResourceSet resourceSet) {
            return new ExternalCrossReferencer(resourceSet).findExternalCrossReferences();
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(Collection<?> emfObjectsToSearch) {
            return new ExternalCrossReferencer(emfObjectsToSearch).findExternalCrossReferences();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FilteredSettingsIterator
    extends AbstractFilteredSettingsIterator<EStructuralFeature.Setting> {
        public FilteredSettingsIterator(List<EStructuralFeature.Setting> list, EReference eReference, EClass eClass) {
            super(list, eReference, eClass);
        }

        public FilteredSettingsIterator(Collection<EStructuralFeature.Setting> collection, EReference eReference, EClass eClass) {
            super(collection, eReference, eClass);
        }

        public FilteredSettingsIterator(Iterator<EStructuralFeature.Setting> iterator, EReference eReference, EClass eClass) {
            super(iterator, eReference, eClass);
        }

        @Override
        protected EStructuralFeature.Setting yield(EStructuralFeature.Setting setting) {
            return setting;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ProperContentIterator<E>
    implements Iterator<E> {
        protected Iterator<? extends E> iterator;
        protected E preparedResult;

        public ProperContentIterator(List<? extends E> contents) {
            this.iterator = contents.iterator();
        }

        public ProperContentIterator(InternalEList<? extends E> basicContents) {
            this.iterator = basicContents.basicIterator();
        }

        public ProperContentIterator(EObject eObject) {
            this(eObject, false);
        }

        public ProperContentIterator(EObject eObject, boolean isResolveProxies) {
            EList<EObject> contents = eObject.eContents();
            this.iterator = !isResolveProxies && contents instanceof InternalEList ? ((InternalEList)contents).basicIterator() : contents.iterator();
        }

        @Override
        public boolean hasNext() {
            if (this.preparedResult == null) {
                while (this.iterator.hasNext()) {
                    this.preparedResult = this.iterator.next();
                    if (((InternalEObject)this.preparedResult).eDirectResource() != null) continue;
                    return true;
                }
                this.preparedResult = null;
                return false;
            }
            return true;
        }

        @Override
        public E next() {
            this.hasNext();
            E result = this.preparedResult;
            this.preparedResult = null;
            return result;
        }

        @Override
        public void remove() {
            this.iterator.remove();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ProxyCrossReferencer
    extends CrossReferencer {
        private static final long serialVersionUID = 1L;

        protected ProxyCrossReferencer(EObject eObject) {
            super(eObject);
        }

        protected ProxyCrossReferencer(Resource resource) {
            super(Collections.singleton(resource));
        }

        protected ProxyCrossReferencer(ResourceSet resourceSet) {
            super(Collections.singleton(resourceSet));
        }

        protected ProxyCrossReferencer(Collection<?> emfObjects) {
            super(emfObjects);
        }

        @Override
        protected boolean resolve() {
            return false;
        }

        @Override
        protected boolean crossReference(EObject eObject, EReference eReference, EObject crossReferencedEObject) {
            return crossReferencedEObject.eIsProxy();
        }

        protected Map<EObject, Collection<EStructuralFeature.Setting>> findProxyCrossReferences() {
            this.crossReference();
            this.done();
            return this;
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(EObject eObject) {
            return new ProxyCrossReferencer(eObject).findProxyCrossReferences();
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(Resource resource) {
            return new ProxyCrossReferencer(resource).findProxyCrossReferences();
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(ResourceSet resourceSet) {
            return new ProxyCrossReferencer(resourceSet).findProxyCrossReferences();
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(Collection<?> emfObjects) {
            return new ProxyCrossReferencer(emfObjects).findProxyCrossReferences();
        }
    }

    private static final class UUID {
        private static final char[] BASE64_DIGITS = new char[]{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};
        private static final long EPOCH_ADJUSTMENT = new GregorianCalendar(1970, 0, 1, 0, 0, 0).getTime().getTime() - new GregorianCalendar(1582, 9, 15, 0, 0, 0).getTime().getTime();
        private static long lastTime = System.currentTimeMillis() + EPOCH_ADJUSTMENT;
        private static short clockSequence;
        private static short timeAdjustment;
        private static int sleepTime;
        private static final byte[] uuid;
        private static final char[] buffer;

        static {
            sleepTime = 1;
            uuid = new byte[16];
            buffer = new char[23];
            SecureRandom random = new SecureRandom();
            clockSequence = (short)random.nextInt(16384);
            UUID.updateClockSequence();
            byte[] nodeAddress = new byte[6];
            ((Random)random).nextBytes(nodeAddress);
            nodeAddress[0] = (byte)(nodeAddress[0] | 0xFFFFFF80);
            int i = 0;
            while (i < 6) {
                UUID.uuid[i + 10] = nodeAddress[i];
                ++i;
            }
            UUID.buffer[0] = 95;
        }

        public static synchronized String generate() {
            UUID.updateCurrentTime();
            int i = 0;
            while (i < 5) {
                UUID.buffer[4 * i + 1] = BASE64_DIGITS[uuid[i * 3] >> 2 & 0x3F];
                UUID.buffer[4 * i + 2] = BASE64_DIGITS[uuid[i * 3] << 4 & 0x30 | uuid[i * 3 + 1] >> 4 & 0xF];
                UUID.buffer[4 * i + 3] = BASE64_DIGITS[uuid[i * 3 + 1] << 2 & 0x3C | uuid[i * 3 + 2] >> 6 & 3];
                UUID.buffer[4 * i + 4] = BASE64_DIGITS[uuid[i * 3 + 2] & 0x3F];
                ++i;
            }
            UUID.buffer[21] = BASE64_DIGITS[uuid[15] >> 2 & 0x3F];
            UUID.buffer[22] = BASE64_DIGITS[uuid[15] << 4 & 0x30];
            return new String(buffer);
        }

        public static synchronized void generate(byte[] uuid) {
            UUID.updateCurrentTime();
            int i = 0;
            while (i < 16) {
                uuid[i] = UUID.uuid[i];
                ++i;
            }
        }

        private UUID() {
        }

        private static void updateClockSequence() {
            UUID.uuid[8] = (byte)(clockSequence >> 8 & 0x3F | 0x80);
            UUID.uuid[9] = (byte)(clockSequence & 0xFF);
        }

        private static void updateCurrentTime() {
            long currentTime = System.currentTimeMillis() + EPOCH_ADJUSTMENT;
            if (lastTime > currentTime) {
                if (16384 == (clockSequence = (short)(clockSequence + 1))) {
                    clockSequence = 0;
                }
                UUID.updateClockSequence();
            } else if (lastTime == currentTime) {
                if ((timeAdjustment = (short)(timeAdjustment + 1)) > 9999) {
                    try {
                        Thread.sleep(sleepTime);
                    }
                    catch (InterruptedException interruptedException) {
                        // empty catch block
                    }
                    timeAdjustment = 0;
                    currentTime = System.currentTimeMillis() + EPOCH_ADJUSTMENT;
                    while (lastTime == currentTime) {
                        try {
                            ++sleepTime;
                            Thread.sleep(1L);
                        }
                        catch (InterruptedException interruptedException) {
                            // empty catch block
                        }
                        currentTime = System.currentTimeMillis() + EPOCH_ADJUSTMENT;
                    }
                }
            } else {
                timeAdjustment = 0;
            }
            lastTime = currentTime;
            currentTime *= 10000L;
            currentTime += (long)timeAdjustment;
            currentTime |= 0x1000000000000000L;
            int i = 0;
            while (i < 4) {
                UUID.uuid[i] = (byte)(currentTime >> 8 * (3 - i) & 0xFFL);
                ++i;
            }
            i = 0;
            while (i < 2) {
                UUID.uuid[i + 4] = (byte)(currentTime >> 8 * (1 - i) + 32 & 0xFFL);
                ++i;
            }
            i = 0;
            while (i < 2) {
                UUID.uuid[i + 6] = (byte)(currentTime >> 8 * (1 - i) + 48 & 0xFFL);
                ++i;
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class UnresolvedProxyCrossReferencer
    extends CrossReferencer {
        private static final long serialVersionUID = 1L;

        protected UnresolvedProxyCrossReferencer(EObject eObject) {
            super(eObject);
        }

        protected UnresolvedProxyCrossReferencer(Resource resource) {
            super(Collections.singleton(resource));
        }

        protected UnresolvedProxyCrossReferencer(ResourceSet resourceSet) {
            super(Collections.singleton(resourceSet));
        }

        protected UnresolvedProxyCrossReferencer(Collection<?> emfObjects) {
            super(emfObjects);
        }

        @Override
        protected boolean crossReference(EObject eObject, EReference eReference, EObject crossReferencedEObject) {
            return crossReferencedEObject.eIsProxy();
        }

        protected Map<EObject, Collection<EStructuralFeature.Setting>> findUnresolvedProxyCrossReferences() {
            this.crossReference();
            this.done();
            return this;
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(EObject eObject) {
            return new UnresolvedProxyCrossReferencer(eObject).findUnresolvedProxyCrossReferences();
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(Resource resource) {
            return new UnresolvedProxyCrossReferencer(resource).findUnresolvedProxyCrossReferences();
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(ResourceSet resourceSet) {
            return new UnresolvedProxyCrossReferencer(resourceSet).findUnresolvedProxyCrossReferences();
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> find(Collection<?> emfObjects) {
            return new UnresolvedProxyCrossReferencer(emfObjects).findUnresolvedProxyCrossReferences();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class UsageCrossReferencer
    extends CrossReferencer {
        private static final long serialVersionUID = 1L;
        protected Collection<?> eObjectsOfInterest;

        protected UsageCrossReferencer(EObject eObject) {
            super(eObject);
        }

        protected UsageCrossReferencer(Resource resource) {
            super(resource);
        }

        protected UsageCrossReferencer(ResourceSet resourceSet) {
            super(resourceSet);
        }

        protected UsageCrossReferencer(Collection<?> emfObjects) {
            super(emfObjects);
        }

        @Override
        protected boolean crossReference(EObject eObject, EReference eReference, EObject crossReferencedEObject) {
            return this.eObjectsOfInterest.contains(crossReferencedEObject);
        }

        protected Collection<EStructuralFeature.Setting> findUsage(EObject eObject) {
            this.eObjectsOfInterest = Collections.singleton(eObject);
            this.crossReference();
            this.eObjectsOfInterest = null;
            this.done();
            return this.getCollection(eObject);
        }

        protected Map<EObject, Collection<EStructuralFeature.Setting>> findAllUsage(Collection<?> eObjectsOfInterest) {
            this.eObjectsOfInterest = eObjectsOfInterest;
            this.crossReference();
            this.eObjectsOfInterest = null;
            this.done();
            return this;
        }

        public static Collection<EStructuralFeature.Setting> find(EObject eObjectOfInterest, EObject eObject) {
            return new UsageCrossReferencer(eObject).findUsage(eObjectOfInterest);
        }

        public static Collection<EStructuralFeature.Setting> find(EObject eObjectOfInterest, Resource resource) {
            return new UsageCrossReferencer(resource).findUsage(eObjectOfInterest);
        }

        public static Collection<EStructuralFeature.Setting> find(EObject eObjectOfInterest, ResourceSet resourceSet) {
            return new UsageCrossReferencer(resourceSet).findUsage(eObjectOfInterest);
        }

        public static Collection<EStructuralFeature.Setting> find(EObject eObjectOfInterest, Collection<?> emfObjectsToSearch) {
            return new UsageCrossReferencer(emfObjectsToSearch).findUsage(eObjectOfInterest);
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> findAll(Collection<?> eObjectsOfInterest, EObject eObject) {
            return new UsageCrossReferencer(eObject).findAllUsage(eObjectsOfInterest);
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> findAll(Collection<?> eObjectsOfInterest, Resource resource) {
            return new UsageCrossReferencer(resource).findAllUsage(eObjectsOfInterest);
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> findAll(Collection<?> eObjectsOfInterest, ResourceSet resourceSet) {
            return new UsageCrossReferencer(resourceSet).findAllUsage(eObjectsOfInterest);
        }

        public static Map<EObject, Collection<EStructuralFeature.Setting>> findAll(Collection<?> eObjectsOfInterest, Collection<?> emfObjectsToSearch) {
            return new UsageCrossReferencer(emfObjectsToSearch).findAllUsage(eObjectsOfInterest);
        }
    }
}

