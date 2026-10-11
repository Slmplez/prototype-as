/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype$ToLongDelegateEList
 *  org.artop.aal.common.datatypes.ToPrimitiveEList
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar40.swcomponent.endtoendprotection.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.endtoendprotection.EndToEndDescription;
import autosar40.swcomponent.endtoendprotection.EndToEndProtection;
import autosar40.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.artop.aal.common.datatypes.ToPrimitiveEList;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EndToEndDescriptionImpl
extends ARObjectImpl
implements EndToEndDescription {
    protected static final String CATEGORY_EDEFAULT = "";
    protected String category = "";
    protected boolean categoryESet;
    protected EList<Long> dataIds;
    protected static final PositiveIntegerDatatype DATA_ID_MODE_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype dataIdMode = DATA_ID_MODE_EDEFAULT.clone();
    protected boolean dataIdModeESet;
    protected static final PositiveIntegerDatatype DATA_LENGTH_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype dataLength = DATA_LENGTH_EDEFAULT.clone();
    protected boolean dataLengthESet;
    protected static final PositiveIntegerDatatype MAX_DELTA_COUNTER_INIT_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype maxDeltaCounterInit = MAX_DELTA_COUNTER_INIT_EDEFAULT.clone();
    protected boolean maxDeltaCounterInitESet;
    protected static final PositiveIntegerDatatype CRC_OFFSET_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype crcOffset = CRC_OFFSET_EDEFAULT.clone();
    protected boolean crcOffsetESet;
    protected static final PositiveIntegerDatatype COUNTER_OFFSET_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype counterOffset = COUNTER_OFFSET_EDEFAULT.clone();
    protected boolean counterOffsetESet;

    protected EndToEndDescriptionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EndtoendprotectionPackage.Literals.END_TO_END_DESCRIPTION;
    }

    @Override
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

    @Override
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
                msgs = ((InternalEObject)newEndToEndProtection).eInverseAdd((InternalEObject)this, 19, EndToEndProtection.class, msgs);
            }
            if ((msgs = this.basicSetEndToEndProtection(newEndToEndProtection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newEndToEndProtection, (Object)newEndToEndProtection));
        }
    }

    @Override
    public String getCategory() {
        return this.category;
    }

    @Override
    public void setCategory(String newCategory) {
        String oldCategory = this.category;
        this.category = newCategory;
        boolean oldCategoryESet = this.categoryESet;
        this.categoryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCategory, (Object)this.category, !oldCategoryESet));
        }
    }

    @Override
    public void unsetCategory() {
        String oldCategory = this.category;
        boolean oldCategoryESet = this.categoryESet;
        this.category = CATEGORY_EDEFAULT;
        this.categoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCategory, (Object)CATEGORY_EDEFAULT, oldCategoryESet));
        }
    }

    @Override
    public boolean isSetCategory() {
        return this.categoryESet;
    }

    @Override
    public EList<Long> getDataIds() {
        if (this.dataIds == null) {
            this.dataIds = new PositiveIntegerDatatype.ToLongDelegateEList((EList)new EDataTypeUniqueEList.Unsettable(PositiveIntegerDatatype.class, (InternalEObject)this, 6));
        }
        return this.dataIds;
    }

    @Override
    public void unsetDataIds() {
        if (this.dataIds != null) {
            ((InternalEList.Unsettable)((ToPrimitiveEList)this.dataIds).getDelegationList()).unset();
        }
    }

    @Override
    public boolean isSetDataIds() {
        return this.dataIds != null && ((InternalEList.Unsettable)((ToPrimitiveEList)this.dataIds).getDelegationList()).isSet();
    }

    @Override
    public Long getDataIdMode() {
        return (Long)this.dataIdMode.basicGetValue();
    }

    @Override
    public void setDataIdMode(Long newDataIdMode) {
        Long oldDataIdMode = (Long)this.dataIdMode.basicGetValue();
        this.dataIdMode.basicSetValue((Object)newDataIdMode);
        boolean oldDataIdModeESet = this.dataIdModeESet;
        this.dataIdModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDataIdMode, (Object)newDataIdMode, !oldDataIdModeESet));
        }
    }

    @Override
    public void unsetDataIdMode() {
        Long oldDataIdMode = (Long)this.dataIdMode.basicGetValue();
        boolean oldDataIdModeESet = this.dataIdModeESet;
        this.dataIdMode = DATA_ID_MODE_EDEFAULT.clone();
        this.dataIdModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldDataIdMode, (Object)DATA_ID_MODE_EDEFAULT, oldDataIdModeESet));
        }
    }

    @Override
    public boolean isSetDataIdMode() {
        return this.dataIdModeESet;
    }

    @Override
    public Long getDataLength() {
        return (Long)this.dataLength.basicGetValue();
    }

    @Override
    public void setDataLength(Long newDataLength) {
        Long oldDataLength = (Long)this.dataLength.basicGetValue();
        this.dataLength.basicSetValue((Object)newDataLength);
        boolean oldDataLengthESet = this.dataLengthESet;
        this.dataLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldDataLength, (Object)newDataLength, !oldDataLengthESet));
        }
    }

    @Override
    public void unsetDataLength() {
        Long oldDataLength = (Long)this.dataLength.basicGetValue();
        boolean oldDataLengthESet = this.dataLengthESet;
        this.dataLength = DATA_LENGTH_EDEFAULT.clone();
        this.dataLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldDataLength, (Object)DATA_LENGTH_EDEFAULT, oldDataLengthESet));
        }
    }

    @Override
    public boolean isSetDataLength() {
        return this.dataLengthESet;
    }

    @Override
    public Long getMaxDeltaCounterInit() {
        return (Long)this.maxDeltaCounterInit.basicGetValue();
    }

    @Override
    public void setMaxDeltaCounterInit(Long newMaxDeltaCounterInit) {
        Long oldMaxDeltaCounterInit = (Long)this.maxDeltaCounterInit.basicGetValue();
        this.maxDeltaCounterInit.basicSetValue((Object)newMaxDeltaCounterInit);
        boolean oldMaxDeltaCounterInitESet = this.maxDeltaCounterInitESet;
        this.maxDeltaCounterInitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMaxDeltaCounterInit, (Object)newMaxDeltaCounterInit, !oldMaxDeltaCounterInitESet));
        }
    }

    @Override
    public void unsetMaxDeltaCounterInit() {
        Long oldMaxDeltaCounterInit = (Long)this.maxDeltaCounterInit.basicGetValue();
        boolean oldMaxDeltaCounterInitESet = this.maxDeltaCounterInitESet;
        this.maxDeltaCounterInit = MAX_DELTA_COUNTER_INIT_EDEFAULT.clone();
        this.maxDeltaCounterInitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldMaxDeltaCounterInit, (Object)MAX_DELTA_COUNTER_INIT_EDEFAULT, oldMaxDeltaCounterInitESet));
        }
    }

    @Override
    public boolean isSetMaxDeltaCounterInit() {
        return this.maxDeltaCounterInitESet;
    }

    @Override
    public Long getCrcOffset() {
        return (Long)this.crcOffset.basicGetValue();
    }

    @Override
    public void setCrcOffset(Long newCrcOffset) {
        Long oldCrcOffset = (Long)this.crcOffset.basicGetValue();
        this.crcOffset.basicSetValue((Object)newCrcOffset);
        boolean oldCrcOffsetESet = this.crcOffsetESet;
        this.crcOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldCrcOffset, (Object)newCrcOffset, !oldCrcOffsetESet));
        }
    }

    @Override
    public void unsetCrcOffset() {
        Long oldCrcOffset = (Long)this.crcOffset.basicGetValue();
        boolean oldCrcOffsetESet = this.crcOffsetESet;
        this.crcOffset = CRC_OFFSET_EDEFAULT.clone();
        this.crcOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldCrcOffset, (Object)CRC_OFFSET_EDEFAULT, oldCrcOffsetESet));
        }
    }

    @Override
    public boolean isSetCrcOffset() {
        return this.crcOffsetESet;
    }

    @Override
    public Long getCounterOffset() {
        return (Long)this.counterOffset.basicGetValue();
    }

    @Override
    public void setCounterOffset(Long newCounterOffset) {
        Long oldCounterOffset = (Long)this.counterOffset.basicGetValue();
        this.counterOffset.basicSetValue((Object)newCounterOffset);
        boolean oldCounterOffsetESet = this.counterOffsetESet;
        this.counterOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldCounterOffset, (Object)newCounterOffset, !oldCounterOffsetESet));
        }
    }

    @Override
    public void unsetCounterOffset() {
        Long oldCounterOffset = (Long)this.counterOffset.basicGetValue();
        boolean oldCounterOffsetESet = this.counterOffsetESet;
        this.counterOffset = COUNTER_OFFSET_EDEFAULT.clone();
        this.counterOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldCounterOffset, (Object)COUNTER_OFFSET_EDEFAULT, oldCounterOffsetESet));
        }
    }

    @Override
    public boolean isSetCounterOffset() {
        return this.counterOffsetESet;
    }

    @Override
    public PositiveIntegerDatatype getCounterOffsetData() {
        return this.counterOffset.clone();
    }

    @Override
    public void setCounterOffsetData(PositiveIntegerDatatype newCounterOffset) {
        this.counterOffset.setRadix((int)newCounterOffset.getRadix());
        this.counterOffset.setNoOfDigits((int)newCounterOffset.getNoOfDigits());
        this.setCounterOffset(newCounterOffset.getValue());
    }

    @Override
    public PositiveIntegerDatatype getCrcOffsetData() {
        return this.crcOffset.clone();
    }

    @Override
    public void setCrcOffsetData(PositiveIntegerDatatype newCrcOffset) {
        this.crcOffset.setRadix((int)newCrcOffset.getRadix());
        this.crcOffset.setNoOfDigits((int)newCrcOffset.getNoOfDigits());
        this.setCrcOffset(newCrcOffset.getValue());
    }

    @Override
    public PositiveIntegerDatatype getDataIdModeData() {
        return this.dataIdMode.clone();
    }

    @Override
    public void setDataIdModeData(PositiveIntegerDatatype newDataIdMode) {
        this.dataIdMode.setRadix((int)newDataIdMode.getRadix());
        this.dataIdMode.setNoOfDigits((int)newDataIdMode.getNoOfDigits());
        this.setDataIdMode(newDataIdMode.getValue());
    }

    @Override
    public PositiveIntegerDatatype getDataLengthData() {
        return this.dataLength.clone();
    }

    @Override
    public void setDataLengthData(PositiveIntegerDatatype newDataLength) {
        this.dataLength.setRadix((int)newDataLength.getRadix());
        this.dataLength.setNoOfDigits((int)newDataLength.getNoOfDigits());
        this.setDataLength(newDataLength.getValue());
    }

    @Override
    public PositiveIntegerDatatype getMaxDeltaCounterInitData() {
        return this.maxDeltaCounterInit.clone();
    }

    @Override
    public void setMaxDeltaCounterInitData(PositiveIntegerDatatype newMaxDeltaCounterInit) {
        this.maxDeltaCounterInit.setRadix((int)newMaxDeltaCounterInit.getRadix());
        this.maxDeltaCounterInit.setNoOfDigits((int)newMaxDeltaCounterInit.getNoOfDigits());
        this.setMaxDeltaCounterInit(newMaxDeltaCounterInit.getValue());
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, EndToEndProtection.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getEndToEndProtection();
            }
            case 5: {
                return this.getCategory();
            }
            case 6: {
                return this.getDataIds();
            }
            case 7: {
                return this.getDataIdMode();
            }
            case 8: {
                return this.getDataLength();
            }
            case 9: {
                return this.getMaxDeltaCounterInit();
            }
            case 10: {
                return this.getCrcOffset();
            }
            case 11: {
                return this.getCounterOffset();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setEndToEndProtection((EndToEndProtection)newValue);
                return;
            }
            case 5: {
                this.setCategory((String)newValue);
                return;
            }
            case 6: {
                this.getDataIds().clear();
                this.getDataIds().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setDataIdMode((Long)newValue);
                return;
            }
            case 8: {
                this.setDataLength((Long)newValue);
                return;
            }
            case 9: {
                this.setMaxDeltaCounterInit((Long)newValue);
                return;
            }
            case 10: {
                this.setCrcOffset((Long)newValue);
                return;
            }
            case 11: {
                this.setCounterOffset((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setEndToEndProtection(null);
                return;
            }
            case 5: {
                this.unsetCategory();
                return;
            }
            case 6: {
                this.unsetDataIds();
                return;
            }
            case 7: {
                this.unsetDataIdMode();
                return;
            }
            case 8: {
                this.unsetDataLength();
                return;
            }
            case 9: {
                this.unsetMaxDeltaCounterInit();
                return;
            }
            case 10: {
                this.unsetCrcOffset();
                return;
            }
            case 11: {
                this.unsetCounterOffset();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getEndToEndProtection() != null;
            }
            case 5: {
                return this.isSetCategory();
            }
            case 6: {
                return this.isSetDataIds();
            }
            case 7: {
                return this.isSetDataIdMode();
            }
            case 8: {
                return this.isSetDataLength();
            }
            case 9: {
                return this.isSetMaxDeltaCounterInit();
            }
            case 10: {
                return this.isSetCrcOffset();
            }
            case 11: {
                return this.isSetCounterOffset();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (category: ");
        if (this.categoryESet) {
            result.append(this.category);
        } else {
            result.append("<unset>");
        }
        result.append(", dataIds: ");
        result.append(this.dataIds);
        result.append(", dataIdMode: ");
        if (this.dataIdModeESet) {
            result.append(this.dataIdMode);
        } else {
            result.append("<unset>");
        }
        result.append(", dataLength: ");
        if (this.dataLengthESet) {
            result.append(this.dataLength);
        } else {
            result.append("<unset>");
        }
        result.append(", maxDeltaCounterInit: ");
        if (this.maxDeltaCounterInitESet) {
            result.append(this.maxDeltaCounterInit);
        } else {
            result.append("<unset>");
        }
        result.append(", crcOffset: ");
        if (this.crcOffsetESet) {
            result.append(this.crcOffset);
        } else {
            result.append("<unset>");
        }
        result.append(", counterOffset: ");
        if (this.counterOffsetESet) {
            result.append(this.counterOffset);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

