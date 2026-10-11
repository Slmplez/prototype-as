/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.resourceconsumption.executiontime.impl;

import autosar40.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import java.util.Map;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MemorySectionLocationImpl
extends ARObjectImpl
implements MemorySectionLocation,
IReferringClass {
    protected HwElement providedMemory;
    protected MemorySection softwareMemorySection;

    protected MemorySectionLocationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.MEMORY_SECTION_LOCATION;
    }

    @Override
    public ExecutionTime getExecutionTime() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ExecutionTime)this.eContainer();
    }

    public NotificationChain basicSetExecutionTime(ExecutionTime newExecutionTime, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newExecutionTime, 4, msgs);
        return msgs;
    }

    @Override
    public void setExecutionTime(ExecutionTime newExecutionTime) {
        if (newExecutionTime != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newExecutionTime != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newExecutionTime)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newExecutionTime != null) {
                msgs = ((InternalEObject)newExecutionTime).eInverseAdd((InternalEObject)this, 24, ExecutionTime.class, msgs);
            }
            if ((msgs = this.basicSetExecutionTime(newExecutionTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newExecutionTime, (Object)newExecutionTime));
        }
    }

    @Override
    public HwElement getProvidedMemory() {
        if (this.providedMemory != null && this.providedMemory.eIsProxy()) {
            InternalEObject oldProvidedMemory = (InternalEObject)this.providedMemory;
            this.providedMemory = (HwElement)this.eResolveProxy(oldProvidedMemory);
            if (this.providedMemory != oldProvidedMemory && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldProvidedMemory, (Object)this.providedMemory));
            }
        }
        return this.providedMemory;
    }

    public HwElement basicGetProvidedMemory() {
        return this.providedMemory;
    }

    @Override
    public void setProvidedMemory(HwElement newProvidedMemory) {
        HwElement oldProvidedMemory = this.providedMemory;
        this.providedMemory = newProvidedMemory;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldProvidedMemory, (Object)this.providedMemory));
        }
    }

    @Override
    public MemorySection getSoftwareMemorySection() {
        if (this.softwareMemorySection != null && this.softwareMemorySection.eIsProxy()) {
            InternalEObject oldSoftwareMemorySection = (InternalEObject)this.softwareMemorySection;
            this.softwareMemorySection = (MemorySection)this.eResolveProxy(oldSoftwareMemorySection);
            if (this.softwareMemorySection != oldSoftwareMemorySection && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldSoftwareMemorySection, (Object)this.softwareMemorySection));
            }
        }
        return this.softwareMemorySection;
    }

    public MemorySection basicGetSoftwareMemorySection() {
        return this.softwareMemorySection;
    }

    @Override
    public void setSoftwareMemorySection(MemorySection newSoftwareMemorySection) {
        MemorySection oldSoftwareMemorySection = this.softwareMemorySection;
        this.softwareMemorySection = newSoftwareMemorySection;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSoftwareMemorySection, (Object)this.softwareMemorySection));
        }
    }

    @Override
    public boolean extimeecuhardwareMemorySectionecu(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetExecutionTime((ExecutionTime)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetExecutionTime(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, ExecutionTime.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getExecutionTime();
            }
            case 5: {
                if (resolve) {
                    return this.getProvidedMemory();
                }
                return this.basicGetProvidedMemory();
            }
            case 6: {
                if (resolve) {
                    return this.getSoftwareMemorySection();
                }
                return this.basicGetSoftwareMemorySection();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setExecutionTime((ExecutionTime)newValue);
                return;
            }
            case 5: {
                this.setProvidedMemory((HwElement)newValue);
                return;
            }
            case 6: {
                this.setSoftwareMemorySection((MemorySection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setExecutionTime(null);
                return;
            }
            case 5: {
                this.setProvidedMemory(null);
                return;
            }
            case 6: {
                this.setSoftwareMemorySection(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getExecutionTime() != null;
            }
            case 5: {
                return this.providedMemory != null;
            }
            case 6: {
                return this.softwareMemorySection != null;
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

