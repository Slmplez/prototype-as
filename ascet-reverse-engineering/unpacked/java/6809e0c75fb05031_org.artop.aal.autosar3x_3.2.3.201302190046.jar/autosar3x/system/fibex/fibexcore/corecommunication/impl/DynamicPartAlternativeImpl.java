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
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPartAlternative;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalIPdu;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class DynamicPartAlternativeImpl
extends ARObjectImpl
implements DynamicPartAlternative,
IReferringClass {
    protected SignalIPdu iPdu;
    protected static final Boolean INITIAL_DYNAMIC_PART_EDEFAULT = Boolean.FALSE;
    protected Boolean initialDynamicPart = INITIAL_DYNAMIC_PART_EDEFAULT;
    protected boolean initialDynamicPartESet;
    protected static final Integer SELECTOR_FIELD_CODE_EDEFAULT = new Integer(0);
    protected Integer selectorFieldCode = SELECTOR_FIELD_CODE_EDEFAULT;
    protected boolean selectorFieldCodeESet;

    protected DynamicPartAlternativeImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.DYNAMIC_PART_ALTERNATIVE;
    }

    public DynamicPart getDynamicPart() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (DynamicPart)this.eContainer();
    }

    public NotificationChain basicSetDynamicPart(DynamicPart newDynamicPart, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDynamicPart, 4, msgs);
        return msgs;
    }

    public void setDynamicPart(DynamicPart newDynamicPart) {
        if (newDynamicPart != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newDynamicPart != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDynamicPart)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDynamicPart != null) {
                msgs = ((InternalEObject)newDynamicPart).eInverseAdd((InternalEObject)this, 6, DynamicPart.class, msgs);
            }
            if ((msgs = this.basicSetDynamicPart(newDynamicPart, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDynamicPart, (Object)newDynamicPart));
        }
    }

    public SignalIPdu getIPdu() {
        if (this.iPdu != null && this.iPdu.eIsProxy()) {
            InternalEObject oldIPdu = (InternalEObject)this.iPdu;
            this.iPdu = (SignalIPdu)this.eResolveProxy(oldIPdu);
            if (this.iPdu != oldIPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldIPdu, (Object)this.iPdu));
            }
        }
        return this.iPdu;
    }

    public SignalIPdu basicGetIPdu() {
        return this.iPdu;
    }

    public void setIPdu(SignalIPdu newIPdu) {
        SignalIPdu oldIPdu = this.iPdu;
        this.iPdu = newIPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldIPdu, (Object)this.iPdu));
        }
    }

    public Boolean getInitialDynamicPart() {
        return this.initialDynamicPart;
    }

    public void setInitialDynamicPart(Boolean newInitialDynamicPart) {
        Boolean oldInitialDynamicPart = this.initialDynamicPart;
        this.initialDynamicPart = newInitialDynamicPart;
        boolean oldInitialDynamicPartESet = this.initialDynamicPartESet;
        this.initialDynamicPartESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldInitialDynamicPart, (Object)this.initialDynamicPart, !oldInitialDynamicPartESet));
        }
    }

    public void unsetInitialDynamicPart() {
        Boolean oldInitialDynamicPart = this.initialDynamicPart;
        boolean oldInitialDynamicPartESet = this.initialDynamicPartESet;
        this.initialDynamicPart = INITIAL_DYNAMIC_PART_EDEFAULT;
        this.initialDynamicPartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldInitialDynamicPart, (Object)INITIAL_DYNAMIC_PART_EDEFAULT, oldInitialDynamicPartESet));
        }
    }

    public boolean isSetInitialDynamicPart() {
        return this.initialDynamicPartESet;
    }

    public Integer getSelectorFieldCode() {
        return this.selectorFieldCode;
    }

    public void setSelectorFieldCode(Integer newSelectorFieldCode) {
        Integer oldSelectorFieldCode = this.selectorFieldCode;
        this.selectorFieldCode = newSelectorFieldCode;
        boolean oldSelectorFieldCodeESet = this.selectorFieldCodeESet;
        this.selectorFieldCodeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSelectorFieldCode, (Object)this.selectorFieldCode, !oldSelectorFieldCodeESet));
        }
    }

    public void unsetSelectorFieldCode() {
        Integer oldSelectorFieldCode = this.selectorFieldCode;
        boolean oldSelectorFieldCodeESet = this.selectorFieldCodeESet;
        this.selectorFieldCode = SELECTOR_FIELD_CODE_EDEFAULT;
        this.selectorFieldCodeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSelectorFieldCode, (Object)SELECTOR_FIELD_CODE_EDEFAULT, oldSelectorFieldCodeESet));
        }
    }

    public boolean isSetSelectorFieldCode() {
        return this.selectorFieldCodeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDynamicPart((DynamicPart)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDynamicPart(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, DynamicPart.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDynamicPart();
            }
            case 5: {
                if (resolve) {
                    return this.getIPdu();
                }
                return this.basicGetIPdu();
            }
            case 6: {
                return this.getInitialDynamicPart();
            }
            case 7: {
                return this.getSelectorFieldCode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDynamicPart((DynamicPart)newValue);
                return;
            }
            case 5: {
                this.setIPdu((SignalIPdu)newValue);
                return;
            }
            case 6: {
                this.setInitialDynamicPart((Boolean)newValue);
                return;
            }
            case 7: {
                this.setSelectorFieldCode((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDynamicPart(null);
                return;
            }
            case 5: {
                this.setIPdu(null);
                return;
            }
            case 6: {
                this.unsetInitialDynamicPart();
                return;
            }
            case 7: {
                this.unsetSelectorFieldCode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getDynamicPart() != null;
            }
            case 5: {
                return this.iPdu != null;
            }
            case 6: {
                return this.isSetInitialDynamicPart();
            }
            case 7: {
                return this.isSetSelectorFieldCode();
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (initialDynamicPart: ");
        if (this.initialDynamicPartESet) {
            result.append(this.initialDynamicPart);
        } else {
            result.append("<unset>");
        }
        result.append(", selectorFieldCode: ");
        if (this.selectorFieldCodeESet) {
            result.append(this.selectorFieldCode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

