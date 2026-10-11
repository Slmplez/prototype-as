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
package autosar40.swcomponent.components.impl;

import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.NvBlockSwComponentType;
import autosar40.swcomponent.components.impl.AtomicSwComponentTypeImpl;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
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
public class NvBlockSwComponentTypeImpl
extends AtomicSwComponentTypeImpl
implements NvBlockSwComponentType {
    protected EList<NvBlockDescriptor> nvBlockDescriptors;

    protected NvBlockSwComponentTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.NV_BLOCK_SW_COMPONENT_TYPE;
    }

    @Override
    public EList<NvBlockDescriptor> getNvBlockDescriptors() {
        if (this.nvBlockDescriptors == null) {
            this.nvBlockDescriptors = new EObjectContainmentWithInverseEList(NvBlockDescriptor.class, (InternalEObject)this, 28, 18);
        }
        return this.nvBlockDescriptors;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                return ((InternalEList)this.getNvBlockDescriptors()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                return ((InternalEList)this.getNvBlockDescriptors()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 28: {
                return this.getNvBlockDescriptors();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 28: {
                this.getNvBlockDescriptors().clear();
                this.getNvBlockDescriptors().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 28: {
                this.getNvBlockDescriptors().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 28: {
                return this.nvBlockDescriptors != null && !this.nvBlockDescriptors.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

