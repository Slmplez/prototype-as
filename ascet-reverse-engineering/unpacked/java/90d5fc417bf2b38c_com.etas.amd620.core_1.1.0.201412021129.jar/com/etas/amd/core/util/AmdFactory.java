/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.commons.lang.StringUtils
 */
package com.etas.amd.core.util;

import com.etas.amd.core.DataAccess;
import com.etas.amd.core.type.AbstractAmdType;
import com.etas.amd.core.type.AmdInterfaceType;
import com.etas.amd.core.type.AmdNumericType;
import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd.core.util.AmdASWCType;
import com.etas.amd.core.util.AmdEnum;
import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.ComponentDataFactory;
import com.etas.amd620.core.ComponentData.DimensionalTypeT;
import com.etas.amd620.core.ComponentData.EnumerationDataT;
import com.etas.amd620.core.ComponentData.LogicDataT;
import com.etas.amd620.core.ComponentData.NumericDataT;
import com.etas.amd620.core.ComponentData.ScalarTypeT;
import com.etas.amd620.core.ComponentImplementation.DimensionalImplementationT;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationType;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentImplementation.PrimitiveImplementationT;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentMain.AttributesBaseT;
import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ComplexAttributesT;
import com.etas.amd620.core.ComponentMain.ComplexTypeType;
import com.etas.amd620.core.ComponentMain.ComponentMainFactory;
import com.etas.amd620.core.ComponentMain.ComponentT;
import com.etas.amd620.core.ComponentMain.ComponentTypeType;
import com.etas.amd620.core.ComponentMain.DimensionalAttributesT;
import com.etas.amd620.core.ComponentMain.DimensionalTypeType;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ElementT;
import com.etas.amd620.core.ComponentMain.EnumerationAttributesT;
import com.etas.amd620.core.ComponentMain.KindType;
import com.etas.amd620.core.ComponentMain.MethodT;
import com.etas.amd620.core.ComponentMain.ModelTypeType;
import com.etas.amd620.core.ComponentMain.PrimitiveAttributesBaseT;
import com.etas.amd620.core.ComponentMain.RealizedElementT;
import com.etas.amd620.core.ComponentMain.RealizedMethodT;
import com.etas.amd620.core.ComponentMain.RealizedReturnT;
import com.etas.amd620.core.ComponentMain.RealizedRunnableT;
import com.etas.amd620.core.ComponentMain.ReturnT;
import com.etas.amd620.core.ComponentMain.RunnableT;
import com.etas.amd620.core.ComponentMain.ScalarAttributesT;
import com.etas.amd620.core.ComponentMain.ScalarTypeType;
import com.etas.amd620.core.ComponentMain.ScopeType;
import com.etas.amd620.core.ComponentMain.SpecificationTypeType;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationFactory;
import com.etas.amd620.core.ComponentSpecification.EventT;
import com.etas.amd620.core.ComponentSpecification.InterfaceElementType;
import com.etas.amd620.core.ComponentSpecification.ModeElementType;
import com.etas.amd620.core.ComponentSpecification.ModeSwitchEventType;
import com.etas.amd620.core.ComponentSpecification.ModeSwitchTypeType;
import com.etas.amd620.core.ComponentSpecification.ModeT;
import com.etas.amd620.core.ComponentSpecification.OperationInvokedEventType;
import com.etas.amd620.core.ComponentSpecification.RunnableType;
import com.etas.amd620.core.ComponentSpecification.TimingEventType;
import java.math.BigInteger;
import java.util.GregorianCalendar;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import org.apache.commons.lang.StringUtils;

public class AmdFactory {
    public static final String METHOD_DEFAULT_ATTR = "false";
    public static final String IMPL_VARIANT_DEFAULT = "default";
    public static final String IMPL_MEM_CLASS_DEFAULT = "Default";

    public static AmdEnum createEnumType(String name, String uuid, String nameSpace) {
        return new AmdEnum(name, uuid, nameSpace);
    }

    private static ElementT createAmdMember(String name, String uuid) {
        ElementT field = ComponentMainFactory.eINSTANCE.createElementT();
        if (!StringUtils.isEmpty((String)uuid)) {
            field.setUUID(uuid);
        }
        field.setName(name);
        field.setIgnore(METHOD_DEFAULT_ATTR);
        field.setComment(ComponentMainFactory.eINSTANCE.createFormattedTextT());
        return field;
    }

