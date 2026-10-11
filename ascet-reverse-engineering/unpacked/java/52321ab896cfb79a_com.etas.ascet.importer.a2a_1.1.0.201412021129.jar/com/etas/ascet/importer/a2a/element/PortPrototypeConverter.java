/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar40.commonstructure.constants.ValueSpecification
 *  autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype
 *  autosar40.swcomponent.communication.NvRequireComSpec
 *  autosar40.swcomponent.communication.RPortComSpec
 *  autosar40.swcomponent.components.PPortPrototype
 *  autosar40.swcomponent.components.PortPrototype
 *  autosar40.swcomponent.components.RPortPrototype
 *  autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype
 *  autosar40.swcomponent.datatype.dataprototypes.DataPrototype
 *  autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype
 *  autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype
 *  autosar40.swcomponent.portinterface.ApplicationError
 *  autosar40.swcomponent.portinterface.ArgumentDataPrototype
 *  autosar40.swcomponent.portinterface.ClientServerInterface
 *  autosar40.swcomponent.portinterface.ClientServerOperation
 *  autosar40.swcomponent.portinterface.ModeSwitchInterface
 *  autosar40.swcomponent.portinterface.NvDataInterface
 *  autosar40.swcomponent.portinterface.ParameterInterface
 *  autosar40.swcomponent.portinterface.PortInterface
 *  autosar40.swcomponent.portinterface.SenderReceiverInterface
 *  com.etas.amd.core.DataAccess
 *  com.etas.amd.core.IElementAttributes
 *  com.etas.amd.core.init.AbstractAmdInitValue
 *  com.etas.amd.core.type.AmdEnumType
 *  com.etas.amd.core.util.AbstractAmdComponent
 *  com.etas.amd.core.util.AbstractAmdItem
 *  com.etas.amd.core.util.AmdASWCType
 *  com.etas.amd.core.util.AmdCSInterface
 *  com.etas.amd.core.util.AmdCalprmInterface
 *  com.etas.amd.core.util.AmdEnum
 *  com.etas.amd.core.util.AmdFactory
 *  com.etas.amd.core.util.AmdNvDataInterface
 *  com.etas.amd.core.util.AmdSRInterface
 *  com.etas.amd620.core.ComponentMain.ElementAttributesT
 *  com.etas.amd620.core.ComponentMain.ElementT
 *  com.etas.amd620.core.ComponentMain.KindType
 *  com.etas.amd620.core.ComponentMain.MethodT
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.ascet.importer.a2a.element;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.swcomponent.communication.NvRequireComSpec;
import autosar40.swcomponent.communication.RPortComSpec;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.portinterface.ApplicationError;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import autosar40.swcomponent.portinterface.ClientServerInterface;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import autosar40.swcomponent.portinterface.ModeSwitchInterface;
import autosar40.swcomponent.portinterface.NvDataInterface;
import autosar40.swcomponent.portinterface.ParameterInterface;
import autosar40.swcomponent.portinterface.PortInterface;
import autosar40.swcomponent.portinterface.SenderReceiverInterface;
import com.etas.amd.core.DataAccess;
import com.etas.amd.core.IElementAttributes;
import com.etas.amd.core.init.AbstractAmdInitValue;
import com.etas.amd.core.type.AmdEnumType;
import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd.core.util.AbstractAmdItem;
import com.etas.amd.core.util.AmdASWCType;
import com.etas.amd.core.util.AmdCSInterface;
import com.etas.amd.core.util.AmdCalprmInterface;
import com.etas.amd.core.util.AmdEnum;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd.core.util.AmdNvDataInterface;
import com.etas.amd.core.util.AmdSRInterface;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ElementT;
import com.etas.amd620.core.ComponentMain.KindType;
import com.etas.amd620.core.ComponentMain.MethodT;
import com.etas.ascet.importer.a2a.element.DataPrototypeConverter;
import com.etas.ascet.importer.a2a.element.ElementAttributesImpl;
import com.etas.ascet.importer.a2a.element.InitDataConverter;
import com.etas.ascet.importer.a2a.util.AutosarScoping;
import com.etas.ascet.importer.a2a.util.ConverterContext;
import com.etas.ascet.importer.a2a.util.SwDataDefPropsConditionalUtil;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import java.math.BigInteger;
import org.eclipse.emf.common.util.EList;

public class PortPrototypeConverter {
    private final PortPrototype port;
    private final DataAccess accessRule;
    private final ConverterContext ctx;
    private final PortInterface portInterface;

