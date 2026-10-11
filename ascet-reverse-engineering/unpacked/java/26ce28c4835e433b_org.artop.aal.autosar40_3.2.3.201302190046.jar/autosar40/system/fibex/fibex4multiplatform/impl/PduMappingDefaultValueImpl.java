/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibex4multiplatform.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4multiplatform.DefaultValueElement;
import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import autosar40.system.fibex.fibex4multiplatform.TargetIPduRef;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PduMappingDefaultValueImpl
extends ARObjectImpl
implements PduMappingDefaultValue {
    protected EList<DefaultValueElement> defaultValueElements;

    protected PduMappingDefaultValueImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return Fibex4multiplatformPackage.Literals.PDU_MAPPING_DEFAULT_VALUE;
    }

    @Override
    public TargetIPduRef getTargetIPduRef() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (TargetIPduRef)this.eContainer();
    }

    public NotificationChain basicSetTargetIPduRef(TargetIPduRef newTargetIPduRef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTargetIPduRef, 4, msgs);
        return msgs;
    }

    @Override
    public void setTargetIPduRef(TargetIPduRef newTargetIPduRef) {
        if (newTargetIPduRef != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTargetIPduRef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTargetIPduRef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTargetIPduRef != null) {
                msgs = ((InternalEObject)newTargetIPduRef).eInverseAdd((InternalEObject)this, 5, TargetIPduRef.class, msgs);
            }
            if ((msgs = this.basicSetTargetIPduRef(newTargetIPduRef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTargetIPduRef, (Object)newTargetIPduRef));
        }
    }

    @Override
    public EList<DefaultValueElement> getDefaultValueElements() {
        if (this.defaultValueElements == null) {
            this.defaultValueElements = new EObjectContainmentWithInverseEList(DefaultValueElement.class, (InternalEObject)this, 5, 4);
        }
        return this.defaultValueElements;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTargetIPduRef((TargetIPduRef)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getDefaultValueElements()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTargetIPduRef(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getDefaultValueElements()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, TargetIPduRef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTargetIPduRef();
            }
            case 5: {
                return this.getDefaultValueElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTargetIPduRef((TargetIPduRef)newValue);
                return;
            }
            case 5: {
                this.getDefaultValueElements().clear();
                this.getDefaultValueElements().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTargetIPduRef(null);
                return;
            }
            case 5: {
                this.getDefaultValueElements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTargetIPduRef() != null;
            }
            case 5: {
                return this.defaultValueElements != null && !this.defaultValueElements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

