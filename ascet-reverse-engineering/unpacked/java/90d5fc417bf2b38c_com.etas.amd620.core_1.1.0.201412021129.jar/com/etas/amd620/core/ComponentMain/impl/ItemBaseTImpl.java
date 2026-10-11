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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ComponentTypeType;
import com.etas.amd620.core.ComponentMain.FormattedTextT;
import com.etas.amd620.core.ComponentMain.ItemBaseT;
import com.etas.amd620.core.ComponentMain.TimeStampT;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ItemBaseTImpl
extends MinimalEObjectImpl.Container
implements ItemBaseT {
    protected TimeStampT timeStamp;
    protected FormattedTextT comment;
    protected static final byte[] CHECKSUM_EDEFAULT = null;
    protected byte[] checksum = CHECKSUM_EDEFAULT;
    protected static final ComponentTypeType COMPONENT_TYPE_EDEFAULT = ComponentTypeType.ASCET_CLASS;
    protected ComponentTypeType componentType = COMPONENT_TYPE_EDEFAULT;
    protected boolean componentTypeESet;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final String NAME_SPACE_EDEFAULT = null;
    protected String nameSpace = NAME_SPACE_EDEFAULT;
    protected static final String OID_EDEFAULT = null;
    protected String oID = OID_EDEFAULT;
    protected static final XMLGregorianCalendar TIME_STAMP1_EDEFAULT = null;
    protected XMLGregorianCalendar timeStamp1 = TIME_STAMP1_EDEFAULT;
    protected static final String UUID_EDEFAULT = null;
    protected String uUID = UUID_EDEFAULT;

    protected ItemBaseTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.ITEM_BASE_T;
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
    public FormattedTextT getComment() {
        return this.comment;
    }

    public NotificationChain basicSetComment(FormattedTextT newComment, NotificationChain msgs) {
        FormattedTextT oldComment = this.comment;
        this.comment = newComment;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldComment, (Object)newComment);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComment(FormattedTextT newComment) {
        if (newComment != this.comment) {
            NotificationChain msgs = null;
            if (this.comment != null) {
                msgs = ((InternalEObject)this.comment).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newComment != null) {
                msgs = ((InternalEObject)newComment).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetComment(newComment, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newComment, (Object)newComment));
        }
    }

    @Override
    public byte[] getChecksum() {
        return this.checksum;
    }

    @Override
    public void setChecksum(byte[] newChecksum) {
        byte[] oldChecksum = this.checksum;
        this.checksum = newChecksum;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldChecksum, (Object)this.checksum));
        }
    }

    @Override
    public ComponentTypeType getComponentType() {
        return this.componentType;
    }

    @Override
    public void setComponentType(ComponentTypeType newComponentType) {
        ComponentTypeType oldComponentType = this.componentType;
        this.componentType = newComponentType == null ? COMPONENT_TYPE_EDEFAULT : newComponentType;
        boolean oldComponentTypeESet = this.componentTypeESet;
        this.componentTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldComponentType, (Object)this.componentType, !oldComponentTypeESet));
        }
    }

    @Override
    public void unsetComponentType() {
        ComponentTypeType oldComponentType = this.componentType;
        boolean oldComponentTypeESet = this.componentTypeESet;
        this.componentType = COMPONENT_TYPE_EDEFAULT;
        this.componentTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 3, (Object)oldComponentType, (Object)COMPONENT_TYPE_EDEFAULT, oldComponentTypeESet));
        }
    }

    @Override
    public boolean isSetComponentType() {
        return this.componentTypeESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public String getNameSpace() {
        return this.nameSpace;
    }

    @Override
    public void setNameSpace(String newNameSpace) {
        String oldNameSpace = this.nameSpace;
        this.nameSpace = newNameSpace;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldNameSpace, (Object)this.nameSpace));
        }
    }

    @Override
    public String getOID() {
        return this.oID;
    }

    @Override
    public void setOID(String newOID) {
        String oldOID = this.oID;
        this.oID = newOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldOID, (Object)this.oID));
        }
    }

    @Override
    public XMLGregorianCalendar getTimeStamp1() {
        return this.timeStamp1;
    }

    @Override
    public void setTimeStamp1(XMLGregorianCalendar newTimeStamp1) {
        XMLGregorianCalendar oldTimeStamp1 = this.timeStamp1;
        this.timeStamp1 = newTimeStamp1;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTimeStamp1, (Object)this.timeStamp1));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldUUID, (Object)this.uUID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetTimeStamp(null, msgs);
            }
            case 1: {
                return this.basicSetComment(null, msgs);
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
                return this.getComment();
            }
            case 2: {
                return this.getChecksum();
            }
            case 3: {
                return this.getComponentType();
            }
            case 4: {
                return this.getName();
            }
            case 5: {
                return this.getNameSpace();
            }
            case 6: {
                return this.getOID();
            }
            case 7: {
                return this.getTimeStamp1();
            }
            case 8: {
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
                this.setComment((FormattedTextT)newValue);
                return;
            }
            case 2: {
                this.setChecksum((byte[])newValue);
                return;
            }
            case 3: {
                this.setComponentType((ComponentTypeType)((Object)newValue));
                return;
            }
            case 4: {
                this.setName((String)newValue);
                return;
            }
            case 5: {
                this.setNameSpace((String)newValue);
                return;
            }
            case 6: {
                this.setOID((String)newValue);
                return;
            }
            case 7: {
                this.setTimeStamp1((XMLGregorianCalendar)newValue);
                return;
            }
            case 8: {
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
                this.setComment(null);
                return;
            }
            case 2: {
                this.setChecksum(CHECKSUM_EDEFAULT);
                return;
            }
            case 3: {
                this.unsetComponentType();
                return;
            }
            case 4: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 5: {
                this.setNameSpace(NAME_SPACE_EDEFAULT);
                return;
            }
            case 6: {
                this.setOID(OID_EDEFAULT);
                return;
            }
            case 7: {
                this.setTimeStamp1(TIME_STAMP1_EDEFAULT);
                return;
            }
            case 8: {
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
                return this.comment != null;
            }
            case 2: {
                return CHECKSUM_EDEFAULT == null ? this.checksum != null : !CHECKSUM_EDEFAULT.equals(this.checksum);
            }
            case 3: {
                return this.isSetComponentType();
            }
            case 4: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 5: {
                return NAME_SPACE_EDEFAULT == null ? this.nameSpace != null : !NAME_SPACE_EDEFAULT.equals(this.nameSpace);
            }
            case 6: {
                return OID_EDEFAULT == null ? this.oID != null : !OID_EDEFAULT.equals(this.oID);
            }
            case 7: {
                return TIME_STAMP1_EDEFAULT == null ? this.timeStamp1 != null : !TIME_STAMP1_EDEFAULT.equals(this.timeStamp1);
            }
            case 8: {
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
        result.append(" (checksum: ");
        result.append(this.checksum);
        result.append(", componentType: ");
        if (this.componentTypeESet) {
            result.append((Object)this.componentType);
        } else {
            result.append("<unset>");
        }
        result.append(", name: ");
        result.append(this.name);
        result.append(", nameSpace: ");
        result.append(this.nameSpace);
        result.append(", oID: ");
        result.append(this.oID);
        result.append(", timeStamp1: ");
        result.append(this.timeStamp1);
        result.append(", uUID: ");
        result.append(this.uUID);
        result.append(')');
        return result.toString();
    }
}

