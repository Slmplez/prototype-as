/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.commons.lang.StringUtils
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.amd.core.component;

import com.etas.amd620.core.ComponentSpecification.BlockDiagramSpecificationT;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationFactory;
import com.etas.amd620.core.ComponentSpecification.DiagramElementsComplexType;
import com.etas.amd620.core.ComponentSpecification.DocumentRoot;
import com.etas.amd620.core.ComponentSpecification.ESDLCodeT;
import com.etas.amd620.core.ComponentSpecification.ESDLSpecificationT;
import com.etas.amd620.core.ComponentSpecification.EventT;
import com.etas.amd620.core.ComponentSpecification.MethodBodiesComplexType;
import com.etas.amd620.core.ComponentSpecification.MethodBodyT;
import com.etas.amd620.core.ComponentSpecification.ProjectSpecificationT;
import com.etas.amd620.core.ComponentSpecification.PublicType;
import com.etas.amd620.core.ComponentSpecification.SpecificationType;
import com.etas.amd620.core.ComponentSpecification.SpecificationsType;
import org.apache.commons.lang.StringUtils;
import org.eclipse.emf.common.util.EList;

public class AmdSpecificationFragment {
    public static final String DEFAULT_SPEC_NAME = "Main";
    private SpecificationsType compSpec = ComponentSpecificationFactory.eINSTANCE.createSpecificationsType();

    public AmdSpecificationFragment() {
        this.compSpec.setToolVersion("V6.2.0");
        this.compSpec.setSchemaVersion("6.2.0.2");
    }

    public DocumentRoot getDocumentRoot() {
        DocumentRoot specRoot = ComponentSpecificationFactory.eINSTANCE.createDocumentRoot();
        specRoot.setSpecifications(this.compSpec);
        return specRoot;
    }

    protected SpecificationType getSpecification(String specName) {
        for (SpecificationType spec : this.compSpec.getSpecification()) {
            if (!StringUtils.equals((String)spec.getName(), (String)specName)) continue;
            return spec;
        }
        return null;
    }

    public void setSpec() {
        ESDLCodeT esdlCode = ComponentSpecificationFactory.eINSTANCE.createESDLCodeT();
        esdlCode.setMethodBodies(ComponentSpecificationFactory.eINSTANCE.createMethodBodiesComplexType());
        ESDLSpecificationT esdlSpec = ComponentSpecificationFactory.eINSTANCE.createESDLSpecificationT();
        esdlSpec.setESDLCode(esdlCode);
        SpecificationType spec = ComponentSpecificationFactory.eINSTANCE.createSpecificationType();
        spec.setMethodInterfaceSpecification(esdlSpec);
        spec.setPublic(PublicType.PUBLIC);
        spec.setName(DEFAULT_SPEC_NAME);
        this.compSpec.getSpecification().add((Object)spec);
    }

    public void setProjectSpec() {
        ESDLCodeT esdlCode = ComponentSpecificationFactory.eINSTANCE.createESDLCodeT();
        esdlCode.setMethodBodies(ComponentSpecificationFactory.eINSTANCE.createMethodBodiesComplexType());
        ProjectSpecificationT specProj = ComponentSpecificationFactory.eINSTANCE.createProjectSpecificationT();
        specProj.setESDLCode(esdlCode);
        DiagramElementsComplexType diagElements = ComponentSpecificationFactory.eINSTANCE.createDiagramElementsComplexType();
        specProj.setDiagramElements(diagElements);
        SpecificationType spec = ComponentSpecificationFactory.eINSTANCE.createSpecificationType();
        spec.setProjectSpecification(specProj);
        spec.setPublic(PublicType.PUBLIC);
        spec.setName(DEFAULT_SPEC_NAME);
        this.compSpec.getSpecification().add((Object)spec);
    }

    public void addMethod(String name) {
        MethodBodyT methT = ComponentSpecificationFactory.eINSTANCE.createMethodBodyT();
        methT.setMethodName(name);
        ((SpecificationType)this.compSpec.getSpecification().get(0)).getMethodInterfaceSpecification().getESDLCode().getMethodBodies().getMethodBody().add((Object)methT);
    }