    public static ComponentT createComponentT(String name, String uuid, String nameSpace, ComponentTypeType typeType, SpecificationTypeType specType) {
        ComponentT compT = typeType == ComponentTypeType.AUTOSAR_ATOMIC_SOFTWARE_COMPONENT ? ComponentMainFactory.eINSTANCE.createAtomicSoftwareComponentT() : ComponentMainFactory.eINSTANCE.createComponentT();
        compT.setName(name);
        if (!StringUtils.isEmpty((String)uuid)) {
            compT.setUUID(uuid);
        }
        compT.setNameSpace(nameSpace);
        compT.setComponentType(typeType);
        compT.setSpecificationType(specType);
        compT.setMethodSignatures(ComponentMainFactory.eINSTANCE.createMethodSignaturesType1());
        compT.setTimeStamp1(AmdFactory.getTimeStamp());
        return compT;
    }

    public static XMLGregorianCalendar getTimeStamp() {
        GregorianCalendar gcal = new GregorianCalendar();
        try {
            XMLGregorianCalendar xgcal = DatatypeFactory.newInstance().newXMLGregorianCalendar(gcal);
            return xgcal;
        }
        catch (DatatypeConfigurationException datatypeConfigurationException) {
            throw new IllegalStateException("cannot create time stamp");
        }
    }

    public static ElementT createRecordElement(String name, String uuid) {
        return AmdFactory.createAmdMember(name, uuid);
    }

    public static ElementT createInterfaceMember(String name, String uuid) {
        return AmdFactory.createAmdMember(name, uuid);
    }

    public static ElementT createDataElementPort(String name, String uuid) {
        return AmdFactory.createAmdMember(name, uuid);
    }

    public static ElementT createElement(String name, String uuid) {
        return AmdFactory.createAmdMember(name, uuid);
    }

    public static ElementT createComplexElement(String name, ElementAttributesT elementAttributes) {
        ElementT element = AmdFactory.createElement(name, null);
        AmdFactory.setDirectionAttributes(elementAttributes, true, true);
        AmdFactory.setSetGetAttributes(elementAttributes, false, false);
        element.setElementAttributes(elementAttributes);
        return element;
    }

    public static RunnableT createRunnable(String name, String uuid, boolean canBeInvokedConcurrently, double minimumStartInterval) {
        RunnableT runnableT = ComponentMainFactory.eINSTANCE.createRunnableT();
        if (!StringUtils.isEmpty((String)uuid)) {
            runnableT.setUUID(uuid);
        }
        runnableT.setName(name);
        runnableT.setDefault(METHOD_DEFAULT_ATTR);
        runnableT.setPublic(true);
        runnableT.setCanBeInvokedConcurrently(canBeInvokedConcurrently);
        runnableT.setMinimumStartTime(minimumStartInterval);
        return runnableT;
    }

    public static RealizedRunnableT createRealizedRunnable(String name, String portName, String signatureName) {
        RealizedRunnableT runnableT = ComponentMainFactory.eINSTANCE.createRealizedRunnableT();
        runnableT.setName(name);
        runnableT.setDefault(METHOD_DEFAULT_ATTR);
        runnableT.setPublic(true);
        runnableT.setCanBeInvokedConcurrently(false);
        runnableT.setMinimumStartTime(0.0);
        runnableT.setInterfaceName(portName);
        runnableT.setSignatureName(signatureName);
        ElementAttributesT attr = ComponentMainFactory.eINSTANCE.createElementAttributesT();
        attr.setBasicModelType(BasicModelTypeType.RTE_STANDARD_RETURN_TYPE);
        attr.setModelType(ModelTypeType.SCALAR);
        return runnableT;
    }

