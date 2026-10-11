/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GCode
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption
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
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.implementation.impl;

import autosar3x.commonstructure.implementation.Code;
import autosar3x.commonstructure.implementation.Compiler;
import autosar3x.commonstructure.implementation.Dependency;
import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.Linker;
import autosar3x.commonstructure.implementation.ProgramminglanguageEnum;
import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.ecuresource.processingunit.ProcessingUnit;
import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import gautosar.gcommonstructure.gimplementation.GCode;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
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
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ImplementationImpl
extends ARElementImpl
implements Implementation,
IReferringClass {
    protected EList<Code> codeDescriptors;
    protected static final String CODE_GENERATOR_EDEFAULT = "";
    protected String codeGenerator = "";
    protected boolean codeGeneratorESet;
    protected EList<Compiler> compilers;
    protected EList<Dependency> implementationDependencies;
    protected EList<Linker> linkers;
    protected EList<ProcessingUnit> processors;
    protected static final ProgramminglanguageEnum PROGRAMMING_LANGUAGE_EDEFAULT = ProgramminglanguageEnum.C;
    protected ProgramminglanguageEnum programmingLanguage = PROGRAMMING_LANGUAGE_EDEFAULT;
    protected boolean programmingLanguageESet;
    protected ResourceConsumption resourceConsumption;
    protected static final Integer SW_MAJOR_VERSION_EDEFAULT = new Integer(0);
    protected Integer swMajorVersion = SW_MAJOR_VERSION_EDEFAULT;
    protected boolean swMajorVersionESet;
    protected static final Integer SW_MINOR_VERSION_EDEFAULT = new Integer(0);
    protected Integer swMinorVersion = SW_MINOR_VERSION_EDEFAULT;
    protected boolean swMinorVersionESet;
    protected static final Integer SW_PATCH_VERSION_EDEFAULT = new Integer(0);
    protected Integer swPatchVersion = SW_PATCH_VERSION_EDEFAULT;
    protected boolean swPatchVersionESet;
    protected static final Integer VENDOR_ID_EDEFAULT = new Integer(0);
    protected Integer vendorId = VENDOR_ID_EDEFAULT;
    protected boolean vendorIdESet;

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
        EList<Code> untypedList = this.getCodeDescriptors();
        return untypedList;
    }

    @Override
    public EList<Code> getCodeDescriptors() {
        if (this.codeDescriptors == null) {
            this.codeDescriptors = new EObjectContainmentWithInverseEList(Code.class, (InternalEObject)this, 21, 17);
        }
        return this.codeDescriptors;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldCodeGenerator, (Object)this.codeGenerator, !oldCodeGeneratorESet));
        }
    }

    @Override
    public void unsetCodeGenerator() {
        String oldCodeGenerator = this.codeGenerator;
        boolean oldCodeGeneratorESet = this.codeGeneratorESet;
        this.codeGenerator = CODE_GENERATOR_EDEFAULT;
        this.codeGeneratorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldCodeGenerator, (Object)CODE_GENERATOR_EDEFAULT, oldCodeGeneratorESet));
        }
    }

    @Override
    public boolean isSetCodeGenerator() {
        return this.codeGeneratorESet;
    }

    @Override
    public EList<Compiler> getCompilers() {
        if (this.compilers == null) {
            this.compilers = new EObjectContainmentWithInverseEList(Compiler.class, (InternalEObject)this, 23, 17);
        }
        return this.compilers;
    }

    @Override
    public EList<Dependency> getImplementationDependencies() {
        if (this.implementationDependencies == null) {
            this.implementationDependencies = new EObjectContainmentWithInverseEList(Dependency.class, (InternalEObject)this, 24, 17);
        }
        return this.implementationDependencies;
    }

    @Override
    public EList<Linker> getLinkers() {
        if (this.linkers == null) {
            this.linkers = new EObjectContainmentWithInverseEList(Linker.class, (InternalEObject)this, 25, 17);
        }
        return this.linkers;
    }

    @Override
    public EList<ProcessingUnit> getProcessors() {
        if (this.processors == null) {
            this.processors = new EObjectResolvingReferringEList(ProcessingUnit.class, (InternalEObject)this, 26);
        }
        return this.processors;
    }

    @Override
    public ProgramminglanguageEnum getProgrammingLanguage() {
        return this.programmingLanguage;
    }

    @Override
    public void setProgrammingLanguage(ProgramminglanguageEnum newProgrammingLanguage) {
        ProgramminglanguageEnum oldProgrammingLanguage = this.programmingLanguage;
        this.programmingLanguage = newProgrammingLanguage == null ? PROGRAMMING_LANGUAGE_EDEFAULT : newProgrammingLanguage;
        boolean oldProgrammingLanguageESet = this.programmingLanguageESet;
        this.programmingLanguageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldProgrammingLanguage, (Object)this.programmingLanguage, !oldProgrammingLanguageESet));
        }
    }

    @Override
    public void unsetProgrammingLanguage() {
        ProgramminglanguageEnum oldProgrammingLanguage = this.programmingLanguage;
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
    public ResourceConsumption getResourceConsumption() {
        return this.resourceConsumption;
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        ResourceConsumption oldResourceConsumption = this.resourceConsumption;
        this.resourceConsumption = newResourceConsumption;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldResourceConsumption, (Object)newResourceConsumption);
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
                msgs = ((InternalEObject)this.resourceConsumption).eInverseRemove((InternalEObject)this, -29, null, msgs);
            }
            if (newResourceConsumption != null) {
                msgs = ((InternalEObject)newResourceConsumption).eInverseAdd((InternalEObject)this, -29, null, msgs);
            }
            if ((msgs = this.basicSetResourceConsumption(newResourceConsumption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newResourceConsumption, (Object)newResourceConsumption));
        }
    }

    @Override
    public Integer getSwMajorVersion() {
        return this.swMajorVersion;
    }

    @Override
    public void setSwMajorVersion(Integer newSwMajorVersion) {
        Integer oldSwMajorVersion = this.swMajorVersion;
        this.swMajorVersion = newSwMajorVersion;
        boolean oldSwMajorVersionESet = this.swMajorVersionESet;
        this.swMajorVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldSwMajorVersion, (Object)this.swMajorVersion, !oldSwMajorVersionESet));
        }
    }

    @Override
    public void unsetSwMajorVersion() {
        Integer oldSwMajorVersion = this.swMajorVersion;
        boolean oldSwMajorVersionESet = this.swMajorVersionESet;
        this.swMajorVersion = SW_MAJOR_VERSION_EDEFAULT;
        this.swMajorVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldSwMajorVersion, (Object)SW_MAJOR_VERSION_EDEFAULT, oldSwMajorVersionESet));
        }
    }

    @Override
    public boolean isSetSwMajorVersion() {
        return this.swMajorVersionESet;
    }

    @Override
    public Integer getSwMinorVersion() {
        return this.swMinorVersion;
    }

    @Override
    public void setSwMinorVersion(Integer newSwMinorVersion) {
        Integer oldSwMinorVersion = this.swMinorVersion;
        this.swMinorVersion = newSwMinorVersion;
        boolean oldSwMinorVersionESet = this.swMinorVersionESet;
        this.swMinorVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldSwMinorVersion, (Object)this.swMinorVersion, !oldSwMinorVersionESet));
        }
    }

    @Override
    public void unsetSwMinorVersion() {
        Integer oldSwMinorVersion = this.swMinorVersion;
        boolean oldSwMinorVersionESet = this.swMinorVersionESet;
        this.swMinorVersion = SW_MINOR_VERSION_EDEFAULT;
        this.swMinorVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldSwMinorVersion, (Object)SW_MINOR_VERSION_EDEFAULT, oldSwMinorVersionESet));
        }
    }

    @Override
    public boolean isSetSwMinorVersion() {
        return this.swMinorVersionESet;
    }

    @Override
    public Integer getSwPatchVersion() {
        return this.swPatchVersion;
    }

    @Override
    public void setSwPatchVersion(Integer newSwPatchVersion) {
        Integer oldSwPatchVersion = this.swPatchVersion;
        this.swPatchVersion = newSwPatchVersion;
        boolean oldSwPatchVersionESet = this.swPatchVersionESet;
        this.swPatchVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldSwPatchVersion, (Object)this.swPatchVersion, !oldSwPatchVersionESet));
        }
    }

    @Override
    public void unsetSwPatchVersion() {
        Integer oldSwPatchVersion = this.swPatchVersion;
        boolean oldSwPatchVersionESet = this.swPatchVersionESet;
        this.swPatchVersion = SW_PATCH_VERSION_EDEFAULT;
        this.swPatchVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldSwPatchVersion, (Object)SW_PATCH_VERSION_EDEFAULT, oldSwPatchVersionESet));
        }
    }

    @Override
    public boolean isSetSwPatchVersion() {
        return this.swPatchVersionESet;
    }

    @Override
    public Integer getVendorId() {
        return this.vendorId;
    }

    @Override
    public void setVendorId(Integer newVendorId) {
        Integer oldVendorId = this.vendorId;
        this.vendorId = newVendorId;
        boolean oldVendorIdESet = this.vendorIdESet;
        this.vendorIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldVendorId, (Object)this.vendorId, !oldVendorIdESet));
        }
    }

    @Override
    public void unsetVendorId() {
        Integer oldVendorId = this.vendorId;
        boolean oldVendorIdESet = this.vendorIdESet;
        this.vendorId = VENDOR_ID_EDEFAULT;
        this.vendorIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldVendorId, (Object)VENDOR_ID_EDEFAULT, oldVendorIdESet));
        }
    }

    @Override
    public boolean isSetVendorId() {
        return this.vendorIdESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getCodeDescriptors()).basicAdd((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getCompilers()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getImplementationDependencies()).basicAdd((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getLinkers()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getCodeDescriptors()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getCompilers()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getImplementationDependencies()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getLinkers()).basicRemove((Object)otherEnd, msgs);
            }
            case 28: {
                return this.basicSetResourceConsumption(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetResourceConsumption();
            }
            case 20: {
                return this.gGetCodeDescriptors();
            }
            case 21: {
                return this.getCodeDescriptors();
            }
            case 22: {
                return this.getCodeGenerator();
            }
            case 23: {
                return this.getCompilers();
            }
            case 24: {
                return this.getImplementationDependencies();
            }
            case 25: {
                return this.getLinkers();
            }
            case 26: {
                return this.getProcessors();
            }
            case 27: {
                return this.getProgrammingLanguage();
            }
            case 28: {
                return this.getResourceConsumption();
            }
            case 29: {
                return this.getSwMajorVersion();
            }
            case 30: {
                return this.getSwMinorVersion();
            }
            case 31: {
                return this.getSwPatchVersion();
            }
            case 32: {
                return this.getVendorId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gSetResourceConsumption((GResourceConsumption)newValue);
                return;
            }
            case 20: {
                this.gGetCodeDescriptors().clear();
                this.gGetCodeDescriptors().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getCodeDescriptors().clear();
                this.getCodeDescriptors().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setCodeGenerator((String)newValue);
                return;
            }
            case 23: {
                this.getCompilers().clear();
                this.getCompilers().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getImplementationDependencies().clear();
                this.getImplementationDependencies().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getLinkers().clear();
                this.getLinkers().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getProcessors().clear();
                this.getProcessors().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.setProgrammingLanguage((ProgramminglanguageEnum)((Object)newValue));
                return;
            }
            case 28: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
            case 29: {
                this.setSwMajorVersion((Integer)newValue);
                return;
            }
            case 30: {
                this.setSwMinorVersion((Integer)newValue);
                return;
            }
            case 31: {
                this.setSwPatchVersion((Integer)newValue);
                return;
            }
            case 32: {
                this.setVendorId((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gSetResourceConsumption(null);
                return;
            }
            case 20: {
                this.gGetCodeDescriptors().clear();
                return;
            }
            case 21: {
                this.getCodeDescriptors().clear();
                return;
            }
            case 22: {
                this.unsetCodeGenerator();
                return;
            }
            case 23: {
                this.getCompilers().clear();
                return;
            }
            case 24: {
                this.getImplementationDependencies().clear();
                return;
            }
            case 25: {
                this.getLinkers().clear();
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
                this.setResourceConsumption(null);
                return;
            }
            case 29: {
                this.unsetSwMajorVersion();
                return;
            }
            case 30: {
                this.unsetSwMinorVersion();
                return;
            }
            case 31: {
                this.unsetSwPatchVersion();
                return;
            }
            case 32: {
                this.unsetVendorId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.gGetResourceConsumption() != null;
            }
            case 20: {
                return !this.gGetCodeDescriptors().isEmpty();
            }
            case 21: {
                return this.codeDescriptors != null && !this.codeDescriptors.isEmpty();
            }
            case 22: {
                return this.isSetCodeGenerator();
            }
            case 23: {
                return this.compilers != null && !this.compilers.isEmpty();
            }
            case 24: {
                return this.implementationDependencies != null && !this.implementationDependencies.isEmpty();
            }
            case 25: {
                return this.linkers != null && !this.linkers.isEmpty();
            }
            case 26: {
                return this.processors != null && !this.processors.isEmpty();
            }
            case 27: {
                return this.isSetProgrammingLanguage();
            }
            case 28: {
                return this.resourceConsumption != null;
            }
            case 29: {
                return this.isSetSwMajorVersion();
            }
            case 30: {
                return this.isSetSwMinorVersion();
            }
            case 31: {
                return this.isSetSwPatchVersion();
            }
            case 32: {
                return this.isSetVendorId();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GImplementation.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 7;
                }
                case 20: {
                    return 8;
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
                    return 19;
                }
                case 8: {
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
        result.append(", swMajorVersion: ");
        if (this.swMajorVersionESet) {
            result.append(this.swMajorVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", swMinorVersion: ");
        if (this.swMinorVersionESet) {
            result.append(this.swMinorVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", swPatchVersion: ");
        if (this.swPatchVersionESet) {
            result.append(this.swPatchVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", vendorId: ");
        if (this.vendorIdESet) {
            result.append(this.vendorId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

