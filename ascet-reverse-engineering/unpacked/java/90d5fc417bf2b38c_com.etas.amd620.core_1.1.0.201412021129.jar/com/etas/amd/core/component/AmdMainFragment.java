/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.commons.lang.StringUtils
 */
package com.etas.amd.core.component;

import com.etas.amd620.core.ComponentMain.AtomicSoftwareComponentT;
import com.etas.amd620.core.ComponentMain.ComponentMainFactory;
import com.etas.amd620.core.ComponentMain.ComponentMainType;
import com.etas.amd620.core.ComponentMain.ComponentT;
import com.etas.amd620.core.ComponentMain.ComponentTypeType;
import com.etas.amd620.core.ComponentMain.DocumentRoot;
import com.etas.amd620.core.ComponentMain.ElementT;
import com.etas.amd620.core.ComponentMain.ElementsType;
import com.etas.amd620.core.ComponentMain.EnumerationType;
import com.etas.amd620.core.ComponentMain.EnumeratorT;
import com.etas.amd620.core.ComponentMain.ItemBaseT;
import com.etas.amd620.core.ComponentMain.MethodSignaturesType1;
import com.etas.amd620.core.ComponentMain.MethodT;
import com.etas.amd620.core.ComponentMain.ModeGroupType;
import com.etas.amd620.core.ComponentMain.RealizedRunnableT;
import com.etas.amd620.core.ComponentMain.RunnableT;
import com.etas.amd620.core.ComponentMain.SpecificationTypeType;
import java.math.BigInteger;
import org.apache.commons.lang.StringUtils;

public class AmdMainFragment {
    private ComponentMainType compMain = ComponentMainFactory.eINSTANCE.createComponentMainType();

    public AmdMainFragment() {
        this.compMain.setToolVersion("V6.2.0");
        this.compMain.setSchemaVersion("6.2.0.7");
    }

    public DocumentRoot getDocumentRoot() {
        DocumentRoot root = ComponentMainFactory.eINSTANCE.createDocumentRoot();
        root.setComponentMain(this.compMain);
        return root;
    }

    public String getName() {
        if (this.compMain.getModeGroup() != null) {
            return this.compMain.getModeGroup().getName();
        }
        if (this.compMain.getEnumeration() != null) {
            return this.compMain.getEnumeration().getName();
        }
        if (this.compMain.getAtomicSoftwareComponent() != null) {
            return this.compMain.getAtomicSoftwareComponent().getName();
        }
        if (this.compMain.getComponent() != null) {
            return this.compMain.getComponent().getName();
        }
        return "";
    }

    public String getNameSpace() {
        if (this.compMain.getModeGroup() != null) {
            return this.compMain.getModeGroup().getNameSpace();
        }
        if (this.compMain.getEnumeration() != null) {
            return this.compMain.getEnumeration().getNameSpace();
        }
        if (this.compMain.getAtomicSoftwareComponent() != null) {
            return this.compMain.getAtomicSoftwareComponent().getNameSpace();
        }
        if (this.compMain.getComponent() != null) {
            return this.compMain.getComponent().getNameSpace();
        }
        return "/undef";
    }

    public String getUUID() {
        if (this.compMain.getModeGroup() != null) {
            return this.compMain.getModeGroup().getUUID();
        }
        if (this.compMain.getEnumeration() != null) {
            return this.compMain.getEnumeration().getUUID();
        }
        if (this.compMain.getAtomicSoftwareComponent() != null) {
            return this.compMain.getAtomicSoftwareComponent().getUUID();
        }
        if (this.compMain.getComponent() != null) {
            return this.compMain.getComponent().getUUID();
        }
        return "";
    }

    public void setEnumeration(String name, String uuid, String nameSpace) {
        EnumerationType enumT = ComponentMainFactory.eINSTANCE.createEnumerationType();
        AmdMainFragment.setOptionalUuid(enumT, uuid);
        enumT.setName(name);
        enumT.setNameSpace(nameSpace);
        enumT.setComponentType(ComponentTypeType.ASCET_ENUMERATION);
        this.compMain.setEnumeration(enumT);
    }

