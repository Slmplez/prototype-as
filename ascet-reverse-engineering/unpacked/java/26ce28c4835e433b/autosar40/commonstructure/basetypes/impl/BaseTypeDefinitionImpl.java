/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.commonstructure.basetypes.impl;

import autosar40.commonstructure.basetypes.BaseTypeDefinition;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class BaseTypeDefinitionImpl
extends ARObjectImpl
implements BaseTypeDefinition {
    protected BaseTypeDefinitionImpl() {
    }

    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.BASE_TYPE_DEFINITION;
    }
}

