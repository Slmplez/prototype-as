/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4lin.lintopology.impl;

import autosar3x.system.fibex.fibex4lin.lintopology.LinMaster;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar3x.system.fibex.fibex4lin.lintopology.impl.LinCommunicationControllerImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class LinMasterImpl
extends LinCommunicationControllerImpl
implements LinMaster {
    protected static final Double TIME_BASE_EDEFAULT = new Double(0.0);
    protected Double timeBase = TIME_BASE_EDEFAULT;
    protected boolean timeBaseESet;
    protected static final Double TIME_BASE_JITTER_EDEFAULT = new Double(0.0);
    protected Double timeBaseJitter = TIME_BASE_JITTER_EDEFAULT;
    protected boolean timeBaseJitterESet;

    protected LinMasterImpl() {
    }

    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_MASTER;
    }

    public Double getTimeBase() {
        return this.timeBase;
    }

    public void setTimeBase(Double newTimeBase) {
        Double oldTimeBase = this.timeBase;
        this.timeBase = newTimeBase;
        boolean oldTimeBaseESet = this.timeBaseESet;
        this.timeBaseESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldTimeBase, (Object)this.timeBase, !oldTimeBaseESet));
        }
    }

    public void unsetTimeBase() {
        Double oldTimeBase = this.timeBase;
        boolean oldTimeBaseESet = this.timeBaseESet;
        this.timeBase = TIME_BASE_EDEFAULT;
        this.timeBaseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldTimeBase, (Object)TIME_BASE_EDEFAULT, oldTimeBaseESet));
        }
    }

    public boolean isSetTimeBase() {
        return this.timeBaseESet;
    }

    public Double getTimeBaseJitter() {
        return this.timeBaseJitter;
    }

    public void setTimeBaseJitter(Double newTimeBaseJitter) {
        Double oldTimeBaseJitter = this.timeBaseJitter;
        this.timeBaseJitter = newTimeBaseJitter;
        boolean oldTimeBaseJitterESet = this.timeBaseJitterESet;
        this.timeBaseJitterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldTimeBaseJitter, (Object)this.timeBaseJitter, !oldTimeBaseJitterESet));
        }
    }

    public void unsetTimeBaseJitter() {
        Double oldTimeBaseJitter = this.timeBaseJitter;
        boolean oldTimeBaseJitterESet = this.timeBaseJitterESet;
        this.timeBaseJitter = TIME_BASE_JITTER_EDEFAULT;
        this.timeBaseJitterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldTimeBaseJitter, (Object)TIME_BASE_JITTER_EDEFAULT, oldTimeBaseJitterESet));
        }
    }

    public boolean isSetTimeBaseJitter() {
        return this.timeBaseJitterESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getTimeBase();
            }
            case 20: {
                return this.getTimeBaseJitter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setTimeBase((Double)newValue);
                return;
            }
            case 20: {
                this.setTimeBaseJitter((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetTimeBase();
                return;
            }
            case 20: {
                this.unsetTimeBaseJitter();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetTimeBase();
            }
            case 20: {
                return this.isSetTimeBaseJitter();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (timeBase: ");
        if (this.timeBaseESet) {
            result.append(this.timeBase);
        } else {
            result.append("<unset>");
        }
        result.append(", timeBaseJitter: ");
        if (this.timeBaseJitterESet) {
            result.append(this.timeBaseJitter);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

