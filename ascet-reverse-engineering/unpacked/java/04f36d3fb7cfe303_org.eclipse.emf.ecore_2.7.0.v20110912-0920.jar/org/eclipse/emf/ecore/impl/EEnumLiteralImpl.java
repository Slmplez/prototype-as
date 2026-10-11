/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.Enumerator
 */
package org.eclipse.emf.ecore.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENamedElementImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.InternalEList;

public class EEnumLiteralImpl
extends ENamedElementImpl
implements EEnumLiteral {
    protected static final int VALUE_EDEFAULT = 0;
    protected int value = 0;
    protected static final Enumerator INSTANCE_EDEFAULT = null;
    protected Enumerator instance = INSTANCE_EDEFAULT;
    protected static final String LITERAL_EDEFAULT = null;
    protected String literal = LITERAL_EDEFAULT;
    protected Enumerator generatedInstance = this;

    protected EEnumLiteralImpl() {
    }

    protected EClass eStaticClass() {
        return EcorePackage.Literals.EENUM_LITERAL;
    }

    public int getValue() {
        return this.value;
    }

    public void setValue(int newValue) {
        int oldValue = this.value;
        this.value = newValue;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldValue, this.value));
        }
    }

    public Enumerator getInstance() {
        return this.instance != null ? this.instance : this.generatedInstance;
    }

    public void setGeneratedInstance(boolean isGenerated) {
        if (isGenerated) {
            if (this.generatedInstance == this) {
                this.generatedInstance = this.instance;
                this.instance = null;
            }
        } else if (this.generatedInstance != this) {
            this.instance = this.generatedInstance;
            this.generatedInstance = this;
        }
    }

    public void setInstanceGen(Enumerator newInstance) {
        Enumerator oldInstance = this.instance;
        this.instance = newInstance;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldInstance, (Object)this.instance));
        }
    }

    public void setInstance(Enumerator newInstance) {
        this.setInstanceGen(newInstance);
        if (newInstance == null) {
            this.setName(null);
            this.setValue(0);
            this.setLiteral(null);
        } else if (newInstance != this) {
            this.setName(newInstance.getName());
            this.setValue(newInstance.getValue());
            String literal = newInstance.getLiteral();
            this.setLiteral(literal == null || literal.equals(newInstance.getName()) ? null : literal);
        }
    }

    public String getLiteralGen() {
        return this.literal;
    }

    public String getLiteral() {
        String result = this.getLiteralGen();
        return result == null ? this.getName() : result;
    }

    public void setLiteral(String newLiteral) {
        String oldLiteral = this.literal;
        this.literal = newLiteral;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldLiteral, (Object)this.literal));
        }
    }

    public EEnum getEEnum() {
        return this.eContainerFeatureID() == 5 ? (EEnum)((Object)this.eContainer) : null;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 5, msgs);
            }
        }
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
            case 5: {
                return this.eBasicSetContainer(null, 5, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove(this, 9, EEnum.class, msgs);
            }
        }
        return this.eDynamicBasicRemoveFromContainer(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
            case 1: {
                return this.getName();
            }
            case 2: {
                return this.getValue();
            }
            case 3: {
                return this.getInstance();
            }
            case 4: {
                return this.getLiteral();
            }
            case 5: {
                return this.getEEnum();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                this.getEAnnotations().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setName((String)newValue);
                return;
            }
            case 2: {
                this.setValue((Integer)newValue);
                return;
            }
            case 3: {
                this.setInstance((Enumerator)newValue);
                return;
            }
            case 4: {
                this.setLiteral((String)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                return;
            }
            case 1: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.setValue(0);
                return;
            }
            case 3: {
                this.setInstance(INSTANCE_EDEFAULT);
                return;
            }
            case 4: {
                this.setLiteral(LITERAL_EDEFAULT);
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
            case 1: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 2: {
                return this.value != 0;
            }
            case 3: {
                return INSTANCE_EDEFAULT == null ? this.instance != null : !INSTANCE_EDEFAULT.equals(this.instance);
            }
            case 4: {
                return LITERAL_EDEFAULT == null ? this.literal != null : !LITERAL_EDEFAULT.equals(this.literal);
            }
            case 5: {
                return this.getEEnum() != null;
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    public String toString() {
        return this.getLiteral();
    }

    public String toStringGen() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (value: ");
        result.append(this.value);
        result.append(", instance: ");
        result.append(this.instance);
        result.append(", literal: ");
        result.append(this.literal);
        result.append(')');
        return result.toString();
    }
}