    public void addEnumerator(BigInteger index, String value) {
        EnumeratorT en = ComponentMainFactory.eINSTANCE.createEnumeratorT();
        en.setIndex(index);
        en.setValue(value);
        this.compMain.getEnumeration().getEnumerator().add((Object)en);
    }

    public void setRecord(String name, String uuid, String nameSpace) {
        ComponentT compT = ComponentMainFactory.eINSTANCE.createComponentT();
        compT.setName(name);
        AmdMainFragment.setOptionalUuid(compT, uuid);
        compT.setNameSpace(nameSpace);
        compT.setComponentType(ComponentTypeType.ASCET_RECORD);
        compT.setSpecificationType(SpecificationTypeType.LAYOUT_ONLY);
        compT.setElements(ComponentMainFactory.eINSTANCE.createElementsType());
        compT.setMethodSignatures(ComponentMainFactory.eINSTANCE.createMethodSignaturesType1());
        this.compMain.setComponent(compT);
    }

    public void setProject(String name, String uuid, String nameSpace) {
        ComponentT compT = ComponentMainFactory.eINSTANCE.createComponentT();
        compT.setName(name);
        AmdMainFragment.setOptionalUuid(compT, uuid);
        compT.setNameSpace(nameSpace);
        compT.setComponentType(ComponentTypeType.ASCET_PROJECT);
        compT.setSpecificationType(SpecificationTypeType.PROJECT);
        compT.setElements(ComponentMainFactory.eINSTANCE.createElementsType());
        compT.setMethodSignatures(ComponentMainFactory.eINSTANCE.createMethodSignaturesType1());
        this.compMain.setComponent(compT);
    }

    public void setCSInterface(String name, String uuid, String nameSpace) {
        ComponentT compT = ComponentMainFactory.eINSTANCE.createComponentT();
        compT.setName(name);
        AmdMainFragment.setOptionalUuid(compT, uuid);
        compT.setNameSpace(nameSpace);
        compT.setComponentType(ComponentTypeType.AUTOSAR_CLIENT_SERVER_INTERFACE);
        compT.setSpecificationType(SpecificationTypeType.METHOD_INTERFACE);
        compT.setElements(ComponentMainFactory.eINSTANCE.createElementsType());
        compT.setMethodSignatures(ComponentMainFactory.eINSTANCE.createMethodSignaturesType1());
        this.compMain.setComponent(compT);
    }

    public void setSRIterface(String name, String uuid, String nameSpace) {
        ComponentT compT = ComponentMainFactory.eINSTANCE.createComponentT();
        compT.setName(name);
        AmdMainFragment.setOptionalUuid(compT, uuid);
        compT.setNameSpace(nameSpace);
        compT.setComponentType(ComponentTypeType.AUTOSAR_SENDER_RECEIVER_INTERFACE);
        compT.setSpecificationType(SpecificationTypeType.LAYOUT_ONLY);
        compT.setElements(ComponentMainFactory.eINSTANCE.createElementsType());
        compT.setMethodSignatures(ComponentMainFactory.eINSTANCE.createMethodSignaturesType1());
        this.compMain.setComponent(compT);
    }

    public void setNvDataIterface(String name, String uuid, String nameSpace) {
        ComponentT compT = ComponentMainFactory.eINSTANCE.createComponentT();
        compT.setName(name);
        AmdMainFragment.setOptionalUuid(compT, uuid);
        compT.setNameSpace(nameSpace);
        compT.setComponentType(ComponentTypeType.AUTOSARNV_DATA_INTERFACE);
        compT.setSpecificationType(SpecificationTypeType.LAYOUT_ONLY);
        compT.setElements(ComponentMainFactory.eINSTANCE.createElementsType());
        compT.setMethodSignatures(ComponentMainFactory.eINSTANCE.createMethodSignaturesType1());
        this.compMain.setComponent(compT);
    }

    public void setAswc(String name, String uuid, String nameSpace) {
        AtomicSoftwareComponentT comp = ComponentMainFactory.eINSTANCE.createAtomicSoftwareComponentT();
        comp.setName(name);
        AmdMainFragment.setOptionalUuid(comp, uuid);
        comp.setNameSpace(nameSpace);
        comp.setSupportsMultipleInstantiation(false);
        comp.setComponentType(ComponentTypeType.AUTOSAR_ATOMIC_SOFTWARE_COMPONENT);
        comp.setSpecificationType(SpecificationTypeType.ATOMIC_SOFTWARE_COMPONENT);
        comp.setElements(ComponentMainFactory.eINSTANCE.createElementsType());
        comp.setMethodSignatures(ComponentMainFactory.eINSTANCE.createMethodSignaturesType1());
        this.compMain.setAtomicSoftwareComponent(comp);
    }

