/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.ConditionalChangeNad;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinConfigurationEntryImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ConditionalChangeNadImpl
extends LinConfigurationEntryImpl
implements ConditionalChangeNad {
    protected static final IntegerDatatype BYTE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype byte_ = BYTE_EDEFAULT.clone();
    protected boolean byteESet;
    protected static final PositiveIntegerDatatype ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype id = ID_EDEFAULT.clone();
    protected boolean idESet;
    protected static final IntegerDatatype INVERT_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype invert = INVERT_EDEFAULT.clone();
    protected boolean invertESet;
    protected static final IntegerDatatype MASK_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype mask = MASK_EDEFAULT.clone();
    protected boolean maskESet;
    protected static final IntegerDatatype NEW_NAD_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype newNad = NEW_NAD_EDEFAULT.clone();
    protected boolean newNadESet;

    protected ConditionalChangeNadImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.CONDITIONAL_CHANGE_NAD;
    }

    public Integer getByte() {
        return (Integer)this.byte_.basicGetValue();
    }

    public void setByte(Integer newByte) {
        Integer oldByte = (Integer)this.byte_.basicGetValue();
        this.byte_.basicSetValue((Object)newByte);
        boolean oldByteESet = this.byteESet;
        this.byteESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldByte, (Object)newByte, !oldByteESet));
        }
    }

    public void unsetByte() {
        Integer oldByte = (Integer)this.byte_.basicGetValue();
        boolean oldByteESet = this.byteESet;
        this.byte_ = BYTE_EDEFAULT.clone();
        this.byteESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldByte, (Object)BYTE_EDEFAULT, oldByteESet));
        }
    }

    public boolean isSetByte() {
        return this.byteESet;
    }

    public Long getId() {
        return (Long)this.id.basicGetValue();
    }

    public void setId(Long newId) {
        Long oldId = (Long)this.id.basicGetValue();
        this.id.basicSetValue((Object)newId);
        boolean oldIdESet = this.idESet;
        this.idESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldId, (Object)newId, !oldIdESet));
        }
    }

    public void unsetId() {
        Long oldId = (Long)this.id.basicGetValue();
        boolean oldIdESet = this.idESet;
        this.id = ID_EDEFAULT.clone();
        this.idESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldId, (Object)ID_EDEFAULT, oldIdESet));
        }
    }

    public boolean isSetId() {
        return this.idESet;
    }

    public Integer getInvert() {
        return (Integer)this.invert.basicGetValue();
    }

    public void setInvert(Integer newInvert) {
        Integer oldInvert = (Integer)this.invert.basicGetValue();
        this.invert.basicSetValue((Object)newInvert);
        boolean oldInvertESet = this.invertESet;
        this.invertESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldInvert, (Object)newInvert, !oldInvertESet));
        }
    }

    public void unsetInvert() {
        Integer oldInvert = (Integer)this.invert.basicGetValue();
        boolean oldInvertESet = this.invertESet;
        this.invert = INVERT_EDEFAULT.clone();
        this.invertESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldInvert, (Object)INVERT_EDEFAULT, oldInvertESet));
        }
    }

    public boolean isSetInvert() {
        return this.invertESet;
    }

    public Integer getMask() {
        return (Integer)this.mask.basicGetValue();
    }

    public void setMask(Integer newMask) {
        Integer oldMask = (Integer)this.mask.basicGetValue();
        this.mask.basicSetValue((Object)newMask);
        boolean oldMaskESet = this.maskESet;
        this.maskESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldMask, (Object)newMask, !oldMaskESet));
        }
    }

    public void unsetMask() {
        Integer oldMask = (Integer)this.mask.basicGetValue();
        boolean oldMaskESet = this.maskESet;
        this.mask = MASK_EDEFAULT.clone();
        this.maskESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldMask, (Object)MASK_EDEFAULT, oldMaskESet));
        }
    }

    public boolean isSetMask() {
        return this.maskESet;
    }

    public Integer getNewNad() {
        return (Integer)this.newNad.basicGetValue();
    }

    public void setNewNad(Integer newNewNad) {
        Integer oldNewNad = (Integer)this.newNad.basicGetValue();
        this.newNad.basicSetValue((Object)newNewNad);
        boolean oldNewNadESet = this.newNadESet;
        this.newNadESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldNewNad, (Object)newNewNad, !oldNewNadESet));
        }
    }

    public void unsetNewNad() {
        Integer oldNewNad = (Integer)this.newNad.basicGetValue();
        boolean oldNewNadESet = this.newNadESet;
        this.newNad = NEW_NAD_EDEFAULT.clone();
        this.newNadESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldNewNad, (Object)NEW_NAD_EDEFAULT, oldNewNadESet));
        }
    }

    public boolean isSetNewNad() {
        return this.newNadESet;
    }

    public IntegerDatatype getByteData() {
        return this.byte_.clone();
    }

    public void setByteData(IntegerDatatype newByte) {
        this.byte_.setRadix((int)newByte.getRadix());
        this.byte_.setNoOfDigits((int)newByte.getNoOfDigits());
        this.setByte(newByte.getValue());
    }

    public PositiveIntegerDatatype getIdData() {
        return this.id.clone();
    }

    public void setIdData(PositiveIntegerDatatype newId) {
        this.id.setRadix((int)newId.getRadix());
        this.id.setNoOfDigits((int)newId.getNoOfDigits());
        this.setId(newId.getValue());
    }

    public IntegerDatatype getInvertData() {
        return this.invert.clone();
    }

    public void setInvertData(IntegerDatatype newInvert) {
        this.invert.setRadix((int)newInvert.getRadix());
        this.invert.setNoOfDigits((int)newInvert.getNoOfDigits());
        this.setInvert(newInvert.getValue());
    }

    public IntegerDatatype getMaskData() {
        return this.mask.clone();
    }

    public void setMaskData(IntegerDatatype newMask) {
        this.mask.setRadix((int)newMask.getRadix());
        this.mask.setNoOfDigits((int)newMask.getNoOfDigits());
        this.setMask(newMask.getValue());
    }

    public IntegerDatatype getNewNadData() {
        return this.newNad.clone();
    }

    public void setNewNadData(IntegerDatatype newNewNad) {
        this.newNad.setRadix((int)newNewNad.getRadix());
        this.newNad.setNoOfDigits((int)newNewNad.getNoOfDigits());
        this.setNewNad(newNewNad.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getByte();
            }
            case 10: {
                return this.getId();
            }
            case 11: {
                return this.getInvert();
            }
            case 12: {
                return this.getMask();
            }
            case 13: {
                return this.getNewNad();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setByte((Integer)newValue);
                return;
            }
            case 10: {
                this.setId((Long)newValue);
                return;
            }
            case 11: {
                this.setInvert((Integer)newValue);
                return;
            }
            case 12: {
                this.setMask((Integer)newValue);
                return;
            }
            case 13: {
                this.setNewNad((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.unsetByte();
                return;
            }
            case 10: {
                this.unsetId();
                return;
            }
            case 11: {
                this.unsetInvert();
                return;
            }
            case 12: {
                this.unsetMask();
                return;
            }
            case 13: {
                this.unsetNewNad();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.isSetByte();
            }
            case 10: {
                return this.isSetId();
            }
            case 11: {
                return this.isSetInvert();
            }
            case 12: {
                return this.isSetMask();
            }
            case 13: {
                return this.isSetNewNad();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (byte: ");
        if (this.byteESet) {
            result.append(this.byte_);
        } else {
            result.append("<unset>");
        }
        result.append(", id: ");
        if (this.idESet) {
            result.append(this.id);
        } else {
            result.append("<unset>");
        }
        result.append(", invert: ");
        if (this.invertESet) {
            result.append(this.invert);
        } else {
            result.append("<unset>");
        }
        result.append(", mask: ");
        if (this.maskESet) {
            result.append(this.mask);
        } else {
            result.append("<unset>");
        }
        result.append(", newNad: ");
        if (this.newNadESet) {
            result.append(this.newNad);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

