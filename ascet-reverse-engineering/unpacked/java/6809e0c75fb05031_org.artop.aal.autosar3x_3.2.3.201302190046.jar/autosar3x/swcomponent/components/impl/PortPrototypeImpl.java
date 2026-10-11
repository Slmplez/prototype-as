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
package autosar3x.swcomponent.components.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.swcomponent.applicationattributes.CalibrationPortAnnotation;
import autosar3x.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar3x.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar3x.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.PortPrototype;
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
public class PortPrototypeImpl
extends IdentifiableImpl
implements PortPrototype {
    protected EList<CalibrationPortAnnotation> calibrationPortAnnotations;
    protected DelegatedPortAnnotation delegatedPortAnnotation;
    protected EList<IoHwAbstractionServerAnnotation> ioHwAbstractionServerAnnotations;
    protected EList<SenderReceiverAnnotation> senderReceiverAnnotations;

    protected PortPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.PORT_PROTOTYPE;
    }

    @Override
    public ComponentType getComponentType() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (ComponentType)this.eContainer();
    }

    public NotificationChain basicSetComponentType(ComponentType newComponentType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newComponentType, 17, msgs);
        return msgs;
    }

    @Override
    public void setComponentType(ComponentType newComponentType) {
        if (newComponentType != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newComponentType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newComponentType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newComponentType != null) {
                msgs = ((InternalEObject)newComponentType).eInverseAdd((InternalEObject)this, 20, ComponentType.class, msgs);
            }
            if ((msgs = this.basicSetComponentType(newComponentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newComponentType, (Object)newComponentType));
        }
    }

    @Override
    public EList<CalibrationPortAnnotation> getCalibrationPortAnnotations() {
        if (this.calibrationPortAnnotations == null) {
            this.calibrationPortAnnotations = new EObjectContainmentWithInverseEList(CalibrationPortAnnotation.class, (InternalEObject)this, 18, 9);
        }
        return this.calibrationPortAnnotations;
    }

    @Override
    public DelegatedPortAnnotation getDelegatedPortAnnotation() {
        return this.delegatedPortAnnotation;
    }

    public NotificationChain basicSetDelegatedPortAnnotation(DelegatedPortAnnotation newDelegatedPortAnnotation, NotificationChain msgs) {
        DelegatedPortAnnotation oldDelegatedPortAnnotation = this.delegatedPortAnnotation;
        this.delegatedPortAnnotation = newDelegatedPortAnnotation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldDelegatedPortAnnotation, (Object)newDelegatedPortAnnotation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDelegatedPortAnnotation(DelegatedPortAnnotation newDelegatedPortAnnotation) {
        if (newDelegatedPortAnnotation != this.delegatedPortAnnotation) {
            NotificationChain msgs = null;
            if (this.delegatedPortAnnotation != null) {
                msgs = ((InternalEObject)this.delegatedPortAnnotation).eInverseRemove((InternalEObject)this, 9, DelegatedPortAnnotation.class, msgs);
            }
            if (newDelegatedPortAnnotation != null) {
                msgs = ((InternalEObject)newDelegatedPortAnnotation).eInverseAdd((InternalEObject)this, 9, DelegatedPortAnnotation.class, msgs);
            }
            if ((msgs = this.basicSetDelegatedPortAnnotation(newDelegatedPortAnnotation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newDelegatedPortAnnotation, (Object)newDelegatedPortAnnotation));
        }
    }

    @Override
    public EList<IoHwAbstractionServerAnnotation> getIoHwAbstractionServerAnnotations() {
        if (this.ioHwAbstractionServerAnnotations == null) {
            this.ioHwAbstractionServerAnnotations = new EObjectContainmentWithInverseEList(IoHwAbstractionServerAnnotation.class, (InternalEObject)this, 20, 9);
        }
        return this.ioHwAbstractionServerAnnotations;
    }

    @Override
    public EList<SenderReceiverAnnotation> getSenderReceiverAnnotations() {
        if (this.senderReceiverAnnotations == null) {
            this.senderReceiverAnnotations = new EObjectContainmentWithInverseEList(SenderReceiverAnnotation.class, (InternalEObject)this, 21, 9);
        }
        return this.senderReceiverAnnotations;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetComponentType((ComponentType)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getCalibrationPortAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
            case 19: {
                if (this.delegatedPortAnnotation != null) {
                    msgs = ((InternalEObject)this.delegatedPortAnnotation).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetDelegatedPortAnnotation((DelegatedPortAnnotation)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getIoHwAbstractionServerAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getSenderReceiverAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetComponentType(null, msgs);
            }
            case 18: {
                return ((InternalEList)this.getCalibrationPortAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return this.basicSetDelegatedPortAnnotation(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getIoHwAbstractionServerAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getSenderReceiverAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, ComponentType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getComponentType();
            }
            case 18: {
                return this.getCalibrationPortAnnotations();
            }
            case 19: {
                return this.getDelegatedPortAnnotation();
            }
            case 20: {
                return this.getIoHwAbstractionServerAnnotations();
            }
            case 21: {
                return this.getSenderReceiverAnnotations();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setComponentType((ComponentType)newValue);
                return;
            }
            case 18: {
                this.getCalibrationPortAnnotations().clear();
                this.getCalibrationPortAnnotations().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.setDelegatedPortAnnotation((DelegatedPortAnnotation)newValue);
                return;
            }
            case 20: {
                this.getIoHwAbstractionServerAnnotations().clear();
                this.getIoHwAbstractionServerAnnotations().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getSenderReceiverAnnotations().clear();
                this.getSenderReceiverAnnotations().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setComponentType(null);
                return;
            }
            case 18: {
                this.getCalibrationPortAnnotations().clear();
                return;
            }
            case 19: {
                this.setDelegatedPortAnnotation(null);
                return;
            }
            case 20: {
                this.getIoHwAbstractionServerAnnotations().clear();
                return;
            }
            case 21: {
                this.getSenderReceiverAnnotations().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getComponentType() != null;
            }
            case 18: {
                return this.calibrationPortAnnotations != null && !this.calibrationPortAnnotations.isEmpty();
            }
            case 19: {
                return this.delegatedPortAnnotation != null;
            }
            case 20: {
                return this.ioHwAbstractionServerAnnotations != null && !this.ioHwAbstractionServerAnnotations.isEmpty();
            }
            case 21: {
                return this.senderReceiverAnnotations != null && !this.senderReceiverAnnotations.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

