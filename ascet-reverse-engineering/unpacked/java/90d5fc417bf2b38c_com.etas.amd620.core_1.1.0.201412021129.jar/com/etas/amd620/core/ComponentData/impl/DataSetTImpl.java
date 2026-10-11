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
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.DataEntryT;
import com.etas.amd620.core.ComponentData.DataSetT;
import com.etas.amd620.core.ComponentData.GenericDataT;
import com.etas.amd620.core.ComponentData.NotesT;
import com.etas.amd620.core.ComponentData.TimeStampT;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class DataSetTImpl
extends MinimalEObjectImpl.Container
implements DataSetT {
    protected TimeStampT timeStamp;
    protected NotesT notes;
    protected EList<GenericDataT> customerData;
    protected EList<DataEntryT> dataEntry;
    protected static final byte[] CHECKSUM_EDEFAULT = null;
    protected byte[] checksum = CHECKSUM_EDEFAULT;
    protected static final boolean CLASS_CONFIG_EDEFAULT = false;
    protected boolean classConfig = false;
    protected boolean classConfigESet;
    protected static final boolean DEFAULT_EDEFAULT = false;
    protected boolean default_ = false;
    protected boolean defaultESet;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final String OID_EDEFAULT = null;
    protected String oID = OID_EDEFAULT;
    protected static final String UUID_EDEFAULT = null;
    protected String uUID = UUID_EDEFAULT;

    protected DataSetTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.DATA_SET_T;
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
    public NotesT getNotes() {
        return this.notes;
    }

    public NotificationChain basicSetNotes(NotesT newNotes, NotificationChain msgs) {
        NotesT oldNotes = this.notes;
        this.notes = newNotes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldNotes, (Object)newNotes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setNotes(NotesT newNotes) {
        if (newNotes != this.notes) {
            NotificationChain msgs = null;
            if (this.notes != null) {
                msgs = ((InternalEObject)this.notes).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newNotes != null) {
                msgs = ((InternalEObject)newNotes).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetNotes(newNotes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newNotes, (Object)newNotes));
        }
    }

    @Override
    public EList<GenericDataT> getCustomerData() {
        if (this.customerData == null) {
            this.customerData = new EObjectContainmentEList(GenericDataT.class, (InternalEObject)this, 2);
        }
        return this.customerData;
    }

    @Override
    public EList<DataEntryT> getDataEntry() {
        if (this.dataEntry == null) {
            this.dataEntry = new EObjectContainmentEList(DataEntryT.class, (InternalEObject)this, 3);
        }
        return this.dataEntry;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldChecksum, (Object)this.checksum));
        }
    }

    @Override
    public boolean isClassConfig() {
        return this.classConfig;
    }

    @Override
    public void setClassConfig(boolean newClassConfig) {
        boolean oldClassConfig = this.classConfig;
        this.classConfig = newClassConfig;
        boolean oldClassConfigESet = this.classConfigESet;
        this.classConfigESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, oldClassConfig, this.classConfig, !oldClassConfigESet));
        }
    }

    @Override
    public void unsetClassConfig() {
        boolean oldClassConfig = this.classConfig;
        boolean oldClassConfigESet = this.classConfigESet;
        this.classConfig = false;
        this.classConfigESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, oldClassConfig, false, oldClassConfigESet));
        }
    }

    @Override
    public boolean isSetClassConfig() {
        return this.classConfigESet;
    }

    @Override
    public boolean isDefault() {
        return this.default_;
    }

    @Override
    public void setDefault(boolean newDefault) {
        boolean oldDefault = this.default_;
        this.default_ = newDefault;
        boolean oldDefaultESet = this.defaultESet;
        this.defaultESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, oldDefault, this.default_, !oldDefaultESet));
        }
    }

    @Override
    public void unsetDefault() {
        boolean oldDefault = this.default_;
        boolean oldDefaultESet = this.defaultESet;
        this.default_ = false;
        this.defaultESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, oldDefault, false, oldDefaultESet));
        }
    }

    @Override
    public boolean isSetDefault() {
        return this.defaultESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldName, (Object)this.name));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldOID, (Object)this.oID));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldUUID, (Object)this.uUID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetTimeStamp(null, msgs);
            }
            case 1: {
                return this.basicSetNotes(null, msgs);
            }
            case 2: {
                return ((InternalEList)this.getCustomerData()).basicRemove((Object)otherEnd, msgs);
            }
            case 3: {
                return ((InternalEList)this.getDataEntry()).basicRemove((Object)otherEnd, msgs);
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
                return this.getNotes();
            }
            case 2: {
                return this.getCustomerData();
            }
            case 3: {
                return this.getDataEntry();
            }
            case 4: {
                return this.getChecksum();
            }
            case 5: {
                return this.isClassConfig();
            }
            case 6: {
                return this.isDefault();
            }
            case 7: {
                return this.getName();
            }
            case 8: {
                return this.getOID();
            }
            case 9: {
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
                this.setNotes((NotesT)newValue);
                return;
            }
            case 2: {
                this.getCustomerData().clear();
                this.getCustomerData().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.getDataEntry().clear();
                this.getDataEntry().addAll((Collection)newValue);
                return;
            }
            case 4: {
                this.setChecksum((byte[])newValue);
                return;
            }
            case 5: {
                this.setClassConfig((Boolean)newValue);
                return;
            }
            case 6: {
                this.setDefault((Boolean)newValue);
                return;
            }
            case 7: {
                this.setName((String)newValue);
                return;
            }
            case 8: {
                this.setOID((String)newValue);
                return;
            }
            case 9: {
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
                this.setNotes(null);
                return;
            }
            case 2: {
                this.getCustomerData().clear();
                return;
            }
            case 3: {
                this.getDataEntry().clear();
                return;
            }
            case 4: {
                this.setChecksum(CHECKSUM_EDEFAULT);
                return;
            }
            case 5: {
                this.unsetClassConfig();
                return;
            }
            case 6: {
                this.unsetDefault();
                return;
            }
            case 7: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 8: {
                this.setOID(OID_EDEFAULT);
                return;
            }
            case 9: {
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
                return this.notes != null;
            }
            case 2: {
                return this.customerData != null && !this.customerData.isEmpty();
            }
            case 3: {
                return this.dataEntry != null && !this.dataEntry.isEmpty();
            }
            case 4: {
                return CHECKSUM_EDEFAULT == null ? this.checksum != null : !CHECKSUM_EDEFAULT.equals(this.checksum);
            }
            case 5: {
                return this.isSetClassConfig();
            }
            case 6: {
                return this.isSetDefault();
            }
            case 7: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 8: {
                return OID_EDEFAULT == null ? this.oID != null : !OID_EDEFAULT.equals(this.oID);
            }
            case 9: {
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
        result.append(", classConfig: ");
        if (this.classConfigESet) {
            result.append(this.classConfig);
        } else {
            result.append("<unset>");
        }
        result.append(", default: ");
        if (this.defaultESet) {
            result.append(this.default_);
        } else {
            result.append("<unset>");
        }
        result.append(", name: ");
        result.append(this.name);
        result.append(", oID: ");
        result.append(this.oID);
        result.append(", uUID: ");
        result.append(this.uUID);
        result.append(')');
        return result.toString();
    }
}

