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
package autosar40.system.datamapping.impl;

import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.SenderRecArrayElementMapping;
import autosar40.system.datamapping.SenderRecArrayTypeMapping;
import autosar40.system.datamapping.impl.SenderRecCompositeTypeMappingImpl;
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
public class SenderRecArrayTypeMappingImpl
extends SenderRecCompositeTypeMappingImpl
implements SenderRecArrayTypeMapping {
    protected EList<SenderRecArrayElementMapping> arrayElementMappings;

    protected SenderRecArrayTypeMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.SENDER_REC_ARRAY_TYPE_MAPPING;
    }

    @Override
    public EList<SenderRecArrayElementMapping> getArrayElementMappings() {
        if (this.arrayElementMappings == null) {
            this.arrayElementMappings = new EObjectContainmentWithInverseEList(SenderRecArrayElementMapping.class, (InternalEObject)this, 4, 4);
        }
        return this.arrayElementMappings;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getArrayElementMappings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getArrayElementMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getArrayElementMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getArrayElementMappings().clear();
                this.getArrayElementMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getArrayElementMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.arrayElementMappings != null && !this.arrayElementMappings.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

