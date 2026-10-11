/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecuresource.memory.impl;

import autosar21.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar21.ecuresource.impl.HWElementImpl;
import autosar21.ecuresource.memory.MemoryPackage;
import autosar21.ecuresource.memory.ProvidedMemorySegment;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ProvidedMemorySegmentImpl
extends HWElementImpl
implements ProvidedMemorySegment {
    protected static final Integer ALIGNMENT_EDEFAULT = new Integer(0);
    protected Integer alignment = ALIGNMENT_EDEFAULT;
    protected boolean alignmentESet;
    protected ErrorDetectionCorrection architecturalQuality;
    protected static final Double MANUFACTURING_QUALITY_EDEFAULT = new Double(0.0);
    protected Double manufacturingQuality = MANUFACTURING_QUALITY_EDEFAULT;
    protected boolean manufacturingQualityESet;
    protected static final Integer SEGMENT_SIZE_EDEFAULT = new Integer(0);
    protected Integer segmentSize = SEGMENT_SIZE_EDEFAULT;
    protected boolean segmentSizeESet;
    protected static final Boolean SEPARATE_EDEFAULT = Boolean.FALSE;
    protected Boolean separate = SEPARATE_EDEFAULT;
    protected boolean separateESet;

    protected ProvidedMemorySegmentImpl() {
    }

    protected EClass eStaticClass() {
        return MemoryPackage.Literals.PROVIDED_MEMORY_SEGMENT;
    }

    public Integer getAlignment() {
        return this.alignment;
    }

    public void setAlignment(Integer newAlignment) {
        Integer oldAlignment = this.alignment;
        this.alignment = newAlignment;
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignmentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldAlignment, (Object)this.alignment, !oldAlignmentESet));
        }
    }

    public void unsetAlignment() {
        Integer oldAlignment = this.alignment;
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignment = ALIGNMENT_EDEFAULT;
        this.alignmentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldAlignment, (Object)ALIGNMENT_EDEFAULT, oldAlignmentESet));
        }
    }

    public boolean isSetAlignment() {
        return this.alignmentESet;
    }

    public ErrorDetectionCorrection getArchitecturalQuality() {
        return this.architecturalQuality;
    }

    public NotificationChain basicSetArchitecturalQuality(ErrorDetectionCorrection newArchitecturalQuality, NotificationChain msgs) {
        ErrorDetectionCorrection oldArchitecturalQuality = this.architecturalQuality;
        this.architecturalQuality = newArchitecturalQuality;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldArchitecturalQuality, (Object)newArchitecturalQuality);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setArchitecturalQuality(ErrorDetectionCorrection newArchitecturalQuality) {
        if (newArchitecturalQuality != this.architecturalQuality) {
            NotificationChain msgs = null;
            if (this.architecturalQuality != null) {
                msgs = ((InternalEObject)this.architecturalQuality).eInverseRemove((InternalEObject)this, -27, null, msgs);
            }
            if (newArchitecturalQuality != null) {
                msgs = ((InternalEObject)newArchitecturalQuality).eInverseAdd((InternalEObject)this, -27, null, msgs);
            }
            if ((msgs = this.basicSetArchitecturalQuality(newArchitecturalQuality, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)newArchitecturalQuality, (Object)newArchitecturalQuality));
        }
    }

    public Double getManufacturingQuality() {
        return this.manufacturingQuality;
    }

    public void setManufacturingQuality(Double newManufacturingQuality) {
        Double oldManufacturingQuality = this.manufacturingQuality;
        this.manufacturingQuality = newManufacturingQuality;
        boolean oldManufacturingQualityESet = this.manufacturingQualityESet;
        this.manufacturingQualityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldManufacturingQuality, (Object)this.manufacturingQuality, !oldManufacturingQualityESet));
        }
    }

    public void unsetManufacturingQuality() {
        Double oldManufacturingQuality = this.manufacturingQuality;
        boolean oldManufacturingQualityESet = this.manufacturingQualityESet;
        this.manufacturingQuality = MANUFACTURING_QUALITY_EDEFAULT;
        this.manufacturingQualityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldManufacturingQuality, (Object)MANUFACTURING_QUALITY_EDEFAULT, oldManufacturingQualityESet));
        }
    }

    public boolean isSetManufacturingQuality() {
        return this.manufacturingQualityESet;
    }

    public Integer getSegmentSize() {
        return this.segmentSize;
    }

    public void setSegmentSize(Integer newSegmentSize) {
        Integer oldSegmentSize = this.segmentSize;
        this.segmentSize = newSegmentSize;
        boolean oldSegmentSizeESet = this.segmentSizeESet;
        this.segmentSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldSegmentSize, (Object)this.segmentSize, !oldSegmentSizeESet));
        }
    }

    public void unsetSegmentSize() {
        Integer oldSegmentSize = this.segmentSize;
        boolean oldSegmentSizeESet = this.segmentSizeESet;
        this.segmentSize = SEGMENT_SIZE_EDEFAULT;
        this.segmentSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldSegmentSize, (Object)SEGMENT_SIZE_EDEFAULT, oldSegmentSizeESet));
        }
    }

    public boolean isSetSegmentSize() {
        return this.segmentSizeESet;
    }

    public Boolean getSeparate() {
        return this.separate;
    }

    public void setSeparate(Boolean newSeparate) {
        Boolean oldSeparate = this.separate;
        this.separate = newSeparate;
        boolean oldSeparateESet = this.separateESet;
        this.separateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldSeparate, (Object)this.separate, !oldSeparateESet));
        }
    }

    public void unsetSeparate() {
        Boolean oldSeparate = this.separate;
        boolean oldSeparateESet = this.separateESet;
        this.separate = SEPARATE_EDEFAULT;
        this.separateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldSeparate, (Object)SEPARATE_EDEFAULT, oldSeparateESet));
        }
    }

    public boolean isSetSeparate() {
        return this.separateESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                return this.basicSetArchitecturalQuality(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.getAlignment();
            }
            case 26: {
                return this.getArchitecturalQuality();
            }
            case 27: {
                return this.getManufacturingQuality();
            }
            case 28: {
                return this.getSegmentSize();
            }
            case 29: {
                return this.getSeparate();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.setAlignment((Integer)newValue);
                return;
            }
            case 26: {
                this.setArchitecturalQuality((ErrorDetectionCorrection)newValue);
                return;
            }
            case 27: {
                this.setManufacturingQuality((Double)newValue);
                return;
            }
            case 28: {
                this.setSegmentSize((Integer)newValue);
                return;
            }
            case 29: {
                this.setSeparate((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.unsetAlignment();
                return;
            }
            case 26: {
                this.setArchitecturalQuality(null);
                return;
            }
            case 27: {
                this.unsetManufacturingQuality();
                return;
            }
            case 28: {
                this.unsetSegmentSize();
                return;
            }
            case 29: {
                this.unsetSeparate();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return this.isSetAlignment();
            }
            case 26: {
                return this.architecturalQuality != null;
            }
            case 27: {
                return this.isSetManufacturingQuality();
            }
            case 28: {
                return this.isSetSegmentSize();
            }
            case 29: {
                return this.isSetSeparate();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (alignment: ");
        if (this.alignmentESet) {
            result.append(this.alignment);
        } else {
            result.append("<unset>");
        }
        result.append(", manufacturingQuality: ");
        if (this.manufacturingQualityESet) {
            result.append(this.manufacturingQuality);
        } else {
            result.append("<unset>");
        }
        result.append(", segmentSize: ");
        if (this.segmentSizeESet) {
            result.append(this.segmentSize);
        } else {
            result.append("<unset>");
        }
        result.append(", separate: ");
        if (this.separateESet) {
            result.append(this.separate);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

