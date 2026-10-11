/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.ecucdescription;

import autosar3x.ecucdescription.BooleanValue;
import autosar3x.ecucdescription.Container;
import autosar3x.ecucdescription.EcuConfiguration;
import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucdescription.EnumerationValue;
import autosar3x.ecucdescription.FloatValue;
import autosar3x.ecucdescription.FunctionNameValue;
import autosar3x.ecucdescription.InstanceReferenceValue;
import autosar3x.ecucdescription.IntegerValue;
import autosar3x.ecucdescription.LinkerSymbolValue;
import autosar3x.ecucdescription.ModuleConfiguration;
import autosar3x.ecucdescription.ReferenceValue;
import autosar3x.ecucdescription.StringValue;
import autosar3x.ecucdescription.impl.EcucdescriptionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcucdescriptionFactory
extends EFactory {
    public static final EcucdescriptionFactory eINSTANCE = EcucdescriptionFactoryImpl.init();

    public BooleanValue createBooleanValue();

    public Container createContainer();

    public EcuConfiguration createEcuConfiguration();

    public EnumerationValue createEnumerationValue();

    public FloatValue createFloatValue();

    public FunctionNameValue createFunctionNameValue();

    public LinkerSymbolValue createLinkerSymbolValue();

    public StringValue createStringValue();

    public InstanceReferenceValue createInstanceReferenceValue();

    public IntegerValue createIntegerValue();

    public ReferenceValue createReferenceValue();

    public ModuleConfiguration createModuleConfiguration();

    public EcucdescriptionPackage getEcucdescriptionPackage();
}

