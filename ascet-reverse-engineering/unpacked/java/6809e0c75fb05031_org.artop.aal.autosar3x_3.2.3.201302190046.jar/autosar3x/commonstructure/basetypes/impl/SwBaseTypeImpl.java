/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.basetypes.impl;

import autosar3x.commonstructure.basetypes.BasetypesPackage;
import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.commonstructure.basetypes.impl.BaseTypeImpl;
import org.eclipse.emf.ecore.EClass;

public class SwBaseTypeImpl
extends BaseTypeImpl
implements SwBaseType {
    protected SwBaseTypeImpl() {
    }

    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.SW_BASE_TYPE;
    }
}

