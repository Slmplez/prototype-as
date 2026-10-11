/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.ecuresource.peripherals.impl;

import autosar3x.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar3x.ecuresource.ecuelectronics.Clock;
import autosar3x.ecuresource.peripherals.CommunicationArchitectureEnum;
import autosar3x.ecuresource.peripherals.CommunicationFilter;
import autosar3x.ecuresource.peripherals.CommunicationHWPort;
import autosar3x.ecuresource.peripherals.CommunicationPeripheral;
import autosar3x.ecuresource.peripherals.CommunicationProtocol;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.impl.PeripheralImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommunicationPeripheralImpl
extends PeripheralImpl
implements CommunicationPeripheral,
IReferringClass {
    protected CommunicationFilter acceptanceFilter;
    protected static final CommunicationArchitectureEnum ARCHITECTURE_EDEFAULT = CommunicationArchitectureEnum.MASTER;
    protected CommunicationArchitectureEnum architecture = ARCHITECTURE_EDEFAULT;
    protected boolean architectureESet;
    protected Clock clock;
    protected ErrorDetectionCorrection errorDetection;
    protected EList<CommunicationHWPort> hwPorts;
    protected static final Boolean MONITOR_EDEFAULT = Boolean.FALSE;
    protected Boolean monitor = MONITOR_EDEFAULT;
    protected boolean monitorESet;
    protected EList<CommunicationProtocol> protocols;
    protected CommunicationFilter rejectionFilter;
    protected static final Boolean TIMESTAMP_AVAILABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean timestampAvailable = TIMESTAMP_AVAILABLE_EDEFAULT;
    protected boolean timestampAvailableESet;

    protected CommunicationPeripheralImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.COMMUNICATION_PERIPHERAL;
    }

    @Override
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

    @Override
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

    @Override
    public CommunicationArchitectureEnum getArchitecture() {
        return this.architecture;
    }

    @Override
    public void setArchitecture(CommunicationArchitectureEnum newArchitecture) {
        CommunicationArchitectureEnum oldArchitecture = this.architecture;
        this.architecture = newArchitecture == null ? ARCHITECTURE_EDEFAULT : newArchitecture;
        boolean oldArchitectureESet = this.architectureESet;
        this.architectureESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldArchitecture, (Object)this.architecture, !oldArchitectureESet));
        }
    }

    @Override
    public void unsetArchitecture() {
        CommunicationArchitectureEnum oldArchitecture = this.architecture;
        boolean oldArchitectureESet = this.architectureESet;
        this.architecture = ARCHITECTURE_EDEFAULT;
        this.architectureESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldArchitecture, (Object)ARCHITECTURE_EDEFAULT, oldArchitectureESet));
        }
    }

    @Override
    public boolean isSetArchitecture() {
        return this.architectureESet;
    }

    @Override
    public Clock getClock() {
        if (this.clock != null && this.clock.eIsProxy()) {
            InternalEObject oldClock = (InternalEObject)this.clock;
            this.clock = (Clock)this.eResolveProxy(oldClock);
            if (this.clock != oldClock && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 29, (Object)oldClock, (Object)this.clock));
            }
        }
        return this.clock;
    }

    public Clock basicGetClock() {
        return this.clock;
    }

    @Override
    public void setClock(Clock newClock) {
        Clock oldClock = this.clock;
        this.clock = newClock;
        AutosarObjectUtil.setDest((EObject)this, (int)29, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldClock, (Object)this.clock));
        }
    }

    @Override
    public ErrorDetectionCorrection getErrorDetection() {
        return this.errorDetection;
    }

    public NotificationChain basicSetErrorDetection(ErrorDetectionCorrection newErrorDetection, NotificationChain msgs) {
        ErrorDetectionCorrection oldErrorDetection = this.errorDetection;
        this.errorDetection = newErrorDetection;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldErrorDetection, (Object)newErrorDetection);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setErrorDetection(ErrorDetectionCorrection newErrorDetection) {
        if (newErrorDetection != this.errorDetection) {
            NotificationChain msgs = null;
            if (this.errorDetection != null) {
                msgs = ((InternalEObject)this.errorDetection).eInverseRemove((InternalEObject)this, -31, null, msgs);
            }
            if (newErrorDetection != null) {
                msgs = ((InternalEObject)newErrorDetection).eInverseAdd((InternalEObject)this, -31, null, msgs);
            }
            if ((msgs = this.basicSetErrorDetection(newErrorDetection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)newErrorDetection, (Object)newErrorDetection));
        }
    }

    @Override
    public EList<CommunicationHWPort> getHwPorts() {
        if (this.hwPorts == null) {
            this.hwPorts = new EObjectContainmentWithInverseEList(CommunicationHWPort.class, (InternalEObject)this, 31, 24);
        }
        return this.hwPorts;
    }

    @Override
    public Boolean getMonitor() {
        return this.monitor;
    }

    @Override
    public void setMonitor(Boolean newMonitor) {
        Boolean oldMonitor = this.monitor;
        this.monitor = newMonitor;
        boolean oldMonitorESet = this.monitorESet;
        this.monitorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldMonitor, (Object)this.monitor, !oldMonitorESet));
        }
    }

    @Override
    public void unsetMonitor() {
        Boolean oldMonitor = this.monitor;
        boolean oldMonitorESet = this.monitorESet;
        this.monitor = MONITOR_EDEFAULT;
        this.monitorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldMonitor, (Object)MONITOR_EDEFAULT, oldMonitorESet));
        }
    }

    @Override
    public boolean isSetMonitor() {
        return this.monitorESet;
    }

    @Override
    public EList<CommunicationProtocol> getProtocols() {
        if (this.protocols == null) {
            this.protocols = new EObjectContainmentWithInverseEList(CommunicationProtocol.class, (InternalEObject)this, 33, 17);
        }
        return this.protocols;
    }

    @Override
    public CommunicationFilter getRejectionFilter() {
        return this.rejectionFilter;
    }

    public NotificationChain basicSetRejectionFilter(CommunicationFilter newRejectionFilter, NotificationChain msgs) {
        CommunicationFilter oldRejectionFilter = this.rejectionFilter;
        this.rejectionFilter = newRejectionFilter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldRejectionFilter, (Object)newRejectionFilter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRejectionFilter(CommunicationFilter newRejectionFilter) {
        if (newRejectionFilter != this.rejectionFilter) {
            NotificationChain msgs = null;
            if (this.rejectionFilter != null) {
                msgs = ((InternalEObject)this.rejectionFilter).eInverseRemove((InternalEObject)this, -35, null, msgs);
            }
            if (newRejectionFilter != null) {
                msgs = ((InternalEObject)newRejectionFilter).eInverseAdd((InternalEObject)this, -35, null, msgs);
            }
            if ((msgs = this.basicSetRejectionFilter(newRejectionFilter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)newRejectionFilter, (Object)newRejectionFilter));
        }
    }

    @Override
    public Boolean getTimestampAvailable() {
        return this.timestampAvailable;
    }

    @Override
    public void setTimestampAvailable(Boolean newTimestampAvailable) {
        Boolean oldTimestampAvailable = this.timestampAvailable;
        this.timestampAvailable = newTimestampAvailable;
        boolean oldTimestampAvailableESet = this.timestampAvailableESet;
        this.timestampAvailableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldTimestampAvailable, (Object)this.timestampAvailable, !oldTimestampAvailableESet));
        }
    }

    @Override
    public void unsetTimestampAvailable() {
        Boolean oldTimestampAvailable = this.timestampAvailable;
        boolean oldTimestampAvailableESet = this.timestampAvailableESet;
        this.timestampAvailable = TIMESTAMP_AVAILABLE_EDEFAULT;
        this.timestampAvailableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldTimestampAvailable, (Object)TIMESTAMP_AVAILABLE_EDEFAULT, oldTimestampAvailableESet));
        }
    }

    @Override
    public boolean isSetTimestampAvailable() {
        return this.timestampAvailableESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 31: {
                return ((InternalEList)this.getHwPorts()).basicAdd((Object)otherEnd, msgs);
            }
            case 33: {
                return ((InternalEList)this.getProtocols()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return this.basicSetAcceptanceFilter(null, msgs);
            }
            case 30: {
                return this.basicSetErrorDetection(null, msgs);
            }
            case 31: {
                return ((InternalEList)this.getHwPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 33: {
                return ((InternalEList)this.getProtocols()).basicRemove((Object)otherEnd, msgs);
            }
            case 34: {
                return this.basicSetRejectionFilter(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getAcceptanceFilter();
            }
            case 28: {
                return this.getArchitecture();
            }
            case 29: {
                if (resolve) {
                    return this.getClock();
                }
                return this.basicGetClock();
            }
            case 30: {
                return this.getErrorDetection();
            }
            case 31: {
                return this.getHwPorts();
            }
            case 32: {
                return this.getMonitor();
            }
            case 33: {
                return this.getProtocols();
            }
            case 34: {
                return this.getRejectionFilter();
            }
            case 35: {
                return this.getTimestampAvailable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
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
                this.setClock((Clock)newValue);
                return;
            }
            case 30: {
                this.setErrorDetection((ErrorDetectionCorrection)newValue);
                return;
            }
            case 31: {
                this.getHwPorts().clear();
                this.getHwPorts().addAll((Collection)newValue);
                return;
            }
            case 32: {
                this.setMonitor((Boolean)newValue);
                return;
            }
            case 33: {
                this.getProtocols().clear();
                this.getProtocols().addAll((Collection)newValue);
                return;
            }
            case 34: {
                this.setRejectionFilter((CommunicationFilter)newValue);
                return;
            }
            case 35: {
                this.setTimestampAvailable((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
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
                this.setClock(null);
                return;
            }
            case 30: {
                this.setErrorDetection(null);
                return;
            }
            case 31: {
                this.getHwPorts().clear();
                return;
            }
            case 32: {
                this.unsetMonitor();
                return;
            }
            case 33: {
                this.getProtocols().clear();
                return;
            }
            case 34: {
                this.setRejectionFilter(null);
                return;
            }
            case 35: {
                this.unsetTimestampAvailable();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.acceptanceFilter != null;
            }
            case 28: {
                return this.isSetArchitecture();
            }
            case 29: {
                return this.clock != null;
            }
            case 30: {
                return this.errorDetection != null;
            }
            case 31: {
                return this.hwPorts != null && !this.hwPorts.isEmpty();
            }
            case 32: {
                return this.isSetMonitor();
            }
            case 33: {
                return this.protocols != null && !this.protocols.isEmpty();
            }
            case 34: {
                return this.rejectionFilter != null;
            }
            case 35: {
                return this.isSetTimestampAvailable();
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    @Override
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
        result.append(", monitor: ");
        if (this.monitorESet) {
            result.append(this.monitor);
        } else {
            result.append("<unset>");
        }
        result.append(", timestampAvailable: ");
        if (this.timestampAvailableESet) {
            result.append(this.timestampAvailable);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