    public static MethodT createMethod(String name, String uuid) {
        MethodT method = ComponentMainFactory.eINSTANCE.createMethodT();
        if (!StringUtils.isEmpty((String)uuid)) {
            method.setUUID(uuid);
        }
        method.setName(name);
        method.setDefault(METHOD_DEFAULT_ATTR);
        method.setPublic(true);
        ElementAttributesT attr = ComponentMainFactory.eINSTANCE.createElementAttributesT();
        attr.setBasicModelType(BasicModelTypeType.RTE_STANDARD_RETURN_TYPE);
        attr.setModelType(ModelTypeType.SCALAR);
        ReturnT returnT = ComponentMainFactory.eINSTANCE.createReturnT();
        returnT.setElementAttributes(attr);
        returnT.setComment(ComponentMainFactory.eINSTANCE.createFormattedTextT());
        method.setReturn(returnT);
        return method;
    }

    public static ElementAttributesT createElementAttributesForArray(Integer size) {
        ElementAttributesT attributes = ComponentMainFactory.eINSTANCE.createElementAttributesT();
        attributes.setBasicModelType(BasicModelTypeType.CONT);
        attributes.setModelType(ModelTypeType.ARRAY);
        attributes.setUnit("");
        DimensionalTypeType dim = ComponentMainFactory.eINSTANCE.createDimensionalTypeType();
        dim.setMaxSizeX(BigInteger.valueOf(size.intValue()));
        attributes.setDimensionalType(dim);
        DimensionalAttributesT dimAttributes = dim.getDimensionalAttributes();
        if (dimAttributes == null) {
            dimAttributes = ComponentMainFactory.eINSTANCE.createDimensionalAttributesT();
            dim.setDimensionalAttributes(dimAttributes);
        }
        AmdFactory.initPrimitiveAttributes(dimAttributes);
        dimAttributes.setDependent(false);
        dimAttributes.setVirtual(false);
        dimAttributes.setReference(false);
        return attributes;
    }

    public static ElementAttributesT createElementAttributesForEnum(String typeRef) {
        ElementAttributesT attributes = AmdFactory.createCommonElementAttributes(BasicModelTypeType.ENUMERATION, ModelTypeType.SCALAR);
        ScalarTypeType scalarType = ComponentMainFactory.eINSTANCE.createScalarTypeType();
        attributes.setScalarType(scalarType);
        AmdFactory.initEnumAttributes(scalarType, typeRef);
        return attributes;
    }

    public static ElementAttributesT createElementAttributesForScalar(BasicModelTypeType type) {
        ElementAttributesT attributes = AmdFactory.createCommonElementAttributes(type, ModelTypeType.SCALAR);
        ScalarTypeType scalarType = ComponentMainFactory.eINSTANCE.createScalarTypeType();
        attributes.setScalarType(scalarType);
        AmdFactory.initScalarAttributes(scalarType);
        return attributes;
    }

    private static ElementAttributesT createCommonElementAttributes(BasicModelTypeType modelType, ModelTypeType modelKind) {
        ElementAttributesT attributes = ComponentMainFactory.eINSTANCE.createElementAttributesT();
        attributes.setBasicModelType(modelType);
        attributes.setModelType(modelKind);
        attributes.setUnit("");
        return attributes;
    }

    public static EventT createAmdEvent(String name, String uuid) {
        EventT eventT = ComponentSpecificationFactory.eINSTANCE.createEventT();
        if (!StringUtils.isEmpty((String)uuid)) {
            eventT.setUUID(uuid);
        }
        eventT.setName(name);
        eventT.setRunnables(ComponentSpecificationFactory.eINSTANCE.createRunnablesType());
        eventT.setDisablingModes(ComponentSpecificationFactory.eINSTANCE.createDisablingModesType());
        eventT.setEventType(ComponentSpecificationFactory.eINSTANCE.createEventTypeType());
        return eventT;
    }

    public static void addRunnableToEvent(EventT amdEvent, String name, BigInteger index) {
        RunnableType runnableType = ComponentSpecificationFactory.eINSTANCE.createRunnableType();
        runnableType.setRunnableName(name);
        runnableType.setIndex(index);
        amdEvent.getRunnables().getRunnable().add((Object)runnableType);
    }

