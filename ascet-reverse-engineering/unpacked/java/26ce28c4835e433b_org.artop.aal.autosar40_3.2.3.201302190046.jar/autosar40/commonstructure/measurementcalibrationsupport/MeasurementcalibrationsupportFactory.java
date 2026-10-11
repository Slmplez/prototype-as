/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.measurementcalibrationsupport;

import autosar40.commonstructure.measurementcalibrationsupport.ImplementationElementInParameterInstanceRef;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.commonstructure.measurementcalibrationsupport.McParameterElementGroup;
import autosar40.commonstructure.measurementcalibrationsupport.McSupportData;
import autosar40.commonstructure.measurementcalibrationsupport.McSwEmulationMethodSupport;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.commonstructure.measurementcalibrationsupport.impl.MeasurementcalibrationsupportFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MeasurementcalibrationsupportFactory
extends EFactory {
    public static final MeasurementcalibrationsupportFactory eINSTANCE = MeasurementcalibrationsupportFactoryImpl.init();

    public ImplementationElementInParameterInstanceRef createImplementationElementInParameterInstanceRef();

    public McSupportData createMcSupportData();

    public McSwEmulationMethodSupport createMcSwEmulationMethodSupport();

    public McParameterElementGroup createMcParameterElementGroup();

    public McDataInstance createMcDataInstance();

    public MeasurementcalibrationsupportPackage getMeasurementcalibrationsupportPackage();
}

