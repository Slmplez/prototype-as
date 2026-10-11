/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.sphinx.emf.ecore;

import java.util.Collection;
import java.util.List;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcoreTraversalHelper {
    public Collection<EObject> getReachableEObjects(EObject var1, EReference var2);

    public List<? extends EStructuralFeature> getFeaturesToTraverseFor(EObject var1, EClassifier var2);

    public boolean collectReachableObjectsOfTypeUnderObject(Collection<EObject> var1, EObject var2, EClassifier var3);
}

