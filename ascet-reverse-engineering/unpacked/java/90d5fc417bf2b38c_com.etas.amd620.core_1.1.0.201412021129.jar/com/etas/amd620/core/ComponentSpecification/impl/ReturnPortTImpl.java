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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.ReturnPortT;
import com.etas.amd620.core.ComponentSpecification.SelectorPortT;
import com.etas.amd620.core.ComponentSpecification.impl.PortTImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class ReturnPortTImpl
extends PortTImpl
implements ReturnPortT {
    protected PointT position;
    protected EList<SelectorPortT> selectorPort;
    protected static final boolean DEFAULT_PORT_EDEFAULT = false;
    protected boolean defaultPort = false;
    protected boolean defaultPortESet;
    protected static final String METHOD_NAME_EDEFAULT = null;
    protected String methodName = METHOD_NAME_EDEFAULT;
    protected static final String METHOD_OID_EDEFAULT = null;
    protected String methodOID = METHOD_OID_EDEFAULT;
    protected static final boolean NAME_VISIBILITY_EDEFAULT = false;
    protected boolean nameVisibility = false;
    protected boolean nameVisibilityESet;
    protected static final String RETURN_ELEMENT_OID_EDEFAULT = null;
    protected String returnElementOID = RETURN_ELEMENT_OID_EDEFAULT;
    protected static final boolean TEMP_VAR_EDEFAULT = false;
    protected boolean tempVar = false;
    protected boolean tempVarESet;
    protected static final boolean VISIBILITY_EDEFAULT = false;
    protected boolean visibility = false;
    protected boolean visibilityESet;

    protected ReturnPortTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getReturnPortT();
    }

    @Override
    public PointT getPosition() {
        return this.position;
    }

    public NotificationChain basicSetPosition(PointT newPosition, NotificationChain msgs) {
        PointT oldPosition = this.position;
        this.position = newPosition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldPosition, (Object)newPosition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPosition(PointT newPosition) {
        if (newPosition != this.position) {
            NotificationChain msgs = null;
            if (this.position != null) {
                msgs = ((InternalEObject)this.position).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newPosition != null) {
                msgs = ((InternalEObject)newPosition).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetPosition(newPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newPosition, (Object)newPosition));
        }
    }

    @Override
    public EList<SelectorPortT> getSelectorPort() {
        if (this.selectorPort == null) {
            this.selectorPort = new EObjectContainmentEList(SelectorPortT.class, (InternalEObject)this, 3);
        }
        return this.selectorPort;
    }

    @Override
    public boolean isDefaultPort() {
        return this.defaultPort;
    }

    @Override
    public void setDefaultPort(boolean newDefaultPort) {
        boolean oldDefaultPort = this.defaultPort;
        this.defaultPort = newDefaultPort;
        boolean oldDefaultPortESet = this.defaultPortESet;
        this.defaultPortESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, oldDefaultPort, this.defaultPort, !oldDefaultPortESet));
        }
    }

    @Override
    public void unsetDefaultPort() {
        boolean oldDefaultPort = this.defaultPort;
        boolean oldDefaultPortESet = this.defaultPortESet;
        this.defaultPort = false;
        this.defaultPortESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, oldDefaultPort, false, oldDefaultPortESet));
        }
    }

    @Override
    public boolean isSetDefaultPort() {
        return this.defaultPortESet;
    }

    @Override
    public String getMethodName() {
        return this.methodName;
    }

    @Override
    public void setMethodName(String newMethodName) {
        String oldMethodName = this.methodName;
        this.methodName = newMethodName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMethodName, (Object)this.methodName));
        }
    }

    @Override
    public String getMethodOID() {
        return this.methodOID;
    }

    @Override
    public void setMethodOID(String newMethodOID) {
        String oldMethodOID = this.methodOID;
        this.methodOID = newMethodOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMethodOID, (Object)this.methodOID));
        }
    }

    @Override
    public boolean isNameVisibility() {
        return this.nameVisibility;
    }

    @Override
    public void setNameVisibility(boolean newNameVisibility) {
        boolean oldNameVisibility = this.nameVisibility;
        this.nameVisibility = newNameVisibility;
        boolean oldNameVisibilityESet = this.nameVisibilityESet;
        this.nameVisibilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, oldNameVisibility, this.nameVisibility, !oldNameVisibilityESet));
        }
    }

    @Override
    public void unsetNameVisibility() {
        boolean oldNameVisibility = this.nameVisibility;
        boolean oldNameVisibilityESet = this.nameVisibilityESet;
        this.nameVisibility = false;
        this.nameVisibilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, oldNameVisibility, false, oldNameVisibilityESet));
        }
    }

    @Override
    public boolean isSetNameVisibility() {
        return this.nameVisibilityESet;
    }

    @Override
    public String getReturnElementOID() {
        return this.returnElementOID;
    }

    @Override
    public void setReturnElementOID(String newReturnElementOID) {
        String oldReturnElementOID = this.returnElementOID;
        this.returnElementOID = newReturnElementOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldReturnElementOID, (Object)this.returnElementOID));
        }
    }

    @Override
    public boolean isTempVar() {
        return this.tempVar;
    }

    @Override
    public void setTempVar(boolean newTempVar) {
        boolean oldTempVar = this.tempVar;
        this.tempVar = newTempVar;
        boolean oldTempVarESet = this.tempVarESet;
        this.tempVarESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, oldTempVar, this.tempVar, !oldTempVarESet));
        }
    }

    @Override
    public void unsetTempVar() {
        boolean oldTempVar = this.tempVar;
        boolean oldTempVarESet = this.tempVarESet;
        this.tempVar = false;
        this.tempVarESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, oldTempVar, false, oldTempVarESet));
        }
    }

    @Override
    public boolean isSetTempVar() {
        return this.tempVarESet;
    }

    @Override
    public boolean isVisibility() {
        return this.visibility;
    }

    @Override
    public void setVisibility(boolean newVisibility) {
        boolean oldVisibility = this.visibility;
        this.visibility = newVisibility;
        boolean oldVisibilityESet = this.visibilityESet;
        this.visibilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, oldVisibility, this.visibility, !oldVisibilityESet));
        }
    }

    @Override
    public void unsetVisibility() {
        boolean oldVisibility = this.visibility;
        boolean oldVisibilityESet = this.visibilityESet;
        this.visibility = false;
        this.visibilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, oldVisibility, false, oldVisibilityESet));
        }
    }

    @Override
    public boolean isSetVisibility() {
        return this.visibilityESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 2: {
                return this.basicSetPosition(null, msgs);
            }
            case 3: {
                return ((InternalEList)this.getSelectorPort()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.getPosition();
            }
            case 3: {
                return this.getSelectorPort();
            }
            case 4: {
                return this.isDefaultPort();
            }
            case 5: {
                return this.getMethodName();
            }
            case 6: {
                return this.getMethodOID();
            }
            case 7: {
                return this.isNameVisibility();
            }
            case 8: {
                return this.getReturnElementOID();
            }
            case 9: {
                return this.isTempVar();
            }
            case 10: {
                return this.isVisibility();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setPosition((PointT)newValue);
                return;
            }
            case 3: {
                this.getSelectorPort().clear();
                this.getSelectorPort().addAll((Collection)newValue);
                return;
            }
            case 4: {
                this.setDefaultPort((Boolean)newValue);
                return;
            }
            case 5: {
                this.setMethodName((String)newValue);
                return;
            }
            case 6: {
                this.setMethodOID((String)newValue);
                return;
            }
            case 7: {
                this.setNameVisibility((Boolean)newValue);
                return;
            }
            case 8: {
                this.setReturnElementOID((String)newValue);
                return;
            }
            case 9: {
                this.setTempVar((Boolean)newValue);
                return;
            }
            case 10: {
                this.setVisibility((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.setPosition(null);
                return;
            }
            case 3: {
                this.getSelectorPort().clear();
                return;
            }
            case 4: {
                this.unsetDefaultPort();
                return;
            }
            case 5: {
                this.setMethodName(METHOD_NAME_EDEFAULT);
                return;
            }
            case 6: {
                this.setMethodOID(METHOD_OID_EDEFAULT);
                return;
            }
            case 7: {
                this.unsetNameVisibility();
                return;
            }
            case 8: {
                this.setReturnElementOID(RETURN_ELEMENT_OID_EDEFAULT);
                return;
            }
            case 9: {
                this.unsetTempVar();
                return;
            }
            case 10: {
                this.unsetVisibility();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return this.position != null;
            }
            case 3: {
                return this.selectorPort != null && !this.selectorPort.isEmpty();
            }
            case 4: {
                return this.isSetDefaultPort();
            }
            case 5: {
                return METHOD_NAME_EDEFAULT == null ? this.methodName != null : !METHOD_NAME_EDEFAULT.equals(this.methodName);
            }
            case 6: {
                return METHOD_OID_EDEFAULT == null ? this.methodOID != null : !METHOD_OID_EDEFAULT.equals(this.methodOID);
            }
            case 7: {
                return this.isSetNameVisibility();
            }
            case 8: {
                return RETURN_ELEMENT_OID_EDEFAULT == null ? this.returnElementOID != null : !RETURN_ELEMENT_OID_EDEFAULT.equals(this.returnElementOID);
            }
            case 9: {
                return this.isSetTempVar();
            }
            case 10: {
                return this.isSetVisibility();
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
        result.append(" (defaultPort: ");
        if (this.defaultPortESet) {
            result.append(this.defaultPort);
        } else {
            result.append("<unset>");
        }
        result.append(", methodName: ");
        result.append(this.methodName);
        result.append(", methodOID: ");
        result.append(this.methodOID);
        result.append(", nameVisibility: ");
        if (this.nameVisibilityESet) {
            result.append(this.nameVisibility);
        } else {
            result.append("<unset>");
        }
        result.append(", returnElementOID: ");
        result.append(this.returnElementOID);
        result.append(", tempVar: ");
        if (this.tempVarESet) {
            result.append(this.tempVar);
        } else {
            result.append("<unset>");
        }
        result.append(", visibility: ");
        if (this.visibilityESet) {
            result.append(this.visibility);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

