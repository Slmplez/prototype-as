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
package autosar40.swcomponent.endtoendprotection.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.swcomponent.endtoendprotection.EndToEndProtection;
import autosar40.swcomponent.endtoendprotection.EndToEndProtectionSet;
import autosar40.swcomponent.endtoendprotection.EndtoendprotectionPackage;
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
public class EndToEndProtectionSetImpl
extends ARElementImpl
implements EndToEndProtectionSet {
    protected EList<EndToEndProtection> endToEndProtections;

    protected EndToEndProtectionSetImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EndtoendprotectionPackage.Literals.END_TO_END_PROTECTION_SET;
    }

    @Override
    public EList<EndToEndProtection> getEndToEndProtections() {
        if (this.endToEndProtections == null) {
            this.endToEndProtections = new EObjectContainmentWithInverseEList(EndToEndProtection.class, (InternalEObject)this, 21, 18);
        }
        return this.endToEndProtections;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getEndToEndProtections()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getEndToEndProtections()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getEndToEndProtections();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getEndToEndProtections().clear();
                this.getEndToEndProtections().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getEndToEndProtections().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.endToEndProtections != null && !this.endToEndProtections.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

