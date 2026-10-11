/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.ecucdescription;

import autosar21.ecucdescription.BooleanValue;
import autosar21.ecucdescription.Container;
import autosar21.ecucdescription.EcuConfiguration;
import autosar21.ecucdescription.EcucElement;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.EnumerationValue;
import autosar21.ecucdescription.FloatValue;
import autosar21.ecucdescription.FunctionNameValue;
import autosar21.ecucdescription.InstanceReferenceValue;
import autosar21.ecucdescription.IntegerValue;
import autosar21.ecucdescription.LinkerSymbolValue;
import autosar21.ecucdescription.ModuleConfiguration;
import autosar21.ecucdescription.ReferenceValue;
import autosar21.ecucdescription.StringValue;
import autosar21.ecucdescription.impl.EcucdescriptionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcucdescriptionFactory
extends EFactory {
    public static final EcucdescriptionFactory eINSTANCE = EcucdescriptionFactoryImpl.init();

    public BooleanValue createBooleanValue();

    public Container createContainer();

    public EcucElement createEcucElement();

    public EcuConfiguration createEcuConfiguration();

    public ModuleConfiguration createModuleConfiguration();

    public EnumerationValue createEnumerationValue();

    public FloatValue createFloatValue();

    public FunctionNameValue createFunctionNameValue();

    public LinkerSymbolValue createLinkerSymbolValue();

    public StringValue createStringValue();

    public InstanceReferenceValue createInstanceReferenceValue();

    public IntegerValue createIntegerValue();

    public ReferenceValue createReferenceValue();

    public EcucdescriptionPackage getEcucdescriptionPackage();
}

