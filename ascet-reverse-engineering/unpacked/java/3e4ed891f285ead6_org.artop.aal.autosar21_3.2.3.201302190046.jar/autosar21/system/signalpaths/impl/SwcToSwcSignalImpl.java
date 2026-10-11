/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.signalpaths.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.signalpaths.SignalpathsPackage;
import autosar21.system.signalpaths.SwcToSwcSignal;
import autosar21.system.signalpaths.instanceref.SwcToSwcSignalDataElement;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcToSwcSignalImpl
extends ARObjectImpl
implements SwcToSwcSignal {
    protected EList<SwcToSwcSignalDataElement> dataElements;

    protected SwcToSwcSignalImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SignalpathsPackage.Literals.SWC_TO_SWC_SIGNAL;
    }

    @Override
    public EList<SwcToSwcSignalDataElement> getDataElements() {
        if (this.dataElements == null) {
            this.dataElements = new EObjectContainmentWithInverseEList(SwcToSwcSignalDataElement.class, (InternalEObject)this, 4, 4);
        }
        return this.dataElements;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getDataElements()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getDataElements()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDataElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getDataElements().clear();
                this.getDataElements().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getDataElements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.dataElements != null && !this.dataElements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

