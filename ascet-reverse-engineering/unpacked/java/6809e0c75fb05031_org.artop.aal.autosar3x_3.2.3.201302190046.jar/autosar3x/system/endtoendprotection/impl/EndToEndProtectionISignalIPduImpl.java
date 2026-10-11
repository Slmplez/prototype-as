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
package autosar3x.system.endtoendprotection.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtection;
import autosar3x.system.endtoendprotection.EndToEndProtectionISignalIPdu;
import autosar3x.system.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignal;
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

public class EndToEndProtectionISignalIPduImpl
extends ARObjectImpl
implements EndToEndProtectionISignalIPdu,
IReferringClass {
    protected static final Integer DATA_OFFSET_EDEFAULT = new Integer(0);
    protected Integer dataOffset = DATA_OFFSET_EDEFAULT;
    protected boolean dataOffsetESet;
    protected ISignal iSignalGroup;
    protected SignalIPdu iSignalIPdu;

    protected EndToEndProtectionISignalIPduImpl() {
    }

    protected EClass eStaticClass() {
        return EndtoendprotectionPackage.Literals.END_TO_END_PROTECTION_ISIGNAL_IPDU;
    }

    public EndToEndProtection getEndToEndProtection() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (EndToEndProtection)this.eContainer();
    }

    public NotificationChain basicSetEndToEndProtection(EndToEndProtection newEndToEndProtection, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEndToEndProtection, 4, msgs);
        return msgs;
    }

    public void setEndToEndProtection(EndToEndProtection newEndToEndProtection) {
        if (newEndToEndProtection != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newEndToEndProtection != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEndToEndProtection)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEndToEndProtection != null) {
                msgs = ((InternalEObject)newEndToEndProtection).eInverseAdd((InternalEObject)this, 20, EndToEndProtection.class, msgs);
            }
            if ((msgs = this.basicSetEndToEndProtection(newEndToEndProtection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newEndToEndProtection, (Object)newEndToEndProtection));
        }
    }

    public Integer getDataOffset() {
        return this.dataOffset;
    }

    public void setDataOffset(Integer newDataOffset) {
        Integer oldDataOffset = this.dataOffset;
        this.dataOffset = newDataOffset;
        boolean oldDataOffsetESet = this.dataOffsetESet;
        this.dataOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDataOffset, (Object)this.dataOffset, !oldDataOffsetESet));
        }
    }

    public void unsetDataOffset() {
        Integer oldDataOffset = this.dataOffset;
        boolean oldDataOffsetESet = this.dataOffsetESet;
        this.dataOffset = DATA_OFFSET_EDEFAULT;
        this.dataOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldDataOffset, (Object)DATA_OFFSET_EDEFAULT, oldDataOffsetESet));
        }
    }

    public boolean isSetDataOffset() {
        return this.dataOffsetESet;
    }

    public ISignal getISignalGroup() {
        if (this.iSignalGroup != null && this.iSignalGroup.eIsProxy()) {
            InternalEObject oldISignalGroup = (InternalEObject)this.iSignalGroup;
            this.iSignalGroup = (ISignal)this.eResolveProxy(oldISignalGroup);
            if (this.iSignalGroup != oldISignalGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldISignalGroup, (Object)this.iSignalGroup));
            }
        }
        return this.iSignalGroup;
    }

    public ISignal basicGetISignalGroup() {
        return this.iSignalGroup;
    }

    public void setISignalGroup(ISignal newISignalGroup) {
        ISignal oldISignalGroup = this.iSignalGroup;
        this.iSignalGroup = newISignalGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldISignalGroup, (Object)this.iSignalGroup));
        }
    }

    public SignalIPdu getISignalIPdu() {
        if (this.iSignalIPdu != null && this.iSignalIPdu.eIsProxy()) {
            InternalEObject oldISignalIPdu = (InternalEObject)this.iSignalIPdu;
            this.iSignalIPdu = (SignalIPdu)this.eResolveProxy(oldISignalIPdu);
            if (this.iSignalIPdu != oldISignalIPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldISignalIPdu, (Object)this.iSignalIPdu));
            }
        }
        return this.iSignalIPdu;
    }

    public SignalIPdu basicGetISignalIPdu() {
        return this.iSignalIPdu;
    }

    public void setISignalIPdu(SignalIPdu newISignalIPdu) {
        SignalIPdu oldISignalIPdu = this.iSignalIPdu;
        this.iSignalIPdu = newISignalIPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldISignalIPdu, (Object)this.iSignalIPdu));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEndToEndProtection((EndToEndProtection)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetEndToEndProtection(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, EndToEndProtection.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getEndToEndProtection();
            }
            case 5: {
                return this.getDataOffset();
            }
            case 6: {
                if (resolve) {
                    return this.getISignalGroup();
                }
                return this.basicGetISignalGroup();
            }
            case 7: {
                if (resolve) {
                    return this.getISignalIPdu();
                }
                return this.basicGetISignalIPdu();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setEndToEndProtection((EndToEndProtection)newValue);
                return;
            }
            case 5: {
                this.setDataOffset((Integer)newValue);
                return;
            }
            case 6: {
                this.setISignalGroup((ISignal)newValue);
                return;
            }
            case 7: {
                this.setISignalIPdu((SignalIPdu)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setEndToEndProtection(null);
                return;
            }
            case 5: {
                this.unsetDataOffset();
                return;
            }
            case 6: {
                this.setISignalGroup(null);
                return;
            }
            case 7: {
                this.setISignalIPdu(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getEndToEndProtection() != null;
            }
            case 5: {
                return this.isSetDataOffset();
            }
            case 6: {
                return this.iSignalGroup != null;
            }
            case 7: {
                return this.iSignalIPdu != null;
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
        result.append(" (dataOffset: ");
        if (this.dataOffsetESet) {
            result.append(this.dataOffset);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

