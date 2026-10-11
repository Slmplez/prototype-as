/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 */
package autosar3x.swcomponent.components.impl;

import autosar3x.bswmodule.bswoverview.BswModuleDescription;
import autosar3x.ecuresource.HWElement;
import autosar3x.swcomponent.components.ComplexDeviceDriverComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.impl.AtomicSoftwareComponentTypeImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ComplexDeviceDriverComponentTypeImpl
extends AtomicSoftwareComponentTypeImpl
implements ComplexDeviceDriverComponentType,
IReferringClass {
    protected EList<BswModuleDescription> bswModuleDescriptions;
    protected EList<HWElement> hardwareElements;

    protected ComplexDeviceDriverComponentTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE;
    }

    @Override
    public EList<BswModuleDescription> getBswModuleDescriptions() {
        if (this.bswModuleDescriptions == null) {
            this.bswModuleDescriptions = new EObjectResolvingReferringEList(BswModuleDescription.class, (InternalEObject)this, 22);
        }
        return this.bswModuleDescriptions;
    }

    @Override
    public EList<HWElement> getHardwareElements() {
        if (this.hardwareElements == null) {
            this.hardwareElements = new EObjectResolvingReferringEList(HWElement.class, (InternalEObject)this, 23);
        }
        return this.hardwareElements;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getBswModuleDescriptions();
            }
            case 23: {
                return this.getHardwareElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.getBswModuleDescriptions().clear();
                this.getBswModuleDescriptions().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getHardwareElements().clear();
                this.getHardwareElements().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.getBswModuleDescriptions().clear();
                return;
            }
            case 23: {
                this.getHardwareElements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.bswModuleDescriptions != null && !this.bswModuleDescriptions.isEmpty();
            }
            case 23: {
                return this.hardwareElements != null && !this.hardwareElements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

