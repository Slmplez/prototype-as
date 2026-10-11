/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.ExtAnnotation;
import autosar21.swcomponent.applicationattributes.PortAnnotation;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ExtAnnotationImpl
extends ARObjectImpl
implements ExtAnnotation {
    protected static final String NAME_EDEFAULT = "";
    protected String name = "";
    protected boolean nameESet;
    protected static final String VALUE_EDEFAULT = "";
    protected String value = "";
    protected boolean valueESet;

    protected ExtAnnotationImpl() {
    }

    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.EXT_ANNOTATION;
    }

    public PortAnnotation getPortAnnotation() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PortAnnotation)this.eContainer();
    }

    public NotificationChain basicSetPortAnnotation(PortAnnotation newPortAnnotation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPortAnnotation, 4, msgs);
        return msgs;
    }

    public void setPortAnnotation(PortAnnotation newPortAnnotation) {
        if (newPortAnnotation != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPortAnnotation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPortAnnotation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPortAnnotation != null) {
                msgs = ((InternalEObject)newPortAnnotation).eInverseAdd((InternalEObject)this, 5, PortAnnotation.class, msgs);
            }
            if ((msgs = this.basicSetPortAnnotation(newPortAnnotation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPortAnnotation, (Object)newPortAnnotation));
        }
    }

    public String getName() {
        return this.name;
    }

    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        boolean oldNameESet = this.nameESet;
        this.nameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldName, (Object)this.name, !oldNameESet));
        }
    }

    public void unsetName() {
        String oldName = this.name;
        boolean oldNameESet = this.nameESet;
        this.name = "";
        this.nameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldName, (Object)"", oldNameESet));
        }
    }

    public boolean isSetName() {
        return this.nameESet;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String newValue) {
        String oldValue = this.value;
        this.value = newValue;
        boolean oldValueESet = this.valueESet;
        this.valueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldValue, (Object)this.value, !oldValueESet));
        }
    }

    public void unsetValue() {
        String oldValue = this.value;
        boolean oldValueESet = this.valueESet;
        this.value = "";
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldValue, (Object)"", oldValueESet));
        }
    }

    public boolean isSetValue() {
        return this.valueESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPortAnnotation((PortAnnotation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPortAnnotation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, PortAnnotation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPortAnnotation();
            }
            case 5: {
                return this.getName();
            }
            case 6: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPortAnnotation((PortAnnotation)newValue);
                return;
            }
            case 5: {
                this.setName((String)newValue);
                return;
            }
            case 6: {
                this.setValue((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPortAnnotation(null);
                return;
            }
            case 5: {
                this.unsetName();
                return;
            }
            case 6: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPortAnnotation() != null;
            }
            case 5: {
                return this.isSetName();
            }
            case 6: {
                return this.isSetValue();
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
        if (this.nameESet) {
            result.append(this.name);
        } else {
            result.append("<unset>");
        }
        result.append(", value: ");
        if (this.valueESet) {
            result.append(this.value);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