    public static void addModeDisablingDependencyToEvent(EventT amdEvent, String modeDeclRefName, String rPortPrototypeRefName, String modeDeclGroupRefName) {
        ModeT mode = ComponentSpecificationFactory.eINSTANCE.createModeT();
        mode.setModeValue(modeDeclRefName);
        InterfaceElementType interfaceElem = ComponentSpecificationFactory.eINSTANCE.createInterfaceElementType();
        interfaceElem.setElementName(rPortPrototypeRefName);
        mode.setInterfaceElement(interfaceElem);
        ModeElementType elemType = ComponentSpecificationFactory.eINSTANCE.createModeElementType();
        elemType.setElementName(modeDeclGroupRefName);
        mode.setModeElement(elemType);
        if (amdEvent.getDisablingModes() == null) {
            amdEvent.setDisablingModes(ComponentSpecificationFactory.eINSTANCE.createDisablingModesType());
        }
        amdEvent.getDisablingModes().getMode().add((Object)mode);
    }

    public static void addModeToEvent(EventT amdEvent, ModeSwitchTypeType modeSwitchKind, String modeDeclRefName, String rPortPrototypeRefName, String modeDeclGroupRefName) {
        ModeT mode = ComponentSpecificationFactory.eINSTANCE.createModeT();
        mode.setModeValue(modeDeclRefName);
        InterfaceElementType interfaceElem = ComponentSpecificationFactory.eINSTANCE.createInterfaceElementType();
        interfaceElem.setElementName(rPortPrototypeRefName);
        mode.setInterfaceElement(interfaceElem);
        ModeElementType elemType = ComponentSpecificationFactory.eINSTANCE.createModeElementType();
        elemType.setElementName(modeDeclGroupRefName);
        mode.setModeElement(elemType);
        ModeSwitchEventType modeSwitchType = ComponentSpecificationFactory.eINSTANCE.createModeSwitchEventType();
        modeSwitchType.setModeSwitchType(modeSwitchKind);
        amdEvent.getEventType().setModeSwitchEvent(modeSwitchType);
        amdEvent.getEventType().getModeSwitchEvent().setAssignedMode(mode);
    }

    public static void addOperationInvokedToEvent(EventT amdEvent, String opName, String portName) {
        OperationInvokedEventType invokedType = ComponentSpecificationFactory.eINSTANCE.createOperationInvokedEventType();
        invokedType.setOperationName(opName);
        invokedType.setPortName(portName);
        amdEvent.getEventType().setOperationInvokedEvent(invokedType);
    }

    public static void addTimingToEvent(EventT amdEvent, Double period) {
        TimingEventType value = ComponentSpecificationFactory.eINSTANCE.createTimingEventType();
        value.setPeriod(period.floatValue());
        amdEvent.getEventType().setTimingEvent(value);
    }

    public static RealizedElementT addArgumentToRunnable(RealizedRunnableT run, String name, String uuid) {
        if (run.getArguments() == null) {
            run.setArguments(ComponentMainFactory.eINSTANCE.createArgumentsType());
        }
        RealizedElementT arg = ComponentMainFactory.eINSTANCE.createRealizedElementT();
        if (!StringUtils.isEmpty((String)uuid)) {
            arg.setUUID(uuid);
        }
        arg.setName(name);
        arg.setMasterElementName(name);
        arg.setIgnore(METHOD_DEFAULT_ATTR);
        arg.setComment(ComponentMainFactory.eINSTANCE.createFormattedTextT());
        run.getArguments().getArgument().add((Object)arg);
        return arg;
    }

    public static ElementT addArgumentToMethod(MethodT meth, String name, String uuid) {
        if (meth.getArguments() == null) {
            meth.setArguments(ComponentMainFactory.eINSTANCE.createArgumentsComplexType());
        }
        ElementT arg = AmdFactory.createElement(name, uuid);
        meth.getArguments().getArgument().add((Object)arg);
        return arg;
    }

    public static void addReturnValueToMethod(MethodT meth) {
        ElementAttributesT elementAttributesT = AmdFactory.createElementAttributesForScalar(BasicModelTypeType.RTE_STANDARD_RETURN_TYPE);
        AmdFactory.setDirectionAttributes(elementAttributesT, true, true);
        meth.getReturn().setElementAttributes(elementAttributesT);
    }

    public static void addReturnValueToMethod(MethodT meth, String enumRef) {
        ElementAttributesT elementAttributesT = AmdFactory.createElementAttributesForEnum(enumRef);
        AmdFactory.setDirectionAttributes(elementAttributesT, true, true);
        meth.getReturn().setElementAttributes(elementAttributesT);
    }

