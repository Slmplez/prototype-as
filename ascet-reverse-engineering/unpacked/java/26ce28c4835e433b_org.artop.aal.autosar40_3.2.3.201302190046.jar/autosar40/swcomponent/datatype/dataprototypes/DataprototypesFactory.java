/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.datatype.dataprototypes;

import autosar40.swcomponent.datatype.dataprototypes.ApplicationArrayElement;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.impl.DataprototypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DataprototypesFactory
extends EFactory {
    public static final DataprototypesFactory eINSTANCE = DataprototypesFactoryImpl.init();

    public ApplicationArrayElement createApplicationArrayElement();

    public ApplicationRecordElement createApplicationRecordElement();

    public ParameterDataPrototype createParameterDataPrototype();

    public VariableDataPrototype createVariableDataPrototype();

    public DataprototypesPackage getDataprototypesPackage();
}

