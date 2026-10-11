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
package com.etas.amd620.core.Formulas.impl;

import com.etas.amd620.core.Formulas.FormattedTextT;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.amd620.core.Formulas.FormulasPackage;
import com.etas.amd620.core.Formulas.ParameterType;
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

public class FormulaComplexTypeImpl
extends MinimalEObjectImpl.Container
implements FormulaComplexType {
    protected FormattedTextT comment;
    protected EList<ParameterType> parameter;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final String TYPE_EDEFAULT = null;
    protected String type = TYPE_EDEFAULT;
    protected static final String UNIT_EDEFAULT = null;
    protected String unit = UNIT_EDEFAULT;

    protected FormulaComplexTypeImpl() {
    }

    protected EClass eStaticClass() {
        return FormulasPackage.Literals.FORMULA_COMPLEX_TYPE;
    }

    @Override
    public FormattedTextT getComment() {
        return this.comment;
    }

    public NotificationChain basicSetComment(FormattedTextT newComment, NotificationChain msgs) {
        FormattedTextT oldComment = this.comment;
        this.comment = newComment;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldComment, (Object)newComment);
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
                msgs = ((InternalEObject)this.comment).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newComment != null) {
                msgs = ((InternalEObject)newComment).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetComment(newComment, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newComment, (Object)newComment));
        }
    }

    @Override
    public EList<ParameterType> getParameter() {
        if (this.parameter == null) {
            this.parameter = new EObjectContainmentEList(ParameterType.class, (InternalEObject)this, 1);
        }
        return this.parameter;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public String getType() {
        return this.type;
    }

    @Override
    public void setType(String newType) {
        String oldType = this.type;
        this.type = newType;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldType, (Object)this.type));
        }
    }

    @Override
    public String getUnit() {
        return this.unit;
    }

    @Override
    public void setUnit(String newUnit) {
        String oldUnit = this.unit;
        this.unit = newUnit;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldUnit, (Object)this.unit));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetComment(null, msgs);
            }
            case 1: {
                return ((InternalEList)this.getParameter()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getComment();
            }
            case 1: {
                return this.getParameter();
            }
            case 2: {
                return this.getName();
            }
            case 3: {
                return this.getType();
            }
            case 4: {
                return this.getUnit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setComment((FormattedTextT)newValue);
                return;
            }
            case 1: {
                this.getParameter().clear();
                this.getParameter().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.setName((String)newValue);
                return;
            }
            case 3: {
                this.setType((String)newValue);
                return;
            }
            case 4: {
                this.setUnit((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setComment(null);
                return;
            }
            case 1: {
                this.getParameter().clear();
                return;
            }
            case 2: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 3: {
                this.setType(TYPE_EDEFAULT);
                return;
            }
            case 4: {
                this.setUnit(UNIT_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.comment != null;
            }
            case 1: {
                return this.parameter != null && !this.parameter.isEmpty();
            }
            case 2: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 3: {
                return TYPE_EDEFAULT == null ? this.type != null : !TYPE_EDEFAULT.equals(this.type);
            }
            case 4: {
                return UNIT_EDEFAULT == null ? this.unit != null : !UNIT_EDEFAULT.equals(this.unit);
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
        result.append(", type: ");
        result.append(this.type);
        result.append(", unit: ");
        result.append(this.unit);
        result.append(')');
        return result.toString();
    }
}

