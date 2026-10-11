/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements;

import autosar40.swcomponent.swcinternalbehavior.dataelements.ArVariableInImplementationDataInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ParameterAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.impl.DataelementsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DataelementsFactory
extends EFactory {
    public static final DataelementsFactory eINSTANCE = DataelementsFactoryImpl.init();

    public ArVariableInImplementationDataInstanceRef createArVariableInImplementationDataInstanceRef();

    public AutosarParameterRef createAutosarParameterRef();

    public ParameterAccess createParameterAccess();

    public VariableAccess createVariableAccess();

    public AutosarVariableRef createAutosarVariableRef();

    public DataelementsPackage getDataelementsPackage();
}

