/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.swclass.impl;

import autosar3x.commonstructure.swclass.SwCalprmPrototype;
import autosar3x.commonstructure.swclass.SwClassAttr;
import autosar3x.commonstructure.swclass.SwVariablePrototype;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
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
public class SwClassAttrImpl
extends ARObjectImpl
implements SwClassAttr {
    protected EList<SwVariablePrototype> swVariablePrototypes;
    protected EList<SwCalprmPrototype> swCalprmPrototypes;

    protected SwClassAttrImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwclassPackage.Literals.SW_CLASS_ATTR;
    }

    @Override
    public EList<SwVariablePrototype> getSwVariablePrototypes() {
        if (this.swVariablePrototypes == null) {
            this.swVariablePrototypes = new EObjectContainmentWithInverseEList(SwVariablePrototype.class, (InternalEObject)this, 4, 17);
        }
        return this.swVariablePrototypes;
    }

    @Override
    public EList<SwCalprmPrototype> getSwCalprmPrototypes() {
        if (this.swCalprmPrototypes == null) {
            this.swCalprmPrototypes = new EObjectContainmentWithInverseEList(SwCalprmPrototype.class, (InternalEObject)this, 5, 17);
        }
        return this.swCalprmPrototypes;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getSwVariablePrototypes()).basicAdd((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getSwCalprmPrototypes()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getSwVariablePrototypes()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getSwCalprmPrototypes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwVariablePrototypes();
            }
            case 5: {
                return this.getSwCalprmPrototypes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getSwVariablePrototypes().clear();
                this.getSwVariablePrototypes().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getSwCalprmPrototypes().clear();
                this.getSwCalprmPrototypes().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getSwVariablePrototypes().clear();
                return;
            }
            case 5: {
                this.getSwCalprmPrototypes().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.swVariablePrototypes != null && !this.swVariablePrototypes.isEmpty();
            }
            case 5: {
                return this.swCalprmPrototypes != null && !this.swCalprmPrototypes.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

