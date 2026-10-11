/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecuresource.impl;

import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.HwPin;
import autosar40.ecuresource.HwPinGroup;
import autosar40.ecuresource.HwPinGroupContent;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HwPinGroupContentImpl
extends ARObjectImpl
implements HwPinGroupContent {
    protected EList<HwPin> hwPins;
    protected EList<HwPinGroup> hwPinGroups;

    protected HwPinGroupContentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_PIN_GROUP_CONTENT;
    }

    @Override
    public HwPinGroup getHwPinGroup() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (HwPinGroup)this.eContainer();
    }

    public NotificationChain basicSetHwPinGroup(HwPinGroup newHwPinGroup, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHwPinGroup, 4, msgs);
        return msgs;
    }

    @Override
    public void setHwPinGroup(HwPinGroup newHwPinGroup) {
        if (newHwPinGroup != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newHwPinGroup != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHwPinGroup)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHwPinGroup != null) {
                msgs = ((InternalEObject)newHwPinGroup).eInverseAdd((InternalEObject)this, 21, HwPinGroup.class, msgs);
            }
            if ((msgs = this.basicSetHwPinGroup(newHwPinGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newHwPinGroup, (Object)newHwPinGroup));
        }
    }

    @Override
    public EList<HwPin> getHwPins() {
        if (this.hwPins == null) {
            this.hwPins = new EObjectContainmentWithInverseEList(HwPin.class, (InternalEObject)this, 5, 21);
        }
        return this.hwPins;
    }

    @Override
    public EList<HwPinGroup> getHwPinGroups() {
        if (this.hwPinGroups == null) {
            this.hwPinGroups = new EObjectContainmentEList(HwPinGroup.class, (InternalEObject)this, 6);
        }
        return this.hwPinGroups;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHwPinGroup((HwPinGroup)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getHwPins()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetHwPinGroup(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getHwPins()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getHwPinGroups()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, HwPinGroup.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getHwPinGroup();
            }
            case 5: {
                return this.getHwPins();
            }
            case 6: {
                return this.getHwPinGroups();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setHwPinGroup((HwPinGroup)newValue);
                return;
            }
            case 5: {
                this.getHwPins().clear();
                this.getHwPins().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getHwPinGroups().clear();
                this.getHwPinGroups().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setHwPinGroup(null);
                return;
            }
            case 5: {
                this.getHwPins().clear();
                return;
            }
            case 6: {
                this.getHwPinGroups().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getHwPinGroup() != null;
            }
            case 5: {
                return this.hwPins != null && !this.hwPins.isEmpty();
            }
            case 6: {
                return this.hwPinGroups != null && !this.hwPinGroups.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

