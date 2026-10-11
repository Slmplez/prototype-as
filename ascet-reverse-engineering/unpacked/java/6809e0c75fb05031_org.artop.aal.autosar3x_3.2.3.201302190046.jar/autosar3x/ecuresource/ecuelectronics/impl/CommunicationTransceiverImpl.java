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
package autosar3x.ecuresource.ecuelectronics.impl;

import autosar3x.ecuresource.ecuelectronics.BusTermination;
import autosar3x.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.impl.ECUElectronicsImpl;
import autosar3x.ecuresource.peripherals.CommunicationArchitectureEnum;
import autosar3x.ecuresource.peripherals.CommunicationFilter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CommunicationTransceiverImpl
extends ECUElectronicsImpl
implements CommunicationTransceiver {
    protected CommunicationFilter acceptanceFilter;
    protected static final CommunicationArchitectureEnum ARCHITECTURE_EDEFAULT = CommunicationArchitectureEnum.MASTER;
    protected CommunicationArchitectureEnum architecture = ARCHITECTURE_EDEFAULT;
    protected boolean architectureESet;
    protected CommunicationFilter rejectionFilter;
    protected BusTermination termination;

    protected CommunicationTransceiverImpl() {
    }

    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.COMMUNICATION_TRANSCEIVER;
    }

    public CommunicationFilter getAcceptanceFilter() {
        return this.acceptanceFilter;
    }

    public NotificationChain basicSetAcceptanceFilter(CommunicationFilter newAcceptanceFilter, NotificationChain msgs) {
        CommunicationFilter oldAcceptanceFilter = this.acceptanceFilter;
        this.acceptanceFilter = newAcceptanceFilter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldAcceptanceFilter, (Object)newAcceptanceFilter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setAcceptanceFilter(CommunicationFilter newAcceptanceFilter) {
        if (newAcceptanceFilter != this.acceptanceFilter) {
            NotificationChain msgs = null;
            if (this.acceptanceFilter != null) {
                msgs = ((InternalEObject)this.acceptanceFilter).eInverseRemove((InternalEObject)this, -28, null, msgs);
            }
            if (newAcceptanceFilter != null) {
                msgs = ((InternalEObject)newAcceptanceFilter).eInverseAdd((InternalEObject)this, -28, null, msgs);
            }
            if ((msgs = this.basicSetAcceptanceFilter(newAcceptanceFilter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newAcceptanceFilter, (Object)newAcceptanceFilter));
        }
    }

    public CommunicationArchitectureEnum getArchitecture() {
        return this.architecture;
    }

    public void setArchitecture(CommunicationArchitectureEnum newArchitecture) {
        CommunicationArchitectureEnum oldArchitecture = this.architecture;
        this.architecture = newArchitecture == null ? ARCHITECTURE_EDEFAULT : newArchitecture;
        boolean oldArchitectureESet = this.architectureESet;
        this.architectureESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldArchitecture, (Object)this.architecture, !oldArchitectureESet));
        }
    }

    public void unsetArchitecture() {
        CommunicationArchitectureEnum oldArchitecture = this.architecture;
        boolean oldArchitectureESet = this.architectureESet;
        this.architecture = ARCHITECTURE_EDEFAULT;
        this.architectureESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldArchitecture, (Object)ARCHITECTURE_EDEFAULT, oldArchitectureESet));
        }
    }

    public boolean isSetArchitecture() {
        return this.architectureESet;
    }

    public CommunicationFilter getRejectionFilter() {
        return this.rejectionFilter;
    }

    public NotificationChain basicSetRejectionFilter(CommunicationFilter newRejectionFilter, NotificationChain msgs) {
        CommunicationFilter oldRejectionFilter = this.rejectionFilter;
        this.rejectionFilter = newRejectionFilter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldRejectionFilter, (Object)newRejectionFilter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setRejectionFilter(CommunicationFilter newRejectionFilter) {
        if (newRejectionFilter != this.rejectionFilter) {
            NotificationChain msgs = null;
            if (this.rejectionFilter != null) {
                msgs = ((InternalEObject)this.rejectionFilter).eInverseRemove((InternalEObject)this, -30, null, msgs);
            }
            if (newRejectionFilter != null) {
                msgs = ((InternalEObject)newRejectionFilter).eInverseAdd((InternalEObject)this, -30, null, msgs);
            }
            if ((msgs = this.basicSetRejectionFilter(newRejectionFilter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)newRejectionFilter, (Object)newRejectionFilter));
        }
    }

    public BusTermination getTermination() {
        return this.termination;
    }

    public NotificationChain basicSetTermination(BusTermination newTermination, NotificationChain msgs) {
        BusTermination oldTermination = this.termination;
        this.termination = newTermination;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldTermination, (Object)newTermination);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTermination(BusTermination newTermination) {
        if (newTermination != this.termination) {
            NotificationChain msgs = null;
            if (this.termination != null) {
                msgs = ((InternalEObject)this.termination).eInverseRemove((InternalEObject)this, 4, BusTermination.class, msgs);
            }
            if (newTermination != null) {
                msgs = ((InternalEObject)newTermination).eInverseAdd((InternalEObject)this, 4, BusTermination.class, msgs);
            }
            if ((msgs = this.basicSetTermination(newTermination, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)newTermination, (Object)newTermination));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 30: {
                if (this.termination != null) {
                    msgs = ((InternalEObject)this.termination).eInverseRemove((InternalEObject)this, -31, null, msgs);
                }
                return this.basicSetTermination((BusTermination)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return this.basicSetAcceptanceFilter(null, msgs);
            }
            case 29: {
                return this.basicSetRejectionFilter(null, msgs);
            }
            case 30: {
                return this.basicSetTermination(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getAcceptanceFilter();
            }
            case 28: {
                return this.getArchitecture();
            }
            case 29: {
                return this.getRejectionFilter();
            }
            case 30: {
                return this.getTermination();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setAcceptanceFilter((CommunicationFilter)newValue);
                return;
            }
            case 28: {
                this.setArchitecture((CommunicationArchitectureEnum)((Object)newValue));
                return;
            }
            case 29: {
                this.setRejectionFilter((CommunicationFilter)newValue);
                return;
            }
            case 30: {
                this.setTermination((BusTermination)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.setAcceptanceFilter(null);
                return;
            }
            case 28: {
                this.unsetArchitecture();
                return;
            }
            case 29: {
                this.setRejectionFilter(null);
                return;
            }
            case 30: {
                this.setTermination(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.acceptanceFilter != null;
            }
            case 28: {
                return this.isSetArchitecture();
            }
            case 29: {
                return this.rejectionFilter != null;
            }
            case 30: {
                return this.termination != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (architecture: ");
        if (this.architectureESet) {
            result.append((Object)this.architecture);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