    public static void addReturnValueToRealizedMethod(RealizedMethodT meth, String enumRef) {
        RealizedReturnT returnT = ComponentMainFactory.eINSTANCE.createRealizedReturnT();
        ElementAttributesT elementAttributesT = AmdFactory.createElementAttributesForEnum(enumRef);
        AmdFactory.setDirectionAttributes(elementAttributesT, true, true);
        returnT.setElementAttributes(elementAttributesT);
        returnT.setComment(ComponentMainFactory.eINSTANCE.createFormattedTextT());
        meth.setReturn(returnT);
    }

    private static void initEnumAttributes(ScalarTypeType scalarType, String name) {
        EnumerationAttributesT enumerationAttributes = scalarType.getEnumerationAttributes();
        if (enumerationAttributes == null) {
            enumerationAttributes = ComponentMainFactory.eINSTANCE.createEnumerationAttributesT();
            scalarType.setEnumerationAttributes(enumerationAttributes);
        }
        enumerationAttributes.setEnumerationName(name);
        AmdFactory.initPrimitiveAttributes(enumerationAttributes);
    }

    private static void initScalarAttributes(ScalarTypeType scalarType) {
        ScalarAttributesT scalarAttributes = scalarType.getScalarAttributes();
        if (scalarAttributes == null) {
            scalarAttributes = ComponentMainFactory.eINSTANCE.createScalarAttributesT();
            scalarType.setScalarAttributes(scalarAttributes);
        }
        scalarAttributes.setVirtual(false);
        scalarAttributes.setDependent(false);
        AmdFactory.initPrimitiveAttributes(scalarAttributes);
    }

    private static void initPrimitiveAttributes(PrimitiveAttributesBaseT attributes) {
        attributes.setKind(KindType.VARIABLE);
        attributes.setVolatile(true);
        attributes.setCalibrationRead(true);
        attributes.setCalibrationWrite(false);
        AmdFactory.initAttributesBase(attributes);
    }

    public static void initAttributesBase(AttributesBaseT attributes) {
        attributes.setScope(ScopeType.LOCAL);
        attributes.setSet(true);
        attributes.setGet(true);
        attributes.setWrite(true);
        attributes.setRead(true);
    }

    private static AttributesBaseT getInnerElementAttributes(ElementAttributesT attr) {
        ScalarTypeType scalarType = attr.getScalarType();
        if (scalarType != null) {
            ScalarAttributesT scalarAttributes = scalarType.getScalarAttributes();
            if (scalarAttributes != null) {
                return scalarAttributes;
            }
            EnumerationAttributesT enumerationAttributes = scalarType.getEnumerationAttributes();
            return enumerationAttributes;
        }
        ComplexTypeType complexType = attr.getComplexType();
        if (complexType != null) {
            ComplexAttributesT complexAttributes = complexType.getComplexAttributes();
            if (complexAttributes != null) {
                return complexAttributes;
            }
            return complexType.getRecordAttributes();
        }
        DimensionalTypeType dimensionalType = attr.getDimensionalType();
        return dimensionalType.getDimensionalAttributes();
    }

    public static void setElementAttributesInterface(AmdASWCType parent, ElementT amdPort, String interfaceRef, boolean read, boolean write) {
        AmdInterfaceType amdType = new AmdInterfaceType(interfaceRef);
        ElementAttributesT elementAttributes = amdType.createModelAttributes();
        AmdFactory.setDirectionAttributes(elementAttributes, read, write);
        AmdFactory.setSetGetAttributes(elementAttributes, false, false);
        amdPort.setElementAttributes(elementAttributes);
        parent.addImplementation(amdType.createImplAttributes(amdPort.getName()));
    }

    public static ElementAttributesT setDummyElementAttributes(AbstractAmdComponent parent, ElementT elem) {
        AmdNumericType amdType = AmdNumericType.createRealSingleType();
        ElementAttributesT modelAttributes = ((AbstractAmdType)amdType).createModelAttributes();
        elem.setElementAttributes(modelAttributes);
        ImplementationEntryT implAttributes = ((AbstractAmdType)amdType).createImplAttributes(elem.getName());
        if (parent != null) {
            parent.addImplementation(implAttributes);
        }
        return modelAttributes;
    }

