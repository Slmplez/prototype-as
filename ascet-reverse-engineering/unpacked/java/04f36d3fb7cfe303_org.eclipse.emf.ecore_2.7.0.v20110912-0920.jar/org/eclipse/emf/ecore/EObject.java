/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.TreeIterator
 */
package org.eclipse.emf.ecore;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.resource.Resource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EObject
extends Notifier {
    public EClass eClass();

    public Resource eResource();

    public EObject eContainer();

    public EStructuralFeature eContainingFeature();

    public EReference eContainmentFeature();

    public EList<EObject> eContents();

    public TreeIterator<EObject> eAllContents();

    public boolean eIsProxy();

    public EList<EObject> eCrossReferences();

    public Object eGet(EStructuralFeature var1);

    public Object eGet(EStructuralFeature var1, boolean var2);

    public void eSet(EStructuralFeature var1, Object var2);

    public boolean eIsSet(EStructuralFeature var1);

    public void eUnset(EStructuralFeature var1);

    public Object eInvoke(EOperation var1, EList<?> var2) throws InvocationTargetException;
}

