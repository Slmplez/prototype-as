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
package autosar21.ecuresource.basicelements.impl;

import autosar21.ecuresource.basicelements.BasicelementsPackage;
import autosar21.ecuresource.basicelements.MemoryAccess;
import autosar21.ecuresource.basicelements.MemoryAccessAccessTypeEnum;
import autosar21.ecuresource.basicelements.TimeRange;
import autosar21.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class MemoryAccessImpl
extends ARObjectImpl
implements MemoryAccess {
    protected static final MemoryAccessAccessTypeEnum ACCESS_TYPE_EDEFAULT = MemoryAccessAccessTypeEnum.READ;
    protected MemoryAccessAccessTypeEnum accessType = ACCESS_TYPE_EDEFAULT;
    protected boolean accessTypeESet;
    protected TimeRange time;

    protected MemoryAccessImpl() {
    }

    protected EClass eStaticClass() {
        return BasicelementsPackage.Literals.MEMORY_ACCESS;
    }

    public MemoryMappedAssemblyHWConnection getMemoryMappedAssemblyHWConnection() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (MemoryMappedAssemblyHWConnection)this.eContainer();
    }

    public NotificationChain basicSetMemoryMappedAssemblyHWConnection(MemoryMappedAssemblyHWConnection newMemoryMappedAssemblyHWConnection, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMemoryMappedAssemblyHWConnection, 4, msgs);
        return msgs;
    }

    public void setMemoryMappedAssemblyHWConnection(MemoryMappedAssemblyHWConnection newMemoryMappedAssemblyHWConnection) {
        if (newMemoryMappedAssemblyHWConnection != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newMemoryMappedAssemblyHWConnection != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMemoryMappedAssemblyHWConnection)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMemoryMappedAssemblyHWConnection != null) {
                msgs = ((InternalEObject)newMemoryMappedAssemblyHWConnection).eInverseAdd((InternalEObject)this, 22, MemoryMappedAssemblyHWConnection.class, msgs);
            }
            if ((msgs = this.basicSetMemoryMappedAssemblyHWConnection(newMemoryMappedAssemblyHWConnection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMemoryMappedAssemblyHWConnection, (Object)newMemoryMappedAssemblyHWConnection));
        }
    }

    public MemoryAccessAccessTypeEnum getAccessType() {
        return this.accessType;
    }

    public void setAccessType(MemoryAccessAccessTypeEnum newAccessType) {
        MemoryAccessAccessTypeEnum oldAccessType = this.accessType;
        this.accessType = newAccessType == null ? ACCESS_TYPE_EDEFAULT : newAccessType;
        boolean oldAccessTypeESet = this.accessTypeESet;
        this.accessTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAccessType, (Object)this.accessType, !oldAccessTypeESet));
        }
    }

    public void unsetAccessType() {
        MemoryAccessAccessTypeEnum oldAccessType = this.accessType;
        boolean oldAccessTypeESet = this.accessTypeESet;
        this.accessType = ACCESS_TYPE_EDEFAULT;
        this.accessTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAccessType, (Object)ACCESS_TYPE_EDEFAULT, oldAccessTypeESet));
        }
    }

    public boolean isSetAccessType() {
        return this.accessTypeESet;
    }

    public TimeRange getTime() {
        return this.time;
    }

    public NotificationChain basicSetTime(TimeRange newTime, NotificationChain msgs) {
        TimeRange oldTime = this.time;
        this.time = newTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTime, (Object)newTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTime(TimeRange newTime) {
        if (newTime != this.time) {
            NotificationChain msgs = null;
            if (this.time != null) {
                msgs = ((InternalEObject)this.time).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newTime != null) {
                msgs = ((InternalEObject)newTime).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetTime(newTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newTime, (Object)newTime));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMemoryMappedAssemblyHWConnection((MemoryMappedAssemblyHWConnection)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetMemoryMappedAssemblyHWConnection(null, msgs);
            }
            case 6: {
                return this.basicSetTime(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, MemoryMappedAssemblyHWConnection.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMemoryMappedAssemblyHWConnection();
            }
            case 5: {
                return this.getAccessType();
            }
            case 6: {
                return this.getTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMemoryMappedAssemblyHWConnection((MemoryMappedAssemblyHWConnection)newValue);
                return;
            }
            case 5: {
                this.setAccessType((MemoryAccessAccessTypeEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setTime((TimeRange)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setMemoryMappedAssemblyHWConnection(null);
                return;
            }
            case 5: {
                this.unsetAccessType();
                return;
            }
            case 6: {
                this.setTime(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getMemoryMappedAssemblyHWConnection() != null;
            }
            case 5: {
                return this.isSetAccessType();
            }
            case 6: {
                return this.time != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (accessType: ");
        if (this.accessTypeESet) {
            result.append((Object)this.accessType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