    public PortPrototypeConverter(PortPrototype port, ConverterContext ctx) {
        this.port = port;
        this.ctx = ctx;
        if (port instanceof PPortPrototype) {
            this.accessRule = DataAccess.createWriteAccess();
            this.portInterface = ((PPortPrototype)port).getProvidedInterface();
        } else if (port instanceof RPortPrototype) {
            this.accessRule = DataAccess.createReadAccess();
            this.portInterface = ((RPortPrototype)port).getRequiredInterface();
        } else {
            this.portInterface = null;
            this.accessRule = DataAccess.createWriteAccess();
        }
    }

    public ElementT convert(String nameSpace, AmdASWCType comp) {
        if (this.portInterface == null) {
            this.ctx.getLogger().reportUnknownInterface("", this.port.getShortName(), AutosarScoping.getPackageName(nameSpace, comp.getName()));
            return null;
        }
        if (this.portInterface.eResource() == null) {
            this.ctx.getLogger().reportUnknownInterface(AutosarScoping.getARPath((GIdentifiable)this.portInterface), this.port.getShortName(), AutosarScoping.getPackageName(nameSpace, comp.getName()));
            return null;
        }
        String portName = this.port.getShortName();
        ElementT amdPort = AmdFactory.createDataElementPort((String)portName, (String)this.port.getUuid());
        AmdFactory.setElementAttributesInterface((AmdASWCType)comp, (ElementT)amdPort, (String)AutosarScoping.getARPath((GIdentifiable)this.portInterface), (boolean)this.accessRule.isRead(), (boolean)this.accessRule.isWrite());
        PortPrototypeConverter.visitInterface(this.portInterface, this.ctx);
        if (this.port instanceof RPortPrototype && this.portInterface instanceof NvDataInterface) {
            this.convertInitValues(this.port, this.portInterface, portName);
            comp.addCompisiteEntry2DataSet("Data", portName, AmdFactory.createCompositeInitValue((String)(String.valueOf(portName) + "_data")));
        } else {
            comp.addCompisiteEntry2DataSet("Data", portName, AmdFactory.createCompositeInitValue((String)"Data"));
        }
        return amdPort;
    }

    public static void visitInterface(PortInterface interfaceType, ConverterContext ctx) {
        String packagePath = AutosarScoping.getARPath((GIdentifiable)interfaceType);
        if (ctx.getAmdCollection().contains(packagePath)) {
            return;
        }
        if (interfaceType instanceof SenderReceiverInterface) {
            PortPrototypeConverter.convertInterface((SenderReceiverInterface)interfaceType, ctx);
        } else if (interfaceType instanceof ClientServerInterface) {
            PortPrototypeConverter.convertInterface((ClientServerInterface)interfaceType, ctx);
        } else if (interfaceType instanceof ParameterInterface) {
            PortPrototypeConverter.convertInterface((ParameterInterface)interfaceType, ctx);
        } else if (interfaceType instanceof ModeSwitchInterface) {
            PortPrototypeConverter.convertInterface((ModeSwitchInterface)interfaceType, ctx);
        } else if (interfaceType instanceof NvDataInterface) {
            PortPrototypeConverter.convertInterface((NvDataInterface)interfaceType, ctx);
        }
    }

