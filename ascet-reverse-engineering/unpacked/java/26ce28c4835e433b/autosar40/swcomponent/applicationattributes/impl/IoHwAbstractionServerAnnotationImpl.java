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
package autosar40.swcomponent.applicationattributes.impl;

import autosar40.genericstructure.generaltemplateclasses.generalannotation.impl.GeneralAnnotationImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.applicationattributes.FilterDebouncingEnum;
import autosar40.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar40.swcomponent.applicationattributes.PulseTestEnum;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
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
public class IoHwAbstractionServerAnnotationImpl
extends GeneralAnnotationImpl
implements IoHwAbstractionServerAnnotation,
IReferringClass {
    protected MultidimensionalTime age;
    protected ArgumentDataPrototype argument;
    protected static final Double BSW_RESOLUTION_EDEFAULT = new Double(0.0);
    protected Double bswResolution = BSW_RESOLUTION_EDEFAULT;
    protected boolean bswResolutionESet;
    protected VariableDataPrototype dataElement;
    protected PortPrototype failureMonitoring;
    protected static final FilterDebouncingEnum FILTERING_DEBOUNCING_EDEFAULT = FilterDebouncingEnum.RAW_DATA;
    protected FilterDebouncingEnum filteringDebouncing = FILTERING_DEBOUNCING_EDEFAULT;
    protected boolean filteringDebouncingESet;
    protected static final PulseTestEnum PULSE_TEST_EDEFAULT = PulseTestEnum.DISABLE;
    protected PulseTestEnum pulseTest = PULSE_TEST_EDEFAULT;
    protected boolean pulseTestESet;

    protected IoHwAbstractionServerAnnotationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.IO_HW_ABSTRACTION_SERVER_ANNOTATION;
    }

    @Override
    public PortPrototype getPortPrototype() {
        if (this.eContainerFeatureID() != 9) {
            return null;
        }
        return (PortPrototype)this.eContainer();
    }

    public NotificationChain basicSetPortPrototype(PortPrototype newPortPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPortPrototype, 9, msgs);
        return msgs;
    }

    @Override
    public void setPortPrototype(PortPrototype newPortPrototype) {
        if (newPortPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 9 && newPortPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPortPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPortPrototype != null) {
                msgs = ((InternalEObject)newPortPrototype).eInverseAdd((InternalEObject)this, 22, PortPrototype.class, msgs);
            }
            if ((msgs = this.basicSetPortPrototype(newPortPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newPortPrototype, (Object)newPortPrototype));
        }
    }

    @Override
    public MultidimensionalTime getAge() {
        return this.age;
    }

    public NotificationChain basicSetAge(MultidimensionalTime newAge, NotificationChain msgs) {
        MultidimensionalTime oldAge = this.age;
        this.age = newAge;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldAge, (Object)newAge);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAge(MultidimensionalTime newAge) {
        if (newAge != this.age) {
            NotificationChain msgs = null;
            if (this.age != null) {
                msgs = ((InternalEObject)this.age).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newAge != null) {
                msgs = ((InternalEObject)newAge).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetAge(newAge, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newAge, (Object)newAge));
        }
    }

    @Override
    public ArgumentDataPrototype getArgument() {
        if (this.argument != null && this.argument.eIsProxy()) {
            InternalEObject oldArgument = (InternalEObject)this.argument;
            this.argument = (ArgumentDataPrototype)this.eResolveProxy(oldArgument);
            if (this.argument != oldArgument && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldArgument, (Object)this.argument));
            }
        }
        return this.argument;
    }

    public ArgumentDataPrototype basicGetArgument() {
        return this.argument;
    }

    @Override
    public void setArgument(ArgumentDataPrototype newArgument) {
        ArgumentDataPrototype oldArgument = this.argument;
        this.argument = newArgument;
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldArgument, (Object)this.argument));
        }
    }

    @Override
    public Double getBswResolution() {
        return this.bswResolution;
    }

    @Override
    public void setBswResolution(Double newBswResolution) {
        Double oldBswResolution = this.bswResolution;
        this.bswResolution = newBswResolution;
        boolean oldBswResolutionESet = this.bswResolutionESet;
        this.bswResolutionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldBswResolution, (Object)this.bswResolution, !oldBswResolutionESet));
        }
    }

    @Override
    public void unsetBswResolution() {
        Double oldBswResolution = this.bswResolution;
        boolean oldBswResolutionESet = this.bswResolutionESet;
        this.bswResolution = BSW_RESOLUTION_EDEFAULT;
        this.bswResolutionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldBswResolution, (Object)BSW_RESOLUTION_EDEFAULT, oldBswResolutionESet));
        }
    }

    @Override
    public boolean isSetBswResolution() {
        return this.bswResolutionESet;
    }

    @Override
    public VariableDataPrototype getDataElement() {
        if (this.dataElement != null && this.dataElement.eIsProxy()) {
            InternalEObject oldDataElement = (InternalEObject)this.dataElement;
            this.dataElement = (VariableDataPrototype)this.eResolveProxy(oldDataElement);
            if (this.dataElement != oldDataElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 13, (Object)oldDataElement, (Object)this.dataElement));
            }
        }
        return this.dataElement;
    }

    public VariableDataPrototype basicGetDataElement() {
        return this.dataElement;
    }

    @Override
    public void setDataElement(VariableDataPrototype newDataElement) {
        VariableDataPrototype oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        AutosarObjectUtil.setDest((EObject)this, (int)13, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldDataElement, (Object)this.dataElement));
        }
    }

    @Override
    public PortPrototype getFailureMonitoring() {
        if (this.failureMonitoring != null && this.failureMonitoring.eIsProxy()) {
            InternalEObject oldFailureMonitoring = (InternalEObject)this.failureMonitoring;
            this.failureMonitoring = (PortPrototype)this.eResolveProxy(oldFailureMonitoring);
            if (this.failureMonitoring != oldFailureMonitoring && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 14, (Object)oldFailureMonitoring, (Object)this.failureMonitoring));
            }
        }
        return this.failureMonitoring;
    }

    public PortPrototype basicGetFailureMonitoring() {
        return this.failureMonitoring;
    }

    @Override
    public void setFailureMonitoring(PortPrototype newFailureMonitoring) {
        PortPrototype oldFailureMonitoring = this.failureMonitoring;
        this.failureMonitoring = newFailureMonitoring;
        AutosarObjectUtil.setDest((EObject)this, (int)14, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldFailureMonitoring, (Object)this.failureMonitoring));
        }
    }

    @Override
    public FilterDebouncingEnum getFilteringDebouncing() {
        return this.filteringDebouncing;
    }

    @Override
    public void setFilteringDebouncing(FilterDebouncingEnum newFilteringDebouncing) {
        FilterDebouncingEnum oldFilteringDebouncing = this.filteringDebouncing;
        this.filteringDebouncing = newFilteringDebouncing == null ? FILTERING_DEBOUNCING_EDEFAULT : newFilteringDebouncing;
        boolean oldFilteringDebouncingESet = this.filteringDebouncingESet;
        this.filteringDebouncingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldFilteringDebouncing, (Object)this.filteringDebouncing, !oldFilteringDebouncingESet));
        }
    }

    @Override
    public void unsetFilteringDebouncing() {
        FilterDebouncingEnum oldFilteringDebouncing = this.filteringDebouncing;
        boolean oldFilteringDebouncingESet = this.filteringDebouncingESet;
        this.filteringDebouncing = FILTERING_DEBOUNCING_EDEFAULT;
        this.filteringDebouncingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldFilteringDebouncing, (Object)FILTERING_DEBOUNCING_EDEFAULT, oldFilteringDebouncingESet));
        }
    }

    @Override
    public boolean isSetFilteringDebouncing() {
        return this.filteringDebouncingESet;
    }

    @Override
    public PulseTestEnum getPulseTest() {
        return this.pulseTest;
    }

    @Override
    public void setPulseTest(PulseTestEnum newPulseTest) {
        PulseTestEnum oldPulseTest = this.pulseTest;
        this.pulseTest = newPulseTest == null ? PULSE_TEST_EDEFAULT : newPulseTest;
        boolean oldPulseTestESet = this.pulseTestESet;
        this.pulseTestESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldPulseTest, (Object)this.pulseTest, !oldPulseTestESet));
        }
    }

    @Override
    public void unsetPulseTest() {
        PulseTestEnum oldPulseTest = this.pulseTest;
        boolean oldPulseTestESet = this.pulseTestESet;
        this.pulseTest = PULSE_TEST_EDEFAULT;
        this.pulseTestESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldPulseTest, (Object)PULSE_TEST_EDEFAULT, oldPulseTestESet));
        }
    }

    @Override
    public boolean isSetPulseTest() {
        return this.pulseTestESet;
    }

    @Override
    public boolean _portsinterfaceisaclientserverinterfaceusingtheoperationsGETandSET(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPortPrototype((PortPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                return this.basicSetPortPrototype(null, msgs);
            }
            case 10: {
                return this.basicSetAge(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 9: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, PortPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getPortPrototype();
            }
            case 10: {
                return this.getAge();
            }
            case 11: {
                if (resolve) {
                    return this.getArgument();
                }
                return this.basicGetArgument();
            }
            case 12: {
                return this.getBswResolution();
            }
            case 13: {
                if (resolve) {
                    return this.getDataElement();
                }
                return this.basicGetDataElement();
            }
            case 14: {
                if (resolve) {
                    return this.getFailureMonitoring();
                }
                return this.basicGetFailureMonitoring();
            }
            case 15: {
                return this.getFilteringDebouncing();
            }
            case 16: {
                return this.getPulseTest();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 10: {
                this.setAge((MultidimensionalTime)newValue);
                return;
            }
            case 11: {
                this.setArgument((ArgumentDataPrototype)newValue);
                return;
            }
            case 12: {
                this.setBswResolution((Double)newValue);
                return;
            }
            case 13: {
                this.setDataElement((VariableDataPrototype)newValue);
                return;
            }
            case 14: {
                this.setFailureMonitoring((PortPrototype)newValue);
                return;
            }
            case 15: {
                this.setFilteringDebouncing((FilterDebouncingEnum)((Object)newValue));
                return;
            }
            case 16: {
                this.setPulseTest((PulseTestEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.setPortPrototype(null);
                return;
            }
            case 10: {
                this.setAge(null);
                return;
            }
            case 11: {
                this.setArgument(null);
                return;
            }
            case 12: {
                this.unsetBswResolution();
                return;
            }
            case 13: {
                this.setDataElement(null);
                return;
            }
            case 14: {
                this.setFailureMonitoring(null);
                return;
            }
            case 15: {
                this.unsetFilteringDebouncing();
                return;
            }
            case 16: {
                this.unsetPulseTest();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.getPortPrototype() != null;
            }
            case 10: {
                return this.age != null;
            }
            case 11: {
                return this.argument != null;
            }
            case 12: {
                return this.isSetBswResolution();
            }
            case 13: {
                return this.dataElement != null;
            }
            case 14: {
                return this.failureMonitoring != null;
            }
            case 15: {
                return this.isSetFilteringDebouncing();
            }
            case 16: {
                return this.isSetPulseTest();
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (bswResolution: ");
        if (this.bswResolutionESet) {
            result.append(this.bswResolution);
        } else {
            result.append("<unset>");
        }
        result.append(", filteringDebouncing: ");
        if (this.filteringDebouncingESet) {
            result.append((Object)this.filteringDebouncing);
        } else {
            result.append("<unset>");
        }
        result.append(", pulseTest: ");
        if (this.pulseTestESet) {
            result.append((Object)this.pulseTest);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

