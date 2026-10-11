/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.AbstractTreeIterator
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EStructuralFeature$Setting
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.ECrossReferenceAdapter
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMapUtil$FeatureEList
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.sphinx.emf.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.AbstractTreeIterator;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.ECrossReferenceAdapter;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.ecore.ECrossReferenceAdapterFactory;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.resource.ExtendedResource;
import org.eclipse.sphinx.emf.resource.ExtendedResourceAdapterFactory;
import org.eclipse.sphinx.emf.resource.ProxyURIIntegrityException;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class EObjectUtil {
    public static final int DEPTH_ZERO = 0;
    public static final int DEPTH_ONE = 1;
    public static final int DEPTH_INFINITE = 2;

    private EObjectUtil() {
    }

    public static List<EObject> getAllInstancesOf(EObject contextObject, EReference eReference, boolean exactMatch) {
        Assert.isNotNull((Object)eReference);
        Class instanceClass = eReference.getEReferenceType().getInstanceClass();
        List<EObject> instances = EObjectUtil.getAllInstancesOf(contextObject, instanceClass, exactMatch);
        return instances;
    }

    public static <T> List<T> getAllInstancesOf(EObject contextObject, Class<T> type, boolean exactMatch) {
        if (contextObject != null) {
            Collection<Resource> resources = EcorePlatformUtil.getResourcesInModel(contextObject, true);
            if (!resources.isEmpty()) {
                return EObjectUtil.getAllInstancesOf(resources, type, exactMatch);
            }
            EObject rootContainer = EcoreUtil.getRootContainer((EObject)contextObject);
            return EObjectUtil.getAllInstancesOf(EObjectUtil.getAllContentsIncludingRoot(rootContainer), type, exactMatch);
        }
        return Collections.emptyList();
    }

    public static <T> List<T> getAllInstancesOf(Resource contextResource, Class<T> type, boolean exactMatch) {
        Collection<Resource> resources = EcorePlatformUtil.getResourcesInModel(contextResource, true);
        return EObjectUtil.getAllInstancesOf(resources, type, exactMatch);
    }

    public static <T> List<T> getAllInstancesOf(IModelDescriptor modelDescriptor, Class<T> type, boolean exactMatch) {
        Collection<Resource> resources = EcorePlatformUtil.getResourcesInModel(modelDescriptor, true);
        return EObjectUtil.getAllInstancesOf(resources, type, exactMatch);
    }

    public static <T> List<T> getAllInstancesOf(Collection<Resource> resources, Class<T> type, boolean exactMatch) {
        Assert.isNotNull(resources);
        Assert.isNotNull(type);
        ArrayList<T> instances = new ArrayList<T>();
        for (Resource resource : resources) {
            instances.addAll(EObjectUtil.getAllInstancesOf((TreeIterator<EObject>)resource.getAllContents(), type, exactMatch));
        }
        return instances;
    }

    public static <T> List<T> getReferencedInstancesOf(EObject owner, EReference reference, Class<T> type, boolean exactMatch) {
        Assert.isNotNull((Object)owner);
        Assert.isNotNull((Object)reference);
        Assert.isNotNull(type);
        ArrayList<T> instances = new ArrayList<T>();
        if (reference.isMany()) {
            EList values = (EList)owner.eGet((EStructuralFeature)reference);
            for (EObject value : values) {
                if (!EObjectUtil.isInstanceOf(value, type, exactMatch)) continue;
                instances.add(type.cast(value));
            }
        }
        return instances;
    }

    private static AbstractTreeIterator<EObject> getAllContentsIncludingRoot(EObject contextObject) {
        AbstractTreeIterator<EObject> allContents = new AbstractTreeIterator<EObject>((Object)contextObject, true){
            private static final long serialVersionUID = 1L;

            public Iterator<EObject> getChildren(Object object) {
                return ((EObject)object).eContents().iterator();
            }
        };
        return allContents;
    }

    private static <T> List<T> getAllInstancesOf(TreeIterator<EObject> allContents, Class<T> type, boolean exactMatch) {
        ArrayList<T> instances = new ArrayList<T>();
        TreeIterator<EObject> iter = allContents;
        while (iter.hasNext()) {
            EObject eObject = (EObject)iter.next();
            if (!EObjectUtil.isInstanceOf(eObject, type, exactMatch)) continue;
            instances.add(type.cast(eObject));
        }
        return instances;
    }

    private static <T> boolean isInstanceOf(EObject eObject, Class<T> type, boolean exactMatch) {
        return type.isInstance(eObject) && (!exactMatch || eObject.getClass() == type || eObject.eClass().getInstanceClass() == type);
    }

    public static Collection<EStructuralFeature.Setting> getInverseReferences(EObject object, boolean resolve) {
        ECrossReferenceAdapter adapter;
        Object context = null;
        EObject modelRoot = EcoreUtil.getRootContainer((EObject)object);
        if (modelRoot != null) {
            ResourceSet resourceSet;
            Resource resource = modelRoot.eResource();
            context = resource != null ? ((resourceSet = resource.getResourceSet()) != null ? resourceSet : resource) : modelRoot;
        }
        if ((adapter = ECrossReferenceAdapterFactory.INSTANCE.adapt((Notifier)context)) != null) {
            return adapter.getInverseReferences(object, resolve);
        }
        return Collections.emptyList();
    }

    public static EClassifier findEClassifier(EPackage rootEPackage, Class<?> type) {
        Assert.isNotNull(type);
        return EObjectUtil.findEClassifier(rootEPackage, type.getSimpleName());
    }

    public static EClassifier findEClassifier(EPackage rootEPackage, String typeName) {
        Assert.isNotNull((Object)rootEPackage);
        EClassifier eClassifier = rootEPackage.getEClassifier(typeName);
        if (eClassifier != null) {
            return eClassifier;
        }
        for (EPackage eSubPackage : rootEPackage.getESubpackages()) {
            eClassifier = EObjectUtil.findEClassifier(eSubPackage, typeName);
            if (eClassifier == null) continue;
            return eClassifier;
        }
        return null;
    }

    public static List<EClass> findESubTypesOf(EClass eClass, boolean concreteTypesOnly) {
        IMetaModelDescriptor mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(eClass);
        if (mmDescriptor != null) {
            ArrayList<EClass> subTypes = new ArrayList<EClass>();
            for (EPackage ePackage : mmDescriptor.getEPackages()) {
                for (EClassifier eClassifier : ePackage.getEClassifiers()) {
                    EClass otherEClass;
                    if (!(eClassifier instanceof EClass) || !eClass.isSuperTypeOf(otherEClass = (EClass)eClassifier) || eClass == otherEClass || (otherEClass.isAbstract() || otherEClass.isInterface()) && concreteTypesOnly) continue;
                    subTypes.add((EClass)eClassifier);
                }
            }
            return Collections.unmodifiableList(subTypes);
        }
        return Collections.emptyList();
    }

    public static boolean isAssignableFrom(EClass eClass, String typeName) {
        Assert.isNotNull((Object)eClass);
        Assert.isNotNull((Object)typeName);
        if (typeName.equals(EObject.class.getName()) || typeName.equals(EObject.class.getSimpleName())) {
            return true;
        }
        if (eClass.getName().equals(typeName) || eClass.getInstanceClassName() != null && eClass.getInstanceClassName().equals(typeName)) {
            return true;
        }
        for (EClass superType : eClass.getESuperTypes()) {
            if (!EObjectUtil.isAssignableFrom(superType, typeName)) continue;
            return true;
        }
        return false;
    }

    public static List<EClassifier> getEContainerClassifiers(EClass eClass) {
        Assert.isNotNull((Object)eClass);
        ArrayList<EClassifier> containerClassifiers = new ArrayList<EClassifier>();
        for (EReference reference : eClass.getEAllReferences()) {
            if (!reference.isContainer()) continue;
            containerClassifiers.add(reference.getEType());
        }
        return containerClassifiers;
    }

    public static List<EClassifier> getAnnotatedEClassifiers(EPackage ePackage, String annotationSource, String detailKey, String detailValue) {
        Assert.isNotNull((Object)ePackage);
        ArrayList<EClassifier> classifiers = new ArrayList<EClassifier>();
        for (EClassifier eClassifier : ePackage.getEClassifiers()) {
            String value = EcoreUtil.getAnnotation((EModelElement)eClassifier, (String)annotationSource, (String)detailKey);
            if (value == null || !value.equalsIgnoreCase(detailValue)) continue;
            classifiers.add(eClassifier);
        }
        return classifiers;
    }

    public static EStructuralFeature getEStructuralFeature(Object owner, String featureName) {
        if (owner instanceof EClass) {
            return ((EClass)owner).getEStructuralFeature(featureName);
        }
        if (owner instanceof EObject) {
            return ((EObject)owner).eClass().getEStructuralFeature(featureName);
        }
        return null;
    }

    public static EStructuralFeature getEStructuralFeature(Object owner, int featureID) {
        if (owner instanceof EClass) {
            return ((EClass)owner).getEStructuralFeature(featureID);
        }
        if (owner instanceof EObject) {
            return ((EObject)owner).eClass().getEStructuralFeature(featureID);
        }
        return null;
    }

    public static List<EObject> getOrphans(EObject owner, EReference reference) {
        Assert.isNotNull((Object)owner);
        Assert.isNotNull((Object)reference);
        ArrayList<EObject> values = new ArrayList<EObject>();
        if (reference.isMany()) {
            List valueObjects = (List)owner.eGet((EStructuralFeature)reference);
            values.addAll(valueObjects);
        } else {
            values.add((EObject)owner.eGet((EStructuralFeature)reference));
        }
        ArrayList<EObject> orphans = new ArrayList<EObject>();
        for (EObject value : values) {
            boolean orphan = true;
            for (EReference valueReference : value.eClass().getEAllReferences()) {
                if (!valueReference.isContainment() && !valueReference.isContainer() && valueReference.getEType() instanceof EClass) {
                    ArrayList<EObject> valuesOfValue = new ArrayList<EObject>();
                    if (valueReference.isMany()) {
                        List valueObjectsOfValue = (List)value.eGet((EStructuralFeature)valueReference);
                        valuesOfValue.addAll(valueObjectsOfValue);
                    } else {
                        valuesOfValue.add((EObject)value.eGet((EStructuralFeature)valueReference));
                    }
                    for (EObject valueOfValue : valuesOfValue) {
                        if (valueOfValue == null || valueOfValue == owner) continue;
                        orphan = false;
                        break;
                    }
                }
                if (!orphan) break;
            }
            if (!orphan) continue;
            orphans.add(value);
        }
        return orphans;
    }

    public static String getMixedText(FeatureMap mixed) {
        Object text;
        FeatureMapUtil.FeatureEList featureEList;
        Assert.isNotNull((Object)mixed);
        Object textObject = mixed.get((EStructuralFeature)XMLTypePackage.eINSTANCE.getXMLTypeDocumentRoot_Text(), true);
        if (textObject instanceof FeatureMapUtil.FeatureEList && (featureEList = (FeatureMapUtil.FeatureEList)textObject).size() != 0 && (text = featureEList.get(0)) instanceof String) {
            return (String)text;
        }
        return "";
    }

    public static void setMixedText(FeatureMap mixed, String text) {
        Assert.isNotNull((Object)mixed);
        mixed.clear();
        if (text != null) {
            mixed.add((EStructuralFeature)XMLTypePackage.eINSTANCE.getXMLTypeDocumentRoot_Text(), (Object)text);
        }
    }

    public static EObject proxify(EObject eObject) {
        return EObjectUtil.proxify(null, null, eObject);
    }

    public static EObject proxify(EObject oldOwner, EStructuralFeature oldFeature, EObject eObject) {
        if (eObject != null) {
            Resource resource = eObject.eResource();
            if (resource == null && oldOwner != null) {
                resource = oldOwner.eResource();
            }
            if (!eObject.eIsProxy()) {
                ExtendedResource extendedResource = ExtendedResourceAdapterFactory.INSTANCE.adapt((Notifier)resource);
                URI uri = extendedResource != null ? extendedResource.getURI(oldOwner, oldFeature, eObject) : EcoreUtil.getURI((EObject)eObject);
                ((InternalEObject)eObject).eSetProxyURI(uri);
            }
            for (EObject child : eObject.eContents()) {
                EObjectUtil.proxify(oldOwner, oldFeature, child);
            }
        }
        return eObject;
    }

    public static EObject deproxify(EObject eObject) {
        if (eObject != null) {
            if (eObject.eIsProxy() && eObject instanceof InternalEObject) {
                ((InternalEObject)eObject).eSetProxyURI(null);
            }
            TreeIterator iter = eObject.eAllContents();
            while (iter.hasNext()) {
                EObjectUtil.deproxify((EObject)iter.next());
            }
        }
        return eObject;
    }

    public static EObject createProxyFrom(EObject eObject) {
        Assert.isNotNull((Object)eObject);
        EFactory eFactoryInstance = eObject.eClass().getEPackage().getEFactoryInstance();
        InternalEObject proxy = (InternalEObject)eFactoryInstance.create(eObject.eClass());
        ExtendedResource extendedResource = ExtendedResourceAdapterFactory.INSTANCE.adapt((Notifier)eObject.eResource());
        URI uri = extendedResource != null ? extendedResource.getURI(eObject) : EcoreUtil.getURI((EObject)eObject);
        proxy.eSetProxyURI(uri);
        return proxy;
    }

    public static void resolveAll(Resource resource) {
        TreeIterator i = resource.getAllContents();
        while (i.hasNext()) {
            EObject eObject = (EObject)i.next();
            EObjectUtil.resolveCrossReferences(eObject);
        }
    }

    private static void resolveCrossReferences(EObject eObject) {
        block3: {
            try {
                Iterator i = eObject.eCrossReferences().iterator();
                while (i.hasNext()) {
                    i.next();
                }
            }
            catch (Exception ex) {
                Resource resource = eObject.eResource();
                if (resource == null || !EcoreResourceUtil.exists(resource.getURI())) break block3;
                resource.getErrors().add((Object)new ProxyURIIntegrityException(NLS.bind((String)Messages.error_problemOccurredWhenResolvingReferencesOfObject, (Object)eObject.eClass().getName()), ex));
            }
        }
    }
}

