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
package com.etas.amd620.core.Implementationtypes.impl;

import com.etas.amd620.core.Implementationtypes.ImplementationTypeType;
import com.etas.amd620.core.Implementationtypes.ImplementationtypesPackage;
import com.etas.amd620.core.Implementationtypes.IntervalT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ImplementationTypeTypeImpl
extends MinimalEObjectImpl.Container
implements ImplementationTypeType {
    protected IntervalT physInterval;
    protected IntervalT implInterval;
    protected static final String COMMENT_EDEFAULT = null;
    protected String comment = COMMENT_EDEFAULT;
    protected static final String FORMULA_EDEFAULT = null;
    protected String formula = FORMULA_EDEFAULT;
    protected static final String IMPL_TYPE_EDEFAULT = null;
    protected String implType = IMPL_TYPE_EDEFAULT;
    protected static final boolean MASTER_EDEFAULT = false;
    protected boolean master = false;
    protected boolean masterESet;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final String PHYS_TYPE_EDEFAULT = null;
    protected String physType = PHYS_TYPE_EDEFAULT;
    protected static final Object QUANTIZATION_EDEFAULT = null;
    protected Object quantization = QUANTIZATION_EDEFAULT;
    protected static final boolean RESCALED_EDEFAULT = false;
    protected boolean rescaled = false;
    protected boolean rescaledESet;
    protected static final boolean ZERO_NOT_INCLUDED_EDEFAULT = false;
    protected boolean zeroNotIncluded = false;
    protected boolean zeroNotIncludedESet;

    protected ImplementationTypeTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ImplementationtypesPackage.Literals.IMPLEMENTATION_TYPE_TYPE;
    }

    @Override
    public IntervalT getPhysInterval() {
        return this.physInterval;
    }

    public NotificationChain basicSetPhysInterval(IntervalT newPhysInterval, NotificationChain msgs) {
        IntervalT oldPhysInterval = this.physInterval;
        this.physInterval = newPhysInterval;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldPhysInterval, (Object)newPhysInterval);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPhysInterval(IntervalT newPhysInterval) {
        if (newPhysInterval != this.physInterval) {
            NotificationChain msgs = null;
            if (this.physInterval != null) {
                msgs = ((InternalEObject)this.physInterval).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newPhysInterval != null) {
                msgs = ((InternalEObject)newPhysInterval).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetPhysInterval(newPhysInterval, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newPhysInterval, (Object)newPhysInterval));
        }
    }

    @Override
    public IntervalT getImplInterval() {
        return this.implInterval;
    }

    public NotificationChain basicSetImplInterval(IntervalT newImplInterval, NotificationChain msgs) {
        IntervalT oldImplInterval = this.implInterval;
        this.implInterval = newImplInterval;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldImplInterval, (Object)newImplInterval);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setImplInterval(IntervalT newImplInterval) {
        if (newImplInterval != this.implInterval) {
            NotificationChain msgs = null;
            if (this.implInterval != null) {
                msgs = ((InternalEObject)this.implInterval).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newImplInterval != null) {
                msgs = ((InternalEObject)newImplInterval).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetImplInterval(newImplInterval, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newImplInterval, (Object)newImplInterval));
        }
    }

    @Override
    public String getComment() {
        return this.comment;
    }

    @Override
    public void setComment(String newComment) {
        String oldComment = this.comment;
        this.comment = newComment;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldComment, (Object)this.comment));
        }
    }

    @Override
    public String getFormula() {
        return this.formula;
    }

    @Override
    public void setFormula(String newFormula) {
        String oldFormula = this.formula;
        this.formula = newFormula;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldFormula, (Object)this.formula));
        }
    }

    @Override
    public String getImplType() {
        return this.implType;
    }

    @Override
    public void setImplType(String newImplType) {
        String oldImplType = this.implType;
        this.implType = newImplType;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldImplType, (Object)this.implType));
        }
    }

    @Override
    public boolean isMaster() {
        return this.master;
    }

    @Override
    public void setMaster(boolean newMaster) {
        boolean oldMaster = this.master;
        this.master = newMaster;
        boolean oldMasterESet = this.masterESet;
        this.masterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, oldMaster, this.master, !oldMasterESet));
        }
    }

    @Override
    public void unsetMaster() {
        boolean oldMaster = this.master;
        boolean oldMasterESet = this.masterESet;
        this.master = false;
        this.masterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, oldMaster, false, oldMasterESet));
        }
    }

    @Override
    public boolean isSetMaster() {
        return this.masterESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public String getPhysType() {
        return this.physType;
    }

    @Override
    public void setPhysType(String newPhysType) {
        String oldPhysType = this.physType;
        this.physType = newPhysType;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPhysType, (Object)this.physType));
        }
    }

    @Override
    public Object getQuantization() {
        return this.quantization;
    }

    @Override
    public void setQuantization(Object newQuantization) {
        Object oldQuantization = this.quantization;
        this.quantization = newQuantization;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, oldQuantization, this.quantization));
        }
    }

    @Override
    public boolean isRescaled() {
        return this.rescaled;
    }

    @Override
    public void setRescaled(boolean newRescaled) {
        boolean oldRescaled = this.rescaled;
        this.rescaled = newRescaled;
        boolean oldRescaledESet = this.rescaledESet;
        this.rescaledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, oldRescaled, this.rescaled, !oldRescaledESet));
        }
    }

    @Override
    public void unsetRescaled() {
        boolean oldRescaled = this.rescaled;
        boolean oldRescaledESet = this.rescaledESet;
        this.rescaled = false;
        this.rescaledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, oldRescaled, false, oldRescaledESet));
        }
    }

    @Override
    public boolean isSetRescaled() {
        return this.rescaledESet;
    }

    @Override
    public boolean isZeroNotIncluded() {
        return this.zeroNotIncluded;
    }

    @Override
    public void setZeroNotIncluded(boolean newZeroNotIncluded) {
        boolean oldZeroNotIncluded = this.zeroNotIncluded;
        this.zeroNotIncluded = newZeroNotIncluded;
        boolean oldZeroNotIncludedESet = this.zeroNotIncludedESet;
        this.zeroNotIncludedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, oldZeroNotIncluded, this.zeroNotIncluded, !oldZeroNotIncludedESet));
        }
    }

    @Override
    public void unsetZeroNotIncluded() {
        boolean oldZeroNotIncluded = this.zeroNotIncluded;
        boolean oldZeroNotIncludedESet = this.zeroNotIncludedESet;
        this.zeroNotIncluded = false;
        this.zeroNotIncludedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, oldZeroNotIncluded, false, oldZeroNotIncludedESet));
        }
    }

    @Override
    public boolean isSetZeroNotIncluded() {
        return this.zeroNotIncludedESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetPhysInterval(null, msgs);
            }
            case 1: {
                return this.basicSetImplInterval(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getPhysInterval();
            }
            case 1: {
                return this.getImplInterval();
            }
            case 2: {
                return this.getComment();
            }
            case 3: {
                return this.getFormula();
            }
            case 4: {
                return this.getImplType();
            }
            case 5: {
                return this.isMaster();
            }
            case 6: {
                return this.getName();
            }
            case 7: {
                return this.getPhysType();
            }
            case 8: {
                return this.getQuantization();
            }
            case 9: {
                return this.isRescaled();
            }
            case 10: {
                return this.isZeroNotIncluded();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setPhysInterval((IntervalT)newValue);
                return;
            }
            case 1: {
                this.setImplInterval((IntervalT)newValue);
                return;
            }
            case 2: {
                this.setComment((String)newValue);
                return;
            }
            case 3: {
                this.setFormula((String)newValue);
                return;
            }
            case 4: {
                this.setImplType((String)newValue);
                return;
            }
            case 5: {
                this.setMaster((Boolean)newValue);
                return;
            }
            case 6: {
                this.setName((String)newValue);
                return;
            }
            case 7: {
                this.setPhysType((String)newValue);
                return;
            }
            case 8: {
                this.setQuantization(newValue);
                return;
            }
            case 9: {
                this.setRescaled((Boolean)newValue);
                return;
            }
            case 10: {
                this.setZeroNotIncluded((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setPhysInterval(null);
                return;
            }
            case 1: {
                this.setImplInterval(null);
                return;
            }
            case 2: {
                this.setComment(COMMENT_EDEFAULT);
                return;
            }
            case 3: {
                this.setFormula(FORMULA_EDEFAULT);
                return;
            }
            case 4: {
                this.setImplType(IMPL_TYPE_EDEFAULT);
                return;
            }
            case 5: {
                this.unsetMaster();
                return;
            }
            case 6: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 7: {
                this.setPhysType(PHYS_TYPE_EDEFAULT);
                return;
            }
            case 8: {
                this.setQuantization(QUANTIZATION_EDEFAULT);
                return;
            }
            case 9: {
                this.unsetRescaled();
                return;
            }
            case 10: {
                this.unsetZeroNotIncluded();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.physInterval != null;
            }
            case 1: {
                return this.implInterval != null;
            }
            case 2: {
                return COMMENT_EDEFAULT == null ? this.comment != null : !COMMENT_EDEFAULT.equals(this.comment);
            }
            case 3: {
                return FORMULA_EDEFAULT == null ? this.formula != null : !FORMULA_EDEFAULT.equals(this.formula);
            }
            case 4: {
                return IMPL_TYPE_EDEFAULT == null ? this.implType != null : !IMPL_TYPE_EDEFAULT.equals(this.implType);
            }
            case 5: {
                return this.isSetMaster();
            }
            case 6: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 7: {
                return PHYS_TYPE_EDEFAULT == null ? this.physType != null : !PHYS_TYPE_EDEFAULT.equals(this.physType);
            }
            case 8: {
                return QUANTIZATION_EDEFAULT == null ? this.quantization != null : !QUANTIZATION_EDEFAULT.equals(this.quantization);
            }
            case 9: {
                return this.isSetRescaled();
            }
            case 10: {
                return this.isSetZeroNotIncluded();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (comment: ");
        result.append(this.comment);
        result.append(", formula: ");
        result.append(this.formula);
        result.append(", implType: ");
        result.append(this.implType);
        result.append(", master: ");
        if (this.masterESet) {
            result.append(this.master);
        } else {
            result.append("<unset>");
        }
        result.append(", name: ");
        result.append(this.name);
        result.append(", physType: ");
        result.append(this.physType);
        result.append(", quantization: ");
        result.append(this.quantization);
        result.append(", rescaled: ");
        if (this.rescaledESet) {
            result.append(this.rescaled);
        } else {
            result.append("<unset>");
        }
        result.append(", zeroNotIncluded: ");
        if (this.zeroNotIncludedESet) {
            result.append(this.zeroNotIncluded);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

