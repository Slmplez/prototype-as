/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.util;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicInvocationDelegate
implements EOperation.Internal.InvocationDelegate {
    protected EOperation eOperation;

    public BasicInvocationDelegate(EOperation operation) {
        this.eOperation = operation;
    }

    @Override
    public Object dynamicInvoke(InternalEObject target, EList<?> arguments) throws InvocationTargetException {
        if (this.eOperation.getEContainingClass() == EcorePackage.Literals.EOBJECT) {
            switch (this.eOperation.getEContainingClass().getEAllOperations().indexOf((Object)this.eOperation)) {
                case 0: {
                    return target.eClass();
                }
                case 1: {
                    return target.eIsProxy();
                }
                case 2: {
                    return target.eResource();
                }
                case 3: {
                    return target.eContainer();
                }
                case 4: {
                    return target.eContainingFeature();
                }
                case 5: {
                    return target.eContainmentFeature();
                }
                case 6: {
                    return target.eContents();
                }
                case 7: {
                    return target.eAllContents();
                }
                case 8: {
                    return target.eCrossReferences();
                }
                case 9: {
                    return target.eGet((EStructuralFeature)arguments.get(0));
                }
                case 10: {
                    return target.eGet((EStructuralFeature)arguments.get(0), (Boolean)arguments.get(1));
                }
                case 11: {
                    target.eSet((EStructuralFeature)arguments.get(0), arguments.get(1));
                    return null;
                }
                case 12: {
                    return target.eIsSet((EStructuralFeature)arguments.get(0));
                }
                case 13: {
                    target.eUnset((EStructuralFeature)arguments.get(0));
                    return null;
                }
                case 14: {
                    return target.eInvoke((EOperation)arguments.get(0), (EList)arguments.get(1));
                }
            }
        }
        throw new UnsupportedOperationException("eInvoke not implemented for " + this.eOperation.getName());
    }
}

