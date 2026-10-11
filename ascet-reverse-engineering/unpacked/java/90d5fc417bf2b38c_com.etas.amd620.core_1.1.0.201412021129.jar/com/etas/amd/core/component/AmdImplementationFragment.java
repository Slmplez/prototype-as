/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.commons.lang.StringUtils
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.amd.core.component;

import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationType;
import com.etas.amd620.core.ComponentImplementation.DocumentRoot;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentImplementation.ImplementationSetType;
import com.etas.amd620.core.ComponentImplementation.ImplementationVariantT;
import com.etas.amd620.core.ComponentImplementation.MethodImplementationT;
import org.apache.commons.lang.StringUtils;
import org.eclipse.emf.common.util.EList;

public class AmdImplementationFragment {
    public static final String DEFAULT_IMPL_NAME = "Impl";
    public static final String IMPL_MEM_CLASS_DEFAULT = "Default";
    private ComponentImplementationType compImpl = ComponentImplementationFactory.eINSTANCE.createComponentImplementationType();

    public AmdImplementationFragment(String name) {
        this.compImpl.setToolVersion("V6.2.0");
        this.compImpl.setSchemaVersion("6.2.0.2");
        this.createDefaultImplementationSet(name, true);
        this.createDefaultImplementationSet(DEFAULT_IMPL_NAME);
    }

    public DocumentRoot getDocumentRoot() {
        DocumentRoot implRoot = ComponentImplementationFactory.eINSTANCE.createDocumentRoot();
        implRoot.setComponentImplementation(this.compImpl);
        return implRoot;
    }

    public void addImplementation(ImplementationEntryT implEntry) {
        EList<ImplementationEntryT> implementationEntry = this.getImplSet(DEFAULT_IMPL_NAME).getImplementationEntry();
        implementationEntry.add((Object)implEntry);
    }

    public void setServiceFlag(boolean isService) {
        ImplementationSetType implSet = this.getImplSet(DEFAULT_IMPL_NAME);
        implSet.setIsService(isService);
    }

    public void setPackageName(String name) {
        ImplementationSetType implSet = this.getImplSet(DEFAULT_IMPL_NAME);
        implSet.setPackageName(name);
    }

    public void setImplementationForMethod(String name, String symbol) {
        MethodImplementationT methodImpl = ComponentImplementationFactory.eINSTANCE.createMethodImplementationT();
        methodImpl.setMethodName(name);
        methodImpl.setMemoryLocation(IMPL_MEM_CLASS_DEFAULT);
        methodImpl.setCacheLocking(CacheLockingType.AUTOMATIC);
        methodImpl.setInline(false);
        methodImpl.setUseFPU(true);
        methodImpl.setSymbol(symbol);
        ImplementationVariantT variantT = ComponentImplementationFactory.eINSTANCE.createImplementationVariantT();
        variantT.setName("default");
        variantT.setMethodImplementation(methodImpl);
        ImplementationEntryT implEntry = ComponentImplementationFactory.eINSTANCE.createImplementationEntryT();
        implEntry.setImplementationVariant(variantT);
        EList<ImplementationEntryT> implementationEntry = this.getImplSet(DEFAULT_IMPL_NAME).getImplementationEntry();
        implementationEntry.add((Object)implEntry);
    }

    private ImplementationSetType getImplSet(String implName) {
        for (ImplementationSetType set : this.compImpl.getImplementationSet()) {
            if (!StringUtils.equals((String)set.getName(), (String)implName)) continue;
            return set;
        }
        return null;
    }

    private void createDefaultImplementationSet(String implSetName, boolean classConfig) {
        ImplementationSetType implSetType = ComponentImplementationFactory.eINSTANCE.createImplementationSetType();
        implSetType.setName(implSetName);
        implSetType.setDefault(true);
        implSetType.setClassConfig(classConfig);
        implSetType.setMemoryLocation(IMPL_MEM_CLASS_DEFAULT);
        implSetType.setGenerateMethodBody(true);
        implSetType.setOptimizeMethodCalls(true);
        implSetType.setUsingServiceRoutines(false);
        implSetType.setHierarchicalGenerationForSM(true);
        implSetType.setOutlineMethodsSM(true);
        implSetType.setInlinePrivateMethodsSM(true);
        this.compImpl.getImplementationSet().add((Object)implSetType);
    }

    private void createDefaultImplementationSet(String implSetName) {
        this.createDefaultImplementationSet(implSetName, false);
    }
}

