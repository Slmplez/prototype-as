/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ReturnPortType;
import com.etas.amd620.core.ComponentSpecification.impl.PortTImpl;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ReturnPortTypeImpl
extends PortTImpl
implements ReturnPortType {
    protected static final BigInteger INDEX_EDEFAULT = null;
    protected BigInteger index = INDEX_EDEFAULT;
    protected static final String LABEL_EDEFAULT = null;
    protected String label = LABEL_EDEFAULT;

    protected ReturnPortTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getReturnPortType();
    }

    @Override
    public BigInteger getIndex() {
        return this.index;
    }

    @Override
    public void setIndex(BigInteger newIndex) {
        BigInteger oldIndex = this.index;
        this.index = newIndex;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldIndex, (Object)this.index));
        }
    }

    @Override
    public String getLabel() {
        return this.label;
    }

    @Override
    public void setLabel(String newLabel) {
        String oldLabel = this.label;
        this.label = newLabel;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldLabel, (Object)this.label));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.getIndex();
            }
            case 3: {
                return this.getLabel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setIndex((BigInteger)newValue);
                return;
            }
            case 3: {
                this.setLabel((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.setIndex(INDEX_EDEFAULT);
                return;
            }
            case 3: {
                this.setLabel(LABEL_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return INDEX_EDEFAULT == null ? this.index != null : !INDEX_EDEFAULT.equals(this.index);
            }
            case 3: {
                return LABEL_EDEFAULT == null ? this.label != null : !LABEL_EDEFAULT.equals(this.label);
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (index: ");
        result.append(this.index);
        result.append(", label: ");
        result.append(this.label);
        result.append(')');
        return result.toString();
    }
}

