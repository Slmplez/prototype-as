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
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucMultilineStringParamDef;
import autosar40.ecucparameterdef.EcucMultilineStringParamDefConditional;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucAbstractStringParamDefImpl;
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
public class EcucMultilineStringParamDefImpl
extends EcucAbstractStringParamDefImpl
implements EcucMultilineStringParamDef {
    protected EList<EcucMultilineStringParamDefConditional> ecucMultilineStringParamDefVariants;

    protected EcucMultilineStringParamDefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_MULTILINE_STRING_PARAM_DEF;
    }

    @Override
    public EList<EcucMultilineStringParamDefConditional> getEcucMultilineStringParamDefVariants() {
        if (this.ecucMultilineStringParamDefVariants == null) {
            this.ecucMultilineStringParamDefVariants = new EObjectContainmentWithInverseEList(EcucMultilineStringParamDefConditional.class, (InternalEObject)this, 30, 8);
        }
        return this.ecucMultilineStringParamDefVariants;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 30: {
                return ((InternalEList)this.getEcucMultilineStringParamDefVariants()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 30: {
                return ((InternalEList)this.getEcucMultilineStringParamDefVariants()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 30: {
                return this.getEcucMultilineStringParamDefVariants();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 30: {
                this.getEcucMultilineStringParamDefVariants().clear();
                this.getEcucMultilineStringParamDefVariants().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 30: {
                this.getEcucMultilineStringParamDefVariants().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 30: {
                return this.ecucMultilineStringParamDefVariants != null && !this.ecucMultilineStringParamDefVariants.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

