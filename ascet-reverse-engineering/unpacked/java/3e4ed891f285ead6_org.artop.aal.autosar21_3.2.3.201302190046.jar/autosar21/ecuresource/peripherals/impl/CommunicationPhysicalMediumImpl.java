/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.peripherals.CommunicationHWPort;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMediumPhysicalMediumTypeEnum;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CommunicationPhysicalMediumImpl
extends ARObjectImpl
implements CommunicationPhysicalMedium {
    protected static final Integer PHYSICAL_MEDIUM_DATA_LINES_EDEFAULT = new Integer(0);
    protected Integer physicalMediumDataLines = PHYSICAL_MEDIUM_DATA_LINES_EDEFAULT;
    protected boolean physicalMediumDataLinesESet;
    protected static final String PHYSICAL_MEDIUM_STANDARD_EDEFAULT = "";
    protected String physicalMediumStandard = "";
    protected boolean physicalMediumStandardESet;
    protected static final CommunicationPhysicalMediumPhysicalMediumTypeEnum PHYSICAL_MEDIUM_TYPE_EDEFAULT = CommunicationPhysicalMediumPhysicalMediumTypeEnum.ELECTRICAL;
    protected CommunicationPhysicalMediumPhysicalMediumTypeEnum physicalMediumType = PHYSICAL_MEDIUM_TYPE_EDEFAULT;
    protected boolean physicalMediumTypeESet;

    protected CommunicationPhysicalMediumImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.COMMUNICATION_PHYSICAL_MEDIUM;
    }

    public CommunicationHWPort getCommunicationHWPort() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CommunicationHWPort)this.eContainer();
    }

    public NotificationChain basicSetCommunicationHWPort(CommunicationHWPort newCommunicationHWPort, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationHWPort, 4, msgs);
        return msgs;
    }

    public void setCommunicationHWPort(CommunicationHWPort newCommunicationHWPort) {
        if (newCommunicationHWPort != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCommunicationHWPort != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationHWPort)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationHWPort != null) {
                msgs = ((InternalEObject)newCommunicationHWPort).eInverseAdd((InternalEObject)this, 24, CommunicationHWPort.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationHWPort(newCommunicationHWPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCommunicationHWPort, (Object)newCommunicationHWPort));
        }
    }

    public Integer getPhysicalMediumDataLines() {
        return this.physicalMediumDataLines;
    }

    public void setPhysicalMediumDataLines(Integer newPhysicalMediumDataLines) {
        Integer oldPhysicalMediumDataLines = this.physicalMediumDataLines;
        this.physicalMediumDataLines = newPhysicalMediumDataLines;
        boolean oldPhysicalMediumDataLinesESet = this.physicalMediumDataLinesESet;
        this.physicalMediumDataLinesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPhysicalMediumDataLines, (Object)this.physicalMediumDataLines, !oldPhysicalMediumDataLinesESet));
        }
    }

    public void unsetPhysicalMediumDataLines() {
        Integer oldPhysicalMediumDataLines = this.physicalMediumDataLines;
        boolean oldPhysicalMediumDataLinesESet = this.physicalMediumDataLinesESet;
        this.physicalMediumDataLines = PHYSICAL_MEDIUM_DATA_LINES_EDEFAULT;
        this.physicalMediumDataLinesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldPhysicalMediumDataLines, (Object)PHYSICAL_MEDIUM_DATA_LINES_EDEFAULT, oldPhysicalMediumDataLinesESet));
        }
    }

    public boolean isSetPhysicalMediumDataLines() {
        return this.physicalMediumDataLinesESet;
    }

    public String getPhysicalMediumStandard() {
        return this.physicalMediumStandard;
    }

    public void setPhysicalMediumStandard(String newPhysicalMediumStandard) {
        String oldPhysicalMediumStandard = this.physicalMediumStandard;
        this.physicalMediumStandard = newPhysicalMediumStandard;
        boolean oldPhysicalMediumStandardESet = this.physicalMediumStandardESet;
        this.physicalMediumStandardESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPhysicalMediumStandard, (Object)this.physicalMediumStandard, !oldPhysicalMediumStandardESet));
        }
    }

    public void unsetPhysicalMediumStandard() {
        String oldPhysicalMediumStandard = this.physicalMediumStandard;
        boolean oldPhysicalMediumStandardESet = this.physicalMediumStandardESet;
        this.physicalMediumStandard = PHYSICAL_MEDIUM_STANDARD_EDEFAULT;
        this.physicalMediumStandardESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldPhysicalMediumStandard, (Object)PHYSICAL_MEDIUM_STANDARD_EDEFAULT, oldPhysicalMediumStandardESet));
        }
    }

    public boolean isSetPhysicalMediumStandard() {
        return this.physicalMediumStandardESet;
    }

    public CommunicationPhysicalMediumPhysicalMediumTypeEnum getPhysicalMediumType() {
        return this.physicalMediumType;
    }

    public void setPhysicalMediumType(CommunicationPhysicalMediumPhysicalMediumTypeEnum newPhysicalMediumType) {
        CommunicationPhysicalMediumPhysicalMediumTypeEnum oldPhysicalMediumType = this.physicalMediumType;
        this.physicalMediumType = newPhysicalMediumType == null ? PHYSICAL_MEDIUM_TYPE_EDEFAULT : newPhysicalMediumType;
        boolean oldPhysicalMediumTypeESet = this.physicalMediumTypeESet;
        this.physicalMediumTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPhysicalMediumType, (Object)this.physicalMediumType, !oldPhysicalMediumTypeESet));
        }
    }

    public void unsetPhysicalMediumType() {
        CommunicationPhysicalMediumPhysicalMediumTypeEnum oldPhysicalMediumType = this.physicalMediumType;
        boolean oldPhysicalMediumTypeESet = this.physicalMediumTypeESet;
        this.physicalMediumType = PHYSICAL_MEDIUM_TYPE_EDEFAULT;
        this.physicalMediumTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldPhysicalMediumType, (Object)PHYSICAL_MEDIUM_TYPE_EDEFAULT, oldPhysicalMediumTypeESet));
        }
    }

    public boolean isSetPhysicalMediumType() {
        return this.physicalMediumTypeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationHWPort((CommunicationHWPort)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCommunicationHWPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, CommunicationHWPort.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCommunicationHWPort();
            }
            case 5: {
                return this.getPhysicalMediumDataLines();
            }
            case 6: {
                return this.getPhysicalMediumStandard();
            }
            case 7: {
                return this.getPhysicalMediumType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCommunicationHWPort((CommunicationHWPort)newValue);
                return;
            }
            case 5: {
                this.setPhysicalMediumDataLines((Integer)newValue);
                return;
            }
            case 6: {
                this.setPhysicalMediumStandard((String)newValue);
                return;
            }
            case 7: {
                this.setPhysicalMediumType((CommunicationPhysicalMediumPhysicalMediumTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCommunicationHWPort(null);
                return;
            }
            case 5: {
                this.unsetPhysicalMediumDataLines();
                return;
            }
            case 6: {
                this.unsetPhysicalMediumStandard();
                return;
            }
            case 7: {
                this.unsetPhysicalMediumType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCommunicationHWPort() != null;
            }
            case 5: {
                return this.isSetPhysicalMediumDataLines();
            }
            case 6: {
                return this.isSetPhysicalMediumStandard();
            }
            case 7: {
                return this.isSetPhysicalMediumType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (physicalMediumDataLines: ");
        if (this.physicalMediumDataLinesESet) {
            result.append(this.physicalMediumDataLines);
        } else {
            result.append("<unset>");
        }
        result.append(", physicalMediumStandard: ");
        if (this.physicalMediumStandardESet) {
            result.append(this.physicalMediumStandard);
        } else {
            result.append("<unset>");
        }
        result.append(", physicalMediumType: ");
        if (this.physicalMediumTypeESet) {
            result.append((Object)this.physicalMediumType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

