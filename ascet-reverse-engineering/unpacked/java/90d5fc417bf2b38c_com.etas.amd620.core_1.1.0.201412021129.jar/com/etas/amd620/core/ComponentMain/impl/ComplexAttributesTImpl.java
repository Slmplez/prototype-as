/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComplexAttributesT;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.KindType;
import com.etas.amd620.core.ComponentMain.impl.AttributesBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ComplexAttributesTImpl
extends AttributesBaseTImpl
implements ComplexAttributesT {
    protected static final String COMPONENT_ID_EDEFAULT = null;
    protected String componentID = COMPONENT_ID_EDEFAULT;
    protected static final String COMPONENT_NAME_EDEFAULT = null;
    protected String componentName = COMPONENT_NAME_EDEFAULT;
    protected static final KindType KIND_EDEFAULT = KindType.VARIABLE;
    protected KindType kind = KIND_EDEFAULT;
    protected boolean kindESet;
    protected static final boolean QUEUED_EDEFAULT = false;
    protected boolean queued = false;
    protected boolean queuedESet;
    protected static final boolean REFERENCE_EDEFAULT = false;
    protected boolean reference = false;
    protected boolean referenceESet;

    protected ComplexAttributesTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.COMPLEX_ATTRIBUTES_T;
    }

    @Override
    public String getComponentID() {
        return this.componentID;
    }

    @Override
    public void setComponentID(String newComponentID) {
        String oldComponentID = this.componentID;
        this.componentID = newComponentID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldComponentID, (Object)this.componentID));
        }
    }

    @Override
    public String getComponentName() {
        return this.componentName;
    }

    @Override
    public void setComponentName(String newComponentName) {
        String oldComponentName = this.componentName;
        this.componentName = newComponentName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldComponentName, (Object)this.componentName));
        }
    }

    @Override
    public KindType getKind() {
        return this.kind;
    }

    @Override
    public void setKind(KindType newKind) {
        KindType oldKind = this.kind;
        this.kind = newKind == null ? KIND_EDEFAULT : newKind;
        boolean oldKindESet = this.kindESet;
        this.kindESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldKind, (Object)this.kind, !oldKindESet));
        }
    }

    @Override
    public void unsetKind() {
        KindType oldKind = this.kind;
        boolean oldKindESet = this.kindESet;
        this.kind = KIND_EDEFAULT;
        this.kindESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldKind, (Object)KIND_EDEFAULT, oldKindESet));
        }
    }

    @Override
    public boolean isSetKind() {
        return this.kindESet;
    }

    @Override
    public boolean isQueued() {
        return this.queued;
    }

    @Override
    public void setQueued(boolean newQueued) {
        boolean oldQueued = this.queued;
        this.queued = newQueued;
        boolean oldQueuedESet = this.queuedESet;
        this.queuedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, oldQueued, this.queued, !oldQueuedESet));
        }
    }

    @Override
    public void unsetQueued() {
        boolean oldQueued = this.queued;
        boolean oldQueuedESet = this.queuedESet;
        this.queued = false;
        this.queuedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, oldQueued, false, oldQueuedESet));
        }
    }

    @Override
    public boolean isSetQueued() {
        return this.queuedESet;
    }

    @Override
    public boolean isReference() {
        return this.reference;
    }

    @Override
    public void setReference(boolean newReference) {
        boolean oldReference = this.reference;
        this.reference = newReference;
        boolean oldReferenceESet = this.referenceESet;
        this.referenceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, oldReference, this.reference, !oldReferenceESet));
        }
    }

    @Override
    public void unsetReference() {
        boolean oldReference = this.reference;
        boolean oldReferenceESet = this.referenceESet;
        this.reference = false;
        this.referenceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, oldReference, false, oldReferenceESet));
        }
    }

    @Override
    public boolean isSetReference() {
        return this.referenceESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getComponentID();
            }
            case 7: {
                return this.getComponentName();
            }
            case 8: {
                return this.getKind();
            }
            case 9: {
                return this.isQueued();
            }
            case 10: {
                return this.isReference();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setComponentID((String)newValue);
                return;
            }
            case 7: {
                this.setComponentName((String)newValue);
                return;
            }
            case 8: {
                this.setKind((KindType)((Object)newValue));
                return;
            }
            case 9: {
                this.setQueued((Boolean)newValue);
                return;
            }
            case 10: {
                this.setReference((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setComponentID(COMPONENT_ID_EDEFAULT);
                return;
            }
            case 7: {
                this.setComponentName(COMPONENT_NAME_EDEFAULT);
                return;
            }
            case 8: {
                this.unsetKind();
                return;
            }
            case 9: {
                this.unsetQueued();
                return;
            }
            case 10: {
                this.unsetReference();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return COMPONENT_ID_EDEFAULT == null ? this.componentID != null : !COMPONENT_ID_EDEFAULT.equals(this.componentID);
            }
            case 7: {
                return COMPONENT_NAME_EDEFAULT == null ? this.componentName != null : !COMPONENT_NAME_EDEFAULT.equals(this.componentName);
            }
            case 8: {
                return this.isSetKind();
            }
            case 9: {
                return this.isSetQueued();
            }
            case 10: {
                return this.isSetReference();
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
        result.append(" (componentID: ");
        result.append(this.componentID);
        result.append(", componentName: ");
        result.append(this.componentName);
        result.append(", kind: ");
        if (this.kindESet) {
            result.append((Object)this.kind);
        } else {
            result.append("<unset>");
        }
        result.append(", queued: ");
        if (this.queuedESet) {
            result.append(this.queued);
        } else {
            result.append("<unset>");
        }
        result.append(", reference: ");
        if (this.referenceESet) {
            result.append(this.reference);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

