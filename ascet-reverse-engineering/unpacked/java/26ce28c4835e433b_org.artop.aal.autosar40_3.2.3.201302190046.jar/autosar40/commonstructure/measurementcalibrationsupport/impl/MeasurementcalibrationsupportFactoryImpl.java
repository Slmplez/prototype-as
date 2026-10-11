/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.commonstructure.measurementcalibrationsupport.impl;

import autosar40.commonstructure.measurementcalibrationsupport.ImplementationElementInParameterInstanceRef;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.commonstructure.measurementcalibrationsupport.McParameterElementGroup;
import autosar40.commonstructure.measurementcalibrationsupport.McSupportData;
import autosar40.commonstructure.measurementcalibrationsupport.McSwEmulationMethodSupport;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportFactory;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.commonstructure.measurementcalibrationsupport.impl.ImplementationElementInParameterInstanceRefImpl;
import autosar40.commonstructure.measurementcalibrationsupport.impl.McDataInstanceImpl;
import autosar40.commonstructure.measurementcalibrationsupport.impl.McParameterElementGroupImpl;
import autosar40.commonstructure.measurementcalibrationsupport.impl.McSupportDataImpl;
import autosar40.commonstructure.measurementcalibrationsupport.impl.McSwEmulationMethodSupportImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class MeasurementcalibrationsupportFactoryImpl
extends EFactoryImpl
implements MeasurementcalibrationsupportFactory {
    public static MeasurementcalibrationsupportFactory init() {
        try {
            MeasurementcalibrationsupportFactory theMeasurementcalibrationsupportFactory = (MeasurementcalibrationsupportFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/mcs");
            if (theMeasurementcalibrationsupportFactory != null) {
                return theMeasurementcalibrationsupportFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new MeasurementcalibrationsupportFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createImplementationElementInParameterInstanceRef();
            }
            case 1: {
                return this.createMcSupportData();
            }
            case 2: {
                return this.createMcSwEmulationMethodSupport();
            }
            case 3: {
                return this.createMcParameterElementGroup();
            }
            case 4: {
                return this.createMcDataInstance();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ImplementationElementInParameterInstanceRef createImplementationElementInParameterInstanceRef() {
        ImplementationElementInParameterInstanceRefImpl implementationElementInParameterInstanceRef = new ImplementationElementInParameterInstanceRefImpl();
        return implementationElementInParameterInstanceRef;
    }

    public McSupportData createMcSupportData() {
        McSupportDataImpl mcSupportData = new McSupportDataImpl();
        return mcSupportData;
    }

    public McSwEmulationMethodSupport createMcSwEmulationMethodSupport() {
        McSwEmulationMethodSupportImpl mcSwEmulationMethodSupport = new McSwEmulationMethodSupportImpl();
        return mcSwEmulationMethodSupport;
    }

    public McParameterElementGroup createMcParameterElementGroup() {
        McParameterElementGroupImpl mcParameterElementGroup = new McParameterElementGroupImpl();
        return mcParameterElementGroup;
    }

    public McDataInstance createMcDataInstance() {
        McDataInstanceImpl mcDataInstance = new McDataInstanceImpl();
        return mcDataInstance;
    }

    public MeasurementcalibrationsupportPackage getMeasurementcalibrationsupportPackage() {
        return (MeasurementcalibrationsupportPackage)this.getEPackage();
    }

    @Deprecated
    public static MeasurementcalibrationsupportPackage getPackage() {
        return MeasurementcalibrationsupportPackage.eINSTANCE;
    }
}