    public void setAswcSpec() {
        ESDLCodeT esdlCode = ComponentSpecificationFactory.eINSTANCE.createESDLCodeT();
        esdlCode.setMethodBodies(ComponentSpecificationFactory.eINSTANCE.createMethodBodiesComplexType());
        BlockDiagramSpecificationT bdeSpecASWC = ComponentSpecificationFactory.eINSTANCE.createBlockDiagramSpecificationT();
        bdeSpecASWC.setESDLCode(esdlCode);
        bdeSpecASWC.setDiagramElements(ComponentSpecificationFactory.eINSTANCE.createDiagramElementsComplexType());
        SpecificationType spec = ComponentSpecificationFactory.eINSTANCE.createSpecificationType();
        spec.setAtomicSoftwareComponentSpecification(bdeSpecASWC);
        spec.setPublic(PublicType.PUBLIC);
        spec.setName(DEFAULT_SPEC_NAME);
        this.compSpec.getSpecification().add((Object)spec);
    }

    public void addEvent(EventT amdEvent) {
        if (this.compSpec.getEventSpecification() == null) {
            this.compSpec.setEventSpecification(ComponentSpecificationFactory.eINSTANCE.createEventSpecificationT());
        }
        if (this.compSpec.getEventSpecification().getEvents() == null) {
            this.compSpec.getEventSpecification().setEvents(ComponentSpecificationFactory.eINSTANCE.createEventsType());
        }
        this.compSpec.getEventSpecification().getEvents().getEvent().add((Object)amdEvent);
    }

    public void addRunnable(String runnableName, String specName) {
        SpecificationType spec = this.getSpecification(specName);
        if (spec == null) {
            spec = this.createSpecification(specName);
        }
        MethodBodyT methodObj = ComponentSpecificationFactory.eINSTANCE.createMethodBodyT();
        methodObj.setMethodName(runnableName);
        EList<MethodBodyT> methodBodies = spec.getAtomicSoftwareComponentSpecification().getESDLCode().getMethodBodies().getMethodBody();
        methodBodies.add((Object)methodObj);
    }

    public boolean hasMethodInSpec(String name, String specName) {
        SpecificationType spec = this.getSpecification(specName);
        return AmdSpecificationFragment.getMethodFromSpec(name, spec) != null;
    }

    private SpecificationType createSpecification(String name) {
        SpecificationType spec = this.getSpecification(name);
        if (spec == null) {
            spec = ComponentSpecificationFactory.eINSTANCE.createSpecificationType();
            spec.setPublic(PublicType.PUBLIC);
            spec.setName(name);
            this.compSpec.getSpecification().add((Object)spec);
        }
        if (spec.getAtomicSoftwareComponentSpecification() == null) {
            ESDLCodeT esdlCode = ComponentSpecificationFactory.eINSTANCE.createESDLCodeT();
            esdlCode.setMethodBodies(ComponentSpecificationFactory.eINSTANCE.createMethodBodiesComplexType());
            BlockDiagramSpecificationT bdeSpecASWC = ComponentSpecificationFactory.eINSTANCE.createBlockDiagramSpecificationT();
            bdeSpecASWC.setESDLCode(esdlCode);
            bdeSpecASWC.setDiagramElements(ComponentSpecificationFactory.eINSTANCE.createDiagramElementsComplexType());
            spec.setAtomicSoftwareComponentSpecification(bdeSpecASWC);
        }
        return spec;
    }

    private static MethodBodyT getMethodFromSpec(String runnableName, SpecificationType spec) {
        if (spec == null) {
            return null;
        }
        BlockDiagramSpecificationT componentSpecification = spec.getAtomicSoftwareComponentSpecification();
        if (componentSpecification == null) {
            return null;
        }
        if (componentSpecification.getESDLCode() == null) {
            return null;
        }
        MethodBodiesComplexType methodBodies = componentSpecification.getESDLCode().getMethodBodies();
        if (methodBodies == null) {
            return null;
        }
        for (MethodBodyT meth : methodBodies.getMethodBody()) {
            if (!meth.getMethodName().equals(runnableName)) continue;
            return meth;
        }
        return null;
    }
}