    public void setCalprmInterface() {
        ComponentT compT = this.compMain.getComponent();
        compT.setComponentType(ComponentTypeType.AUTOSAR_CALIBRATION_INTERFACE);
    }

    public void setModeDeclarationGroup(String name, String uuid, String nameSpace) {
        ModeGroupType mode = ComponentMainFactory.eINSTANCE.createModeGroupType();
        AmdMainFragment.setOptionalUuid(mode, uuid);
        mode.setName(name);
        mode.setNameSpace(nameSpace);
        mode.setDefaultMode(BigInteger.ZERO);
        mode.setComponentType(ComponentTypeType.AUTOSAR_MODE_GROUP);
        this.compMain.setModeGroup(mode);
    }

    public void addElement(ElementT child) {
        this.getElementsStore().getElement().add((Object)child);
    }

    public void addMode(BigInteger index, String modeName) {
        EnumeratorT mode = ComponentMainFactory.eINSTANCE.createEnumeratorT();
        mode.setValue(modeName);
        mode.setIndex(index);
        this.compMain.getModeGroup().getMode().add((Object)mode);
    }

    public void addMethod(MethodT meth) {
        ComponentT compT = this.compMain.getComponent();
        if (compT.getMethodSignatures() == null) {
            compT.setMethodSignatures(ComponentMainFactory.eINSTANCE.createMethodSignaturesType1());
        }
        compT.getMethodSignatures().getMethodSignature().add((Object)meth);
    }

    public void addRunnable(RunnableT runT) {
        this.prepareAddRunnable().getRunnableSignature().add((Object)runT);
    }

    public void addRealizedRunnable(RealizedRunnableT runnableT) {
        this.prepareAddRunnable().getRealizedRunnableSignature().add((Object)runnableT);
    }

    public RealizedRunnableT getRealizedRunnable(String name) {
        for (RealizedRunnableT run : this.prepareAddRunnable().getRealizedRunnableSignature()) {
            if (!run.getName().equals(name)) continue;
            return run;
        }
        return null;
    }

    private ElementsType getElementsStore() {
        if (this.compMain.getComponent() != null) {
            ElementsType elements = this.compMain.getComponent().getElements();
            if (elements == null) {
                ElementsType newElements = ComponentMainFactory.eINSTANCE.createElementsType();
                this.compMain.getComponent().setElements(newElements);
            }
            return elements;
        }
        if (this.compMain.getAtomicSoftwareComponent() != null) {
            ElementsType elements = this.compMain.getAtomicSoftwareComponent().getElements();
            if (elements == null) {
                ElementsType newElements = ComponentMainFactory.eINSTANCE.createElementsType();
                this.compMain.getAtomicSoftwareComponent().setElements(newElements);
            }
            return elements;
        }
        throw new IllegalStateException("try to add element to an invalid component");
    }

    private MethodSignaturesType1 prepareAddRunnable() {
        MethodSignaturesType1 methodSignatures;
        if (this.compMain.getAtomicSoftwareComponent() == null) {
            this.compMain.setAtomicSoftwareComponent(ComponentMainFactory.eINSTANCE.createAtomicSoftwareComponentT());
        }
        if ((methodSignatures = this.compMain.getAtomicSoftwareComponent().getMethodSignatures()) == null) {
            MethodSignaturesType1 newSignatures = ComponentMainFactory.eINSTANCE.createMethodSignaturesType1();
            this.compMain.getAtomicSoftwareComponent().setMethodSignatures(newSignatures);
        }
        return this.compMain.getAtomicSoftwareComponent().getMethodSignatures();
    }

    private static void setOptionalUuid(ItemBaseT enumT, String uuid) {
        if (!StringUtils.isEmpty((String)uuid)) {
            enumT.setUUID(uuid);
        }
    }
}

