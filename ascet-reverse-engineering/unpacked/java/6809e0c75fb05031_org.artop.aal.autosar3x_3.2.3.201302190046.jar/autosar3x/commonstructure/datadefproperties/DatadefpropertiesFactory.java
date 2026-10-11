/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.datadefproperties;

import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.SwArraysize;
import autosar3x.commonstructure.datadefproperties.SwBitRepresentation;
import autosar3x.commonstructure.datadefproperties.SwComparisonVariables;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.datadefproperties.SwDataDependency;
import autosar3x.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar3x.commonstructure.datadefproperties.SwGenericAxisParamValue;
import autosar3x.commonstructure.datadefproperties.SwPointer;
import autosar3x.commonstructure.datadefproperties.SwSemaphore;
import autosar3x.commonstructure.datadefproperties.SwTextProps;
import autosar3x.commonstructure.datadefproperties.SwVariableRef;
import autosar3x.commonstructure.datadefproperties.impl.DatadefpropertiesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DatadefpropertiesFactory
extends EFactory {
    public static final DatadefpropertiesFactory eINSTANCE = DatadefpropertiesFactoryImpl.init();

    public SwDataDefProps createSwDataDefProps();

    public SwArraysize createSwArraysize();

    public SwDataDependency createSwDataDependency();

    public SwDataDependencyArgs createSwDataDependencyArgs();

    public SwVariableRef createSwVariableRef();

    public SwBitRepresentation createSwBitRepresentation();

    public SwTextProps createSwTextProps();

    public SwComparisonVariables createSwComparisonVariables();

    public SwSemaphore createSwSemaphore();

    public SwPointer createSwPointer();

    public SwGenericAxisParamValue createSwGenericAxisParamValue();

    public DatadefpropertiesPackage getDatadefpropertiesPackage();
}

