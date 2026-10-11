/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.datadefproperties;

import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.SwBitRepresentation;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsConditional;
import autosar40.commonstructure.datadefproperties.SwDataDependency;
import autosar40.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar40.commonstructure.datadefproperties.SwPointerTargetProps;
import autosar40.commonstructure.datadefproperties.SwTextProps;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.commonstructure.datadefproperties.impl.DatadefpropertiesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DatadefpropertiesFactory
extends EFactory {
    public static final DatadefpropertiesFactory eINSTANCE = DatadefpropertiesFactoryImpl.init();

    public ValueList createValueList();

    public SwBitRepresentation createSwBitRepresentation();

    public SwDataDependency createSwDataDependency();

    public SwDataDependencyArgs createSwDataDependencyArgs();

    public SwPointerTargetProps createSwPointerTargetProps();

    public SwTextProps createSwTextProps();

    public SwDataDefPropsConditional createSwDataDefPropsConditional();

    public SwDataDefProps createSwDataDefProps();

    public DatadefpropertiesPackage getDatadefpropertiesPackage();
}

