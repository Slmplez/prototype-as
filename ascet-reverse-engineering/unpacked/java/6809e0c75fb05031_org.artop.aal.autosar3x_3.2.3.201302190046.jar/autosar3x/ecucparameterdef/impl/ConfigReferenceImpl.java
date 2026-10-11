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
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.ConfigReference;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.ParamConfContainerDef;
import autosar3x.ecucparameterdef.impl.CommonConfigurationAttributesImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ConfigReferenceImpl
extends CommonConfigurationAttributesImpl
implements ConfigReference {
    protected ConfigReferenceImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.CONFIG_REFERENCE;
    }

    public ParamConfContainerDef getParamConfContainerDef() {
        if (this.eContainerFeatureID() != 22) {
            return null;
        }
        return (ParamConfContainerDef)this.eContainer();
    }

    public NotificationChain basicSetParamConfContainerDef(ParamConfContainerDef newParamConfContainerDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newParamConfContainerDef, 22, msgs);
        return msgs;
    }

    public void setParamConfContainerDef(ParamConfContainerDef newParamConfContainerDef) {
        if (newParamConfContainerDef != this.eInternalContainer() || this.eContainerFeatureID() != 22 && newParamConfContainerDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newParamConfContainerDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newParamConfContainerDef != null) {
                msgs = ((InternalEObject)newParamConfContainerDef).eInverseAdd((InternalEObject)this, 23, ParamConfContainerDef.class, msgs);
            }
            if ((msgs = this.basicSetParamConfContainerDef(newParamConfContainerDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newParamConfContainerDef, (Object)newParamConfContainerDef));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetParamConfContainerDef((ParamConfContainerDef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetParamConfContainerDef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 22: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, ParamConfContainerDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getParamConfContainerDef();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setParamConfContainerDef((ParamConfContainerDef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.setParamConfContainerDef(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.getParamConfContainerDef() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

