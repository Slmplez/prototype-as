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
package autosar3x.commonstructure.datadefproperties.impl;

import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.datadefproperties.SwTextProps;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.valuemodel.Vf;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwTextPropsImpl
extends ARObjectImpl
implements SwTextProps {
    protected Vf swMaxTextSize;
    protected static final Integer SW_FILL_CHARACTER_EDEFAULT = new Integer(0);
    protected Integer swFillCharacter = SW_FILL_CHARACTER_EDEFAULT;
    protected boolean swFillCharacterESet;

    protected SwTextPropsImpl() {
    }

    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_TEXT_PROPS;
    }

    public SwDataDefProps getSwDataDefProps() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwDataDefProps)this.eContainer();
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwDataDefProps, 4, msgs);
        return msgs;
    }

    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwDataDefProps != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwDataDefProps)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, 14, SwDataDefProps.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public Vf getSwMaxTextSize() {
        return this.swMaxTextSize;
    }

    public NotificationChain basicSetSwMaxTextSize(Vf newSwMaxTextSize, NotificationChain msgs) {
        Vf oldSwMaxTextSize = this.swMaxTextSize;
        this.swMaxTextSize = newSwMaxTextSize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwMaxTextSize, (Object)newSwMaxTextSize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwMaxTextSize(Vf newSwMaxTextSize) {
        if (newSwMaxTextSize != this.swMaxTextSize) {
            NotificationChain msgs = null;
            if (this.swMaxTextSize != null) {
                msgs = ((InternalEObject)this.swMaxTextSize).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newSwMaxTextSize != null) {
                msgs = ((InternalEObject)newSwMaxTextSize).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetSwMaxTextSize(newSwMaxTextSize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newSwMaxTextSize, (Object)newSwMaxTextSize));
        }
    }

    public Integer getSwFillCharacter() {
        return this.swFillCharacter;
    }

    public void setSwFillCharacter(Integer newSwFillCharacter) {
        Integer oldSwFillCharacter = this.swFillCharacter;
        this.swFillCharacter = newSwFillCharacter;
        boolean oldSwFillCharacterESet = this.swFillCharacterESet;
        this.swFillCharacterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwFillCharacter, (Object)this.swFillCharacter, !oldSwFillCharacterESet));
        }
    }

    public void unsetSwFillCharacter() {
        Integer oldSwFillCharacter = this.swFillCharacter;
        boolean oldSwFillCharacterESet = this.swFillCharacterESet;
        this.swFillCharacter = SW_FILL_CHARACTER_EDEFAULT;
        this.swFillCharacterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSwFillCharacter, (Object)SW_FILL_CHARACTER_EDEFAULT, oldSwFillCharacterESet));
        }
    }

    public boolean isSetSwFillCharacter() {
        return this.swFillCharacterESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwDataDefProps((SwDataDefProps)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 5: {
                return this.basicSetSwMaxTextSize(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 14, SwDataDefProps.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefProps();
            }
            case 5: {
                return this.getSwMaxTextSize();
            }
            case 6: {
                return this.getSwFillCharacter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 5: {
                this.setSwMaxTextSize((Vf)newValue);
                return;
            }
            case 6: {
                this.setSwFillCharacter((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefProps(null);
                return;
            }
            case 5: {
                this.setSwMaxTextSize(null);
                return;
            }
            case 6: {
                this.unsetSwFillCharacter();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefProps() != null;
            }
            case 5: {
                return this.swMaxTextSize != null;
            }
            case 6: {
                return this.isSetSwFillCharacter();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (swFillCharacter: ");
        if (this.swFillCharacterESet) {
            result.append(this.swFillCharacter);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

