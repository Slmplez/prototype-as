/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.triggerdeclaration.impl;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.commonstructure.triggerdeclaration.TriggerMapping;
import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.portinterface.TriggerInterfaceMapping;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class TriggerMappingImpl
extends ARObjectImpl
implements TriggerMapping,
IReferringClass {
    protected Trigger firstTrigger;
    protected Trigger secondTrigger;

    protected TriggerMappingImpl() {
    }

    protected EClass eStaticClass() {
        return TriggerdeclarationPackage.Literals.TRIGGER_MAPPING;
    }

    public TriggerInterfaceMapping getTriggerInterfaceMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (TriggerInterfaceMapping)this.eContainer();
    }

    public NotificationChain basicSetTriggerInterfaceMapping(TriggerInterfaceMapping newTriggerInterfaceMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTriggerInterfaceMapping, 4, msgs);
        return msgs;
    }

    public void setTriggerInterfaceMapping(TriggerInterfaceMapping newTriggerInterfaceMapping) {
        if (newTriggerInterfaceMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTriggerInterfaceMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTriggerInterfaceMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTriggerInterfaceMapping != null) {
                msgs = ((InternalEObject)newTriggerInterfaceMapping).eInverseAdd((InternalEObject)this, 19, TriggerInterfaceMapping.class, msgs);
            }
            if ((msgs = this.basicSetTriggerInterfaceMapping(newTriggerInterfaceMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTriggerInterfaceMapping, (Object)newTriggerInterfaceMapping));
        }
    }

    public Trigger getFirstTrigger() {
        if (this.firstTrigger != null && this.firstTrigger.eIsProxy()) {
            InternalEObject oldFirstTrigger = (InternalEObject)this.firstTrigger;
            this.firstTrigger = (Trigger)this.eResolveProxy(oldFirstTrigger);
            if (this.firstTrigger != oldFirstTrigger && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldFirstTrigger, (Object)this.firstTrigger));
            }
        }
        return this.firstTrigger;
    }

    public Trigger basicGetFirstTrigger() {
        return this.firstTrigger;
    }

    public void setFirstTrigger(Trigger newFirstTrigger) {
        Trigger oldFirstTrigger = this.firstTrigger;
        this.firstTrigger = newFirstTrigger;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldFirstTrigger, (Object)this.firstTrigger));
        }
    }

    public Trigger getSecondTrigger() {
        if (this.secondTrigger != null && this.secondTrigger.eIsProxy()) {
            InternalEObject oldSecondTrigger = (InternalEObject)this.secondTrigger;
            this.secondTrigger = (Trigger)this.eResolveProxy(oldSecondTrigger);
            if (this.secondTrigger != oldSecondTrigger && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldSecondTrigger, (Object)this.secondTrigger));
            }
        }
        return this.secondTrigger;
    }

    public Trigger basicGetSecondTrigger() {
        return this.secondTrigger;
    }

    public void setSecondTrigger(Trigger newSecondTrigger) {
        Trigger oldSecondTrigger = this.secondTrigger;
        this.secondTrigger = newSecondTrigger;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSecondTrigger, (Object)this.secondTrigger));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTriggerInterfaceMapping((TriggerInterfaceMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTriggerInterfaceMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, TriggerInterfaceMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTriggerInterfaceMapping();
            }
            case 5: {
                if (resolve) {
                    return this.getFirstTrigger();
                }
                return this.basicGetFirstTrigger();
            }
            case 6: {
                if (resolve) {
                    return this.getSecondTrigger();
                }
                return this.basicGetSecondTrigger();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTriggerInterfaceMapping((TriggerInterfaceMapping)newValue);
                return;
            }
            case 5: {
                this.setFirstTrigger((Trigger)newValue);
                return;
            }
            case 6: {
                this.setSecondTrigger((Trigger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTriggerInterfaceMapping(null);
                return;
            }
            case 5: {
                this.setFirstTrigger(null);
                return;
            }
            case 6: {
                this.setSecondTrigger(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTriggerInterfaceMapping() != null;
            }
            case 5: {
                return this.firstTrigger != null;
            }
            case 6: {
                return this.secondTrigger != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

