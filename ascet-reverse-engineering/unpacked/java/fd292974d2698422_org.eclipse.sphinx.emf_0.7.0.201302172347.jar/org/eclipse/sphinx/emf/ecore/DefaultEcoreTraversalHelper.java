/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 */
package org.eclipse.sphinx.emf.ecore;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.sphinx.emf.ecore.EcoreTraversalHelper;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DefaultEcoreTraversalHelper
implements EcoreTraversalHelper {
    @Override
    public Collection<EObject> getReachableEObjects(EObject referenceSource, EReference reference) {
        LinkedList<EObject> itemQueue = new LinkedList<EObject>();
        HashSet<EObject> visited = new HashSet<EObject>();
        ArrayList<EObject> result = new ArrayList<EObject>();
        Resource resource = referenceSource.eResource();
        if (resource != null) {
            Collection<Resource> contextResources = EcorePlatformUtil.getResourcesInScope(resource, true);
            if (!contextResources.isEmpty()) {
                for (Resource contextResource : contextResources) {
                    for (EObject eObject : contextResource.getContents()) {
                        this.collectReachableObjectsOfType(visited, itemQueue, result, eObject, reference.getEType());
                    }
                }
            } else {
                for (EObject eObject : resource.getContents()) {
                    this.collectReachableObjectsOfType(visited, itemQueue, result, eObject, reference.getEType());
                }
            }
        } else {
            this.collectReachableObjectsOfType(visited, itemQueue, result, EcoreUtil.getRootContainer((EObject)referenceSource), reference.getEType());
        }
        while (!itemQueue.isEmpty()) {
            EObject nextItem = itemQueue.removeFirst();
            this.collectReachableObjectsOfType(visited, itemQueue, result, nextItem, reference.getEType());
        }
        return result;
    }

    private void collectReachableObjectsOfType(Collection<EObject> visited, LinkedList<EObject> itemQueue, Collection<EObject> result, EObject object, EClassifier type) {
        if (this.collectReachableObjectsOfTypeUnderObject(result, object, type)) {
            return;
        }
        if (visited.add(object)) {
            if (type.isInstance((Object)object)) {
                result.add(object);
            }
            for (EStructuralFeature feature : this.getFeaturesToTraverseFor(object, type)) {
                if (feature.isDerived()) continue;
                if (feature instanceof EReference) {
                    EReference eReference = (EReference)feature;
                    if (eReference.isMany()) {
                        List list = (List)object.eGet((EStructuralFeature)eReference);
                        for (EObject eObject : list) {
                            itemQueue.addLast(eObject);
                        }
                        continue;
                    }
                    EObject eObject = (EObject)object.eGet((EStructuralFeature)eReference);
                    if (eObject == null) continue;
                    itemQueue.addLast(eObject);
                    continue;
                }
                if (!FeatureMapUtil.isFeatureMap((EStructuralFeature)feature)) continue;
                for (FeatureMap.Entry entry : (FeatureMap)object.eGet(feature)) {
                    if (!(entry.getEStructuralFeature() instanceof EReference) || entry.getValue() == null) continue;
                    itemQueue.addLast((EObject)entry.getValue());
                }
            }
        }
    }

    @Override
    public boolean collectReachableObjectsOfTypeUnderObject(Collection<EObject> result, EObject object, EClassifier type) {
        return false;
    }

    public List<EStructuralFeature> getFeaturesToTraverseFor(EObject object, EClassifier type) {
        return this.getDefaultFeaturesToTraverseFor(object, type);
    }

    protected List<EStructuralFeature> getDefaultFeaturesToTraverseFor(EObject object, EClassifier type) {
        ArrayList<EStructuralFeature> features = new ArrayList<EStructuralFeature>();
        for (EReference reference : object.eClass().getEAllReferences()) {
            if (!reference.isContainment()) continue;
            features.add((EStructuralFeature)reference);
        }
        if (type instanceof EDataType) {
            features.addAll((Collection<EStructuralFeature>)object.eClass().getEAllAttributes());
        }
        return features;
    }
}

