/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.OsLogicType;
import com.etas.amd620.core.ComponentProject.impl.OSLogicTImpl;
import org.eclipse.emf.ecore.EClass;

public class OsLogicTypeImpl
extends OSLogicTImpl
implements OsLogicType {
    protected OsLogicTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.OS_LOGIC_TYPE;
    }
}

