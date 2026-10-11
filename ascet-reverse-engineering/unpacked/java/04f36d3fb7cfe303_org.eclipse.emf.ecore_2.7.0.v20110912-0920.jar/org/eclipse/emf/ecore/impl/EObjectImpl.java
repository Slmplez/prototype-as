/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.BasicNotifierImpl$EAdapterList
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.BasicNotifierImpl;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.BasicEObjectImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectImpl
extends BasicEObjectImpl
implements EObject {
    protected static final int EDELIVER = 1;
    protected static final int EDYNAMIC_CLASS = 2;
    protected static final int EPROXY = 4;
    protected static final int ELAST_NOTIFIER_FLAG = 4;
    public static final int ELAST_EOBJECT_FLAG = 4;
    protected int eFlags = 1;
    protected BasicEList<Adapter> eAdapters;
    protected InternalEObject eContainer;
    protected int eContainerFeatureID;
    protected BasicEObjectImpl.EPropertiesHolder eProperties;

    protected EObjectImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.eINSTANCE.getEObject();
    }

    @Override
    public Object eInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        switch (operationID) {
            case 0: {
                return this.eClass();
            }
            case 1: {
                return this.eIsProxy();
            }
            case 2: {
                return this.eResource();
            }
            case 3: {
                return this.eContainer();
            }
            case 4: {
                return this.eContainingFeature();
            }
            case 5: {
                return this.eContainmentFeature();
            }
            case 6: {
                return this.eContents();
            }
            case 7: {
                return this.eAllContents();
            }
            case 8: {
                return this.eCrossReferences();
            }
            case 9: {
                return this.eGet((EStructuralFeature)arguments.get(0));
            }
            case 10: {
                return this.eGet((EStructuralFeature)arguments.get(0), (Boolean)arguments.get(1));
            }
            case 11: {
                this.eSet((EStructuralFeature)arguments.get(0), arguments.get(1));
                return null;
            }
            case 12: {
                return this.eIsSet((EStructuralFeature)arguments.get(0));
            }
            case 13: {
                this.eUnset((EStructuralFeature)arguments.get(0));
                return null;
            }
            case 14: {
                return this.eInvoke((EOperation)arguments.get(0), (EList)arguments.get(1));
            }
        }
        return this.eDynamicInvoke(operationID, arguments);
    }

    public EList<Adapter> eAdapters() {
        if (this.eAdapters == null) {
            this.eAdapters = new BasicNotifierImpl.EAdapterList((Notifier)this);
        }
        return this.eAdapters;
    }

    protected BasicEList<Adapter> eBasicAdapters() {
        return this.eAdapters;
    }

    public boolean eDeliver() {
        return (this.eFlags & 1) != 0;
    }

    public void eSetDeliver(boolean deliver) {
        this.eFlags = deliver ? (this.eFlags |= 1) : (this.eFlags &= 0xFFFFFFFE);
    }

    @Override
    public boolean eIsProxy() {
        return (this.eFlags & 4) != 0;
    }

    @Override
    public void eSetProxyURI(URI uri) {
        super.eSetProxyURI(uri);
        this.eFlags = uri != null ? (this.eFlags |= 4) : (this.eFlags &= 0xFFFFFFFB);
    }

    @Override
    protected BasicEObjectImpl.EPropertiesHolder eProperties() {
        if (this.eProperties == null) {
            this.eProperties = new BasicEObjectImpl.EPropertiesHolderImpl();
        }
        return this.eProperties;
    }

    @Override
    protected BasicEObjectImpl.EPropertiesHolder eBasicProperties() {
        return this.eProperties;
    }

    @Override
    public InternalEObject eInternalContainer() {
        return this.eContainer;
    }

    @Override
    public int eContainerFeatureID() {
        return this.eContainerFeatureID;
    }

    @Override
    protected void eBasicSetContainer(InternalEObject newContainer, int newContainerFeatureID) {
        this.eContainer = newContainer;
        this.eContainerFeatureID = newContainerFeatureID;
    }

    @Override
    public EClass eClass() {
        return (this.eFlags & 2) == 0 ? this.eStaticClass() : this.eProperties().getEClass();
    }

    @Override
    public void eSetClass(EClass eClass) {
        super.eSetClass(eClass);
        this.eFlags = eClass != null ? (this.eFlags |= 2) : (this.eFlags &= 0xFFFFFFFD);
    }
}

