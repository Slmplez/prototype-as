/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.basetypes.impl;

import autosar3x.commonstructure.basetypes.BaseTypeDefinition;
import autosar3x.commonstructure.basetypes.BasetypesPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
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

