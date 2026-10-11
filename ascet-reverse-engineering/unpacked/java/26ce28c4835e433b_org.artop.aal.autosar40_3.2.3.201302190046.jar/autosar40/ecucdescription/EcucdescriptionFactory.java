/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucAddInfoParamValue;
import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucInstanceReferenceValue;
import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucModuleConfigurationValuesRefConditional;
import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucReferenceValue;
import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.ecucdescription.EcucValueCollection;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucdescription.impl.EcucdescriptionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcucdescriptionFactory
extends EFactory {
    public static final EcucdescriptionFactory eINSTANCE = EcucdescriptionFactoryImpl.init();

    public EcucAddInfoParamValue createEcucAddInfoParamValue();

    public EcucContainerValue createEcucContainerValue();

    public EcucInstanceReferenceValue createEcucInstanceReferenceValue();

    public EcucNumericalParamValue createEcucNumericalParamValue();

    public EcucReferenceValue createEcucReferenceValue();

    public EcucTextualParamValue createEcucTextualParamValue();

    public EcucValueCollection createEcucValueCollection();

    public EcucModuleConfigurationValuesRefConditional createEcucModuleConfigurationValuesRefConditional();

    public EcucModuleConfigurationValues createEcucModuleConfigurationValues();

    public EcucdescriptionPackage getEcucdescriptionPackage();
}

