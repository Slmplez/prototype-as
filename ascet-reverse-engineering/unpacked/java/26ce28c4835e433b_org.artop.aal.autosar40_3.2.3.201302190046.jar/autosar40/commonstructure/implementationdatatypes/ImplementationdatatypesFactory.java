/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.implementationdatatypes;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesPackage;
import autosar40.commonstructure.implementationdatatypes.impl.ImplementationdatatypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ImplementationdatatypesFactory
extends EFactory {
    public static final ImplementationdatatypesFactory eINSTANCE = ImplementationdatatypesFactoryImpl.init();

    public ImplementationDataType createImplementationDataType();

    public ImplementationDataTypeElement createImplementationDataTypeElement();

    public ImplementationdatatypesPackage getImplementationdatatypesPackage();
}

