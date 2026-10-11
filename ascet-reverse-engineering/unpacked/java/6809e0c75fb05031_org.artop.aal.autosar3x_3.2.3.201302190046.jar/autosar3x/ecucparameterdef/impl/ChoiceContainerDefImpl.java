/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GParamConfContainerDef
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.ChoiceContainerDef;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.ParamConfContainerDef;
import autosar3x.ecucparameterdef.impl.ContainerDefImpl;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChoiceContainerDefImpl
extends ContainerDefImpl
implements ChoiceContainerDef {
    protected EList<ParamConfContainerDef> choices;

    protected ChoiceContainerDefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.CHOICE_CONTAINER_DEF;
    }

    @Override
    public EList<ParamConfContainerDef> getChoices() {
        if (this.choices == null) {
            this.choices = new EObjectContainmentWithInverseEList(ParamConfContainerDef.class, (InternalEObject)this, 20, 20);
        }
        return this.choices;
    }

    public EList<GParamConfContainerDef> gGetChoices() {
        EList<ParamConfContainerDef> untypedList = this.getChoices();
        return untypedList;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getChoices()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getChoices()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getChoices();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.getChoices().clear();
                this.getChoices().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.getChoices().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.choices != null && !this.choices.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

