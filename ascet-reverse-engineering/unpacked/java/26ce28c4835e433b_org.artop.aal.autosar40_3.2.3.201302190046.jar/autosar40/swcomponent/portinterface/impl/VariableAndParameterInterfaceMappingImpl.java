/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.swcomponent.portinterface.DataPrototypeMapping;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.VariableAndParameterInterfaceMapping;
import autosar40.swcomponent.portinterface.impl.PortInterfaceMappingImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class VariableAndParameterInterfaceMappingImpl
extends PortInterfaceMappingImpl
implements VariableAndParameterInterfaceMapping {
    protected EList<DataPrototypeMapping> dataMappings;

    protected VariableAndParameterInterfaceMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.VARIABLE_AND_PARAMETER_INTERFACE_MAPPING;
    }

    @Override
    public EList<DataPrototypeMapping> getDataMappings() {
        if (this.dataMappings == null) {
            this.dataMappings = new EObjectContainmentEList(DataPrototypeMapping.class, (InternalEObject)this, 19);
        }
        return this.dataMappings;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getDataMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getDataMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getDataMappings().clear();
                this.getDataMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getDataMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.dataMappings != null && !this.dataMappings.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

