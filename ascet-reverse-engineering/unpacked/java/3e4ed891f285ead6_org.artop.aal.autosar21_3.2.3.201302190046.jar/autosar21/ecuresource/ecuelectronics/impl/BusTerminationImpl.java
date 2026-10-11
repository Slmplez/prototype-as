/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.ecuresource.ecuelectronics.impl;

import autosar21.ecuresource.ecuelectronics.BusTermination;
import autosar21.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class BusTerminationImpl
extends ARObjectImpl
implements BusTermination {
    protected static final Boolean ACTIVE_SWITCHABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean activeSwitchable = ACTIVE_SWITCHABLE_EDEFAULT;
    protected boolean activeSwitchableESet;
    protected static final Boolean CHOKE_EDEFAULT = Boolean.FALSE;
    protected Boolean choke = CHOKE_EDEFAULT;
    protected boolean chokeESet;
    protected static final Boolean EMC_FILTER_EDEFAULT = Boolean.FALSE;
    protected Boolean emcFilter = EMC_FILTER_EDEFAULT;
    protected boolean emcFilterESet;
    protected static final Boolean SPLIT_EDEFAULT = Boolean.FALSE;
    protected Boolean split = SPLIT_EDEFAULT;
    protected boolean splitESet;
    protected static final Integer VALUE_EDEFAULT = new Integer(0);
    protected Integer value = VALUE_EDEFAULT;
    protected boolean valueESet;

    protected BusTerminationImpl() {
    }

    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.BUS_TERMINATION;
    }

    public CommunicationTransceiver getCommunicationTransceiver() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CommunicationTransceiver)this.eContainer();
    }

    public NotificationChain basicSetCommunicationTransceiver(CommunicationTransceiver newCommunicationTransceiver, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationTransceiver, 4, msgs);
        return msgs;
    }

    public void setCommunicationTransceiver(CommunicationTransceiver newCommunicationTransceiver) {
        if (newCommunicationTransceiver != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCommunicationTransceiver != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationTransceiver)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationTransceiver != null) {
                msgs = ((InternalEObject)newCommunicationTransceiver).eInverseAdd((InternalEObject)this, 29, CommunicationTransceiver.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationTransceiver(newCommunicationTransceiver, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCommunicationTransceiver, (Object)newCommunicationTransceiver));
        }
    }

    public Boolean getActiveSwitchable() {
        return this.activeSwitchable;
    }

    public void setActiveSwitchable(Boolean newActiveSwitchable) {
        Boolean oldActiveSwitchable = this.activeSwitchable;
        this.activeSwitchable = newActiveSwitchable;
        boolean oldActiveSwitchableESet = this.activeSwitchableESet;
        this.activeSwitchableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldActiveSwitchable, (Object)this.activeSwitchable, !oldActiveSwitchableESet));
        }
    }

    public void unsetActiveSwitchable() {
        Boolean oldActiveSwitchable = this.activeSwitchable;
        boolean oldActiveSwitchableESet = this.activeSwitchableESet;
        this.activeSwitchable = ACTIVE_SWITCHABLE_EDEFAULT;
        this.activeSwitchableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldActiveSwitchable, (Object)ACTIVE_SWITCHABLE_EDEFAULT, oldActiveSwitchableESet));
        }
    }

    public boolean isSetActiveSwitchable() {
        return this.activeSwitchableESet;
    }

    public Boolean getChoke() {
        return this.choke;
    }

    public void setChoke(Boolean newChoke) {
        Boolean oldChoke = this.choke;
        this.choke = newChoke;
        boolean oldChokeESet = this.chokeESet;
        this.chokeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldChoke, (Object)this.choke, !oldChokeESet));
        }
    }

    public void unsetChoke() {
        Boolean oldChoke = this.choke;
        boolean oldChokeESet = this.chokeESet;
        this.choke = CHOKE_EDEFAULT;
        this.chokeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldChoke, (Object)CHOKE_EDEFAULT, oldChokeESet));
        }
    }

    public boolean isSetChoke() {
        return this.chokeESet;
    }

    public Boolean getEmcFilter() {
        return this.emcFilter;
    }

    public void setEmcFilter(Boolean newEmcFilter) {
        Boolean oldEmcFilter = this.emcFilter;
        this.emcFilter = newEmcFilter;
        boolean oldEmcFilterESet = this.emcFilterESet;
        this.emcFilterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldEmcFilter, (Object)this.emcFilter, !oldEmcFilterESet));
        }
    }

    public void unsetEmcFilter() {
        Boolean oldEmcFilter = this.emcFilter;
        boolean oldEmcFilterESet = this.emcFilterESet;
        this.emcFilter = EMC_FILTER_EDEFAULT;
        this.emcFilterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldEmcFilter, (Object)EMC_FILTER_EDEFAULT, oldEmcFilterESet));
        }
    }

    public boolean isSetEmcFilter() {
        return this.emcFilterESet;
    }

    public Boolean getSplit() {
        return this.split;
    }

    public void setSplit(Boolean newSplit) {
        Boolean oldSplit = this.split;
        this.split = newSplit;
        boolean oldSplitESet = this.splitESet;
        this.splitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSplit, (Object)this.split, !oldSplitESet));
        }
    }

    public void unsetSplit() {
        Boolean oldSplit = this.split;
        boolean oldSplitESet = this.splitESet;
        this.split = SPLIT_EDEFAULT;
        this.splitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSplit, (Object)SPLIT_EDEFAULT, oldSplitESet));
        }
    }

    public boolean isSetSplit() {
        return this.splitESet;
    }

    public Integer getValue() {
        return this.value;
    }

    public void setValue(Integer newValue) {
        Integer oldValue = this.value;
        this.value = newValue;
        boolean oldValueESet = this.valueESet;
        this.valueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldValue, (Object)this.value, !oldValueESet));
        }
    }

    public void unsetValue() {
        Integer oldValue = this.value;
        boolean oldValueESet = this.valueESet;
        this.value = VALUE_EDEFAULT;
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldValue, (Object)VALUE_EDEFAULT, oldValueESet));
        }
    }

    public boolean isSetValue() {
        return this.valueESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationTransceiver((CommunicationTransceiver)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCommunicationTransceiver(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 29, CommunicationTransceiver.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCommunicationTransceiver();
            }
            case 5: {
                return this.getActiveSwitchable();
            }
            case 6: {
                return this.getChoke();
            }
            case 7: {
                return this.getEmcFilter();
            }
            case 8: {
                return this.getSplit();
            }
            case 9: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCommunicationTransceiver((CommunicationTransceiver)newValue);
                return;
            }
            case 5: {
                this.setActiveSwitchable((Boolean)newValue);
                return;
            }
            case 6: {
                this.setChoke((Boolean)newValue);
                return;
            }
            case 7: {
                this.setEmcFilter((Boolean)newValue);
                return;
            }
            case 8: {
                this.setSplit((Boolean)newValue);
                return;
            }
            case 9: {
                this.setValue((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCommunicationTransceiver(null);
                return;
            }
            case 5: {
                this.unsetActiveSwitchable();
                return;
            }
            case 6: {
                this.unsetChoke();
                return;
            }
            case 7: {
                this.unsetEmcFilter();
                return;
            }
            case 8: {
                this.unsetSplit();
                return;
            }
            case 9: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCommunicationTransceiver() != null;
            }
            case 5: {
                return this.isSetActiveSwitchable();
            }
            case 6: {
                return this.isSetChoke();
            }
            case 7: {
                return this.isSetEmcFilter();
            }
            case 8: {
                return this.isSetSplit();
            }
            case 9: {
                return this.isSetValue();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (activeSwitchable: ");
        if (this.activeSwitchableESet) {
            result.append(this.activeSwitchable);
        } else {
            result.append("<unset>");
        }
        result.append(", choke: ");
        if (this.chokeESet) {
            result.append(this.choke);
        } else {
            result.append("<unset>");
        }
        result.append(", emcFilter: ");
        if (this.emcFilterESet) {
            result.append(this.emcFilter);
        } else {
            result.append("<unset>");
        }
        result.append(", split: ");
        if (this.splitESet) {
            result.append(this.split);
        } else {
            result.append("<unset>");
        }
        result.append(", value: ");
        if (this.valueESet) {
            result.append(this.value);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

