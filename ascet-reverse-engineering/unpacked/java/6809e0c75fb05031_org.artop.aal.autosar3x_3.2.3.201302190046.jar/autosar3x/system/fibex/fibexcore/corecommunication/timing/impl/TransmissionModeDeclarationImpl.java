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
package autosar3x.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeCondition;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeFalseTiming;
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
public class TransmissionModeDeclarationImpl
extends ARObjectImpl
implements TransmissionModeDeclaration {
    protected EList<TransmissionModeCondition> transmissionModeConditions;
    protected TransmissionModeFalseTiming transmissionModeFalseTiming;

    protected TransmissionModeDeclarationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TimingPackage.Literals.TRANSMISSION_MODE_DECLARATION;
    }

    @Override
    public IPduTiming getIPduTiming() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (IPduTiming)this.eContainer();
    }

    public NotificationChain basicSetIPduTiming(IPduTiming newIPduTiming, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newIPduTiming, 4, msgs);
        return msgs;
    }

    @Override
    public void setIPduTiming(IPduTiming newIPduTiming) {
        if (newIPduTiming != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newIPduTiming != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newIPduTiming)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newIPduTiming != null) {
                msgs = ((InternalEObject)newIPduTiming).eInverseAdd((InternalEObject)this, 8, IPduTiming.class, msgs);
            }
            if ((msgs = this.basicSetIPduTiming(newIPduTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newIPduTiming, (Object)newIPduTiming));
        }
    }

    @Override
    public EList<TransmissionModeCondition> getTransmissionModeConditions() {
        if (this.transmissionModeConditions == null) {
            this.transmissionModeConditions = new EObjectContainmentWithInverseEList(TransmissionModeCondition.class, (InternalEObject)this, 5, 4);
        }
        return this.transmissionModeConditions;
    }

    @Override
    public TransmissionModeFalseTiming getTransmissionModeFalseTiming() {
        return this.transmissionModeFalseTiming;
    }

    public NotificationChain basicSetTransmissionModeFalseTiming(TransmissionModeFalseTiming newTransmissionModeFalseTiming, NotificationChain msgs) {
        TransmissionModeFalseTiming oldTransmissionModeFalseTiming = this.transmissionModeFalseTiming;
        this.transmissionModeFalseTiming = newTransmissionModeFalseTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTransmissionModeFalseTiming, (Object)newTransmissionModeFalseTiming);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTransmissionModeFalseTiming(TransmissionModeFalseTiming newTransmissionModeFalseTiming) {
        if (newTransmissionModeFalseTiming != this.transmissionModeFalseTiming) {
            NotificationChain msgs = null;
            if (this.transmissionModeFalseTiming != null) {
                msgs = ((InternalEObject)this.transmissionModeFalseTiming).eInverseRemove((InternalEObject)this, 4, TransmissionModeFalseTiming.class, msgs);
            }
            if (newTransmissionModeFalseTiming != null) {
                msgs = ((InternalEObject)newTransmissionModeFalseTiming).eInverseAdd((InternalEObject)this, 4, TransmissionModeFalseTiming.class, msgs);
            }
            if ((msgs = this.basicSetTransmissionModeFalseTiming(newTransmissionModeFalseTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newTransmissionModeFalseTiming, (Object)newTransmissionModeFalseTiming));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetIPduTiming((IPduTiming)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getTransmissionModeConditions()).basicAdd((Object)otherEnd, msgs);
            }
            case 6: {
                if (this.transmissionModeFalseTiming != null) {
                    msgs = ((InternalEObject)this.transmissionModeFalseTiming).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetTransmissionModeFalseTiming((TransmissionModeFalseTiming)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetIPduTiming(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getTransmissionModeConditions()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return this.basicSetTransmissionModeFalseTiming(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, IPduTiming.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getIPduTiming();
            }
            case 5: {
                return this.getTransmissionModeConditions();
            }
            case 6: {
                return this.getTransmissionModeFalseTiming();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setIPduTiming((IPduTiming)newValue);
                return;
            }
            case 5: {
                this.getTransmissionModeConditions().clear();
                this.getTransmissionModeConditions().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setTransmissionModeFalseTiming((TransmissionModeFalseTiming)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setIPduTiming(null);
                return;
            }
            case 5: {
                this.getTransmissionModeConditions().clear();
                return;
            }
            case 6: {
                this.setTransmissionModeFalseTiming(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getIPduTiming() != null;
            }
            case 5: {
                return this.transmissionModeConditions != null && !this.transmissionModeConditions.isEmpty();
            }
            case 6: {
                return this.transmissionModeFalseTiming != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

