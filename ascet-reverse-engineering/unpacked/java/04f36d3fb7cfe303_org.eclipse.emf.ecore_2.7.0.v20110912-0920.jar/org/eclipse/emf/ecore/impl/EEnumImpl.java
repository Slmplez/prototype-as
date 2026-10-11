/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EDataTypeImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EEnumImpl
extends EDataTypeImpl
implements EEnum {
    protected EList<EEnumLiteral> eLiterals;

    protected EEnumImpl() {
    }

    @Override
    protected void freeze() {
        if (this.eLiterals != null) {
            int i = 0;
            int size = this.eLiterals.size();
            while (i < size) {
                this.freeze(this.eLiterals.get(i));
                ++i;
            }
        }
        super.freeze();
    }

    @Override
    protected void setDataTypeGeneratedInstanceClass(boolean isGenerated) {
    }

    @Override
    public Object getDefaultValue() {
        EList<EEnumLiteral> eLiterals = this.getELiterals();
        if (!eLiterals.isEmpty()) {
            return ((EEnumLiteral)eLiterals.get(0)).getInstance();
        }
        return null;
    }

    @Override
    public boolean isInstance(Object object) {
        if (object != null) {
            Class<?> instanceClass = this.getInstanceClass();
            if (instanceClass != null) {
                return instanceClass.isInstance(object);
            }
            return this.getELiterals().contains(object);
        }
        return false;
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.EENUM;
    }

    @Override
    public EList<EEnumLiteral> getELiterals() {
        if (this.eLiterals == null) {
            this.eLiterals = new EObjectContainmentWithInverseEList<EEnumLiteral>(EEnumLiteral.class, this, 9, 5);
        }
        return this.eLiterals;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
            case 1: {
                return this.getName();
            }
            case 2: {
                return this.getInstanceClassName();
            }
            case 3: {
                return this.getInstanceClass();
            }
            case 4: {
                return this.getDefaultValue();
            }
            case 5: {
                return this.getInstanceTypeName();
            }
            case 6: {
                if (resolve) {
                    return this.getEPackage();
                }
                return this.basicGetEPackage();
            }
            case 7: {
                return this.getETypeParameters();
            }
            case 8: {
                return this.isSerializable();
            }
            case 9: {
                return this.getELiterals();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
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
                this.setInstanceClassName((String)newValue);
                return;
            }
            case 5: {
                this.setInstanceTypeName((String)newValue);
                return;
            }
            case 7: {
                this.getETypeParameters().clear();
                this.getETypeParameters().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setSerializable((Boolean)newValue);
                return;
            }
            case 9: {
                this.getELiterals().clear();
                this.getELiterals().addAll((Collection)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
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
                this.unsetInstanceClassName();
                return;
            }
            case 5: {
                this.unsetInstanceTypeName();
                return;
            }
            case 7: {
                this.getETypeParameters().clear();
                return;
            }
            case 8: {
                this.setSerializable(true);
                return;
            }
            case 9: {
                this.getELiterals().clear();
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
            case 1: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 2: {
                return this.isSetInstanceClassName();
            }
            case 3: {
                return this.getInstanceClass() != null;
            }
            case 4: {
                return DEFAULT_VALUE_EDEFAULT == null ? this.getDefaultValue() != null : !DEFAULT_VALUE_EDEFAULT.equals(this.getDefaultValue());
            }
            case 5: {
                return this.isSetInstanceTypeName();
            }
            case 6: {
                return this.basicGetEPackage() != null;
            }
            case 7: {
                return this.eTypeParameters != null && !this.eTypeParameters.isEmpty();
            }
            case 8: {
                return (this.eFlags & 0x100) == 0;
            }
            case 9: {
                return this.eLiterals != null && !this.eLiterals.isEmpty();
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public Object eInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        switch (operationID) {
            case 0: {
                return this.getEAnnotation((String)arguments.get(0));
            }
            case 1: {
                return this.isInstance(arguments.get(0));
            }
            case 2: {
                return this.getClassifierID();
            }
            case 3: {
                return this.getEEnumLiteral((String)arguments.get(0));
            }
            case 4: {
                return this.getEEnumLiteral((Integer)arguments.get(0));
            }
            case 5: {
                return this.getEEnumLiteralByLiteral((String)arguments.get(0));
            }
        }
        return this.eDynamicInvoke(operationID, arguments);
    }

    @Override
    public EEnumLiteral getEEnumLiteral(String name) {
        if (name == null) {
            for (EEnumLiteral eEnumLiteral : this.getELiterals()) {
                if (eEnumLiteral.getName() != null) continue;
                return eEnumLiteral;
            }
        } else {
            for (EEnumLiteral eEnumLiteral : this.getELiterals()) {
                if (!name.equals(eEnumLiteral.getName())) continue;
                return eEnumLiteral;
            }
        }
        return null;
    }

    @Override
    public EEnumLiteral getEEnumLiteral(int intValue) {
        for (EEnumLiteral eEnumLiteral : this.getELiterals()) {
            if (eEnumLiteral.getValue() != intValue) continue;
            return eEnumLiteral;
        }
        return null;
    }

    @Override
    public EEnumLiteral getEEnumLiteralByLiteral(String literal) {
        if (literal == null) {
            for (EEnumLiteral eEnumLiteral : this.getELiterals()) {
                if (eEnumLiteral.getLiteral() != null) continue;
                return eEnumLiteral;
            }
        } else {
            for (EEnumLiteral eEnumLiteral : this.getELiterals()) {
                if (!literal.equals(eEnumLiteral.getLiteral())) continue;
                return eEnumLiteral;
            }
        }
        return null;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 6, msgs);
            }
            case 9: {
                return ((InternalEList)this.getELiterals()).basicAdd(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
            case 6: {
                return this.eBasicSetContainer(null, 6, msgs);
            }
            case 7: {
                return ((InternalEList)this.getETypeParameters()).basicRemove(otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getELiterals()).basicRemove(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }
}

