/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.basetypes;

import autosar3x.commonstructure.basetypes.BaseTypeAbsSize;
import autosar3x.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeIndirectDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeMaxSize;
import autosar3x.commonstructure.basetypes.BasetypesPackage;
import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.commonstructure.basetypes.impl.BasetypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BasetypesFactory
extends EFactory {
    public static final BasetypesFactory eINSTANCE = BasetypesFactoryImpl.init();

    public BaseTypeAbsSize createBaseTypeAbsSize();

    public BaseTypeDirectDefinition createBaseTypeDirectDefinition();

    public BaseTypeIndirectDefinition createBaseTypeIndirectDefinition();

    public BaseTypeMaxSize createBaseTypeMaxSize();

    public SwBaseType createSwBaseType();

    public BasetypesPackage getBasetypesPackage();
}

