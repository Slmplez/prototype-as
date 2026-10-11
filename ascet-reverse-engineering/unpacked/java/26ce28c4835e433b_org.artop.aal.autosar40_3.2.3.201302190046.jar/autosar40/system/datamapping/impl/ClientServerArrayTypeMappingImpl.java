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

import autosar40.system.datamapping.ClientServerArrayElementMapping;
import autosar40.system.datamapping.ClientServerArrayTypeMapping;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.impl.ClientServerCompositeTypeMappingImpl;
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
public class ClientServerArrayTypeMappingImpl
extends ClientServerCompositeTypeMappingImpl
implements ClientServerArrayTypeMapping {
    protected EList<ClientServerArrayElementMapping> arrayElementMappings;

    protected ClientServerArrayTypeMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.CLIENT_SERVER_ARRAY_TYPE_MAPPING;
    }

    @Override
    public EList<ClientServerArrayElementMapping> getArrayElementMappings() {
        if (this.arrayElementMappings == null) {
            this.arrayElementMappings = new EObjectContainmentWithInverseEList(ClientServerArrayElementMapping.class, (InternalEObject)this, 5, 4);
        }
        return this.arrayElementMappings;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getArrayElementMappings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getArrayElementMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getArrayElementMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
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
            case 5: {
                this.getArrayElementMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.arrayElementMappings != null && !this.arrayElementMappings.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

