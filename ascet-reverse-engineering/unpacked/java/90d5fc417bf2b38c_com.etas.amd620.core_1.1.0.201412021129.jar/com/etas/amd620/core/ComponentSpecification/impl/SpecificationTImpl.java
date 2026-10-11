/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.BlockDiagramSpecificationT;
import com.etas.amd620.core.ComponentSpecification.CCodeSpecificationT;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ESDLSpecificationT;
import com.etas.amd620.core.ComponentSpecification.ProjectSpecificationT;
import com.etas.amd620.core.ComponentSpecification.PublicType;
import com.etas.amd620.core.ComponentSpecification.SpecificationT;
import com.etas.amd620.core.ComponentSpecification.StateMachineSpecificationT;
import com.etas.amd620.core.ComponentSpecification.TableSpecificationT;
import com.etas.amd620.core.ComponentSpecification.TimeStampT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class SpecificationTImpl
extends MinimalEObjectImpl.Container
implements SpecificationT {
    protected TimeStampT timeStamp;
    protected BlockDiagramSpecificationT blockDiagramSpecification;
    protected BlockDiagramSpecificationT atomicSoftwareComponentSpecification;
    protected ESDLSpecificationT methodInterfaceSpecification;
    protected TableSpecificationT tableSpecification;
    protected ESDLSpecificationT eSDLSpecification;
    protected CCodeSpecificationT cCodeSpecification;
    protected StateMachineSpecificationT stateMachineSpecification;
    protected ProjectSpecificationT projectSpecification;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final PublicType PUBLIC_EDEFAULT = PublicType.PUBLIC;
    protected PublicType public_ = PUBLIC_EDEFAULT;
    protected boolean publicESet;
    protected static final String UUID_EDEFAULT = null;
    protected String uUID = UUID_EDEFAULT;

    protected SpecificationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getSpecificationT();
    }

    @Override
    public TimeStampT getTimeStamp() {
        return this.timeStamp;
    }

    public NotificationChain basicSetTimeStamp(TimeStampT newTimeStamp, NotificationChain msgs) {
        TimeStampT oldTimeStamp = this.timeStamp;
        this.timeStamp = newTimeStamp;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldTimeStamp, (Object)newTimeStamp);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTimeStamp(TimeStampT newTimeStamp) {
        if (newTimeStamp != this.timeStamp) {
            NotificationChain msgs = null;
            if (this.timeStamp != null) {
                msgs = ((InternalEObject)this.timeStamp).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newTimeStamp != null) {
                msgs = ((InternalEObject)newTimeStamp).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetTimeStamp(newTimeStamp, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newTimeStamp, (Object)newTimeStamp));
        }
    }

    @Override
    public BlockDiagramSpecificationT getBlockDiagramSpecification() {
        return this.blockDiagramSpecification;
    }

    public NotificationChain basicSetBlockDiagramSpecification(BlockDiagramSpecificationT newBlockDiagramSpecification, NotificationChain msgs) {
        BlockDiagramSpecificationT oldBlockDiagramSpecification = this.blockDiagramSpecification;
        this.blockDiagramSpecification = newBlockDiagramSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldBlockDiagramSpecification, (Object)newBlockDiagramSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBlockDiagramSpecification(BlockDiagramSpecificationT newBlockDiagramSpecification) {
        if (newBlockDiagramSpecification != this.blockDiagramSpecification) {
            NotificationChain msgs = null;
            if (this.blockDiagramSpecification != null) {
                msgs = ((InternalEObject)this.blockDiagramSpecification).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newBlockDiagramSpecification != null) {
                msgs = ((InternalEObject)newBlockDiagramSpecification).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetBlockDiagramSpecification(newBlockDiagramSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newBlockDiagramSpecification, (Object)newBlockDiagramSpecification));
        }
    }

    @Override
    public BlockDiagramSpecificationT getAtomicSoftwareComponentSpecification() {
        return this.atomicSoftwareComponentSpecification;
    }

    public NotificationChain basicSetAtomicSoftwareComponentSpecification(BlockDiagramSpecificationT newAtomicSoftwareComponentSpecification, NotificationChain msgs) {
        BlockDiagramSpecificationT oldAtomicSoftwareComponentSpecification = this.atomicSoftwareComponentSpecification;
        this.atomicSoftwareComponentSpecification = newAtomicSoftwareComponentSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldAtomicSoftwareComponentSpecification, (Object)newAtomicSoftwareComponentSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAtomicSoftwareComponentSpecification(BlockDiagramSpecificationT newAtomicSoftwareComponentSpecification) {
        if (newAtomicSoftwareComponentSpecification != this.atomicSoftwareComponentSpecification) {
            NotificationChain msgs = null;
            if (this.atomicSoftwareComponentSpecification != null) {
                msgs = ((InternalEObject)this.atomicSoftwareComponentSpecification).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newAtomicSoftwareComponentSpecification != null) {
                msgs = ((InternalEObject)newAtomicSoftwareComponentSpecification).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetAtomicSoftwareComponentSpecification(newAtomicSoftwareComponentSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newAtomicSoftwareComponentSpecification, (Object)newAtomicSoftwareComponentSpecification));
        }
    }

    @Override
    public ESDLSpecificationT getMethodInterfaceSpecification() {
        return this.methodInterfaceSpecification;
    }

    public NotificationChain basicSetMethodInterfaceSpecification(ESDLSpecificationT newMethodInterfaceSpecification, NotificationChain msgs) {
        ESDLSpecificationT oldMethodInterfaceSpecification = this.methodInterfaceSpecification;
        this.methodInterfaceSpecification = newMethodInterfaceSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldMethodInterfaceSpecification, (Object)newMethodInterfaceSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMethodInterfaceSpecification(ESDLSpecificationT newMethodInterfaceSpecification) {
        if (newMethodInterfaceSpecification != this.methodInterfaceSpecification) {
            NotificationChain msgs = null;
            if (this.methodInterfaceSpecification != null) {
                msgs = ((InternalEObject)this.methodInterfaceSpecification).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newMethodInterfaceSpecification != null) {
                msgs = ((InternalEObject)newMethodInterfaceSpecification).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetMethodInterfaceSpecification(newMethodInterfaceSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newMethodInterfaceSpecification, (Object)newMethodInterfaceSpecification));
        }
    }

    @Override
    public TableSpecificationT getTableSpecification() {
        return this.tableSpecification;
    }

    public NotificationChain basicSetTableSpecification(TableSpecificationT newTableSpecification, NotificationChain msgs) {
        TableSpecificationT oldTableSpecification = this.tableSpecification;
        this.tableSpecification = newTableSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldTableSpecification, (Object)newTableSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTableSpecification(TableSpecificationT newTableSpecification) {
        if (newTableSpecification != this.tableSpecification) {
            NotificationChain msgs = null;
            if (this.tableSpecification != null) {
                msgs = ((InternalEObject)this.tableSpecification).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newTableSpecification != null) {
                msgs = ((InternalEObject)newTableSpecification).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetTableSpecification(newTableSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTableSpecification, (Object)newTableSpecification));
        }
    }

    @Override
    public ESDLSpecificationT getESDLSpecification() {
        return this.eSDLSpecification;
    }

    public NotificationChain basicSetESDLSpecification(ESDLSpecificationT newESDLSpecification, NotificationChain msgs) {
        ESDLSpecificationT oldESDLSpecification = this.eSDLSpecification;
        this.eSDLSpecification = newESDLSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldESDLSpecification, (Object)newESDLSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setESDLSpecification(ESDLSpecificationT newESDLSpecification) {
        if (newESDLSpecification != this.eSDLSpecification) {
            NotificationChain msgs = null;
            if (this.eSDLSpecification != null) {
                msgs = ((InternalEObject)this.eSDLSpecification).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newESDLSpecification != null) {
                msgs = ((InternalEObject)newESDLSpecification).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetESDLSpecification(newESDLSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newESDLSpecification, (Object)newESDLSpecification));
        }
    }

    @Override
    public CCodeSpecificationT getCCodeSpecification() {
        return this.cCodeSpecification;
    }

    public NotificationChain basicSetCCodeSpecification(CCodeSpecificationT newCCodeSpecification, NotificationChain msgs) {
        CCodeSpecificationT oldCCodeSpecification = this.cCodeSpecification;
        this.cCodeSpecification = newCCodeSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCCodeSpecification, (Object)newCCodeSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCCodeSpecification(CCodeSpecificationT newCCodeSpecification) {
        if (newCCodeSpecification != this.cCodeSpecification) {
            NotificationChain msgs = null;
            if (this.cCodeSpecification != null) {
                msgs = ((InternalEObject)this.cCodeSpecification).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newCCodeSpecification != null) {
                msgs = ((InternalEObject)newCCodeSpecification).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetCCodeSpecification(newCCodeSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newCCodeSpecification, (Object)newCCodeSpecification));
        }
    }

    @Override
    public StateMachineSpecificationT getStateMachineSpecification() {
        return this.stateMachineSpecification;
    }

    public NotificationChain basicSetStateMachineSpecification(StateMachineSpecificationT newStateMachineSpecification, NotificationChain msgs) {
        StateMachineSpecificationT oldStateMachineSpecification = this.stateMachineSpecification;
        this.stateMachineSpecification = newStateMachineSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldStateMachineSpecification, (Object)newStateMachineSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setStateMachineSpecification(StateMachineSpecificationT newStateMachineSpecification) {
        if (newStateMachineSpecification != this.stateMachineSpecification) {
            NotificationChain msgs = null;
            if (this.stateMachineSpecification != null) {
                msgs = ((InternalEObject)this.stateMachineSpecification).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newStateMachineSpecification != null) {
                msgs = ((InternalEObject)newStateMachineSpecification).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetStateMachineSpecification(newStateMachineSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newStateMachineSpecification, (Object)newStateMachineSpecification));
        }
    }

    @Override
    public ProjectSpecificationT getProjectSpecification() {
        return this.projectSpecification;
    }

    public NotificationChain basicSetProjectSpecification(ProjectSpecificationT newProjectSpecification, NotificationChain msgs) {
        ProjectSpecificationT oldProjectSpecification = this.projectSpecification;
        this.projectSpecification = newProjectSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldProjectSpecification, (Object)newProjectSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setProjectSpecification(ProjectSpecificationT newProjectSpecification) {
        if (newProjectSpecification != this.projectSpecification) {
            NotificationChain msgs = null;
            if (this.projectSpecification != null) {
                msgs = ((InternalEObject)this.projectSpecification).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newProjectSpecification != null) {
                msgs = ((InternalEObject)newProjectSpecification).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetProjectSpecification(newProjectSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newProjectSpecification, (Object)newProjectSpecification));
        }
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public PublicType getPublic() {
        return this.public_;
    }

    @Override
    public void setPublic(PublicType newPublic) {
        PublicType oldPublic = this.public_;
        this.public_ = newPublic == null ? PUBLIC_EDEFAULT : newPublic;
        boolean oldPublicESet = this.publicESet;
        this.publicESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldPublic, (Object)this.public_, !oldPublicESet));
        }
    }

    @Override
    public void unsetPublic() {
        PublicType oldPublic = this.public_;
        boolean oldPublicESet = this.publicESet;
        this.public_ = PUBLIC_EDEFAULT;
        this.publicESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldPublic, (Object)PUBLIC_EDEFAULT, oldPublicESet));
        }
    }

    @Override
    public boolean isSetPublic() {
        return this.publicESet;
    }

    @Override
    public String getUUID() {
        return this.uUID;
    }

    @Override
    public void setUUID(String newUUID) {
        String oldUUID = this.uUID;
        this.uUID = newUUID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldUUID, (Object)this.uUID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetTimeStamp(null, msgs);
            }
            case 1: {
                return this.basicSetBlockDiagramSpecification(null, msgs);
            }
            case 2: {
                return this.basicSetAtomicSoftwareComponentSpecification(null, msgs);
            }
            case 3: {
                return this.basicSetMethodInterfaceSpecification(null, msgs);
            }
            case 4: {
                return this.basicSetTableSpecification(null, msgs);
            }
            case 5: {
                return this.basicSetESDLSpecification(null, msgs);
            }
            case 6: {
                return this.basicSetCCodeSpecification(null, msgs);
            }
            case 7: {
                return this.basicSetStateMachineSpecification(null, msgs);
            }
            case 8: {
                return this.basicSetProjectSpecification(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getTimeStamp();
            }
            case 1: {
                return this.getBlockDiagramSpecification();
            }
            case 2: {
                return this.getAtomicSoftwareComponentSpecification();
            }
            case 3: {
                return this.getMethodInterfaceSpecification();
            }
            case 4: {
                return this.getTableSpecification();
            }
            case 5: {
                return this.getESDLSpecification();
            }
            case 6: {
                return this.getCCodeSpecification();
            }
            case 7: {
                return this.getStateMachineSpecification();
            }
            case 8: {
                return this.getProjectSpecification();
            }
            case 9: {
                return this.getName();
            }
            case 10: {
                return this.getPublic();
            }
            case 11: {
                return this.getUUID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setTimeStamp((TimeStampT)newValue);
                return;
            }
            case 1: {
                this.setBlockDiagramSpecification((BlockDiagramSpecificationT)newValue);
                return;
            }
            case 2: {
                this.setAtomicSoftwareComponentSpecification((BlockDiagramSpecificationT)newValue);
                return;
            }
            case 3: {
                this.setMethodInterfaceSpecification((ESDLSpecificationT)newValue);
                return;
            }
            case 4: {
                this.setTableSpecification((TableSpecificationT)newValue);
                return;
            }
            case 5: {
                this.setESDLSpecification((ESDLSpecificationT)newValue);
                return;
            }
            case 6: {
                this.setCCodeSpecification((CCodeSpecificationT)newValue);
                return;
            }
            case 7: {
                this.setStateMachineSpecification((StateMachineSpecificationT)newValue);
                return;
            }
            case 8: {
                this.setProjectSpecification((ProjectSpecificationT)newValue);
                return;
            }
            case 9: {
                this.setName((String)newValue);
                return;
            }
            case 10: {
                this.setPublic((PublicType)((Object)newValue));
                return;
            }
            case 11: {
                this.setUUID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setTimeStamp(null);
                return;
            }
            case 1: {
                this.setBlockDiagramSpecification(null);
                return;
            }
            case 2: {
                this.setAtomicSoftwareComponentSpecification(null);
                return;
            }
            case 3: {
                this.setMethodInterfaceSpecification(null);
                return;
            }
            case 4: {
                this.setTableSpecification(null);
                return;
            }
            case 5: {
                this.setESDLSpecification(null);
                return;
            }
            case 6: {
                this.setCCodeSpecification(null);
                return;
            }
            case 7: {
                this.setStateMachineSpecification(null);
                return;
            }
            case 8: {
                this.setProjectSpecification(null);
                return;
            }
            case 9: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 10: {
                this.unsetPublic();
                return;
            }
            case 11: {
                this.setUUID(UUID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.timeStamp != null;
            }
            case 1: {
                return this.blockDiagramSpecification != null;
            }
            case 2: {
                return this.atomicSoftwareComponentSpecification != null;
            }
            case 3: {
                return this.methodInterfaceSpecification != null;
            }
            case 4: {
                return this.tableSpecification != null;
            }
            case 5: {
                return this.eSDLSpecification != null;
            }
            case 6: {
                return this.cCodeSpecification != null;
            }
            case 7: {
                return this.stateMachineSpecification != null;
            }
            case 8: {
                return this.projectSpecification != null;
            }
            case 9: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 10: {
                return this.isSetPublic();
            }
            case 11: {
                return UUID_EDEFAULT == null ? this.uUID != null : !UUID_EDEFAULT.equals(this.uUID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (name: ");
        result.append(this.name);
        result.append(", public: ");
        if (this.publicESet) {
            result.append((Object)this.public_);
        } else {
            result.append("<unset>");
        }
        result.append(", uUID: ");
        result.append(this.uUID);
        result.append(')');
        return result.toString();
    }
}

