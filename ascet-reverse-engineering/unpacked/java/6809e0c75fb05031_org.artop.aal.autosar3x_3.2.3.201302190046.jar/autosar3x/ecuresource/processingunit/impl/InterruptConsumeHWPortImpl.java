/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.processingunit.impl;

import autosar3x.ecuresource.processingunit.InterruptConsumeHWPort;
import autosar3x.ecuresource.processingunit.ProcessingunitPackage;
import autosar3x.ecuresource.processingunit.impl.InterruptHWPortImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class InterruptConsumeHWPortImpl
extends InterruptHWPortImpl
implements InterruptConsumeHWPort {
    protected static final String ACTIVATION_SOURCE_EDEFAULT = "";
    protected String activationSource = "";
    protected boolean activationSourceESet;
    protected static final Double LATENCY_EDEFAULT = new Double(0.0);
    protected Double latency = LATENCY_EDEFAULT;
    protected boolean latencyESet;
    protected static final Boolean MASKABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean maskable = MASKABLE_EDEFAULT;
    protected boolean maskableESet;
    protected static final Integer PRIORITY_EDEFAULT = new Integer(0);
    protected Integer priority = PRIORITY_EDEFAULT;
    protected boolean priorityESet;

    protected InterruptConsumeHWPortImpl() {
    }

    protected EClass eStaticClass() {
        return ProcessingunitPackage.Literals.INTERRUPT_CONSUME_HW_PORT;
    }

    public String getActivationSource() {
        return this.activationSource;
    }

    public void setActivationSource(String newActivationSource) {
        String oldActivationSource = this.activationSource;
        this.activationSource = newActivationSource;
        boolean oldActivationSourceESet = this.activationSourceESet;
        this.activationSourceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldActivationSource, (Object)this.activationSource, !oldActivationSourceESet));
        }
    }

    public void unsetActivationSource() {
        String oldActivationSource = this.activationSource;
        boolean oldActivationSourceESet = this.activationSourceESet;
        this.activationSource = ACTIVATION_SOURCE_EDEFAULT;
        this.activationSourceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldActivationSource, (Object)ACTIVATION_SOURCE_EDEFAULT, oldActivationSourceESet));
        }
    }

    public boolean isSetActivationSource() {
        return this.activationSourceESet;
    }

    public Double getLatency() {
        return this.latency;
    }

    public void setLatency(Double newLatency) {
        Double oldLatency = this.latency;
        this.latency = newLatency;
        boolean oldLatencyESet = this.latencyESet;
        this.latencyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldLatency, (Object)this.latency, !oldLatencyESet));
        }
    }

    public void unsetLatency() {
        Double oldLatency = this.latency;
        boolean oldLatencyESet = this.latencyESet;
        this.latency = LATENCY_EDEFAULT;
        this.latencyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldLatency, (Object)LATENCY_EDEFAULT, oldLatencyESet));
        }
    }

    public boolean isSetLatency() {
        return this.latencyESet;
    }

    public Boolean getMaskable() {
        return this.maskable;
    }

    public void setMaskable(Boolean newMaskable) {
        Boolean oldMaskable = this.maskable;
        this.maskable = newMaskable;
        boolean oldMaskableESet = this.maskableESet;
        this.maskableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMaskable, (Object)this.maskable, !oldMaskableESet));
        }
    }

    public void unsetMaskable() {
        Boolean oldMaskable = this.maskable;
        boolean oldMaskableESet = this.maskableESet;
        this.maskable = MASKABLE_EDEFAULT;
        this.maskableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMaskable, (Object)MASKABLE_EDEFAULT, oldMaskableESet));
        }
    }

    public boolean isSetMaskable() {
        return this.maskableESet;
    }

    public Integer getPriority() {
        return this.priority;
    }

    public void setPriority(Integer newPriority) {
        Integer oldPriority = this.priority;
        this.priority = newPriority;
        boolean oldPriorityESet = this.priorityESet;
        this.priorityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldPriority, (Object)this.priority, !oldPriorityESet));
        }
    }

    public void unsetPriority() {
        Integer oldPriority = this.priority;
        boolean oldPriorityESet = this.priorityESet;
        this.priority = PRIORITY_EDEFAULT;
        this.priorityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldPriority, (Object)PRIORITY_EDEFAULT, oldPriorityESet));
        }
    }

    public boolean isSetPriority() {
        return this.priorityESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getActivationSource();
            }
            case 21: {
                return this.getLatency();
            }
            case 22: {
                return this.getMaskable();
            }
            case 23: {
                return this.getPriority();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setActivationSource((String)newValue);
                return;
            }
            case 21: {
                this.setLatency((Double)newValue);
                return;
            }
            case 22: {
                this.setMaskable((Boolean)newValue);
                return;
            }
            case 23: {
                this.setPriority((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.unsetActivationSource();
                return;
            }
            case 21: {
                this.unsetLatency();
                return;
            }
            case 22: {
                this.unsetMaskable();
                return;
            }
            case 23: {
                this.unsetPriority();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.isSetActivationSource();
            }
            case 21: {
                return this.isSetLatency();
            }
            case 22: {
                return this.isSetMaskable();
            }
            case 23: {
                return this.isSetPriority();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (activationSource: ");
        if (this.activationSourceESet) {
            result.append(this.activationSource);
        } else {
            result.append("<unset>");
        }
        result.append(", latency: ");
        if (this.latencyESet) {
            result.append(this.latency);
        } else {
            result.append("<unset>");
        }
        result.append(", maskable: ");
        if (this.maskableESet) {
            result.append(this.maskable);
        } else {
            result.append("<unset>");
        }
        result.append(", priority: ");
        if (this.priorityESet) {
            result.append(this.priority);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

