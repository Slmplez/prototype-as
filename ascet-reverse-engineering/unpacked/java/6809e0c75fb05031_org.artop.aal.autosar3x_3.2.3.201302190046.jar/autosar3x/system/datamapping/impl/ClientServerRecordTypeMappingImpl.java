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
package autosar3x.system.datamapping.impl;

import autosar3x.system.datamapping.ClientServerRecordElementMapping;
import autosar3x.system.datamapping.ClientServerRecordTypeMapping;
import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.datamapping.impl.ClientServerCompositeTypeMappingImpl;
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
public class ClientServerRecordTypeMappingImpl
extends ClientServerCompositeTypeMappingImpl
implements ClientServerRecordTypeMapping {
    protected EList<ClientServerRecordElementMapping> recordElementMappings;

    protected ClientServerRecordTypeMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.CLIENT_SERVER_RECORD_TYPE_MAPPING;
    }

    @Override
    public EList<ClientServerRecordElementMapping> getRecordElementMappings() {
        if (this.recordElementMappings == null) {
            this.recordElementMappings = new EObjectContainmentWithInverseEList(ClientServerRecordElementMapping.class, (InternalEObject)this, 5, 4);
        }
        return this.recordElementMappings;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getRecordElementMappings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getRecordElementMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getRecordElementMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getRecordElementMappings().clear();
                this.getRecordElementMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.getRecordElementMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.recordElementMappings != null && !this.recordElementMappings.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