    public static void setDirectionAttributes(ElementAttributesT attr, boolean read, boolean write) {
        AttributesBaseT innerElementAttributes = AmdFactory.getInnerElementAttributes(attr);
        if (innerElementAttributes != null) {
            innerElementAttributes.setRead(read);
            innerElementAttributes.setWrite(write);
        }
    }

    public static void setDirectionAttributes(ElementAttributesT attr, DataAccess access) {
        AttributesBaseT innerElementAttributes = AmdFactory.getInnerElementAttributes(attr);
        if (innerElementAttributes != null) {
            innerElementAttributes.setRead(access.isRead());
            innerElementAttributes.setWrite(access.isWrite());
        }
    }

    public static void setSetGetAttributes(ElementAttributesT attr, boolean isSet, boolean isGet) {
        AttributesBaseT innerElementAttributes = AmdFactory.getInnerElementAttributes(attr);
        if (innerElementAttributes != null) {
            innerElementAttributes.setSet(isSet);
            innerElementAttributes.setGet(isGet);
        }
    }

    public static void setScope(ElementAttributesT attr, ScopeType scope) {
        AttributesBaseT innerElementAttributes = AmdFactory.getInnerElementAttributes(attr);
        if (innerElementAttributes != null) {
            innerElementAttributes.setScope(scope);
        }
    }

    public static void setKind(ElementAttributesT attr, KindType kind) {
        AttributesBaseT innerElementAttributes = AmdFactory.getInnerElementAttributes(attr);
        if (innerElementAttributes != null && innerElementAttributes instanceof PrimitiveAttributesBaseT) {
            ((PrimitiveAttributesBaseT)innerElementAttributes).setKind(kind);
        }
    }

    public static void setCalibration(ElementAttributesT attr, boolean read, boolean write) {
        AttributesBaseT innerElementAttributes = AmdFactory.getInnerElementAttributes(attr);
        if (innerElementAttributes != null) {
            if (innerElementAttributes instanceof DimensionalAttributesT) {
                DimensionalAttributesT dimAttr = (DimensionalAttributesT)innerElementAttributes;
                dimAttr.setCalibrationRead(read);
                dimAttr.setCalibrationWrite(write);
            } else if (innerElementAttributes instanceof PrimitiveAttributesBaseT) {
                PrimitiveAttributesBaseT primAttr = (PrimitiveAttributesBaseT)innerElementAttributes;
                primAttr.setCalibrationRead(read);
                primAttr.setCalibrationWrite(write);
            }
        }
    }

    public static void setInterrunnable(ElementAttributesT attributes) {
        AttributesBaseT innerElementAttributes = AmdFactory.getInnerElementAttributes(attributes);
        if (innerElementAttributes != null && innerElementAttributes instanceof PrimitiveAttributesBaseT) {
            ((PrimitiveAttributesBaseT)innerElementAttributes).setKind(KindType.INTERRUNNABLE);
        }
    }

    public static void setInterrunnableExplicit(ElementAttributesT attributes, boolean val) {
        AttributesBaseT innerElementAttributes = AmdFactory.getInnerElementAttributes(attributes);
        if (innerElementAttributes != null && innerElementAttributes instanceof ScalarAttributesT) {
            ((ScalarAttributesT)innerElementAttributes).setExplicit(val);
        }
    }

    public static void setPolicy(ImplementationEntryT primImpl, String implPolicyString) {
        DimensionalImplementationT dimImpl;
        if (StringUtils.isEmpty((String)implPolicyString)) {
            return;
        }
        ScalarImplementationT scalarImpl = primImpl.getImplementationVariant().getElementImplementation().getScalarImplementation();
        if (scalarImpl != null) {
            AmdFactory.getPrimitiveImpl(scalarImpl).setPolicy(implPolicyString);
        }
        if ((dimImpl = primImpl.getImplementationVariant().getElementImplementation().getDimensionalImplementation()) != null && dimImpl.getArrayImplementation() != null) {
            AmdFactory.getPrimitiveImpl(dimImpl.getArrayImplementation()).setPolicy(implPolicyString);
        }
    }

