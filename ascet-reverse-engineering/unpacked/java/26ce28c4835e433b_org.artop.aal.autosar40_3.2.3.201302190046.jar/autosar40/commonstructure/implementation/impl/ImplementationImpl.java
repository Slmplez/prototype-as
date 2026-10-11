/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GCode
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.implementation.impl;

import autosar40.commonstructure.implementation.Code;
import autosar40.commonstructure.implementation.Compiler;
import autosar40.commonstructure.implementation.DependencyOnArtifact;
import autosar40.commonstructure.implementation.Implementation;
import autosar40.commonstructure.implementation.ImplementationPackage;
import autosar40.commonstructure.implementation.Linker;
import autosar40.commonstructure.implementation.ProgramminglanguageEnum;
import autosar40.commonstructure.measurementcalibrationsupport.McSupportData;
import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import gautosar.gcommonstructure.gimplementation.GCode;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ImplementationImpl
extends ARElementImpl
implements Implementation,
IReferringClass {
    protected EList<Code> codeDescriptors;
    protected EList<Compiler> compilers;
    protected EList<DependencyOnArtifact> generatedArtifacts;
    protected EList<HwElement> hwElements;
    protected EList<Linker> linkers;
    protected McSupportData mcSupport;
    protected static final ProgramminglanguageEnum PROGRAMMING_LANGUAGE_EDEFAULT = ProgramminglanguageEnum.C;
    protected ProgramminglanguageEnum programmingLanguage = PROGRAMMING_LANGUAGE_EDEFAULT;
    protected boolean programmingLanguageESet;
    protected EList<DependencyOnArtifact> requiredArtifacts;
    protected EList<DependencyOnArtifact> requiredGeneratorTools;
    protected ResourceConsumption resourceConsumption;
    protected static final String SW_VERSION_EDEFAULT = "";
    protected String swVersion = "";
    protected boolean swVersionESet;
    protected SwcBswMapping swcBswMapping;
    protected static final String USED_CODE_GENERATOR_EDEFAULT = "";
    protected String usedCodeGenerator = "";
    protected boolean usedCodeGeneratorESet;
    protected static final PositiveIntegerDatatype VENDOR_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype vendorId = VENDOR_ID_EDEFAULT.clone();
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
            this.codeDescriptors = new EObjectContainmentWithInverseEList(Code.class, (InternalEObject)this, 23, 18);
        }
        return this.codeDescriptors;
    }

    @Override
    public EList<Compiler> getCompilers() {
        if (this.compilers == null) {
            this.compilers = new EObjectContainmentWithInverseEList(Compiler.class, (InternalEObject)this, 24, 18);
        }
        return this.compilers;
    }

    @Override
    public EList<DependencyOnArtifact> getGeneratedArtifacts() {
        if (this.generatedArtifacts == null) {
            this.generatedArtifacts = new EObjectContainmentEList(DependencyOnArtifact.class, (InternalEObject)this, 25);
        }
        return this.generatedArtifacts;
    }

    @Override
    public EList<HwElement> getHwElements() {
        if (this.hwElements == null) {
            this.hwElements = new EObjectResolvingReferringEList(HwElement.class, (InternalEObject)this, 26);
        }
        return this.hwElements;
    }

    @Override
    public EList<Linker> getLinkers() {
        if (this.linkers == null) {
            this.linkers = new EObjectContainmentWithInverseEList(Linker.class, (InternalEObject)this, 27, 18);
        }
        return this.linkers;
    }

    @Override
    public McSupportData getMcSupport() {
        return this.mcSupport;
    }

    public NotificationChain basicSetMcSupport(McSupportData newMcSupport, NotificationChain msgs) {
        McSupportData oldMcSupport = this.mcSupport;
        this.mcSupport = newMcSupport;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldMcSupport, (Object)newMcSupport);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMcSupport(McSupportData newMcSupport) {
        if (newMcSupport != this.mcSupport) {
            NotificationChain msgs = null;
            if (this.mcSupport != null) {
                msgs = ((InternalEObject)this.mcSupport).eInverseRemove((InternalEObject)this, 4, McSupportData.class, msgs);
            }
            if (newMcSupport != null) {
                msgs = ((InternalEObject)newMcSupport).eInverseAdd((InternalEObject)this, 4, McSupportData.class, msgs);
            }
            if ((msgs = this.basicSetMcSupport(newMcSupport, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newMcSupport, (Object)newMcSupport));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldProgrammingLanguage, (Object)this.programmingLanguage, !oldProgrammingLanguageESet));
        }
    }

    @Override
    public void unsetProgrammingLanguage() {
        ProgramminglanguageEnum oldProgrammingLanguage = this.programmingLanguage;
        boolean oldProgrammingLanguageESet = this.programmingLanguageESet;
        this.programmingLanguage = PROGRAMMING_LANGUAGE_EDEFAULT;
        this.programmingLanguageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldProgrammingLanguage, (Object)PROGRAMMING_LANGUAGE_EDEFAULT, oldProgrammingLanguageESet));
        }
    }

    @Override
    public boolean isSetProgrammingLanguage() {
        return this.programmingLanguageESet;
    }

    @Override
    public EList<DependencyOnArtifact> getRequiredArtifacts() {
        if (this.requiredArtifacts == null) {
            this.requiredArtifacts = new EObjectContainmentEList(DependencyOnArtifact.class, (InternalEObject)this, 30);
        }
        return this.requiredArtifacts;
    }

    @Override
    public EList<DependencyOnArtifact> getRequiredGeneratorTools() {
        if (this.requiredGeneratorTools == null) {
            this.requiredGeneratorTools = new EObjectContainmentEList(DependencyOnArtifact.class, (InternalEObject)this, 31);
        }
        return this.requiredGeneratorTools;
    }

    @Override
    public ResourceConsumption getResourceConsumption() {
        return this.resourceConsumption;
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        ResourceConsumption oldResourceConsumption = this.resourceConsumption;
        this.resourceConsumption = newResourceConsumption;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldResourceConsumption, (Object)newResourceConsumption);
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
                msgs = ((InternalEObject)this.resourceConsumption).eInverseRemove((InternalEObject)this, -33, null, msgs);
            }
            if (newResourceConsumption != null) {
                msgs = ((InternalEObject)newResourceConsumption).eInverseAdd((InternalEObject)this, -33, null, msgs);
            }
            if ((msgs = this.basicSetResourceConsumption(newResourceConsumption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)newResourceConsumption, (Object)newResourceConsumption));
        }
    }

    @Override
    public String getSwVersion() {
        return this.swVersion;
    }

    @Override
    public void setSwVersion(String newSwVersion) {
        String oldSwVersion = this.swVersion;
        this.swVersion = newSwVersion;
        boolean oldSwVersionESet = this.swVersionESet;
        this.swVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldSwVersion, (Object)this.swVersion, !oldSwVersionESet));
        }
    }

    @Override
    public void unsetSwVersion() {
        String oldSwVersion = this.swVersion;
        boolean oldSwVersionESet = this.swVersionESet;
        this.swVersion = "";
        this.swVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldSwVersion, (Object)"", oldSwVersionESet));
        }
    }

    @Override
    public boolean isSetSwVersion() {
        return this.swVersionESet;
    }

    @Override
    public SwcBswMapping getSwcBswMapping() {
        if (this.swcBswMapping != null && this.swcBswMapping.eIsProxy()) {
            InternalEObject oldSwcBswMapping = (InternalEObject)this.swcBswMapping;
            this.swcBswMapping = (SwcBswMapping)this.eResolveProxy(oldSwcBswMapping);
            if (this.swcBswMapping != oldSwcBswMapping && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 34, (Object)oldSwcBswMapping, (Object)this.swcBswMapping));
            }
        }
        return this.swcBswMapping;
    }

    public SwcBswMapping basicGetSwcBswMapping() {
        return this.swcBswMapping;
    }

    @Override
    public void setSwcBswMapping(SwcBswMapping newSwcBswMapping) {
        SwcBswMapping oldSwcBswMapping = this.swcBswMapping;
        this.swcBswMapping = newSwcBswMapping;
        AutosarObjectUtil.setDest((EObject)this, (int)34, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldSwcBswMapping, (Object)this.swcBswMapping));
        }
    }

    @Override
    public String getUsedCodeGenerator() {
        return this.usedCodeGenerator;
    }

    @Override
    public void setUsedCodeGenerator(String newUsedCodeGenerator) {
        String oldUsedCodeGenerator = this.usedCodeGenerator;
        this.usedCodeGenerator = newUsedCodeGenerator;
        boolean oldUsedCodeGeneratorESet = this.usedCodeGeneratorESet;
        this.usedCodeGeneratorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldUsedCodeGenerator, (Object)this.usedCodeGenerator, !oldUsedCodeGeneratorESet));
        }
    }

    @Override
    public void unsetUsedCodeGenerator() {
        String oldUsedCodeGenerator = this.usedCodeGenerator;
        boolean oldUsedCodeGeneratorESet = this.usedCodeGeneratorESet;
        this.usedCodeGenerator = "";
        this.usedCodeGeneratorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldUsedCodeGenerator, (Object)"", oldUsedCodeGeneratorESet));
        }
    }

    @Override
    public boolean isSetUsedCodeGenerator() {
        return this.usedCodeGeneratorESet;
    }

    @Override
    public Long getVendorId() {
        return (Long)this.vendorId.basicGetValue();
    }

    @Override
    public void setVendorId(Long newVendorId) {
        Long oldVendorId = (Long)this.vendorId.basicGetValue();
        this.vendorId.basicSetValue((Object)newVendorId);
        boolean oldVendorIdESet = this.vendorIdESet;
        this.vendorIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldVendorId, (Object)newVendorId, !oldVendorIdESet));
        }
    }

    @Override
    public void unsetVendorId() {
        Long oldVendorId = (Long)this.vendorId.basicGetValue();
        boolean oldVendorIdESet = this.vendorIdESet;
        this.vendorId = VENDOR_ID_EDEFAULT.clone();
        this.vendorIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldVendorId, (Object)VENDOR_ID_EDEFAULT, oldVendorIdESet));
        }
    }

    @Override
    public boolean isSetVendorId() {
        return this.vendorIdESet;
    }

    @Override
    public PositiveIntegerDatatype getVendorIdData() {
        return this.vendorId.clone();
    }

    @Override
    public void setVendorIdData(PositiveIntegerDatatype newVendorId) {
        this.vendorId.setRadix((int)newVendorId.getRadix());
        this.vendorId.setNoOfDigits((int)newVendorId.getNoOfDigits());
        this.setVendorId(newVendorId.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getCodeDescriptors()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getCompilers()).basicAdd((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getLinkers()).basicAdd((Object)otherEnd, msgs);
            }
            case 28: {
                if (this.mcSupport != null) {
                    msgs = ((InternalEObject)this.mcSupport).eInverseRemove((InternalEObject)this, -29, null, msgs);
                }
                return this.basicSetMcSupport((McSupportData)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getCodeDescriptors()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getCompilers()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getGeneratedArtifacts()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getLinkers()).basicRemove((Object)otherEnd, msgs);
            }
            case 28: {
                return this.basicSetMcSupport(null, msgs);
            }
            case 30: {
                return ((InternalEList)this.getRequiredArtifacts()).basicRemove((Object)otherEnd, msgs);
            }
            case 31: {
                return ((InternalEList)this.getRequiredGeneratorTools()).basicRemove((Object)otherEnd, msgs);
            }
            case 32: {
                return this.basicSetResourceConsumption(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.gGetResourceConsumption();
            }
            case 22: {
                return this.gGetCodeDescriptors();
            }
            case 23: {
                return this.getCodeDescriptors();
            }
            case 24: {
                return this.getCompilers();
            }
            case 25: {
                return this.getGeneratedArtifacts();
            }
            case 26: {
                return this.getHwElements();
            }
            case 27: {
                return this.getLinkers();
            }
            case 28: {
                return this.getMcSupport();
            }
            case 29: {
                return this.getProgrammingLanguage();
            }
            case 30: {
                return this.getRequiredArtifacts();
            }
            case 31: {
                return this.getRequiredGeneratorTools();
            }
            case 32: {
                return this.getResourceConsumption();
            }
            case 33: {
                return this.getSwVersion();
            }
            case 34: {
                if (resolve) {
                    return this.getSwcBswMapping();
                }
                return this.basicGetSwcBswMapping();
            }
            case 35: {
                return this.getUsedCodeGenerator();
            }
            case 36: {
                return this.getVendorId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.gSetResourceConsumption((GResourceConsumption)newValue);
                return;
            }
            case 22: {
                this.gGetCodeDescriptors().clear();
                this.gGetCodeDescriptors().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getCodeDescriptors().clear();
                this.getCodeDescriptors().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getCompilers().clear();
                this.getCompilers().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getGeneratedArtifacts().clear();
                this.getGeneratedArtifacts().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getHwElements().clear();
                this.getHwElements().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getLinkers().clear();
                this.getLinkers().addAll((Collection)newValue);
                return;
            }
            case 28: {
                this.setMcSupport((McSupportData)newValue);
                return;
            }
            case 29: {
                this.setProgrammingLanguage((ProgramminglanguageEnum)((Object)newValue));
                return;
            }
            case 30: {
                this.getRequiredArtifacts().clear();
                this.getRequiredArtifacts().addAll((Collection)newValue);
                return;
            }
            case 31: {
                this.getRequiredGeneratorTools().clear();
                this.getRequiredGeneratorTools().addAll((Collection)newValue);
                return;
            }
            case 32: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
            case 33: {
                this.setSwVersion((String)newValue);
                return;
            }
            case 34: {
                this.setSwcBswMapping((SwcBswMapping)newValue);
                return;
            }
            case 35: {
                this.setUsedCodeGenerator((String)newValue);
                return;
            }
            case 36: {
                this.setVendorId((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.gSetResourceConsumption(null);
                return;
            }
            case 22: {
                this.gGetCodeDescriptors().clear();
                return;
            }
            case 23: {
                this.getCodeDescriptors().clear();
                return;
            }
            case 24: {
                this.getCompilers().clear();
                return;
            }
            case 25: {
                this.getGeneratedArtifacts().clear();
                return;
            }
            case 26: {
                this.getHwElements().clear();
                return;
            }
            case 27: {
                this.getLinkers().clear();
                return;
            }
            case 28: {
                this.setMcSupport(null);
                return;
            }
            case 29: {
                this.unsetProgrammingLanguage();
                return;
            }
            case 30: {
                this.getRequiredArtifacts().clear();
                return;
            }
            case 31: {
                this.getRequiredGeneratorTools().clear();
                return;
            }
            case 32: {
                this.setResourceConsumption(null);
                return;
            }
            case 33: {
                this.unsetSwVersion();
                return;
            }
            case 34: {
                this.setSwcBswMapping(null);
                return;
            }
            case 35: {
                this.unsetUsedCodeGenerator();
                return;
            }
            case 36: {
                this.unsetVendorId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.gGetResourceConsumption() != null;
            }
            case 22: {
                return !this.gGetCodeDescriptors().isEmpty();
            }
            case 23: {
                return this.codeDescriptors != null && !this.codeDescriptors.isEmpty();
            }
            case 24: {
                return this.compilers != null && !this.compilers.isEmpty();
            }
            case 25: {
                return this.generatedArtifacts != null && !this.generatedArtifacts.isEmpty();
            }
            case 26: {
                return this.hwElements != null && !this.hwElements.isEmpty();
            }
            case 27: {
                return this.linkers != null && !this.linkers.isEmpty();
            }
            case 28: {
                return this.mcSupport != null;
            }
            case 29: {
                return this.isSetProgrammingLanguage();
            }
            case 30: {
                return this.requiredArtifacts != null && !this.requiredArtifacts.isEmpty();
            }
            case 31: {
                return this.requiredGeneratorTools != null && !this.requiredGeneratorTools.isEmpty();
            }
            case 32: {
                return this.resourceConsumption != null;
            }
            case 33: {
                return this.isSetSwVersion();
            }
            case 34: {
                return this.swcBswMapping != null;
            }
            case 35: {
                return this.isSetUsedCodeGenerator();
            }
            case 36: {
                return this.isSetVendorId();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GImplementation.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 7;
                }
                case 22: {
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
                    return 21;
                }
                case 8: {
                    return 22;
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
        result.append(" (programmingLanguage: ");
        if (this.programmingLanguageESet) {
            result.append((Object)this.programmingLanguage);
        } else {
            result.append("<unset>");
        }
        result.append(", swVersion: ");
        if (this.swVersionESet) {
            result.append(this.swVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", usedCodeGenerator: ");
        if (this.usedCodeGeneratorESet) {
            result.append(this.usedCodeGenerator);
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