    private static void convertInterface(ParameterInterface arInterface, ConverterContext ctx) {
        String nameSpace = AutosarScoping.getNameSpace((GIdentifiable)arInterface);
        String shortName = arInterface.getShortName();
        AmdCalprmInterface comp = new AmdCalprmInterface(shortName, arInterface.getUuid(), nameSpace);
        ctx.getLogger().info("processing Calprm-interface [" + AutosarScoping.getPackageName(nameSpace, shortName) + "]");
        for (ParameterDataPrototype dataElement : arInterface.getParameters()) {
            ElementT amdInterfaceMember = AmdFactory.createInterfaceMember((String)dataElement.getShortName(), (String)dataElement.getUuid());
            ElementAttributesT elementAttributes = comp.setElementAttributes(amdInterfaceMember, (IElementAttributes)new ElementAttributesImpl((AutosarDataPrototype)dataElement, ctx));
            if (elementAttributes != null) {
                AmdFactory.setKind((ElementAttributesT)elementAttributes, (KindType)KindType.PARAMETER);
                AmdFactory.setSetGetAttributes((ElementAttributesT)elementAttributes, (boolean)false, (boolean)false);
                AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)false);
                DataAccess access = SwDataDefPropsConditionalUtil.getCalibrationDefProp((DataPrototype)dataElement);
                if (access == null) {
                    AmdFactory.setCalibration((ElementAttributesT)elementAttributes, (boolean)false, (boolean)true);
                } else {
                    AmdFactory.setCalibration((ElementAttributesT)elementAttributes, (boolean)access.isRead(), (boolean)access.isWrite());
                }
                comp.addElement(amdInterfaceMember);
                continue;
            }
            amdInterfaceMember.setName("invalid_" + dataElement.getShortName());
            elementAttributes = AmdFactory.setDummyElementAttributes((AbstractAmdComponent)comp, (ElementT)amdInterfaceMember);
            AmdFactory.setKind((ElementAttributesT)elementAttributes, (KindType)KindType.PARAMETER);
            AmdFactory.setSetGetAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
            AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)false);
            comp.addElement(amdInterfaceMember);
        }
        comp.setServiceFlag(arInterface.getIsService().booleanValue());
        ctx.getAmdCollection().put(AutosarScoping.getPackageName(nameSpace, shortName), (AbstractAmdItem)comp);
    }

    private static void convertInterface(SenderReceiverInterface arInterface, ConverterContext ctx) {
        String nameSpace = AutosarScoping.getNameSpace((GIdentifiable)arInterface);
        String shortName = arInterface.getShortName();
        AmdSRInterface comp = new AmdSRInterface(shortName, arInterface.getUuid(), nameSpace);
        ctx.getLogger().info("processing Sender/Receiver-interface [" + AutosarScoping.getPackageName(nameSpace, shortName) + "]");
        for (VariableDataPrototype dataElement : arInterface.getDataElements()) {
            ElementT amdInterfaceMember = AmdFactory.createInterfaceMember((String)dataElement.getShortName(), (String)dataElement.getUuid());
            ElementAttributesT elementAttributes = comp.setElementAttributes(amdInterfaceMember, (IElementAttributes)new ElementAttributesImpl((AutosarDataPrototype)dataElement, ctx));
            if (elementAttributes != null) {
                AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
                DataAccess access = SwDataDefPropsConditionalUtil.getCalibrationDefProp((DataPrototype)dataElement);
                if (access == null) {
                    AmdFactory.setCalibration((ElementAttributesT)elementAttributes, (boolean)true, (boolean)false);
                } else {
                    AmdFactory.setCalibration((ElementAttributesT)elementAttributes, (boolean)access.isRead(), (boolean)access.isWrite());
                }
                comp.addElement(amdInterfaceMember);
                continue;
            }
            amdInterfaceMember.setName("invalid_" + dataElement.getShortName());
            elementAttributes = AmdFactory.setDummyElementAttributes((AbstractAmdComponent)comp, (ElementT)amdInterfaceMember);
            AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
            comp.addElement(amdInterfaceMember);
        }
        comp.setServiceFlag(arInterface.getIsService().booleanValue());
        ctx.getAmdCollection().put(AutosarScoping.getPackageName(nameSpace, shortName), (AbstractAmdItem)comp);
    }

    private static void convertInterface(NvDataInterface arInterface, ConverterContext ctx) {
        String nameSpace = AutosarScoping.getNameSpace((GIdentifiable)arInterface);
        String shortName = arInterface.getShortName();
        AmdNvDataInterface comp = new AmdNvDataInterface(shortName, arInterface.getUuid(), nameSpace);
        ctx.getLogger().info("processing NvDataInterface [" + AutosarScoping.getPackageName(nameSpace, shortName) + "]");
        for (VariableDataPrototype dataElement : arInterface.getNvDatas()) {
            ElementT amdInterfaceMember = AmdFactory.createInterfaceMember((String)dataElement.getShortName(), (String)dataElement.getUuid());
            ElementAttributesT elementAttributes = comp.setElementAttributes(amdInterfaceMember, (IElementAttributes)new ElementAttributesImpl((AutosarDataPrototype)dataElement, ctx));
            if (elementAttributes == null) continue;
            AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
            comp.addElement(amdInterfaceMember);
        }
        comp.setServiceFlag(arInterface.getIsService().booleanValue());
        ctx.getAmdCollection().put(AutosarScoping.getPackageName(nameSpace, shortName), (AbstractAmdItem)comp);
    }

    private static void convertInterface(ModeSwitchInterface arInterface, ConverterContext ctx) {
        String nameSpace = AutosarScoping.getNameSpace((GIdentifiable)arInterface);
        String shortName = arInterface.getShortName();
        AmdSRInterface comp = new AmdSRInterface(shortName, arInterface.getUuid(), nameSpace);
        ctx.getLogger().info("processing ModeSwitchInterface [" + AutosarScoping.getPackageName(nameSpace, shortName) + "]");
        ModeDeclarationGroupPrototype modeGroup = arInterface.getModeGroup();
        ElementT amdInterfaceMember = AmdFactory.createInterfaceMember((String)modeGroup.getShortName(), (String)modeGroup.getUuid());
        AmdEnumType enumType = new AmdEnumType(AutosarScoping.getARPath((GIdentifiable)modeGroup.getType()));
        ElementAttributesT elementAttributes = enumType.createModelAttributes();
        AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
        amdInterfaceMember.setElementAttributes(elementAttributes);
        comp.addImplementation(enumType.createImplAttributes(amdInterfaceMember.getName()));
        comp.addElement(amdInterfaceMember);
        ctx.getAmdCollection().put(AutosarScoping.getPackageName(nameSpace, shortName), (AbstractAmdItem)comp);
    }

    private static void convertInterface(ClientServerInterface arInterface, ConverterContext ctx) {
        String shortName = arInterface.getShortName();
        String nameSpace = AutosarScoping.getNameSpace((GIdentifiable)arInterface);
        String packagePath = AutosarScoping.getARPath((GIdentifiable)arInterface);
        AmdCSInterface comp = new AmdCSInterface(shortName, arInterface.getUuid(), nameSpace);
        ctx.getLogger().info("processing Client/Server-interface [" + packagePath + "]");
        for (ClientServerOperation op : arInterface.getOperations()) {
            MethodT asdMethod = AmdFactory.createMethod((String)op.getShortName(), (String)op.getUuid());
            if (op.getPossibleErrors().isEmpty()) {
                AmdFactory.addReturnValueToMethod((MethodT)asdMethod);
            } else {
                String enumRef = String.valueOf(packagePath) + "_AppError";
                AmdFactory.addReturnValueToMethod((MethodT)asdMethod, (String)enumRef);
            }
            for (ArgumentDataPrototype arg : op.getArguments()) {
                ElementT amdArg = AmdFactory.addArgumentToMethod((MethodT)asdMethod, (String)arg.getShortName(), (String)arg.getUuid());
                ElementAttributesT elementAttributes = comp.setElementAttributes(amdArg, (IElementAttributes)new ElementAttributesImpl((AutosarDataPrototype)arg, ctx));
                if (elementAttributes == null) {
                    amdArg.setName("invalid_" + arg.getShortName());
                    elementAttributes = AmdFactory.setDummyElementAttributes((AbstractAmdComponent)comp, (ElementT)amdArg);
                }
                DataAccess direction = DataPrototypeConverter.getArgumentDirection(arg.getDirection().getValue());
                AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (DataAccess)direction);
            }
            comp.addMethod(asdMethod);
        }
        if (!arInterface.getPossibleErrors().isEmpty()) {
            String errEnumName = String.valueOf(shortName) + "_AppError";
            AmdEnum enumType = AmdFactory.createEnumType((String)errEnumName, null, (String)nameSpace);
            for (ApplicationError apErr : arInterface.getPossibleErrors()) {
                enumType.addEnumerator(BigInteger.valueOf(apErr.getErrorCode().intValue()), apErr.getShortName());
            }
            ctx.getAmdCollection().put(String.valueOf(nameSpace) + "/" + errEnumName, (AbstractAmdItem)enumType);
        }
        comp.setServiceFlag(arInterface.getIsService().booleanValue());
        ctx.getAmdCollection().put(packagePath, (AbstractAmdItem)comp);
    }

    private void convertInitValues(PortPrototype port, PortInterface portInterface, String portName) {
        EList comSpecs = ((RPortPrototype)port).getRequiredComSpecs();
        if (comSpecs != null) {
            AmdNvDataInterface nvDataInterface = (AmdNvDataInterface)this.ctx.getAmdCollection().get(AutosarScoping.getARPath((GIdentifiable)portInterface));
            for (RPortComSpec rPortComSpec : comSpecs) {
                String dataSetName;
                if (!(rPortComSpec instanceof NvRequireComSpec)) continue;
                NvRequireComSpec comSpec = (NvRequireComSpec)rPortComSpec;
                ValueSpecification initValue = comSpec.getInitValue();
                VariableDataPrototype variable = comSpec.getVariable();
                ElementAttributesImpl elementAttributesImpl = new ElementAttributesImpl((AutosarDataPrototype)variable, this.ctx);
                AbstractAmdInitValue amdInitValue = InitDataConverter.getInitValue(elementAttributesImpl, initValue, dataSetName = String.valueOf(portName) + "_data", this.ctx);
                if (amdInitValue == null) continue;
                amdInitValue.addDataSet((AbstractAmdComponent)nvDataInterface, String.valueOf(portName) + "_data", elementAttributesImpl.getName());
            }
        }
    }
}

