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
package autosar40.ecuresource.hwelementcategory.impl;

import autosar40.ecuresource.hwelementcategory.HwAttributeDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeLiteralDef;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class HwAttributeLiteralDefImpl
extends IdentifiableImpl
implements HwAttributeLiteralDef {
    protected HwAttributeLiteralDefImpl() {
    }

    protected EClass eStaticClass() {
        return HwelementcategoryPackage.Literals.HW_ATTRIBUTE_LITERAL_DEF;
    }

    public HwAttributeDef getHwAttributeDef() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (HwAttributeDef)this.eContainer();
    }

    public NotificationChain basicSetHwAttributeDef(HwAttributeDef newHwAttributeDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHwAttributeDef, 18, msgs);
        return msgs;
    }

    public void setHwAttributeDef(HwAttributeDef newHwAttributeDef) {
        if (newHwAttributeDef != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newHwAttributeDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHwAttributeDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHwAttributeDef != null) {
                msgs = ((InternalEObject)newHwAttributeDef).eInverseAdd((InternalEObject)this, 19, HwAttributeDef.class, msgs);
            }
            if ((msgs = this.basicSetHwAttributeDef(newHwAttributeDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newHwAttributeDef, (Object)newHwAttributeDef));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHwAttributeDef((HwAttributeDef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetHwAttributeDef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, HwAttributeDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getHwAttributeDef();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setHwAttributeDef((HwAttributeDef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setHwAttributeDef(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getHwAttributeDef() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

