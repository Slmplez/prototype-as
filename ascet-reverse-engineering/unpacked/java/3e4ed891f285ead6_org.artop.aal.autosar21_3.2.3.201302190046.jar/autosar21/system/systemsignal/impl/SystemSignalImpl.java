/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.systemsignal.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.system.communication.Timing;
import autosar21.system.systemsignal.SystemSignal;
import autosar21.system.systemsignal.SystemsignalPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemSignalImpl
extends ARElementImpl
implements SystemSignal {
    protected static final Boolean NEEDS_UPDATE_INDICATION_EDEFAULT = Boolean.FALSE;
    protected Boolean needsUpdateIndication = NEEDS_UPDATE_INDICATION_EDEFAULT;
    protected boolean needsUpdateIndicationESet;
    protected static final Integer SIGNAL_LENGTH_EDEFAULT = new Integer(0);
    protected Integer signalLength = SIGNAL_LENGTH_EDEFAULT;
    protected boolean signalLengthESet;
    protected EList<Timing> signalTimingRequirements;

    protected SystemSignalImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SystemsignalPackage.Literals.SYSTEM_SIGNAL;
    }

    @Override
    public Boolean getNeedsUpdateIndication() {
        return this.needsUpdateIndication;
    }

    @Override
    public void setNeedsUpdateIndication(Boolean newNeedsUpdateIndication) {
        Boolean oldNeedsUpdateIndication = this.needsUpdateIndication;
        this.needsUpdateIndication = newNeedsUpdateIndication;
        boolean oldNeedsUpdateIndicationESet = this.needsUpdateIndicationESet;
        this.needsUpdateIndicationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldNeedsUpdateIndication, (Object)this.needsUpdateIndication, !oldNeedsUpdateIndicationESet));
        }
    }

    @Override
    public void unsetNeedsUpdateIndication() {
        Boolean oldNeedsUpdateIndication = this.needsUpdateIndication;
        boolean oldNeedsUpdateIndicationESet = this.needsUpdateIndicationESet;
        this.needsUpdateIndication = NEEDS_UPDATE_INDICATION_EDEFAULT;
        this.needsUpdateIndicationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldNeedsUpdateIndication, (Object)NEEDS_UPDATE_INDICATION_EDEFAULT, oldNeedsUpdateIndicationESet));
        }
    }

    @Override
    public boolean isSetNeedsUpdateIndication() {
        return this.needsUpdateIndicationESet;
    }

    @Override
    public Integer getSignalLength() {
        return this.signalLength;
    }

    @Override
    public void setSignalLength(Integer newSignalLength) {
        Integer oldSignalLength = this.signalLength;
        this.signalLength = newSignalLength;
        boolean oldSignalLengthESet = this.signalLengthESet;
        this.signalLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldSignalLength, (Object)this.signalLength, !oldSignalLengthESet));
        }
    }

    @Override
    public void unsetSignalLength() {
        Integer oldSignalLength = this.signalLength;
        boolean oldSignalLengthESet = this.signalLengthESet;
        this.signalLength = SIGNAL_LENGTH_EDEFAULT;
        this.signalLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldSignalLength, (Object)SIGNAL_LENGTH_EDEFAULT, oldSignalLengthESet));
        }
    }

    @Override
    public boolean isSetSignalLength() {
        return this.signalLengthESet;
    }

    @Override
    public EList<Timing> getSignalTimingRequirements() {
        if (this.signalTimingRequirements == null) {
            this.signalTimingRequirements = new EObjectContainmentEList(Timing.class, (InternalEObject)this, 20);
        }
        return this.signalTimingRequirements;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getSignalTimingRequirements()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getNeedsUpdateIndication();
            }
            case 19: {
                return this.getSignalLength();
            }
            case 20: {
                return this.getSignalTimingRequirements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setNeedsUpdateIndication((Boolean)newValue);
                return;
            }
            case 19: {
                this.setSignalLength((Integer)newValue);
                return;
            }
            case 20: {
                this.getSignalTimingRequirements().clear();
                this.getSignalTimingRequirements().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.unsetNeedsUpdateIndication();
                return;
            }
            case 19: {
                this.unsetSignalLength();
                return;
            }
            case 20: {
                this.getSignalTimingRequirements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.isSetNeedsUpdateIndication();
            }
            case 19: {
                return this.isSetSignalLength();
            }
            case 20: {
                return this.signalTimingRequirements != null && !this.signalTimingRequirements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (needsUpdateIndication: ");
        if (this.needsUpdateIndicationESet) {
            result.append(this.needsUpdateIndication);
        } else {
            result.append("<unset>");
        }
        result.append(", signalLength: ");
        if (this.signalLengthESet) {
            result.append(this.signalLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

