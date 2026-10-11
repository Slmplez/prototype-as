/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.ecore.xml.type.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public class ProcessingInstructionImpl
extends EObjectImpl
implements ProcessingInstruction {
    protected static final String DATA_EDEFAULT = null;
    protected String data = DATA_EDEFAULT;
    protected static final String TARGET_EDEFAULT = null;
    protected String target = TARGET_EDEFAULT;

    protected ProcessingInstructionImpl() {
    }

    protected EClass eStaticClass() {
        return XMLTypePackage.Literals.PROCESSING_INSTRUCTION;
    }

    public String getData() {
        return this.data;
    }

    public void setData(String newData) {
        String oldData = this.data;
        this.data = newData;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldData, (Object)this.data));
        }
    }

    public String getTarget() {
        return this.target;
    }

    public void setTarget(String newTarget) {
        String oldTarget = this.target;
        this.target = newTarget;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldTarget, (Object)this.target));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getData();
            }
            case 1: {
                return this.getTarget();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setData((String)newValue);
                return;
            }
            case 1: {
                this.setTarget((String)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setData(DATA_EDEFAULT);
                return;
            }
            case 1: {
                this.setTarget(TARGET_EDEFAULT);
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return DATA_EDEFAULT == null ? this.data != null : !DATA_EDEFAULT.equals(this.data);
            }
            case 1: {
                return TARGET_EDEFAULT == null ? this.target != null : !TARGET_EDEFAULT.equals(this.target);
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (data: ");
        result.append(this.data);
        result.append(", target: ");
        result.append(this.target);
        result.append(')');
        return result.toString();
    }
}

