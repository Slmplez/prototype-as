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
package autosar3x.ecuresource.peripherals.impl;

import autosar3x.ecuresource.peripherals.Buffer;
import autosar3x.ecuresource.peripherals.CommunicationDirectionEnum;
import autosar3x.ecuresource.peripherals.PeripheralHWPort;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class BufferImpl
extends ARObjectImpl
implements Buffer {
    protected static final Integer NUMBER_EDEFAULT = new Integer(0);
    protected Integer number = NUMBER_EDEFAULT;
    protected boolean numberESet;
    protected static final Integer SIZE_EDEFAULT = new Integer(0);
    protected Integer size = SIZE_EDEFAULT;
    protected boolean sizeESet;
    protected static final CommunicationDirectionEnum TYPE_EDEFAULT = CommunicationDirectionEnum.INPUT;
    protected CommunicationDirectionEnum type = TYPE_EDEFAULT;
    protected boolean typeESet;

    protected BufferImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.BUFFER;
    }

    public PeripheralHWPort getPeripheralHWPort() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PeripheralHWPort)this.eContainer();
    }

    public NotificationChain basicSetPeripheralHWPort(PeripheralHWPort newPeripheralHWPort, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPeripheralHWPort, 4, msgs);
        return msgs;
    }

    public void setPeripheralHWPort(PeripheralHWPort newPeripheralHWPort) {
        if (newPeripheralHWPort != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPeripheralHWPort != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPeripheralHWPort)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPeripheralHWPort != null) {
                msgs = ((InternalEObject)newPeripheralHWPort).eInverseAdd((InternalEObject)this, 20, PeripheralHWPort.class, msgs);
            }
            if ((msgs = this.basicSetPeripheralHWPort(newPeripheralHWPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPeripheralHWPort, (Object)newPeripheralHWPort));
        }
    }

    public Integer getNumber() {
        return this.number;
    }

    public void setNumber(Integer newNumber) {
        Integer oldNumber = this.number;
        this.number = newNumber;
        boolean oldNumberESet = this.numberESet;
        this.numberESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldNumber, (Object)this.number, !oldNumberESet));
        }
    }

    public void unsetNumber() {
        Integer oldNumber = this.number;
        boolean oldNumberESet = this.numberESet;
        this.number = NUMBER_EDEFAULT;
        this.numberESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldNumber, (Object)NUMBER_EDEFAULT, oldNumberESet));
        }
    }

    public boolean isSetNumber() {
        return this.numberESet;
    }

    public Integer getSize() {
        return this.size;
    }

    public void setSize(Integer newSize) {
        Integer oldSize = this.size;
        this.size = newSize;
        boolean oldSizeESet = this.sizeESet;
        this.sizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSize, (Object)this.size, !oldSizeESet));
        }
    }

    public void unsetSize() {
        Integer oldSize = this.size;
        boolean oldSizeESet = this.sizeESet;
        this.size = SIZE_EDEFAULT;
        this.sizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSize, (Object)SIZE_EDEFAULT, oldSizeESet));
        }
    }

    public boolean isSetSize() {
        return this.sizeESet;
    }

    public CommunicationDirectionEnum getType() {
        return this.type;
    }

    public void setType(CommunicationDirectionEnum newType) {
        CommunicationDirectionEnum oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    public void unsetType() {
        CommunicationDirectionEnum oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    public boolean isSetType() {
        return this.typeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPeripheralHWPort((PeripheralHWPort)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPeripheralHWPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, PeripheralHWPort.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPeripheralHWPort();
            }
            case 5: {
                return this.getNumber();
            }
            case 6: {
                return this.getSize();
            }
            case 7: {
                return this.getType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPeripheralHWPort((PeripheralHWPort)newValue);
                return;
            }
            case 5: {
                this.setNumber((Integer)newValue);
                return;
            }
            case 6: {
                this.setSize((Integer)newValue);
                return;
            }
            case 7: {
                this.setType((CommunicationDirectionEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPeripheralHWPort(null);
                return;
            }
            case 5: {
                this.unsetNumber();
                return;
            }
            case 6: {
                this.unsetSize();
                return;
            }
            case 7: {
                this.unsetType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPeripheralHWPort() != null;
            }
            case 5: {
                return this.isSetNumber();
            }
            case 6: {
                return this.isSetSize();
            }
            case 7: {
                return this.isSetType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (number: ");
        if (this.numberESet) {
            result.append(this.number);
        } else {
            result.append("<unset>");
        }
        result.append(", size: ");
        if (this.sizeESet) {
            result.append(this.size);
        } else {
            result.append("<unset>");
        }
        result.append(", type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

