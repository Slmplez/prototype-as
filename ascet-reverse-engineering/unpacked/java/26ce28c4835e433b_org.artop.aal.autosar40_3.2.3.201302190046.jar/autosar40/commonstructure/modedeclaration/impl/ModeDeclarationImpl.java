/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.modedeclaration.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.genericstructure.abstractstructure.impl.AtpStructureElementImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ModeDeclarationImpl
extends AtpStructureElementImpl
implements ModeDeclaration {
    protected static final PositiveIntegerDatatype VALUE_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype value = VALUE_EDEFAULT.clone();
    protected boolean valueESet;

    protected ModeDeclarationImpl() {
    }

    protected EClass eStaticClass() {
        return ModedeclarationPackage.Literals.MODE_DECLARATION;
    }

    public ModeDeclarationGroup getModeDeclarationGroup() {
        if (this.eContainerFeatureID() != 19) {
            return null;
        }
        return (ModeDeclarationGroup)this.eContainer();
    }

    public NotificationChain basicSetModeDeclarationGroup(ModeDeclarationGroup newModeDeclarationGroup, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newModeDeclarationGroup, 19, msgs);
        return msgs;
    }

    public void setModeDeclarationGroup(ModeDeclarationGroup newModeDeclarationGroup) {
        if (newModeDeclarationGroup != this.eInternalContainer() || this.eContainerFeatureID() != 19 && newModeDeclarationGroup != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newModeDeclarationGroup)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newModeDeclarationGroup != null) {
                msgs = ((InternalEObject)newModeDeclarationGroup).eInverseAdd((InternalEObject)this, 25, ModeDeclarationGroup.class, msgs);
            }
            if ((msgs = this.basicSetModeDeclarationGroup(newModeDeclarationGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newModeDeclarationGroup, (Object)newModeDeclarationGroup));
        }
    }

    public Long getValue() {
        return (Long)this.value.basicGetValue();
    }

    public void setValue(Long newValue) {
        Long oldValue = (Long)this.value.basicGetValue();
        this.value.basicSetValue((Object)newValue);
        boolean oldValueESet = this.valueESet;
        this.valueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldValue, (Object)newValue, !oldValueESet));
        }
    }

    public void unsetValue() {
        Long oldValue = (Long)this.value.basicGetValue();
        boolean oldValueESet = this.valueESet;
        this.value = VALUE_EDEFAULT.clone();
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldValue, (Object)VALUE_EDEFAULT, oldValueESet));
        }
    }

    public boolean isSetValue() {
        return this.valueESet;
    }

    public PositiveIntegerDatatype getValueData() {
        return this.value.clone();
    }

    public void setValueData(PositiveIntegerDatatype newValue) {
        this.value.setRadix((int)newValue.getRadix());
        this.value.setNoOfDigits((int)newValue.getNoOfDigits());
        this.setValue(newValue.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetModeDeclarationGroup((ModeDeclarationGroup)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetModeDeclarationGroup(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 19: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, ModeDeclarationGroup.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getModeDeclarationGroup();
            }
            case 20: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setModeDeclarationGroup((ModeDeclarationGroup)newValue);
                return;
            }
            case 20: {
                this.setValue((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setModeDeclarationGroup(null);
                return;
            }
            case 20: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.getModeDeclarationGroup() != null;
            }
            case 20: {
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
        result.append(" (value: ");
        if (this.valueESet) {
            result.append(this.value);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

