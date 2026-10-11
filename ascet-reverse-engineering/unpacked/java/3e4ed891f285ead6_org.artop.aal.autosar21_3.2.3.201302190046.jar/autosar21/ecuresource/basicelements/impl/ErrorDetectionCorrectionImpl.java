/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecuresource.basicelements.impl;

import autosar21.ecuresource.basicelements.BasicelementsPackage;
import autosar21.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ErrorDetectionCorrectionImpl
extends ARObjectImpl
implements ErrorDetectionCorrection {
    protected static final Integer CORRECTED_BITS_EDEFAULT = new Integer(0);
    protected Integer correctedBits = CORRECTED_BITS_EDEFAULT;
    protected boolean correctedBitsESet;
    protected static final Integer DETECTED_BITS_EDEFAULT = new Integer(0);
    protected Integer detectedBits = DETECTED_BITS_EDEFAULT;
    protected boolean detectedBitsESet;
    protected static final Integer EXTRA_BITS_EDEFAULT = new Integer(0);
    protected Integer extraBits = EXTRA_BITS_EDEFAULT;
    protected boolean extraBitsESet;

    protected ErrorDetectionCorrectionImpl() {
    }

    protected EClass eStaticClass() {
        return BasicelementsPackage.Literals.ERROR_DETECTION_CORRECTION;
    }

    public Integer getCorrectedBits() {
        return this.correctedBits;
    }

    public void setCorrectedBits(Integer newCorrectedBits) {
        Integer oldCorrectedBits = this.correctedBits;
        this.correctedBits = newCorrectedBits;
        boolean oldCorrectedBitsESet = this.correctedBitsESet;
        this.correctedBitsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldCorrectedBits, (Object)this.correctedBits, !oldCorrectedBitsESet));
        }
    }

    public void unsetCorrectedBits() {
        Integer oldCorrectedBits = this.correctedBits;
        boolean oldCorrectedBitsESet = this.correctedBitsESet;
        this.correctedBits = CORRECTED_BITS_EDEFAULT;
        this.correctedBitsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldCorrectedBits, (Object)CORRECTED_BITS_EDEFAULT, oldCorrectedBitsESet));
        }
    }

    public boolean isSetCorrectedBits() {
        return this.correctedBitsESet;
    }

    public Integer getDetectedBits() {
        return this.detectedBits;
    }

    public void setDetectedBits(Integer newDetectedBits) {
        Integer oldDetectedBits = this.detectedBits;
        this.detectedBits = newDetectedBits;
        boolean oldDetectedBitsESet = this.detectedBitsESet;
        this.detectedBitsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDetectedBits, (Object)this.detectedBits, !oldDetectedBitsESet));
        }
    }

    public void unsetDetectedBits() {
        Integer oldDetectedBits = this.detectedBits;
        boolean oldDetectedBitsESet = this.detectedBitsESet;
        this.detectedBits = DETECTED_BITS_EDEFAULT;
        this.detectedBitsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldDetectedBits, (Object)DETECTED_BITS_EDEFAULT, oldDetectedBitsESet));
        }
    }

    public boolean isSetDetectedBits() {
        return this.detectedBitsESet;
    }

    public Integer getExtraBits() {
        return this.extraBits;
    }

    public void setExtraBits(Integer newExtraBits) {
        Integer oldExtraBits = this.extraBits;
        this.extraBits = newExtraBits;
        boolean oldExtraBitsESet = this.extraBitsESet;
        this.extraBitsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldExtraBits, (Object)this.extraBits, !oldExtraBitsESet));
        }
    }

    public void unsetExtraBits() {
        Integer oldExtraBits = this.extraBits;
        boolean oldExtraBitsESet = this.extraBitsESet;
        this.extraBits = EXTRA_BITS_EDEFAULT;
        this.extraBitsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldExtraBits, (Object)EXTRA_BITS_EDEFAULT, oldExtraBitsESet));
        }
    }

    public boolean isSetExtraBits() {
        return this.extraBitsESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCorrectedBits();
            }
            case 5: {
                return this.getDetectedBits();
            }
            case 6: {
                return this.getExtraBits();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCorrectedBits((Integer)newValue);
                return;
            }
            case 5: {
                this.setDetectedBits((Integer)newValue);
                return;
            }
            case 6: {
                this.setExtraBits((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetCorrectedBits();
                return;
            }
            case 5: {
                this.unsetDetectedBits();
                return;
            }
            case 6: {
                this.unsetExtraBits();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetCorrectedBits();
            }
            case 5: {
                return this.isSetDetectedBits();
            }
            case 6: {
                return this.isSetExtraBits();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (correctedBits: ");
        if (this.correctedBitsESet) {
            result.append(this.correctedBits);
        } else {
            result.append("<unset>");
        }
        result.append(", detectedBits: ");
        if (this.detectedBitsESet) {
            result.append(this.detectedBits);
        } else {
            result.append("<unset>");
        }
        result.append(", extraBits: ");
        if (this.extraBitsESet) {
            result.append(this.extraBits);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

