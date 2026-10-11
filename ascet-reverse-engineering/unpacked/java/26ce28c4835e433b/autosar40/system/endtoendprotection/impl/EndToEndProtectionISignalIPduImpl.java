/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
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
package autosar40.system.endtoendprotection.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.endtoendprotection.EndToEndProtection;
import autosar40.system.endtoendprotection.EndToEndProtectionISignalIPdu;
import autosar40.system.endtoendprotection.EndtoendprotectionPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import org.artop.aal.common.datatypes.IntegerDatatype;
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
    protected static final IntegerDatatype DATA_OFFSET_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype dataOffset = DATA_OFFSET_EDEFAULT.clone();
    protected boolean dataOffsetESet;
    protected ISignalGroup iSignalGroup;
    protected ISignalIPdu iSignalIPdu;
    protected VariationPoint variationPoint;

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
        return (Integer)this.dataOffset.basicGetValue();
    }

    public void setDataOffset(Integer newDataOffset) {
        Integer oldDataOffset = (Integer)this.dataOffset.basicGetValue();
        this.dataOffset.basicSetValue((Object)newDataOffset);
        boolean oldDataOffsetESet = this.dataOffsetESet;
        this.dataOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDataOffset, (Object)newDataOffset, !oldDataOffsetESet));
        }
    }

    public void unsetDataOffset() {
        Integer oldDataOffset = (Integer)this.dataOffset.basicGetValue();
        boolean oldDataOffsetESet = this.dataOffsetESet;
        this.dataOffset = DATA_OFFSET_EDEFAULT.clone();
        this.dataOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldDataOffset, (Object)DATA_OFFSET_EDEFAULT, oldDataOffsetESet));
        }
    }

    public boolean isSetDataOffset() {
        return this.dataOffsetESet;
    }

    public ISignalGroup getISignalGroup() {
        if (this.iSignalGroup != null && this.iSignalGroup.eIsProxy()) {
            InternalEObject oldISignalGroup = (InternalEObject)this.iSignalGroup;
            this.iSignalGroup = (ISignalGroup)this.eResolveProxy(oldISignalGroup);
            if (this.iSignalGroup != oldISignalGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldISignalGroup, (Object)this.iSignalGroup));
            }
        }
        return this.iSignalGroup;
    }

    public ISignalGroup basicGetISignalGroup() {
        return this.iSignalGroup;
    }

    public void setISignalGroup(ISignalGroup newISignalGroup) {
        ISignalGroup oldISignalGroup = this.iSignalGroup;
        this.iSignalGroup = newISignalGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldISignalGroup, (Object)this.iSignalGroup));
        }
    }

    public ISignalIPdu getISignalIPdu() {
        if (this.iSignalIPdu != null && this.iSignalIPdu.eIsProxy()) {
            InternalEObject oldISignalIPdu = (InternalEObject)this.iSignalIPdu;
            this.iSignalIPdu = (ISignalIPdu)this.eResolveProxy(oldISignalIPdu);
            if (this.iSignalIPdu != oldISignalIPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldISignalIPdu, (Object)this.iSignalIPdu));
            }
        }
        return this.iSignalIPdu;
    }

    public ISignalIPdu basicGetISignalIPdu() {
        return this.iSignalIPdu;
    }

    public void setISignalIPdu(ISignalIPdu newISignalIPdu) {
        ISignalIPdu oldISignalIPdu = this.iSignalIPdu;
        this.iSignalIPdu = newISignalIPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldISignalIPdu, (Object)this.iSignalIPdu));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public IntegerDatatype getDataOffsetData() {
        return this.dataOffset.clone();
    }

    public void setDataOffsetData(IntegerDatatype newDataOffset) {
        this.dataOffset.setRadix((int)newDataOffset.getRadix());
        this.dataOffset.setNoOfDigits((int)newDataOffset.getNoOfDigits());
        this.setDataOffset(newDataOffset.getValue());
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
            case 8: {
                return this.basicSetVariationPoint(null, msgs);
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
            case 8: {
                return this.getVariationPoint();
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
                this.setISignalGroup((ISignalGroup)newValue);
                return;
            }
            case 7: {
                this.setISignalIPdu((ISignalIPdu)newValue);
                return;
            }
            case 8: {
                this.setVariationPoint((VariationPoint)newValue);
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
            case 8: {
                this.setVariationPoint(null);
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
            case 8: {
                return this.variationPoint != null;
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

