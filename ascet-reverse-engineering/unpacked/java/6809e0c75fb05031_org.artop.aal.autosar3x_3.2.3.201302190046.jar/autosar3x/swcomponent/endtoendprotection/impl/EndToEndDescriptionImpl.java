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
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar3x.swcomponent.endtoendprotection.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.endtoendprotection.EndToEndDescription;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtection;
import autosar3x.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import java.util.Collection;
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
    protected EList<Integer> dataIds;
    protected static final Integer DATA_ID_MODE_EDEFAULT = new Integer(0);
    protected Integer dataIdMode = DATA_ID_MODE_EDEFAULT;
    protected boolean dataIdModeESet;
    protected static final Integer DATA_LENGTH_EDEFAULT = new Integer(0);
    protected Integer dataLength = DATA_LENGTH_EDEFAULT;
    protected boolean dataLengthESet;
    protected static final Integer MAX_DELTA_COUNTER_INIT_EDEFAULT = new Integer(0);
    protected Integer maxDeltaCounterInit = MAX_DELTA_COUNTER_INIT_EDEFAULT;
    protected boolean maxDeltaCounterInitESet;
    protected static final Integer CRC_OFFSET_EDEFAULT = new Integer(0);
    protected Integer crcOffset = CRC_OFFSET_EDEFAULT;
    protected boolean crcOffsetESet;
    protected static final Integer COUNTER_OFFSET_EDEFAULT = new Integer(0);
    protected Integer counterOffset = COUNTER_OFFSET_EDEFAULT;
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
                msgs = ((InternalEObject)newEndToEndProtection).eInverseAdd((InternalEObject)this, 18, EndToEndProtection.class, msgs);
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
    public EList<Integer> getDataIds() {
        if (this.dataIds == null) {
            this.dataIds = new EDataTypeUniqueEList.Unsettable(Integer.class, (InternalEObject)this, 6);
        }
        return this.dataIds;
    }

    @Override
    public void unsetDataIds() {
        if (this.dataIds != null) {
            ((InternalEList.Unsettable)this.dataIds).unset();
        }
    }

    @Override
    public boolean isSetDataIds() {
        return this.dataIds != null && ((InternalEList.Unsettable)this.dataIds).isSet();
    }

    @Override
    public Integer getDataIdMode() {
        return this.dataIdMode;
    }

    @Override
    public void setDataIdMode(Integer newDataIdMode) {
        Integer oldDataIdMode = this.dataIdMode;
        this.dataIdMode = newDataIdMode;
        boolean oldDataIdModeESet = this.dataIdModeESet;
        this.dataIdModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDataIdMode, (Object)this.dataIdMode, !oldDataIdModeESet));
        }
    }

    @Override
    public void unsetDataIdMode() {
        Integer oldDataIdMode = this.dataIdMode;
        boolean oldDataIdModeESet = this.dataIdModeESet;
        this.dataIdMode = DATA_ID_MODE_EDEFAULT;
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
    public Integer getDataLength() {
        return this.dataLength;
    }

    @Override
    public void setDataLength(Integer newDataLength) {
        Integer oldDataLength = this.dataLength;
        this.dataLength = newDataLength;
        boolean oldDataLengthESet = this.dataLengthESet;
        this.dataLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldDataLength, (Object)this.dataLength, !oldDataLengthESet));
        }
    }

    @Override
    public void unsetDataLength() {
        Integer oldDataLength = this.dataLength;
        boolean oldDataLengthESet = this.dataLengthESet;
        this.dataLength = DATA_LENGTH_EDEFAULT;
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
    public Integer getMaxDeltaCounterInit() {
        return this.maxDeltaCounterInit;
    }

    @Override
    public void setMaxDeltaCounterInit(Integer newMaxDeltaCounterInit) {
        Integer oldMaxDeltaCounterInit = this.maxDeltaCounterInit;
        this.maxDeltaCounterInit = newMaxDeltaCounterInit;
        boolean oldMaxDeltaCounterInitESet = this.maxDeltaCounterInitESet;
        this.maxDeltaCounterInitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMaxDeltaCounterInit, (Object)this.maxDeltaCounterInit, !oldMaxDeltaCounterInitESet));
        }
    }

    @Override
    public void unsetMaxDeltaCounterInit() {
        Integer oldMaxDeltaCounterInit = this.maxDeltaCounterInit;
        boolean oldMaxDeltaCounterInitESet = this.maxDeltaCounterInitESet;
        this.maxDeltaCounterInit = MAX_DELTA_COUNTER_INIT_EDEFAULT;
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
    public Integer getCrcOffset() {
        return this.crcOffset;
    }

    @Override
    public void setCrcOffset(Integer newCrcOffset) {
        Integer oldCrcOffset = this.crcOffset;
        this.crcOffset = newCrcOffset;
        boolean oldCrcOffsetESet = this.crcOffsetESet;
        this.crcOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldCrcOffset, (Object)this.crcOffset, !oldCrcOffsetESet));
        }
    }

    @Override
    public void unsetCrcOffset() {
        Integer oldCrcOffset = this.crcOffset;
        boolean oldCrcOffsetESet = this.crcOffsetESet;
        this.crcOffset = CRC_OFFSET_EDEFAULT;
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
    public Integer getCounterOffset() {
        return this.counterOffset;
    }

    @Override
    public void setCounterOffset(Integer newCounterOffset) {
        Integer oldCounterOffset = this.counterOffset;
        this.counterOffset = newCounterOffset;
        boolean oldCounterOffsetESet = this.counterOffsetESet;
        this.counterOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldCounterOffset, (Object)this.counterOffset, !oldCounterOffsetESet));
        }
    }

    @Override
    public void unsetCounterOffset() {
        Integer oldCounterOffset = this.counterOffset;
        boolean oldCounterOffsetESet = this.counterOffsetESet;
        this.counterOffset = COUNTER_OFFSET_EDEFAULT;
        this.counterOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldCounterOffset, (Object)COUNTER_OFFSET_EDEFAULT, oldCounterOffsetESet));
        }
    }

    @Override
    public boolean isSetCounterOffset() {
        return this.counterOffsetESet;
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, EndToEndProtection.class, msgs);
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
                this.setDataIdMode((Integer)newValue);
                return;
            }
            case 8: {
                this.setDataLength((Integer)newValue);
                return;
            }
            case 9: {
                this.setMaxDeltaCounterInit((Integer)newValue);
                return;
            }
            case 10: {
                this.setCrcOffset((Integer)newValue);
                return;
            }
            case 11: {
                this.setCounterOffset((Integer)newValue);
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

