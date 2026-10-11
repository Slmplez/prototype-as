/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea
 *  gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior
 *  gautosar.gswcomponents.gcomponents.GAtomicSwComponentType
 *  gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity
 *  gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior
 *  gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.swcomponent.internalbehavior.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.swcomponent.components.AtomicSoftwareComponentType;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.InternalbehaviorPackage;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveArea;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar21.swcomponent.internalbehavior.nvrammapping.NVRAMMapping;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerInstanceMemory;
import autosar21.swcomponent.internalbehavior.portapioptions.PortAPIOption;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.gswcomponents.gcomponents.GAtomicSwComponentType;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InternalBehaviorImpl
extends ARElementImpl
implements InternalBehavior,
IReferringClass {
    protected static final Boolean GSUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT = null;
    protected AtomicSoftwareComponentType component;
    protected EList<RTEEvent> events;
    protected EList<ExclusiveArea> exclusiveAreas;
    protected EList<InterRunnableVariable> interRunnableVariables;
    protected EList<NVRAMMapping> nvramMappings;
    protected EList<CalprmElementPrototype> perInstanceCalprms;
    protected EList<PerInstanceMemory> perInstanceMemories;
    protected EList<PortAPIOption> portAPIOptions;
    protected EList<RunnableEntity> runnables;
    protected EList<CalprmElementPrototype> sharedCalprms;
    protected static final Boolean SUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT = Boolean.FALSE;
    protected Boolean supportsMultipleInstantiation = SUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT;
    protected boolean supportsMultipleInstantiationESet;

    protected InternalBehaviorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InternalbehaviorPackage.Literals.INTERNAL_BEHAVIOR;
    }

    public EList<GExclusiveArea> gGetExclusiveAreas() {
        EList<ExclusiveArea> untypedList = this.getExclusiveAreas();
        return untypedList;
    }

    public EList<GRunnableEntity> gGetRunnables() {
        EList<RunnableEntity> untypedList = this.getRunnables();
        return untypedList;
    }

    public EList<GRTEEvent> gGetEvents() {
        EList<RTEEvent> untypedList = this.getEvents();
        return untypedList;
    }

    public EList<GPerInstanceMemory> gGetPerInstanceMemories() {
        EList<PerInstanceMemory> untypedList = this.getPerInstanceMemories();
        return untypedList;
    }

    public GAtomicSwComponentType gGetComponent() {
        return this.getComponent();
    }

    public void gSetComponent(GAtomicSwComponentType newGComponent) {
        this.setComponent((AtomicSoftwareComponentType)newGComponent);
    }

    public Boolean gGetSupportsMultipleInstantiation() {
        Boolean tgtFeatureValue = this.getSupportsMultipleInstantiation();
        return tgtFeatureValue;
    }

    public void gSetSupportsMultipleInstantiation(Boolean newGSupportsMultipleInstantiation) {
        this.setSupportsMultipleInstantiation(newGSupportsMultipleInstantiation);
    }

    public void gUnsetSupportsMultipleInstantiation() {
        this.unsetSupportsMultipleInstantiation();
    }

    public boolean gIsSetSupportsMultipleInstantiation() {
        return this.isSetSupportsMultipleInstantiation();
    }

    @Override
    public AtomicSoftwareComponentType getComponent() {
        if (this.component != null && this.component.eIsProxy()) {
            InternalEObject oldComponent = (InternalEObject)this.component;
            this.component = (AtomicSoftwareComponentType)this.eResolveProxy(oldComponent);
            if (this.component != oldComponent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldComponent, (Object)this.component));
            }
        }
        return this.component;
    }

    public AtomicSoftwareComponentType basicGetComponent() {
        return this.component;
    }

    @Override
    public void setComponent(AtomicSoftwareComponentType newComponent) {
        AtomicSoftwareComponentType oldComponent = this.component;
        this.component = newComponent;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldComponent, (Object)this.component));
        }
    }

    @Override
    public EList<RTEEvent> getEvents() {
        if (this.events == null) {
            this.events = new EObjectContainmentWithInverseEList(RTEEvent.class, (InternalEObject)this, 25, 17);
        }
        return this.events;
    }

    @Override
    public EList<ExclusiveArea> getExclusiveAreas() {
        if (this.exclusiveAreas == null) {
            this.exclusiveAreas = new EObjectContainmentWithInverseEList(ExclusiveArea.class, (InternalEObject)this, 26, 16);
        }
        return this.exclusiveAreas;
    }

    @Override
    public EList<InterRunnableVariable> getInterRunnableVariables() {
        if (this.interRunnableVariables == null) {
            this.interRunnableVariables = new EObjectContainmentWithInverseEList(InterRunnableVariable.class, (InternalEObject)this, 27, 20);
        }
        return this.interRunnableVariables;
    }

    @Override
    public EList<NVRAMMapping> getNVRAMMappings() {
        if (this.nvramMappings == null) {
            this.nvramMappings = new EObjectContainmentWithInverseEList(NVRAMMapping.class, (InternalEObject)this, 28, 16);
        }
        return this.nvramMappings;
    }

    @Override
    public EList<CalprmElementPrototype> getPerInstanceCalprms() {
        if (this.perInstanceCalprms == null) {
            this.perInstanceCalprms = new EObjectContainmentEList(CalprmElementPrototype.class, (InternalEObject)this, 29);
        }
        return this.perInstanceCalprms;
    }

    @Override
    public EList<PerInstanceMemory> getPerInstanceMemories() {
        if (this.perInstanceMemories == null) {
            this.perInstanceMemories = new EObjectContainmentWithInverseEList(PerInstanceMemory.class, (InternalEObject)this, 30, 18);
        }
        return this.perInstanceMemories;
    }

    @Override
    public EList<PortAPIOption> getPortAPIOptions() {
        if (this.portAPIOptions == null) {
            this.portAPIOptions = new EObjectContainmentWithInverseEList(PortAPIOption.class, (InternalEObject)this, 31, 4);
        }
        return this.portAPIOptions;
    }

    @Override
    public EList<RunnableEntity> getRunnables() {
        if (this.runnables == null) {
            this.runnables = new EObjectContainmentWithInverseEList(RunnableEntity.class, (InternalEObject)this, 32, 27);
        }
        return this.runnables;
    }

    @Override
    public EList<CalprmElementPrototype> getSharedCalprms() {
        if (this.sharedCalprms == null) {
            this.sharedCalprms = new EObjectContainmentEList(CalprmElementPrototype.class, (InternalEObject)this, 33);
        }
        return this.sharedCalprms;
    }

    @Override
    public Boolean getSupportsMultipleInstantiation() {
        return this.supportsMultipleInstantiation;
    }

    @Override
    public void setSupportsMultipleInstantiation(Boolean newSupportsMultipleInstantiation) {
        Boolean oldSupportsMultipleInstantiation = this.supportsMultipleInstantiation;
        this.supportsMultipleInstantiation = newSupportsMultipleInstantiation;
        boolean oldSupportsMultipleInstantiationESet = this.supportsMultipleInstantiationESet;
        this.supportsMultipleInstantiationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldSupportsMultipleInstantiation, (Object)this.supportsMultipleInstantiation, !oldSupportsMultipleInstantiationESet));
        }
    }

    @Override
    public void unsetSupportsMultipleInstantiation() {
        Boolean oldSupportsMultipleInstantiation = this.supportsMultipleInstantiation;
        boolean oldSupportsMultipleInstantiationESet = this.supportsMultipleInstantiationESet;
        this.supportsMultipleInstantiation = SUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT;
        this.supportsMultipleInstantiationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldSupportsMultipleInstantiation, (Object)SUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT, oldSupportsMultipleInstantiationESet));
        }
    }

    @Override
    public boolean isSetSupportsMultipleInstantiation() {
        return this.supportsMultipleInstantiationESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getEvents()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getExclusiveAreas()).basicAdd((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getInterRunnableVariables()).basicAdd((Object)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getNVRAMMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 30: {
                return ((InternalEList)this.getPerInstanceMemories()).basicAdd((Object)otherEnd, msgs);
            }
            case 31: {
                return ((InternalEList)this.getPortAPIOptions()).basicAdd((Object)otherEnd, msgs);
            }
            case 32: {
                return ((InternalEList)this.getRunnables()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getEvents()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getExclusiveAreas()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getInterRunnableVariables()).basicRemove((Object)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getNVRAMMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 29: {
                return ((InternalEList)this.getPerInstanceCalprms()).basicRemove((Object)otherEnd, msgs);
            }
            case 30: {
                return ((InternalEList)this.getPerInstanceMemories()).basicRemove((Object)otherEnd, msgs);
            }
            case 31: {
                return ((InternalEList)this.getPortAPIOptions()).basicRemove((Object)otherEnd, msgs);
            }
            case 32: {
                return ((InternalEList)this.getRunnables()).basicRemove((Object)otherEnd, msgs);
            }
            case 33: {
                return ((InternalEList)this.getSharedCalprms()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetExclusiveAreas();
            }
            case 19: {
                return this.gGetRunnables();
            }
            case 20: {
                return this.gGetEvents();
            }
            case 21: {
                return this.gGetPerInstanceMemories();
            }
            case 22: {
                return this.gGetComponent();
            }
            case 23: {
                return this.gGetSupportsMultipleInstantiation();
            }
            case 24: {
                if (resolve) {
                    return this.getComponent();
                }
                return this.basicGetComponent();
            }
            case 25: {
                return this.getEvents();
            }
            case 26: {
                return this.getExclusiveAreas();
            }
            case 27: {
                return this.getInterRunnableVariables();
            }
            case 28: {
                return this.getNVRAMMappings();
            }
            case 29: {
                return this.getPerInstanceCalprms();
            }
            case 30: {
                return this.getPerInstanceMemories();
            }
            case 31: {
                return this.getPortAPIOptions();
            }
            case 32: {
                return this.getRunnables();
            }
            case 33: {
                return this.getSharedCalprms();
            }
            case 34: {
                return this.getSupportsMultipleInstantiation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gGetExclusiveAreas().clear();
                this.gGetExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.gGetRunnables().clear();
                this.gGetRunnables().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.gGetEvents().clear();
                this.gGetEvents().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.gGetPerInstanceMemories().clear();
                this.gGetPerInstanceMemories().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.gSetComponent((GAtomicSwComponentType)newValue);
                return;
            }
            case 23: {
                this.gSetSupportsMultipleInstantiation((Boolean)newValue);
                return;
            }
            case 24: {
                this.setComponent((AtomicSoftwareComponentType)newValue);
                return;
            }
            case 25: {
                this.getEvents().clear();
                this.getEvents().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getExclusiveAreas().clear();
                this.getExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getInterRunnableVariables().clear();
                this.getInterRunnableVariables().addAll((Collection)newValue);
                return;
            }
            case 28: {
                this.getNVRAMMappings().clear();
                this.getNVRAMMappings().addAll((Collection)newValue);
                return;
            }
            case 29: {
                this.getPerInstanceCalprms().clear();
                this.getPerInstanceCalprms().addAll((Collection)newValue);
                return;
            }
            case 30: {
                this.getPerInstanceMemories().clear();
                this.getPerInstanceMemories().addAll((Collection)newValue);
                return;
            }
            case 31: {
                this.getPortAPIOptions().clear();
                this.getPortAPIOptions().addAll((Collection)newValue);
                return;
            }
            case 32: {
                this.getRunnables().clear();
                this.getRunnables().addAll((Collection)newValue);
                return;
            }
            case 33: {
                this.getSharedCalprms().clear();
                this.getSharedCalprms().addAll((Collection)newValue);
                return;
            }
            case 34: {
                this.setSupportsMultipleInstantiation((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gGetExclusiveAreas().clear();
                return;
            }
            case 19: {
                this.gGetRunnables().clear();
                return;
            }
            case 20: {
                this.gGetEvents().clear();
                return;
            }
            case 21: {
                this.gGetPerInstanceMemories().clear();
                return;
            }
            case 22: {
                this.gSetComponent(null);
                return;
            }
            case 23: {
                this.gUnsetSupportsMultipleInstantiation();
                return;
            }
            case 24: {
                this.setComponent(null);
                return;
            }
            case 25: {
                this.getEvents().clear();
                return;
            }
            case 26: {
                this.getExclusiveAreas().clear();
                return;
            }
            case 27: {
                this.getInterRunnableVariables().clear();
                return;
            }
            case 28: {
                this.getNVRAMMappings().clear();
                return;
            }
            case 29: {
                this.getPerInstanceCalprms().clear();
                return;
            }
            case 30: {
                this.getPerInstanceMemories().clear();
                return;
            }
            case 31: {
                this.getPortAPIOptions().clear();
                return;
            }
            case 32: {
                this.getRunnables().clear();
                return;
            }
            case 33: {
                this.getSharedCalprms().clear();
                return;
            }
            case 34: {
                this.unsetSupportsMultipleInstantiation();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return !this.gGetExclusiveAreas().isEmpty();
            }
            case 19: {
                return !this.gGetRunnables().isEmpty();
            }
            case 20: {
                return !this.gGetEvents().isEmpty();
            }
            case 21: {
                return !this.gGetPerInstanceMemories().isEmpty();
            }
            case 22: {
                return this.gGetComponent() != null;
            }
            case 23: {
                return this.gIsSetSupportsMultipleInstantiation();
            }
            case 24: {
                return this.component != null;
            }
            case 25: {
                return this.events != null && !this.events.isEmpty();
            }
            case 26: {
                return this.exclusiveAreas != null && !this.exclusiveAreas.isEmpty();
            }
            case 27: {
                return this.interRunnableVariables != null && !this.interRunnableVariables.isEmpty();
            }
            case 28: {
                return this.nvramMappings != null && !this.nvramMappings.isEmpty();
            }
            case 29: {
                return this.perInstanceCalprms != null && !this.perInstanceCalprms.isEmpty();
            }
            case 30: {
                return this.perInstanceMemories != null && !this.perInstanceMemories.isEmpty();
            }
            case 31: {
                return this.portAPIOptions != null && !this.portAPIOptions.isEmpty();
            }
            case 32: {
                return this.runnables != null && !this.runnables.isEmpty();
            }
            case 33: {
                return this.sharedCalprms != null && !this.sharedCalprms.isEmpty();
            }
            case 34: {
                return this.isSetSupportsMultipleInstantiation();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GInternalBehavior.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 6;
                }
            }
            return -1;
        }
        if (baseClass == GSwcInternalBehavior.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 7;
                }
                case 20: {
                    return 8;
                }
                case 21: {
                    return 9;
                }
                case 22: {
                    return 10;
                }
                case 23: {
                    return 11;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GInternalBehavior.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 18;
                }
            }
            return -1;
        }
        if (baseClass == GSwcInternalBehavior.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 19;
                }
                case 8: {
                    return 20;
                }
                case 9: {
                    return 21;
                }
                case 10: {
                    return 22;
                }
                case 11: {
                    return 23;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (supportsMultipleInstantiation: ");
        if (this.supportsMultipleInstantiationESet) {
            result.append(this.supportsMultipleInstantiation);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

