/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.basetypes;

import autosar40.commonstructure.basetypes.BaseTypeAbsSize;
import autosar40.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar40.commonstructure.basetypes.BaseTypeMaxSize;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.commonstructure.basetypes.impl.BasetypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BasetypesFactory
extends EFactory {
    public static final BasetypesFactory eINSTANCE = BasetypesFactoryImpl.init();

    public BaseTypeAbsSize createBaseTypeAbsSize();

    public BaseTypeDirectDefinition createBaseTypeDirectDefinition();

    public BaseTypeMaxSize createBaseTypeMaxSize();

    public SwBaseType createSwBaseType();

    public BasetypesPackage getBasetypesPackage();
}

