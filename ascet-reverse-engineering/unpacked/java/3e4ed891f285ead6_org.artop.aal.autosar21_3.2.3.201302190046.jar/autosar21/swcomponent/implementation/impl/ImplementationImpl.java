/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GCode
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption
 *  gautosar.gswcomponents.gswcimplementation.GSwcImplementation
 *  gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreEList$UnmodifiableEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.swcomponent.implementation.impl;

import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.swcomponent.implementation.Code;
import autosar21.swcomponent.implementation.Compiler;
import autosar21.swcomponent.implementation.Dependency;
import autosar21.swcomponent.implementation.Implementation;
import autosar21.swcomponent.implementation.ImplementationPackage;
import autosar21.swcomponent.implementation.ImplementationProgrammingLanguageEnum;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.resources.ResourceConsumption;
import gautosar.gcommonstructure.gimplementation.GCode;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
import gautosar.gswcomponents.gswcimplementation.GSwcImplementation;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ImplementationImpl
extends ARElementImpl
implements Implementation,
IReferringClass {
    protected InternalBehavior behavior;
    protected Code codeDescriptor;
    protected static final String CODE_GENERATOR_EDEFAULT = "";
    protected String codeGenerator = "";
    protected boolean codeGeneratorESet;
    protected EList<Compiler> compilers;
    protected EList<Dependency> implementationDependencies;
    protected EList<ProcessingUnit> processors;
    protected static final ImplementationProgrammingLanguageEnum PROGRAMMING_LANGUAGE_EDEFAULT = ImplementationProgrammingLanguageEnum.C;
    protected ImplementationProgrammingLanguageEnum programmingLanguage = PROGRAMMING_LANGUAGE_EDEFAULT;
    protected boolean programmingLanguageESet;
    protected static final String REQUIRED_RTE_VENDOR_EDEFAULT = "";
    protected String requiredRTEVendor = "";
    protected boolean requiredRTEVendorESet;
    protected ResourceConsumption resourceConsumption;

    protected ImplementationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ImplementationPackage.Literals.IMPLEMENTATION;
    }

    public GResourceConsumption gGetResourceConsumption() {
        return this.getResourceConsumption();
    }

    public void gSetResourceConsumption(GResourceConsumption newGResourceConsumption) {
        this.setResourceConsumption((ResourceConsumption)newGResourceConsumption);
    }

    public EList<GCode> gGetCodeDescriptors() {
        Code code = this.getCodeDescriptor();
        if (code != null) {
            return new EcoreEList.UnmodifiableEList((InternalEObject)this, this.eClass().getEStructuralFeature("gCodeDescriptors"), 1, new Object[]{this.getCodeDescriptor()});
        }
        return new EcoreEList.UnmodifiableEList((InternalEObject)this, this.eClass().getEStructuralFeature("gCodeDescriptors"), 0, new Object[0]);
    }

    public GSwcInternalBehavior gGetBehavior() {
        return this.getBehavior();
    }

    public void gSetBehavior(GSwcInternalBehavior newGBehavior) {
        this.setBehavior((InternalBehavior)newGBehavior);
    }

    @Override
    public InternalBehavior getBehavior() {
        if (this.behavior != null && this.behavior.eIsProxy()) {
            InternalEObject oldBehavior = (InternalEObject)this.behavior;
            this.behavior = (InternalBehavior)this.eResolveProxy(oldBehavior);
            if (this.behavior != oldBehavior && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldBehavior, (Object)this.behavior));
            }
        }
        return this.behavior;
    }

    public InternalBehavior basicGetBehavior() {
        return this.behavior;
    }

    @Override
    public void setBehavior(InternalBehavior newBehavior) {
        InternalBehavior oldBehavior = this.behavior;
        this.behavior = newBehavior;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldBehavior, (Object)this.behavior));
        }
    }

    @Override
    public Code getCodeDescriptor() {
        return this.codeDescriptor;
    }

    public NotificationChain basicSetCodeDescriptor(Code newCodeDescriptor, NotificationChain msgs) {
        Code oldCodeDescriptor = this.codeDescriptor;
        this.codeDescriptor = newCodeDescriptor;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldCodeDescriptor, (Object)newCodeDescriptor);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCodeDescriptor(Code newCodeDescriptor) {
        if (newCodeDescriptor != this.codeDescriptor) {
            NotificationChain msgs = null;
            if (this.codeDescriptor != null) {
                msgs = ((InternalEObject)this.codeDescriptor).eInverseRemove((InternalEObject)this, 16, Code.class, msgs);
            }
            if (newCodeDescriptor != null) {
                msgs = ((InternalEObject)newCodeDescriptor).eInverseAdd((InternalEObject)this, 16, Code.class, msgs);
            }
            if ((msgs = this.basicSetCodeDescriptor(newCodeDescriptor, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newCodeDescriptor, (Object)newCodeDescriptor));
        }
    }

    @Override
    public String getCodeGenerator() {
        return this.codeGenerator;
    }

    @Override
    public void setCodeGenerator(String newCodeGenerator) {
        String oldCodeGenerator = this.codeGenerator;
        this.codeGenerator = newCodeGenerator;
        boolean oldCodeGeneratorESet = this.codeGeneratorESet;
        this.codeGeneratorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldCodeGenerator, (Object)this.codeGenerator, !oldCodeGeneratorESet));
        }
    }

    @Override
    public void unsetCodeGenerator() {
        String oldCodeGenerator = this.codeGenerator;
        boolean oldCodeGeneratorESet = this.codeGeneratorESet;
        this.codeGenerator = "";
        this.codeGeneratorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldCodeGenerator, (Object)"", oldCodeGeneratorESet));
        }
    }

    @Override
    public boolean isSetCodeGenerator() {
        return this.codeGeneratorESet;
    }

    @Override
    public EList<Compiler> getCompilers() {
        if (this.compilers == null) {
            this.compilers = new EObjectContainmentWithInverseEList(Compiler.class, (InternalEObject)this, 24, 16);
        }
        return this.compilers;
    }

    @Override
    public EList<Dependency> getImplementationDependencies() {
        if (this.implementationDependencies == null) {
            this.implementationDependencies = new EObjectContainmentWithInverseEList(Dependency.class, (InternalEObject)this, 25, 16);
        }
        return this.implementationDependencies;
    }

    @Override
    public EList<ProcessingUnit> getProcessors() {
        if (this.processors == null) {
            this.processors = new EObjectResolvingReferringEList(ProcessingUnit.class, (InternalEObject)this, 26);
        }
        return this.processors;
    }

    @Override
    public ImplementationProgrammingLanguageEnum getProgrammingLanguage() {
        return this.programmingLanguage;
    }

    @Override
    public void setProgrammingLanguage(ImplementationProgrammingLanguageEnum newProgrammingLanguage) {
        ImplementationProgrammingLanguageEnum oldProgrammingLanguage = this.programmingLanguage;
        this.programmingLanguage = newProgrammingLanguage == null ? PROGRAMMING_LANGUAGE_EDEFAULT : newProgrammingLanguage;
        boolean oldProgrammingLanguageESet = this.programmingLanguageESet;
        this.programmingLanguageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldProgrammingLanguage, (Object)this.programmingLanguage, !oldProgrammingLanguageESet));
        }
    }

    @Override
    public void unsetProgrammingLanguage() {
        ImplementationProgrammingLanguageEnum oldProgrammingLanguage = this.programmingLanguage;
        boolean oldProgrammingLanguageESet = this.programmingLanguageESet;
        this.programmingLanguage = PROGRAMMING_LANGUAGE_EDEFAULT;
        this.programmingLanguageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldProgrammingLanguage, (Object)PROGRAMMING_LANGUAGE_EDEFAULT, oldProgrammingLanguageESet));
        }
    }

    @Override
    public boolean isSetProgrammingLanguage() {
        return this.programmingLanguageESet;
    }

    @Override
    public String getRequiredRTEVendor() {
        return this.requiredRTEVendor;
    }

    @Override
    public void setRequiredRTEVendor(String newRequiredRTEVendor) {
        String oldRequiredRTEVendor = this.requiredRTEVendor;
        this.requiredRTEVendor = newRequiredRTEVendor;
        boolean oldRequiredRTEVendorESet = this.requiredRTEVendorESet;
        this.requiredRTEVendorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldRequiredRTEVendor, (Object)this.requiredRTEVendor, !oldRequiredRTEVendorESet));
        }
    }

    @Override
    public void unsetRequiredRTEVendor() {
        String oldRequiredRTEVendor = this.requiredRTEVendor;
        boolean oldRequiredRTEVendorESet = this.requiredRTEVendorESet;
        this.requiredRTEVendor = "";
        this.requiredRTEVendorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldRequiredRTEVendor, (Object)"", oldRequiredRTEVendorESet));
        }
    }

    @Override
    public boolean isSetRequiredRTEVendor() {
        return this.requiredRTEVendorESet;
    }

    @Override
    public ResourceConsumption getResourceConsumption() {
        return this.resourceConsumption;
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        ResourceConsumption oldResourceConsumption = this.resourceConsumption;
        this.resourceConsumption = newResourceConsumption;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldResourceConsumption, (Object)newResourceConsumption);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setResourceConsumption(ResourceConsumption newResourceConsumption) {
        if (newResourceConsumption != this.resourceConsumption) {
            NotificationChain msgs = null;
            if (this.resourceConsumption != null) {
                msgs = ((InternalEObject)this.resourceConsumption).eInverseRemove((InternalEObject)this, 16, ResourceConsumption.class, msgs);
            }
            if (newResourceConsumption != null) {
                msgs = ((InternalEObject)newResourceConsumption).eInverseAdd((InternalEObject)this, 16, ResourceConsumption.class, msgs);
            }
            if ((msgs = this.basicSetResourceConsumption(newResourceConsumption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)newResourceConsumption, (Object)newResourceConsumption));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.codeDescriptor != null) {
                    msgs = ((InternalEObject)this.codeDescriptor).eInverseRemove((InternalEObject)this, -23, null, msgs);
                }
                return this.basicSetCodeDescriptor((Code)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getCompilers()).basicAdd((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getImplementationDependencies()).basicAdd((Object)otherEnd, msgs);
            }
            case 29: {
                if (this.resourceConsumption != null) {
                    msgs = ((InternalEObject)this.resourceConsumption).eInverseRemove((InternalEObject)this, -30, null, msgs);
                }
                return this.basicSetResourceConsumption((ResourceConsumption)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetCodeDescriptor(null, msgs);
            }
            case 24: {
                return ((InternalEList)this.getCompilers()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getImplementationDependencies()).basicRemove((Object)otherEnd, msgs);
            }
            case 29: {
                return this.basicSetResourceConsumption(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetResourceConsumption();
            }
            case 19: {
                return this.gGetCodeDescriptors();
            }
            case 20: {
                return this.gGetBehavior();
            }
            case 21: {
                if (resolve) {
                    return this.getBehavior();
                }
                return this.basicGetBehavior();
            }
            case 22: {
                return this.getCodeDescriptor();
            }
            case 23: {
                return this.getCodeGenerator();
            }
            case 24: {
                return this.getCompilers();
            }
            case 25: {
                return this.getImplementationDependencies();
            }
            case 26: {
                return this.getProcessors();
            }
            case 27: {
                return this.getProgrammingLanguage();
            }
            case 28: {
                return this.getRequiredRTEVendor();
            }
            case 29: {
                return this.getResourceConsumption();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gSetResourceConsumption((GResourceConsumption)newValue);
                return;
            }
            case 19: {
                this.gGetCodeDescriptors().clear();
                this.gGetCodeDescriptors().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.gSetBehavior((GSwcInternalBehavior)newValue);
                return;
            }
            case 21: {
                this.setBehavior((InternalBehavior)newValue);
                return;
            }
            case 22: {
                this.setCodeDescriptor((Code)newValue);
                return;
            }
            case 23: {
                this.setCodeGenerator((String)newValue);
                return;
            }
            case 24: {
                this.getCompilers().clear();
                this.getCompilers().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getImplementationDependencies().clear();
                this.getImplementationDependencies().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getProcessors().clear();
                this.getProcessors().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.setProgrammingLanguage((ImplementationProgrammingLanguageEnum)((Object)newValue));
                return;
            }
            case 28: {
                this.setRequiredRTEVendor((String)newValue);
                return;
            }
            case 29: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gSetResourceConsumption(null);
                return;
            }
            case 19: {
                this.gGetCodeDescriptors().clear();
                return;
            }
            case 20: {
                this.gSetBehavior(null);
                return;
            }
            case 21: {
                this.setBehavior(null);
                return;
            }
            case 22: {
                this.setCodeDescriptor(null);
                return;
            }
            case 23: {
                this.unsetCodeGenerator();
                return;
            }
            case 24: {
                this.getCompilers().clear();
                return;
            }
            case 25: {
                this.getImplementationDependencies().clear();
                return;
            }
            case 26: {
                this.getProcessors().clear();
                return;
            }
            case 27: {
                this.unsetProgrammingLanguage();
                return;
            }
            case 28: {
                this.unsetRequiredRTEVendor();
                return;
            }
            case 29: {
                this.setResourceConsumption(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gGetResourceConsumption() != null;
            }
            case 19: {
                return !this.gGetCodeDescriptors().isEmpty();
            }
            case 20: {
                return this.gGetBehavior() != null;
            }
            case 21: {
                return this.behavior != null;
            }
            case 22: {
                return this.codeDescriptor != null;
            }
            case 23: {
                return this.isSetCodeGenerator();
            }
            case 24: {
                return this.compilers != null && !this.compilers.isEmpty();
            }
            case 25: {
                return this.implementationDependencies != null && !this.implementationDependencies.isEmpty();
            }
            case 26: {
                return this.processors != null && !this.processors.isEmpty();
            }
            case 27: {
                return this.isSetProgrammingLanguage();
            }
            case 28: {
                return this.isSetRequiredRTEVendor();
            }
            case 29: {
                return this.resourceConsumption != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GImplementation.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 7;
                }
                case 19: {
                    return 8;
                }
            }
            return -1;
        }
        if (baseClass == GSwcImplementation.class) {
            switch (derivedFeatureID) {
                case 20: {
                    return 9;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GImplementation.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 18;
                }
                case 8: {
                    return 19;
                }
            }
            return -1;
        }
        if (baseClass == GSwcImplementation.class) {
            switch (baseFeatureID) {
                case 9: {
                    return 20;
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
        result.append(" (codeGenerator: ");
        if (this.codeGeneratorESet) {
            result.append(this.codeGenerator);
        } else {
            result.append("<unset>");
        }
        result.append(", programmingLanguage: ");
        if (this.programmingLanguageESet) {
            result.append((Object)this.programmingLanguage);
        } else {
            result.append("<unset>");
        }
        result.append(", requiredRTEVendor: ");
        if (this.requiredRTEVendorESet) {
            result.append(this.requiredRTEVendor);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

