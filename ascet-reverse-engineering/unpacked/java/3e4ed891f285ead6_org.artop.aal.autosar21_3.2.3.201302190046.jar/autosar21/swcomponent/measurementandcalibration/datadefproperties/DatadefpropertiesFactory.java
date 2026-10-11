/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties;

import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwArraysize;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwBitRepresentation;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwComparisonVariables;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependency;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependencyArgs;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwGenericAxisParamValue;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwPointer;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwSemaphore;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwTextProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwVariableRef;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.DatadefpropertiesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DatadefpropertiesFactory
extends EFactory {
    public static final DatadefpropertiesFactory eINSTANCE = DatadefpropertiesFactoryImpl.init();

    public SwArraysize createSwArraysize();

    public SwBitRepresentation createSwBitRepresentation();

    public SwComparisonVariables createSwComparisonVariables();

    public SwGenericAxisParamValue createSwGenericAxisParamValue();

    public SwDataDependency createSwDataDependency();

    public SwDataDependencyArgs createSwDataDependencyArgs();

    public SwPointer createSwPointer();

    public SwSemaphore createSwSemaphore();

    public SwTextProps createSwTextProps();

    public SwVariableRef createSwVariableRef();

    public SwDataDefProps createSwDataDefProps();

    public DatadefpropertiesPackage getDatadefpropertiesPackage();
}

