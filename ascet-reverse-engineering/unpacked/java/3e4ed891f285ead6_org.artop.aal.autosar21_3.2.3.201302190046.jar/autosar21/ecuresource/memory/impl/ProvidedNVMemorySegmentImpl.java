/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecuresource.memory.impl;

import autosar21.ecuresource.memory.MemoryPackage;
import autosar21.ecuresource.memory.ProvidedNVMemorySegment;
import autosar21.ecuresource.memory.impl.ProvidedMemorySegmentImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ProvidedNVMemorySegmentImpl
extends ProvidedMemorySegmentImpl
implements ProvidedNVMemorySegment {
    protected static final Integer DATA_ENDURANCE_EDEFAULT = new Integer(0);
    protected Integer dataEndurance = DATA_ENDURANCE_EDEFAULT;
    protected boolean dataEnduranceESet;
    protected static final Double DATA_RETENTION_EDEFAULT = new Double(0.0);
    protected Double dataRetention = DATA_RETENTION_EDEFAULT;
    protected boolean dataRetentionESet;
    protected static final Boolean MARGIN_READ_AVAILABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean marginReadAvailable = MARGIN_READ_AVAILABLE_EDEFAULT;
    protected boolean marginReadAvailableESet;
    protected static final Integer SEGMENT_SIZE_ERASE_EDEFAULT = new Integer(0);
    protected Integer segmentSizeErase = SEGMENT_SIZE_ERASE_EDEFAULT;
    protected boolean segmentSizeEraseESet;
    protected static final Integer SEGMENT_SIZE_WRITE_EDEFAULT = new Integer(0);
    protected Integer segmentSizeWrite = SEGMENT_SIZE_WRITE_EDEFAULT;
    protected boolean segmentSizeWriteESet;

    protected ProvidedNVMemorySegmentImpl() {
    }

    protected EClass eStaticClass() {
        return MemoryPackage.Literals.PROVIDED_NV_MEMORY_SEGMENT;
    }

    public Integer getDataEndurance() {
        return this.dataEndurance;
    }

    public void setDataEndurance(Integer newDataEndurance) {
        Integer oldDataEndurance = this.dataEndurance;
        this.dataEndurance = newDataEndurance;
        boolean oldDataEnduranceESet = this.dataEnduranceESet;
        this.dataEnduranceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldDataEndurance, (Object)this.dataEndurance, !oldDataEnduranceESet));
        }
    }

    public void unsetDataEndurance() {
        Integer oldDataEndurance = this.dataEndurance;
        boolean oldDataEnduranceESet = this.dataEnduranceESet;
        this.dataEndurance = DATA_ENDURANCE_EDEFAULT;
        this.dataEnduranceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldDataEndurance, (Object)DATA_ENDURANCE_EDEFAULT, oldDataEnduranceESet));
        }
    }

    public boolean isSetDataEndurance() {
        return this.dataEnduranceESet;
    }

    public Double getDataRetention() {
        return this.dataRetention;
    }

    public void setDataRetention(Double newDataRetention) {
        Double oldDataRetention = this.dataRetention;
        this.dataRetention = newDataRetention;
        boolean oldDataRetentionESet = this.dataRetentionESet;
        this.dataRetentionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldDataRetention, (Object)this.dataRetention, !oldDataRetentionESet));
        }
    }

    public void unsetDataRetention() {
        Double oldDataRetention = this.dataRetention;
        boolean oldDataRetentionESet = this.dataRetentionESet;
        this.dataRetention = DATA_RETENTION_EDEFAULT;
        this.dataRetentionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldDataRetention, (Object)DATA_RETENTION_EDEFAULT, oldDataRetentionESet));
        }
    }

    public boolean isSetDataRetention() {
        return this.dataRetentionESet;
    }

    public Boolean getMarginReadAvailable() {
        return this.marginReadAvailable;
    }

    public void setMarginReadAvailable(Boolean newMarginReadAvailable) {
        Boolean oldMarginReadAvailable = this.marginReadAvailable;
        this.marginReadAvailable = newMarginReadAvailable;
        boolean oldMarginReadAvailableESet = this.marginReadAvailableESet;
        this.marginReadAvailableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldMarginReadAvailable, (Object)this.marginReadAvailable, !oldMarginReadAvailableESet));
        }
    }

    public void unsetMarginReadAvailable() {
        Boolean oldMarginReadAvailable = this.marginReadAvailable;
        boolean oldMarginReadAvailableESet = this.marginReadAvailableESet;
        this.marginReadAvailable = MARGIN_READ_AVAILABLE_EDEFAULT;
        this.marginReadAvailableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldMarginReadAvailable, (Object)MARGIN_READ_AVAILABLE_EDEFAULT, oldMarginReadAvailableESet));
        }
    }

    public boolean isSetMarginReadAvailable() {
        return this.marginReadAvailableESet;
    }

    public Integer getSegmentSizeErase() {
        return this.segmentSizeErase;
    }

    public void setSegmentSizeErase(Integer newSegmentSizeErase) {
        Integer oldSegmentSizeErase = this.segmentSizeErase;
        this.segmentSizeErase = newSegmentSizeErase;
        boolean oldSegmentSizeEraseESet = this.segmentSizeEraseESet;
        this.segmentSizeEraseESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldSegmentSizeErase, (Object)this.segmentSizeErase, !oldSegmentSizeEraseESet));
        }
    }

    public void unsetSegmentSizeErase() {
        Integer oldSegmentSizeErase = this.segmentSizeErase;
        boolean oldSegmentSizeEraseESet = this.segmentSizeEraseESet;
        this.segmentSizeErase = SEGMENT_SIZE_ERASE_EDEFAULT;
        this.segmentSizeEraseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldSegmentSizeErase, (Object)SEGMENT_SIZE_ERASE_EDEFAULT, oldSegmentSizeEraseESet));
        }
    }

    public boolean isSetSegmentSizeErase() {
        return this.segmentSizeEraseESet;
    }

    public Integer getSegmentSizeWrite() {
        return this.segmentSizeWrite;
    }

    public void setSegmentSizeWrite(Integer newSegmentSizeWrite) {
        Integer oldSegmentSizeWrite = this.segmentSizeWrite;
        this.segmentSizeWrite = newSegmentSizeWrite;
        boolean oldSegmentSizeWriteESet = this.segmentSizeWriteESet;
        this.segmentSizeWriteESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldSegmentSizeWrite, (Object)this.segmentSizeWrite, !oldSegmentSizeWriteESet));
        }
    }

    public void unsetSegmentSizeWrite() {
        Integer oldSegmentSizeWrite = this.segmentSizeWrite;
        boolean oldSegmentSizeWriteESet = this.segmentSizeWriteESet;
        this.segmentSizeWrite = SEGMENT_SIZE_WRITE_EDEFAULT;
        this.segmentSizeWriteESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldSegmentSizeWrite, (Object)SEGMENT_SIZE_WRITE_EDEFAULT, oldSegmentSizeWriteESet));
        }
    }

    public boolean isSetSegmentSizeWrite() {
        return this.segmentSizeWriteESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 30: {
                return this.getDataEndurance();
            }
            case 31: {
                return this.getDataRetention();
            }
            case 32: {
                return this.getMarginReadAvailable();
            }
            case 33: {
                return this.getSegmentSizeErase();
            }
            case 34: {
                return this.getSegmentSizeWrite();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 30: {
                this.setDataEndurance((Integer)newValue);
                return;
            }
            case 31: {
                this.setDataRetention((Double)newValue);
                return;
            }
            case 32: {
                this.setMarginReadAvailable((Boolean)newValue);
                return;
            }
            case 33: {
                this.setSegmentSizeErase((Integer)newValue);
                return;
            }
            case 34: {
                this.setSegmentSizeWrite((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 30: {
                this.unsetDataEndurance();
                return;
            }
            case 31: {
                this.unsetDataRetention();
                return;
            }
            case 32: {
                this.unsetMarginReadAvailable();
                return;
            }
            case 33: {
                this.unsetSegmentSizeErase();
                return;
            }
            case 34: {
                this.unsetSegmentSizeWrite();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 30: {
                return this.isSetDataEndurance();
            }
            case 31: {
                return this.isSetDataRetention();
            }
            case 32: {
                return this.isSetMarginReadAvailable();
            }
            case 33: {
                return this.isSetSegmentSizeErase();
            }
            case 34: {
                return this.isSetSegmentSizeWrite();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (dataEndurance: ");
        if (this.dataEnduranceESet) {
            result.append(this.dataEndurance);
        } else {
            result.append("<unset>");
        }
        result.append(", dataRetention: ");
        if (this.dataRetentionESet) {
            result.append(this.dataRetention);
        } else {
            result.append("<unset>");
        }
        result.append(", marginReadAvailable: ");
        if (this.marginReadAvailableESet) {
            result.append(this.marginReadAvailable);
        } else {
            result.append("<unset>");
        }
        result.append(", segmentSizeErase: ");
        if (this.segmentSizeEraseESet) {
            result.append(this.segmentSizeErase);
        } else {
            result.append("<unset>");
        }
        result.append(", segmentSizeWrite: ");
        if (this.segmentSizeWriteESet) {
            result.append(this.segmentSizeWrite);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

