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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar40.system.fibex.fibexcore.corecommunication.timing.ModeDrivenTransmissionModeCondition;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeCondition;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeTiming;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TransmissionModeDeclarationImpl
extends ARObjectImpl
implements TransmissionModeDeclaration {
    protected EList<ModeDrivenTransmissionModeCondition> modeDrivenFalseConditions;
    protected EList<ModeDrivenTransmissionModeCondition> modeDrivenTrueConditions;
    protected EList<TransmissionModeCondition> transmissionModeConditions;
    protected TransmissionModeTiming transmissionModeFalseTiming;
    protected TransmissionModeTiming transmissionModeTrueTiming;

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
                msgs = ((InternalEObject)newIPduTiming).eInverseAdd((InternalEObject)this, 6, IPduTiming.class, msgs);
            }
            if ((msgs = this.basicSetIPduTiming(newIPduTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newIPduTiming, (Object)newIPduTiming));
        }
    }

    @Override
    public EList<ModeDrivenTransmissionModeCondition> getModeDrivenFalseConditions() {
        if (this.modeDrivenFalseConditions == null) {
            this.modeDrivenFalseConditions = new EObjectContainmentEList(ModeDrivenTransmissionModeCondition.class, (InternalEObject)this, 5);
        }
        return this.modeDrivenFalseConditions;
    }

    @Override
    public EList<ModeDrivenTransmissionModeCondition> getModeDrivenTrueConditions() {
        if (this.modeDrivenTrueConditions == null) {
            this.modeDrivenTrueConditions = new EObjectContainmentEList(ModeDrivenTransmissionModeCondition.class, (InternalEObject)this, 6);
        }
        return this.modeDrivenTrueConditions;
    }

    @Override
    public EList<TransmissionModeCondition> getTransmissionModeConditions() {
        if (this.transmissionModeConditions == null) {
            this.transmissionModeConditions = new EObjectContainmentWithInverseEList(TransmissionModeCondition.class, (InternalEObject)this, 7, 4);
        }
        return this.transmissionModeConditions;
    }

    @Override
    public TransmissionModeTiming getTransmissionModeFalseTiming() {
        return this.transmissionModeFalseTiming;
    }

    public NotificationChain basicSetTransmissionModeFalseTiming(TransmissionModeTiming newTransmissionModeFalseTiming, NotificationChain msgs) {
        TransmissionModeTiming oldTransmissionModeFalseTiming = this.transmissionModeFalseTiming;
        this.transmissionModeFalseTiming = newTransmissionModeFalseTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTransmissionModeFalseTiming, (Object)newTransmissionModeFalseTiming);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTransmissionModeFalseTiming(TransmissionModeTiming newTransmissionModeFalseTiming) {
        if (newTransmissionModeFalseTiming != this.transmissionModeFalseTiming) {
            NotificationChain msgs = null;
            if (this.transmissionModeFalseTiming != null) {
                msgs = ((InternalEObject)this.transmissionModeFalseTiming).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newTransmissionModeFalseTiming != null) {
                msgs = ((InternalEObject)newTransmissionModeFalseTiming).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetTransmissionModeFalseTiming(newTransmissionModeFalseTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newTransmissionModeFalseTiming, (Object)newTransmissionModeFalseTiming));
        }
    }

    @Override
    public TransmissionModeTiming getTransmissionModeTrueTiming() {
        return this.transmissionModeTrueTiming;
    }

    public NotificationChain basicSetTransmissionModeTrueTiming(TransmissionModeTiming newTransmissionModeTrueTiming, NotificationChain msgs) {
        TransmissionModeTiming oldTransmissionModeTrueTiming = this.transmissionModeTrueTiming;
        this.transmissionModeTrueTiming = newTransmissionModeTrueTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldTransmissionModeTrueTiming, (Object)newTransmissionModeTrueTiming);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTransmissionModeTrueTiming(TransmissionModeTiming newTransmissionModeTrueTiming) {
        if (newTransmissionModeTrueTiming != this.transmissionModeTrueTiming) {
            NotificationChain msgs = null;
            if (this.transmissionModeTrueTiming != null) {
                msgs = ((InternalEObject)this.transmissionModeTrueTiming).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newTransmissionModeTrueTiming != null) {
                msgs = ((InternalEObject)newTransmissionModeTrueTiming).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetTransmissionModeTrueTiming(newTransmissionModeTrueTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newTransmissionModeTrueTiming, (Object)newTransmissionModeTrueTiming));
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
            case 7: {
                return ((InternalEList)this.getTransmissionModeConditions()).basicAdd((Object)otherEnd, msgs);
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
                return ((InternalEList)this.getModeDrivenFalseConditions()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getModeDrivenTrueConditions()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getTransmissionModeConditions()).basicRemove((Object)otherEnd, msgs);
            }
            case 8: {
                return this.basicSetTransmissionModeFalseTiming(null, msgs);
            }
            case 9: {
                return this.basicSetTransmissionModeTrueTiming(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, IPduTiming.class, msgs);
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
                return this.getModeDrivenFalseConditions();
            }
            case 6: {
                return this.getModeDrivenTrueConditions();
            }
            case 7: {
                return this.getTransmissionModeConditions();
            }
            case 8: {
                return this.getTransmissionModeFalseTiming();
            }
            case 9: {
                return this.getTransmissionModeTrueTiming();
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
                this.getModeDrivenFalseConditions().clear();
                this.getModeDrivenFalseConditions().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getModeDrivenTrueConditions().clear();
                this.getModeDrivenTrueConditions().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getTransmissionModeConditions().clear();
                this.getTransmissionModeConditions().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setTransmissionModeFalseTiming((TransmissionModeTiming)newValue);
                return;
            }
            case 9: {
                this.setTransmissionModeTrueTiming((TransmissionModeTiming)newValue);
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
                this.getModeDrivenFalseConditions().clear();
                return;
            }
            case 6: {
                this.getModeDrivenTrueConditions().clear();
                return;
            }
            case 7: {
                this.getTransmissionModeConditions().clear();
                return;
            }
            case 8: {
                this.setTransmissionModeFalseTiming(null);
                return;
            }
            case 9: {
                this.setTransmissionModeTrueTiming(null);
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
                return this.modeDrivenFalseConditions != null && !this.modeDrivenFalseConditions.isEmpty();
            }
            case 6: {
                return this.modeDrivenTrueConditions != null && !this.modeDrivenTrueConditions.isEmpty();
            }
            case 7: {
                return this.transmissionModeConditions != null && !this.transmissionModeConditions.isEmpty();
            }
            case 8: {
                return this.transmissionModeFalseTiming != null;
            }
            case 9: {
                return this.transmissionModeTrueTiming != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

