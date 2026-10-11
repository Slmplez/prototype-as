/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.basicelements.impl;

import autosar3x.ecuresource.basicelements.BasicelementsPackage;
import autosar3x.ecuresource.basicelements.FrequencyRange;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FrequencyRangeImpl
extends ARObjectImpl
implements FrequencyRange {
    protected static final Double MAX_FREQUENCY_EDEFAULT = new Double(0.0);
    protected Double maxFrequency = MAX_FREQUENCY_EDEFAULT;
    protected boolean maxFrequencyESet;
    protected static final Double MIN_FREQUENCY_EDEFAULT = new Double(0.0);
    protected Double minFrequency = MIN_FREQUENCY_EDEFAULT;
    protected boolean minFrequencyESet;
    protected static final Double TYPICAL_FREQUENCY_EDEFAULT = new Double(0.0);
    protected Double typicalFrequency = TYPICAL_FREQUENCY_EDEFAULT;
    protected boolean typicalFrequencyESet;

    protected FrequencyRangeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BasicelementsPackage.Literals.FREQUENCY_RANGE;
    }

    @Override
    public Double getMaxFrequency() {
        return this.maxFrequency;
    }

    @Override
    public void setMaxFrequency(Double newMaxFrequency) {
        Double oldMaxFrequency = this.maxFrequency;
        this.maxFrequency = newMaxFrequency;
        boolean oldMaxFrequencyESet = this.maxFrequencyESet;
        this.maxFrequencyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMaxFrequency, (Object)this.maxFrequency, !oldMaxFrequencyESet));
        }
    }

    @Override
    public void unsetMaxFrequency() {
        Double oldMaxFrequency = this.maxFrequency;
        boolean oldMaxFrequencyESet = this.maxFrequencyESet;
        this.maxFrequency = MAX_FREQUENCY_EDEFAULT;
        this.maxFrequencyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldMaxFrequency, (Object)MAX_FREQUENCY_EDEFAULT, oldMaxFrequencyESet));
        }
    }

    @Override
    public boolean isSetMaxFrequency() {
        return this.maxFrequencyESet;
    }

    @Override
    public Double getMinFrequency() {
        return this.minFrequency;
    }

    @Override
    public void setMinFrequency(Double newMinFrequency) {
        Double oldMinFrequency = this.minFrequency;
        this.minFrequency = newMinFrequency;
        boolean oldMinFrequencyESet = this.minFrequencyESet;
        this.minFrequencyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMinFrequency, (Object)this.minFrequency, !oldMinFrequencyESet));
        }
    }

    @Override
    public void unsetMinFrequency() {
        Double oldMinFrequency = this.minFrequency;
        boolean oldMinFrequencyESet = this.minFrequencyESet;
        this.minFrequency = MIN_FREQUENCY_EDEFAULT;
        this.minFrequencyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMinFrequency, (Object)MIN_FREQUENCY_EDEFAULT, oldMinFrequencyESet));
        }
    }

    @Override
    public boolean isSetMinFrequency() {
        return this.minFrequencyESet;
    }

    @Override
    public Double getTypicalFrequency() {
        return this.typicalFrequency;
    }

    @Override
    public void setTypicalFrequency(Double newTypicalFrequency) {
        Double oldTypicalFrequency = this.typicalFrequency;
        this.typicalFrequency = newTypicalFrequency;
        boolean oldTypicalFrequencyESet = this.typicalFrequencyESet;
        this.typicalFrequencyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTypicalFrequency, (Object)this.typicalFrequency, !oldTypicalFrequencyESet));
        }
    }

    @Override
    public void unsetTypicalFrequency() {
        Double oldTypicalFrequency = this.typicalFrequency;
        boolean oldTypicalFrequencyESet = this.typicalFrequencyESet;
        this.typicalFrequency = TYPICAL_FREQUENCY_EDEFAULT;
        this.typicalFrequencyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldTypicalFrequency, (Object)TYPICAL_FREQUENCY_EDEFAULT, oldTypicalFrequencyESet));
        }
    }

    @Override
    public boolean isSetTypicalFrequency() {
        return this.typicalFrequencyESet;
    }

    @Override
    public boolean _minFrequencytypicalFrequencyandtypicalFrequencymaxFrequency(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMaxFrequency();
            }
            case 5: {
                return this.getMinFrequency();
            }
            case 6: {
                return this.getTypicalFrequency();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMaxFrequency((Double)newValue);
                return;
            }
            case 5: {
                this.setMinFrequency((Double)newValue);
                return;
            }
            case 6: {
                this.setTypicalFrequency((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMaxFrequency();
                return;
            }
            case 5: {
                this.unsetMinFrequency();
                return;
            }
            case 6: {
                this.unsetTypicalFrequency();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMaxFrequency();
            }
            case 5: {
                return this.isSetMinFrequency();
            }
            case 6: {
                return this.isSetTypicalFrequency();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxFrequency: ");
        if (this.maxFrequencyESet) {
            result.append(this.maxFrequency);
        } else {
            result.append("<unset>");
        }
        result.append(", minFrequency: ");
        if (this.minFrequencyESet) {
            result.append(this.minFrequency);
        } else {
            result.append("<unset>");
        }
        result.append(", typicalFrequency: ");
        if (this.typicalFrequencyESet) {
            result.append(this.typicalFrequency);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