    public void setZeroNotIncluded(ImplementationEntryT primImpl, boolean zeroNotIncluded) {
        DimensionalImplementationT dimImpl;
        ElementImplementationType elementImplementation = primImpl.getImplementationVariant().getElementImplementation();
        ScalarImplementationT scalarImpl = elementImplementation.getScalarImplementation();
        if (scalarImpl != null) {
            this.setZeroNotIncluded(scalarImpl, zeroNotIncluded);
        }
        if ((dimImpl = elementImplementation.getDimensionalImplementation()) != null && dimImpl.getArrayImplementation() != null) {
            ScalarImplementationT elementScalarImpl = dimImpl.getArrayImplementation();
            this.setZeroNotIncluded(elementScalarImpl, zeroNotIncluded);
        }
    }

    protected void setZeroNotIncluded(ScalarImplementationT scalarImpl, boolean zeroNotIncluded) {
        if (scalarImpl.getNumericImplementation() != null) {
            scalarImpl.getNumericImplementation().setZeroNotIncluded(zeroNotIncluded);
        }
    }

    public static void setMemClass(ImplementationEntryT primImpl, String addrMethod) {
        DimensionalImplementationT dimImpl;
        if (addrMethod == null || addrMethod.isEmpty()) {
            return;
        }
        ScalarImplementationT scalarImpl = primImpl.getImplementationVariant().getElementImplementation().getScalarImplementation();
        if (scalarImpl != null) {
            AmdFactory.getPrimitiveImpl(scalarImpl).setMemoryLocationInstance(addrMethod);
        }
        if ((dimImpl = primImpl.getImplementationVariant().getElementImplementation().getDimensionalImplementation()) != null && dimImpl.getArrayImplementation() != null) {
            AmdFactory.getPrimitiveImpl(dimImpl.getArrayImplementation()).setMemoryLocationInstance(addrMethod);
        }
    }

    private static PrimitiveImplementationT getPrimitiveImpl(ScalarImplementationT scalarImpl) {
        if (scalarImpl.getEnumerationImplementation() != null) {
            return scalarImpl.getEnumerationImplementation();
        }
        if (scalarImpl.getLogicImplementation() != null) {
            return scalarImpl.getLogicImplementation();
        }
        if (scalarImpl.getNumericImplementation() != null) {
            return scalarImpl.getNumericImplementation();
        }
        throw new IllegalAccessError();
    }

    public static ScalarTypeT createScalarInitValue(String v) {
        NumericDataT value = ComponentDataFactory.eINSTANCE.createNumericDataT();
        value.setValue(v);
        ScalarTypeT scalarTypeT = ComponentDataFactory.eINSTANCE.createScalarTypeT();
        scalarTypeT.setNumeric(value);
        return scalarTypeT;
    }

    public static ScalarTypeT createBooleanInitValue(Boolean val) {
        LogicDataT logicVal = ComponentDataFactory.eINSTANCE.createLogicDataT();
        logicVal.setValue(val);
        ScalarTypeT scalarTypeT = ComponentDataFactory.eINSTANCE.createScalarTypeT();
        scalarTypeT.setLogic(logicVal);
        return scalarTypeT;
    }

    public static ScalarTypeT createEnumInitValue(String val) {
        EnumerationDataT enumVal = ComponentDataFactory.eINSTANCE.createEnumerationDataT();
        enumVal.setValue(val);
        ScalarTypeT scalarTypeT = ComponentDataFactory.eINSTANCE.createScalarTypeT();
        scalarTypeT.setEnumeration(enumVal);
        return scalarTypeT;
    }

    public static DimensionalTypeT createArrayInitValue(ScalarTypeT[] val) {
        ArrayT arr = ComponentDataFactory.eINSTANCE.createArrayT();
        arr.setCurrentSizeX(BigInteger.valueOf(val.length));
        int i = 0;
        while (i < val.length) {
            arr.getValue().add((Object)val[i]);
            ++i;
        }
        DimensionalTypeT value = ComponentDataFactory.eINSTANCE.createDimensionalTypeT();
        value.setArray(arr);
        return value;
    }

    public static ComplexDataT createCompositeInitValue(String dataSetName) {
        ComplexDataT value = ComponentDataFactory.eINSTANCE.createComplexDataT();
        value.setDataName(dataSetName);
        return value;
    }
}

