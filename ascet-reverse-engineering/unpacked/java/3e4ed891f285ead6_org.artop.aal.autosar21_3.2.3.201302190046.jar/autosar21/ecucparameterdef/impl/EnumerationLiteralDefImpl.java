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
package autosar21.ecucparameterdef.impl;

import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.EnumerationLiteralDef;
import autosar21.ecucparameterdef.EnumerationParamDef;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EnumerationLiteralDefImpl
extends IdentifiableImpl
implements EnumerationLiteralDef {
    protected EnumerationLiteralDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ENUMERATION_LITERAL_DEF;
    }

    public EnumerationParamDef getEnumerationParamDef() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (EnumerationParamDef)this.eContainer();
    }

    public NotificationChain basicSetEnumerationParamDef(EnumerationParamDef newEnumerationParamDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEnumerationParamDef, 16, msgs);
        return msgs;
    }

    public void setEnumerationParamDef(EnumerationParamDef newEnumerationParamDef) {
        if (newEnumerationParamDef != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newEnumerationParamDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEnumerationParamDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEnumerationParamDef != null) {
                msgs = ((InternalEObject)newEnumerationParamDef).eInverseAdd((InternalEObject)this, 24, EnumerationParamDef.class, msgs);
            }
            if ((msgs = this.basicSetEnumerationParamDef(newEnumerationParamDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newEnumerationParamDef, (Object)newEnumerationParamDef));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEnumerationParamDef((EnumerationParamDef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetEnumerationParamDef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, EnumerationParamDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getEnumerationParamDef();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setEnumerationParamDef((EnumerationParamDef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setEnumerationParamDef(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getEnumerationParamDef() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

